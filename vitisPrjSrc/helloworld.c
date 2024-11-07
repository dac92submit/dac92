#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_types.h"
#include "xil_io.h"
#include "xtime_l.h"
#include "sleep.h"
#include "xil_cache.h"

/*
targets -set -filter {name =~ "PSU"}
mwr 0xffca0010 0x0
mwr 0xff5e0200 0x0100
rst -system
*/

#define pow_2 (1<<18)
#define transfer_size (4096*128)
#define transfer_per_cmd (pow_2)
#define cmd_cnt (transfer_size/transfer_per_cmd)

#define page_size (pow_2)
#define buffer_size (page_size*cmd_cnt)

u8 test_region[buffer_size] __attribute((aligned (65536)));

#define TEST_ADDR 0x1000000000

int main()
{
    init_platform();

    print("Hello World\n\r");
    print("Successfully ran Hello World application\n");

    Xil_ICacheEnable();

    for(int i=0;i<buffer_size;i++){
    	test_region[i & 0xff] = i & 0xff;
    }

    Xil_Out32(0x00FD360004, 0xF);
    Xil_Out32(0x00FD380004, 0xF);
    Xil_Out32(0x00FD3A0004, 0xF);
    Xil_Out32(0x00FD3B0004, 0xF);

    Xil_DCacheDisable();
    Xil_DCacheEnable();

    printf("Begin Send Command!\n");

    u32 baseAddr = (u32)(test_region);
    Xil_Out32(TEST_ADDR, baseAddr);
    Xil_Out32(TEST_ADDR+0x08, transfer_per_cmd);
    Xil_Out32(TEST_ADDR+0x0C, cmd_cnt - 1);
    Xil_Out32(TEST_ADDR+0x10, page_size);
//    Xil_Out32(TEST_ADDR+0x18, 64);
    Xil_Out32(TEST_ADDR+0x04, 1);

    sleep(1);

    u32 transfer_cnt = Xil_In32(TEST_ADDR+0x14);
    u32 total_transfer = Xil_In32(TEST_ADDR+0x1C);
    float util = (float)(total_transfer) / (float)(transfer_cnt);
    printf("BaseAddr = 0x%x\n", baseAddr);
    printf("Cmd Num = %d\n", cmd_cnt);
    printf("Cost = %d, Utilization = %f\n", transfer_cnt, util);

    printf("Command Sent!\n");

    cleanup_platform();
    return 0;
}
