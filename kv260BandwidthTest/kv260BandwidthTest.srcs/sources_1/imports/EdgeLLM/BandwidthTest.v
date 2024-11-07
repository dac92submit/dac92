// Generator : SpinalHDL v1.9.0    git head : 7d30dbacbd3aa1be42fb2a3d4da5675703aae2ae
// Component : BandwidthTest
// Git hash  : e48969e1d6e1248c6a70329f6a303a97ee2cb4da

`timescale 1ns/1ps

module BandwidthTest (
  input               S00_AXIL_awvalid,
  output              S00_AXIL_awready,
  input      [31:0]   S00_AXIL_awaddr,
  input      [2:0]    S00_AXIL_awprot,
  input               S00_AXIL_wvalid,
  output              S00_AXIL_wready,
  input      [31:0]   S00_AXIL_wdata,
  input      [3:0]    S00_AXIL_wstrb,
  output              S00_AXIL_bvalid,
  input               S00_AXIL_bready,
  output     [1:0]    S00_AXIL_bresp,
  input               S00_AXIL_arvalid,
  output reg          S00_AXIL_arready,
  input      [31:0]   S00_AXIL_araddr,
  input      [2:0]    S00_AXIL_arprot,
  output              S00_AXIL_rvalid,
  input               S00_AXIL_rready,
  output     [31:0]   S00_AXIL_rdata,
  output     [1:0]    S00_AXIL_rresp,
  output              m_axi_hp_0_awvalid,
  input               m_axi_hp_0_awready,
  output     [31:0]   m_axi_hp_0_awaddr,
  output     [3:0]    m_axi_hp_0_awid,
  output     [7:0]    m_axi_hp_0_awlen,
  output     [2:0]    m_axi_hp_0_awsize,
  output     [1:0]    m_axi_hp_0_awburst,
  output     [3:0]    m_axi_hp_0_awcache,
  output     [3:0]    m_axi_hp_0_awuser,
  output     [2:0]    m_axi_hp_0_awprot,
  output              m_axi_hp_0_wvalid,
  input               m_axi_hp_0_wready,
  output     [127:0]  m_axi_hp_0_wdata,
  output     [15:0]   m_axi_hp_0_wstrb,
  output              m_axi_hp_0_wlast,
  input               m_axi_hp_0_bvalid,
  output              m_axi_hp_0_bready,
  input      [3:0]    m_axi_hp_0_bid,
  input      [1:0]    m_axi_hp_0_bresp,
  output              m_axi_hp_0_arvalid,
  input               m_axi_hp_0_arready,
  output     [31:0]   m_axi_hp_0_araddr,
  output     [3:0]    m_axi_hp_0_arid,
  output     [7:0]    m_axi_hp_0_arlen,
  output     [2:0]    m_axi_hp_0_arsize,
  output     [1:0]    m_axi_hp_0_arburst,
  output     [3:0]    m_axi_hp_0_arcache,
  output     [3:0]    m_axi_hp_0_aruser,
  output     [2:0]    m_axi_hp_0_arprot,
  (* mark_debug = "true" *) input               m_axi_hp_0_rvalid,
  (* mark_debug = "true" *) output              m_axi_hp_0_rready,
  input      [127:0]  m_axi_hp_0_rdata,
  input      [3:0]    m_axi_hp_0_rid,
  input      [1:0]    m_axi_hp_0_rresp,
  input               m_axi_hp_0_rlast,
  output              m_axi_hp_1_awvalid,
  input               m_axi_hp_1_awready,
  output     [31:0]   m_axi_hp_1_awaddr,
  output     [3:0]    m_axi_hp_1_awid,
  output     [7:0]    m_axi_hp_1_awlen,
  output     [2:0]    m_axi_hp_1_awsize,
  output     [1:0]    m_axi_hp_1_awburst,
  output     [3:0]    m_axi_hp_1_awcache,
  output     [3:0]    m_axi_hp_1_awuser,
  output     [2:0]    m_axi_hp_1_awprot,
  output              m_axi_hp_1_wvalid,
  input               m_axi_hp_1_wready,
  output     [127:0]  m_axi_hp_1_wdata,
  output     [15:0]   m_axi_hp_1_wstrb,
  output              m_axi_hp_1_wlast,
  input               m_axi_hp_1_bvalid,
  output              m_axi_hp_1_bready,
  input      [3:0]    m_axi_hp_1_bid,
  input      [1:0]    m_axi_hp_1_bresp,
  output              m_axi_hp_1_arvalid,
  input               m_axi_hp_1_arready,
  output     [31:0]   m_axi_hp_1_araddr,
  output     [3:0]    m_axi_hp_1_arid,
  output     [7:0]    m_axi_hp_1_arlen,
  output     [2:0]    m_axi_hp_1_arsize,
  output     [1:0]    m_axi_hp_1_arburst,
  output     [3:0]    m_axi_hp_1_arcache,
  output     [3:0]    m_axi_hp_1_aruser,
  output     [2:0]    m_axi_hp_1_arprot,
  (* mark_debug = "true" *) input               m_axi_hp_1_rvalid,
  (* mark_debug = "true" *) output              m_axi_hp_1_rready,
  input      [127:0]  m_axi_hp_1_rdata,
  input      [3:0]    m_axi_hp_1_rid,
  input      [1:0]    m_axi_hp_1_rresp,
  input               m_axi_hp_1_rlast,
  output              m_axi_hp_2_awvalid,
  input               m_axi_hp_2_awready,
  output     [31:0]   m_axi_hp_2_awaddr,
  output     [3:0]    m_axi_hp_2_awid,
  output     [7:0]    m_axi_hp_2_awlen,
  output     [2:0]    m_axi_hp_2_awsize,
  output     [1:0]    m_axi_hp_2_awburst,
  output     [3:0]    m_axi_hp_2_awcache,
  output     [3:0]    m_axi_hp_2_awuser,
  output     [2:0]    m_axi_hp_2_awprot,
  output              m_axi_hp_2_wvalid,
  input               m_axi_hp_2_wready,
  output     [127:0]  m_axi_hp_2_wdata,
  output     [15:0]   m_axi_hp_2_wstrb,
  output              m_axi_hp_2_wlast,
  input               m_axi_hp_2_bvalid,
  output              m_axi_hp_2_bready,
  input      [3:0]    m_axi_hp_2_bid,
  input      [1:0]    m_axi_hp_2_bresp,
  output              m_axi_hp_2_arvalid,
  input               m_axi_hp_2_arready,
  output     [31:0]   m_axi_hp_2_araddr,
  output     [3:0]    m_axi_hp_2_arid,
  output     [7:0]    m_axi_hp_2_arlen,
  output     [2:0]    m_axi_hp_2_arsize,
  output     [1:0]    m_axi_hp_2_arburst,
  output     [3:0]    m_axi_hp_2_arcache,
  output     [3:0]    m_axi_hp_2_aruser,
  output     [2:0]    m_axi_hp_2_arprot,
  (* mark_debug = "true" *) input               m_axi_hp_2_rvalid,
  (* mark_debug = "true" *) output              m_axi_hp_2_rready,
  input      [127:0]  m_axi_hp_2_rdata,
  input      [3:0]    m_axi_hp_2_rid,
  input      [1:0]    m_axi_hp_2_rresp,
  input               m_axi_hp_2_rlast,
  output              m_axi_hp_3_awvalid,
  input               m_axi_hp_3_awready,
  output     [31:0]   m_axi_hp_3_awaddr,
  output     [3:0]    m_axi_hp_3_awid,
  output     [7:0]    m_axi_hp_3_awlen,
  output     [2:0]    m_axi_hp_3_awsize,
  output     [1:0]    m_axi_hp_3_awburst,
  output     [3:0]    m_axi_hp_3_awcache,
  output     [3:0]    m_axi_hp_3_awuser,
  output     [2:0]    m_axi_hp_3_awprot,
  output              m_axi_hp_3_wvalid,
  input               m_axi_hp_3_wready,
  output     [127:0]  m_axi_hp_3_wdata,
  output     [15:0]   m_axi_hp_3_wstrb,
  output              m_axi_hp_3_wlast,
  input               m_axi_hp_3_bvalid,
  output              m_axi_hp_3_bready,
  input      [3:0]    m_axi_hp_3_bid,
  input      [1:0]    m_axi_hp_3_bresp,
  output              m_axi_hp_3_arvalid,
  input               m_axi_hp_3_arready,
  output     [31:0]   m_axi_hp_3_araddr,
  output     [3:0]    m_axi_hp_3_arid,
  output     [7:0]    m_axi_hp_3_arlen,
  output     [2:0]    m_axi_hp_3_arsize,
  output     [1:0]    m_axi_hp_3_arburst,
  output     [3:0]    m_axi_hp_3_arcache,
  output     [3:0]    m_axi_hp_3_aruser,
  output     [2:0]    m_axi_hp_3_arprot,
  (* mark_debug = "true" *) input               m_axi_hp_3_rvalid,
  (* mark_debug = "true" *) output              m_axi_hp_3_rready,
  input      [127:0]  m_axi_hp_3_rdata,
  input      [3:0]    m_axi_hp_3_rid,
  input      [1:0]    m_axi_hp_3_rresp,
  input               m_axi_hp_3_rlast,
  input               clk,
  input               aresetn,
  input               resetn
);

  wire       [511:0]  dmaHp_s2mm_tdata;
  wire       [63:0]   dmaHp_s2mm_tkeep;
  wire                dmaHp_s2mm_tlast;
  wire                dmaHp_ctrl_aw_valid;
  wire       [31:0]   dmaHp_ctrl_aw_payload_addr;
  wire       [2:0]    dmaHp_ctrl_aw_payload_prot;
  wire                dmaHp_ctrl_w_valid;
  wire       [31:0]   dmaHp_ctrl_w_payload_data;
  wire       [3:0]    dmaHp_ctrl_w_payload_strb;
  wire                dmaHp_ctrl_b_ready;
  wire                dmaHp_ctrl_ar_valid;
  wire       [31:0]   dmaHp_ctrl_ar_payload_addr;
  wire       [2:0]    dmaHp_ctrl_ar_payload_prot;
  wire                dmaHp_ctrl_r_ready;
  reg                 cmdFifo_io_pop_ready;
  wire                dmaHp_s2mm_tready;
  wire                dmaHp_mm2s_tvalid;
  wire       [511:0]  dmaHp_mm2s_tdata;
  wire       [63:0]   dmaHp_mm2s_tkeep;
  wire                dmaHp_mm2s_tlast;
  wire                dmaHp_s2mmCmd_tready;
  wire                dmaHp_mm2sCmd_tready;
  wire                dmaHp_m_axi_0_arvalid;
  wire       [31:0]   dmaHp_m_axi_0_araddr;
  wire       [3:0]    dmaHp_m_axi_0_arid;
  wire       [7:0]    dmaHp_m_axi_0_arlen;
  wire       [2:0]    dmaHp_m_axi_0_arsize;
  wire       [1:0]    dmaHp_m_axi_0_arburst;
  wire       [3:0]    dmaHp_m_axi_0_arcache;
  wire       [3:0]    dmaHp_m_axi_0_aruser;
  wire       [2:0]    dmaHp_m_axi_0_arprot;
  wire                dmaHp_m_axi_0_awvalid;
  wire       [31:0]   dmaHp_m_axi_0_awaddr;
  wire       [3:0]    dmaHp_m_axi_0_awid;
  wire       [7:0]    dmaHp_m_axi_0_awlen;
  wire       [2:0]    dmaHp_m_axi_0_awsize;
  wire       [1:0]    dmaHp_m_axi_0_awburst;
  wire       [3:0]    dmaHp_m_axi_0_awcache;
  wire       [3:0]    dmaHp_m_axi_0_awuser;
  wire       [2:0]    dmaHp_m_axi_0_awprot;
  wire                dmaHp_m_axi_0_wvalid;
  wire       [127:0]  dmaHp_m_axi_0_wdata;
  wire       [15:0]   dmaHp_m_axi_0_wstrb;
  wire                dmaHp_m_axi_0_wlast;
  wire                dmaHp_m_axi_0_rready;
  wire                dmaHp_m_axi_0_bready;
  wire                dmaHp_m_axi_1_arvalid;
  wire       [31:0]   dmaHp_m_axi_1_araddr;
  wire       [3:0]    dmaHp_m_axi_1_arid;
  wire       [7:0]    dmaHp_m_axi_1_arlen;
  wire       [2:0]    dmaHp_m_axi_1_arsize;
  wire       [1:0]    dmaHp_m_axi_1_arburst;
  wire       [3:0]    dmaHp_m_axi_1_arcache;
  wire       [3:0]    dmaHp_m_axi_1_aruser;
  wire       [2:0]    dmaHp_m_axi_1_arprot;
  wire                dmaHp_m_axi_1_awvalid;
  wire       [31:0]   dmaHp_m_axi_1_awaddr;
  wire       [3:0]    dmaHp_m_axi_1_awid;
  wire       [7:0]    dmaHp_m_axi_1_awlen;
  wire       [2:0]    dmaHp_m_axi_1_awsize;
  wire       [1:0]    dmaHp_m_axi_1_awburst;
  wire       [3:0]    dmaHp_m_axi_1_awcache;
  wire       [3:0]    dmaHp_m_axi_1_awuser;
  wire       [2:0]    dmaHp_m_axi_1_awprot;
  wire                dmaHp_m_axi_1_wvalid;
  wire       [127:0]  dmaHp_m_axi_1_wdata;
  wire       [15:0]   dmaHp_m_axi_1_wstrb;
  wire                dmaHp_m_axi_1_wlast;
  wire                dmaHp_m_axi_1_rready;
  wire                dmaHp_m_axi_1_bready;
  wire                dmaHp_m_axi_2_arvalid;
  wire       [31:0]   dmaHp_m_axi_2_araddr;
  wire       [3:0]    dmaHp_m_axi_2_arid;
  wire       [7:0]    dmaHp_m_axi_2_arlen;
  wire       [2:0]    dmaHp_m_axi_2_arsize;
  wire       [1:0]    dmaHp_m_axi_2_arburst;
  wire       [3:0]    dmaHp_m_axi_2_arcache;
  wire       [3:0]    dmaHp_m_axi_2_aruser;
  wire       [2:0]    dmaHp_m_axi_2_arprot;
  wire                dmaHp_m_axi_2_awvalid;
  wire       [31:0]   dmaHp_m_axi_2_awaddr;
  wire       [3:0]    dmaHp_m_axi_2_awid;
  wire       [7:0]    dmaHp_m_axi_2_awlen;
  wire       [2:0]    dmaHp_m_axi_2_awsize;
  wire       [1:0]    dmaHp_m_axi_2_awburst;
  wire       [3:0]    dmaHp_m_axi_2_awcache;
  wire       [3:0]    dmaHp_m_axi_2_awuser;
  wire       [2:0]    dmaHp_m_axi_2_awprot;
  wire                dmaHp_m_axi_2_wvalid;
  wire       [127:0]  dmaHp_m_axi_2_wdata;
  wire       [15:0]   dmaHp_m_axi_2_wstrb;
  wire                dmaHp_m_axi_2_wlast;
  wire                dmaHp_m_axi_2_rready;
  wire                dmaHp_m_axi_2_bready;
  wire                dmaHp_m_axi_3_arvalid;
  wire       [31:0]   dmaHp_m_axi_3_araddr;
  wire       [3:0]    dmaHp_m_axi_3_arid;
  wire       [7:0]    dmaHp_m_axi_3_arlen;
  wire       [2:0]    dmaHp_m_axi_3_arsize;
  wire       [1:0]    dmaHp_m_axi_3_arburst;
  wire       [3:0]    dmaHp_m_axi_3_arcache;
  wire       [3:0]    dmaHp_m_axi_3_aruser;
  wire       [2:0]    dmaHp_m_axi_3_arprot;
  wire                dmaHp_m_axi_3_awvalid;
  wire       [31:0]   dmaHp_m_axi_3_awaddr;
  wire       [3:0]    dmaHp_m_axi_3_awid;
  wire       [7:0]    dmaHp_m_axi_3_awlen;
  wire       [2:0]    dmaHp_m_axi_3_awsize;
  wire       [1:0]    dmaHp_m_axi_3_awburst;
  wire       [3:0]    dmaHp_m_axi_3_awcache;
  wire       [3:0]    dmaHp_m_axi_3_awuser;
  wire       [2:0]    dmaHp_m_axi_3_awprot;
  wire                dmaHp_m_axi_3_wvalid;
  wire       [127:0]  dmaHp_m_axi_3_wdata;
  wire       [15:0]   dmaHp_m_axi_3_wstrb;
  wire                dmaHp_m_axi_3_wlast;
  wire                dmaHp_m_axi_3_rready;
  wire                dmaHp_m_axi_3_bready;
  wire                dmaHp_ctrl_aw_ready;
  wire                dmaHp_ctrl_w_ready;
  wire                dmaHp_ctrl_b_valid;
  wire       [1:0]    dmaHp_ctrl_b_payload_resp;
  wire                dmaHp_ctrl_ar_ready;
  wire                dmaHp_ctrl_r_valid;
  wire       [31:0]   dmaHp_ctrl_r_payload_data;
  wire       [1:0]    dmaHp_ctrl_r_payload_resp;
  wire                cmdFifo_io_push_ready;
  wire                cmdFifo_io_pop_valid;
  wire       [71:0]   cmdFifo_io_pop_payload;
  wire       [10:0]   cmdFifo_io_occupancy;
  wire       [10:0]   cmdFifo_io_availability;
  wire       [26:0]   t_sliceBase;
  wire       [31:0]   t_testCmd;
  wire       [31:0]   t_testCmd_1;
  wire       [31:0]   t_testCmd_2;
  wire       [22:0]   t_testCmd_3;
  wire       [576:0]  t_s2mm_tdata;
  wire                ctrlTool_readErrorFlag;
  wire                ctrlTool_writeErrorFlag;
  wire                ctrlTool_readHaltRequest;
  wire                ctrlTool_writeHaltRequest;
  wire                ctrlTool_writeJoinEvent_valid;
  wire                ctrlTool_writeJoinEvent_ready;
  wire                ctrlTool_writeOccur;
  reg        [1:0]    ctrlTool_writeRsp_resp;
  wire                ctrlTool_writeJoinEvent_translated_valid;
  wire                ctrlTool_writeJoinEvent_translated_ready;
  wire       [1:0]    ctrlTool_writeJoinEvent_translated_payload_resp;
  wire                t_ctrlTool_writeJoinEvent_translated_ready;
  reg                 t_ctrlTool_writeJoinEvent_translated_ready_1;
  wire                t_S00_AXIL_bvalid;
  reg                 t_S00_AXIL_bvalid_1;
  reg        [1:0]    t_S00_AXIL_bresp;
  wire                ctrlTool_readDataStage_valid;
  wire                ctrlTool_readDataStage_ready;
  wire       [31:0]   ctrlTool_readDataStage_payload_addr;
  wire       [2:0]    ctrlTool_readDataStage_payload_prot;
  reg                 S00_AXIL_ar_rValid;
  reg        [31:0]   S00_AXIL_ar_rData_addr;
  reg        [2:0]    S00_AXIL_ar_rData_prot;
  reg        [31:0]   ctrlTool_readRsp_data;
  reg        [1:0]    ctrlTool_readRsp_resp;
  wire                t_S00_AXIL_rvalid;
  wire       [31:0]   ctrlTool_readAddressMasked;
  wire       [31:0]   ctrlTool_writeAddressMasked;
  wire                ctrlTool_readOccur;
  reg        [31:0]   baseAddr;
  reg                 enTransfer;
  reg        [22:0]   lenPerTransfer;
  reg        [22:0]   pageSize;
  reg        [9:0]    sliceCntBound;
  reg        [9:0]    sliceCnt;
  reg        [26:0]   sliceBase;
  wire                enInc;
  reg                 cmdVld;
  wire                sliceCntOvf;
  wire       [71:0]   testCmd;
  wire                testCmdStream_valid;
  wire                testCmdStream_ready;
  wire       [71:0]   testCmdStream_payload;
  wire                testCmdStream_fire;
  reg                 t_testCmdStream_ready;
  wire                t_testCmdStreamPipe_valid;
  reg                 t_testCmdStream_ready_1;
  reg                 t_testCmdStreamPipe_valid_1;
  reg        [71:0]   t_testCmdStreamPipe_payload;
  wire                testCmdStreamPipe_valid;
  wire                testCmdStreamPipe_ready;
  wire       [71:0]   testCmdStreamPipe_payload;
  reg                 t_testCmdStreamPipe_valid_2;
  reg        [71:0]   t_testCmdStreamPipe_payload_1;
  wire                toplevel_cmdFifo_io_pop_m2sPipe_valid;
  wire                toplevel_cmdFifo_io_pop_m2sPipe_ready;
  wire       [71:0]   toplevel_cmdFifo_io_pop_m2sPipe_payload;
  reg                 toplevel_cmdFifo_io_pop_rValid;
  reg        [71:0]   toplevel_cmdFifo_io_pop_rData;
  (* mark_debug = "true" *) wire                fire;
  (* mark_debug = "true" *) reg                 flag;
  (* mark_debug = "true" *) reg        [31:0]   fireCnt;
  (* mark_debug = "true" *) reg        [23:0]   cnt;

  assign t_sliceBase = {4'd0, pageSize};
  assign t_testCmd_1 = (t_testCmd_2 + baseAddr);
  assign t_testCmd = t_testCmd_1;
  assign t_testCmd_2 = {5'd0, sliceBase};
  assign t_testCmd_3 = lenPerTransfer;
  SplitAxiDatamover dmaHp (
    .s2mm_tvalid          (1'b0                                         ), //i
    .s2mm_tready          (dmaHp_s2mm_tready                            ), //o
    .s2mm_tdata           (dmaHp_s2mm_tdata[511:0]                      ), //i
    .s2mm_tkeep           (dmaHp_s2mm_tkeep[63:0]                       ), //i
    .s2mm_tlast           (dmaHp_s2mm_tlast                             ), //i
    .mm2s_tvalid          (dmaHp_mm2s_tvalid                            ), //o
    .mm2s_tready          (1'b1                                         ), //i
    .mm2s_tdata           (dmaHp_mm2s_tdata[511:0]                      ), //o
    .mm2s_tkeep           (dmaHp_mm2s_tkeep[63:0]                       ), //o
    .mm2s_tlast           (dmaHp_mm2s_tlast                             ), //o
    .s2mmCmd_tvalid       (1'b0                                         ), //i
    .s2mmCmd_tready       (dmaHp_s2mmCmd_tready                         ), //o
    .s2mmCmd_tdata        (72'h000000000000000000                       ), //i
    .mm2sCmd_tvalid       (toplevel_cmdFifo_io_pop_m2sPipe_valid        ), //i
    .mm2sCmd_tready       (dmaHp_mm2sCmd_tready                         ), //o
    .mm2sCmd_tdata        (toplevel_cmdFifo_io_pop_m2sPipe_payload[71:0]), //i
    .m_axi_0_awvalid      (dmaHp_m_axi_0_awvalid                        ), //o
    .m_axi_0_awready      (m_axi_hp_0_awready                           ), //i
    .m_axi_0_awaddr       (dmaHp_m_axi_0_awaddr[31:0]                   ), //o
    .m_axi_0_awid         (dmaHp_m_axi_0_awid[3:0]                      ), //o
    .m_axi_0_awlen        (dmaHp_m_axi_0_awlen[7:0]                     ), //o
    .m_axi_0_awsize       (dmaHp_m_axi_0_awsize[2:0]                    ), //o
    .m_axi_0_awburst      (dmaHp_m_axi_0_awburst[1:0]                   ), //o
    .m_axi_0_awcache      (dmaHp_m_axi_0_awcache[3:0]                   ), //o
    .m_axi_0_awuser       (dmaHp_m_axi_0_awuser[3:0]                    ), //o
    .m_axi_0_awprot       (dmaHp_m_axi_0_awprot[2:0]                    ), //o
    .m_axi_0_wvalid       (dmaHp_m_axi_0_wvalid                         ), //o
    .m_axi_0_wready       (m_axi_hp_0_wready                            ), //i
    .m_axi_0_wdata        (dmaHp_m_axi_0_wdata[127:0]                   ), //o
    .m_axi_0_wstrb        (dmaHp_m_axi_0_wstrb[15:0]                    ), //o
    .m_axi_0_wlast        (dmaHp_m_axi_0_wlast                          ), //o
    .m_axi_0_bvalid       (m_axi_hp_0_bvalid                            ), //i
    .m_axi_0_bready       (dmaHp_m_axi_0_bready                         ), //o
    .m_axi_0_bid          (m_axi_hp_0_bid[3:0]                          ), //i
    .m_axi_0_bresp        (m_axi_hp_0_bresp[1:0]                        ), //i
    .m_axi_0_arvalid      (dmaHp_m_axi_0_arvalid                        ), //o
    .m_axi_0_arready      (m_axi_hp_0_arready                           ), //i
    .m_axi_0_araddr       (dmaHp_m_axi_0_araddr[31:0]                   ), //o
    .m_axi_0_arid         (dmaHp_m_axi_0_arid[3:0]                      ), //o
    .m_axi_0_arlen        (dmaHp_m_axi_0_arlen[7:0]                     ), //o
    .m_axi_0_arsize       (dmaHp_m_axi_0_arsize[2:0]                    ), //o
    .m_axi_0_arburst      (dmaHp_m_axi_0_arburst[1:0]                   ), //o
    .m_axi_0_arcache      (dmaHp_m_axi_0_arcache[3:0]                   ), //o
    .m_axi_0_aruser       (dmaHp_m_axi_0_aruser[3:0]                    ), //o
    .m_axi_0_arprot       (dmaHp_m_axi_0_arprot[2:0]                    ), //o
    .m_axi_0_rvalid       (m_axi_hp_0_rvalid                            ), //i
    .m_axi_0_rready       (dmaHp_m_axi_0_rready                         ), //o
    .m_axi_0_rdata        (m_axi_hp_0_rdata[127:0]                      ), //i
    .m_axi_0_rid          (m_axi_hp_0_rid[3:0]                          ), //i
    .m_axi_0_rresp        (m_axi_hp_0_rresp[1:0]                        ), //i
    .m_axi_0_rlast        (m_axi_hp_0_rlast                             ), //i
    .m_axi_1_awvalid      (dmaHp_m_axi_1_awvalid                        ), //o
    .m_axi_1_awready      (m_axi_hp_1_awready                           ), //i
    .m_axi_1_awaddr       (dmaHp_m_axi_1_awaddr[31:0]                   ), //o
    .m_axi_1_awid         (dmaHp_m_axi_1_awid[3:0]                      ), //o
    .m_axi_1_awlen        (dmaHp_m_axi_1_awlen[7:0]                     ), //o
    .m_axi_1_awsize       (dmaHp_m_axi_1_awsize[2:0]                    ), //o
    .m_axi_1_awburst      (dmaHp_m_axi_1_awburst[1:0]                   ), //o
    .m_axi_1_awcache      (dmaHp_m_axi_1_awcache[3:0]                   ), //o
    .m_axi_1_awuser       (dmaHp_m_axi_1_awuser[3:0]                    ), //o
    .m_axi_1_awprot       (dmaHp_m_axi_1_awprot[2:0]                    ), //o
    .m_axi_1_wvalid       (dmaHp_m_axi_1_wvalid                         ), //o
    .m_axi_1_wready       (m_axi_hp_1_wready                            ), //i
    .m_axi_1_wdata        (dmaHp_m_axi_1_wdata[127:0]                   ), //o
    .m_axi_1_wstrb        (dmaHp_m_axi_1_wstrb[15:0]                    ), //o
    .m_axi_1_wlast        (dmaHp_m_axi_1_wlast                          ), //o
    .m_axi_1_bvalid       (m_axi_hp_1_bvalid                            ), //i
    .m_axi_1_bready       (dmaHp_m_axi_1_bready                         ), //o
    .m_axi_1_bid          (m_axi_hp_1_bid[3:0]                          ), //i
    .m_axi_1_bresp        (m_axi_hp_1_bresp[1:0]                        ), //i
    .m_axi_1_arvalid      (dmaHp_m_axi_1_arvalid                        ), //o
    .m_axi_1_arready      (m_axi_hp_1_arready                           ), //i
    .m_axi_1_araddr       (dmaHp_m_axi_1_araddr[31:0]                   ), //o
    .m_axi_1_arid         (dmaHp_m_axi_1_arid[3:0]                      ), //o
    .m_axi_1_arlen        (dmaHp_m_axi_1_arlen[7:0]                     ), //o
    .m_axi_1_arsize       (dmaHp_m_axi_1_arsize[2:0]                    ), //o
    .m_axi_1_arburst      (dmaHp_m_axi_1_arburst[1:0]                   ), //o
    .m_axi_1_arcache      (dmaHp_m_axi_1_arcache[3:0]                   ), //o
    .m_axi_1_aruser       (dmaHp_m_axi_1_aruser[3:0]                    ), //o
    .m_axi_1_arprot       (dmaHp_m_axi_1_arprot[2:0]                    ), //o
    .m_axi_1_rvalid       (m_axi_hp_1_rvalid                            ), //i
    .m_axi_1_rready       (dmaHp_m_axi_1_rready                         ), //o
    .m_axi_1_rdata        (m_axi_hp_1_rdata[127:0]                      ), //i
    .m_axi_1_rid          (m_axi_hp_1_rid[3:0]                          ), //i
    .m_axi_1_rresp        (m_axi_hp_1_rresp[1:0]                        ), //i
    .m_axi_1_rlast        (m_axi_hp_1_rlast                             ), //i
    .m_axi_2_awvalid      (dmaHp_m_axi_2_awvalid                        ), //o
    .m_axi_2_awready      (m_axi_hp_2_awready                           ), //i
    .m_axi_2_awaddr       (dmaHp_m_axi_2_awaddr[31:0]                   ), //o
    .m_axi_2_awid         (dmaHp_m_axi_2_awid[3:0]                      ), //o
    .m_axi_2_awlen        (dmaHp_m_axi_2_awlen[7:0]                     ), //o
    .m_axi_2_awsize       (dmaHp_m_axi_2_awsize[2:0]                    ), //o
    .m_axi_2_awburst      (dmaHp_m_axi_2_awburst[1:0]                   ), //o
    .m_axi_2_awcache      (dmaHp_m_axi_2_awcache[3:0]                   ), //o
    .m_axi_2_awuser       (dmaHp_m_axi_2_awuser[3:0]                    ), //o
    .m_axi_2_awprot       (dmaHp_m_axi_2_awprot[2:0]                    ), //o
    .m_axi_2_wvalid       (dmaHp_m_axi_2_wvalid                         ), //o
    .m_axi_2_wready       (m_axi_hp_2_wready                            ), //i
    .m_axi_2_wdata        (dmaHp_m_axi_2_wdata[127:0]                   ), //o
    .m_axi_2_wstrb        (dmaHp_m_axi_2_wstrb[15:0]                    ), //o
    .m_axi_2_wlast        (dmaHp_m_axi_2_wlast                          ), //o
    .m_axi_2_bvalid       (m_axi_hp_2_bvalid                            ), //i
    .m_axi_2_bready       (dmaHp_m_axi_2_bready                         ), //o
    .m_axi_2_bid          (m_axi_hp_2_bid[3:0]                          ), //i
    .m_axi_2_bresp        (m_axi_hp_2_bresp[1:0]                        ), //i
    .m_axi_2_arvalid      (dmaHp_m_axi_2_arvalid                        ), //o
    .m_axi_2_arready      (m_axi_hp_2_arready                           ), //i
    .m_axi_2_araddr       (dmaHp_m_axi_2_araddr[31:0]                   ), //o
    .m_axi_2_arid         (dmaHp_m_axi_2_arid[3:0]                      ), //o
    .m_axi_2_arlen        (dmaHp_m_axi_2_arlen[7:0]                     ), //o
    .m_axi_2_arsize       (dmaHp_m_axi_2_arsize[2:0]                    ), //o
    .m_axi_2_arburst      (dmaHp_m_axi_2_arburst[1:0]                   ), //o
    .m_axi_2_arcache      (dmaHp_m_axi_2_arcache[3:0]                   ), //o
    .m_axi_2_aruser       (dmaHp_m_axi_2_aruser[3:0]                    ), //o
    .m_axi_2_arprot       (dmaHp_m_axi_2_arprot[2:0]                    ), //o
    .m_axi_2_rvalid       (m_axi_hp_2_rvalid                            ), //i
    .m_axi_2_rready       (dmaHp_m_axi_2_rready                         ), //o
    .m_axi_2_rdata        (m_axi_hp_2_rdata[127:0]                      ), //i
    .m_axi_2_rid          (m_axi_hp_2_rid[3:0]                          ), //i
    .m_axi_2_rresp        (m_axi_hp_2_rresp[1:0]                        ), //i
    .m_axi_2_rlast        (m_axi_hp_2_rlast                             ), //i
    .m_axi_3_awvalid      (dmaHp_m_axi_3_awvalid                        ), //o
    .m_axi_3_awready      (m_axi_hp_3_awready                           ), //i
    .m_axi_3_awaddr       (dmaHp_m_axi_3_awaddr[31:0]                   ), //o
    .m_axi_3_awid         (dmaHp_m_axi_3_awid[3:0]                      ), //o
    .m_axi_3_awlen        (dmaHp_m_axi_3_awlen[7:0]                     ), //o
    .m_axi_3_awsize       (dmaHp_m_axi_3_awsize[2:0]                    ), //o
    .m_axi_3_awburst      (dmaHp_m_axi_3_awburst[1:0]                   ), //o
    .m_axi_3_awcache      (dmaHp_m_axi_3_awcache[3:0]                   ), //o
    .m_axi_3_awuser       (dmaHp_m_axi_3_awuser[3:0]                    ), //o
    .m_axi_3_awprot       (dmaHp_m_axi_3_awprot[2:0]                    ), //o
    .m_axi_3_wvalid       (dmaHp_m_axi_3_wvalid                         ), //o
    .m_axi_3_wready       (m_axi_hp_3_wready                            ), //i
    .m_axi_3_wdata        (dmaHp_m_axi_3_wdata[127:0]                   ), //o
    .m_axi_3_wstrb        (dmaHp_m_axi_3_wstrb[15:0]                    ), //o
    .m_axi_3_wlast        (dmaHp_m_axi_3_wlast                          ), //o
    .m_axi_3_bvalid       (m_axi_hp_3_bvalid                            ), //i
    .m_axi_3_bready       (dmaHp_m_axi_3_bready                         ), //o
    .m_axi_3_bid          (m_axi_hp_3_bid[3:0]                          ), //i
    .m_axi_3_bresp        (m_axi_hp_3_bresp[1:0]                        ), //i
    .m_axi_3_arvalid      (dmaHp_m_axi_3_arvalid                        ), //o
    .m_axi_3_arready      (m_axi_hp_3_arready                           ), //i
    .m_axi_3_araddr       (dmaHp_m_axi_3_araddr[31:0]                   ), //o
    .m_axi_3_arid         (dmaHp_m_axi_3_arid[3:0]                      ), //o
    .m_axi_3_arlen        (dmaHp_m_axi_3_arlen[7:0]                     ), //o
    .m_axi_3_arsize       (dmaHp_m_axi_3_arsize[2:0]                    ), //o
    .m_axi_3_arburst      (dmaHp_m_axi_3_arburst[1:0]                   ), //o
    .m_axi_3_arcache      (dmaHp_m_axi_3_arcache[3:0]                   ), //o
    .m_axi_3_aruser       (dmaHp_m_axi_3_aruser[3:0]                    ), //o
    .m_axi_3_arprot       (dmaHp_m_axi_3_arprot[2:0]                    ), //o
    .m_axi_3_rvalid       (m_axi_hp_3_rvalid                            ), //i
    .m_axi_3_rready       (dmaHp_m_axi_3_rready                         ), //o
    .m_axi_3_rdata        (m_axi_hp_3_rdata[127:0]                      ), //i
    .m_axi_3_rid          (m_axi_hp_3_rid[3:0]                          ), //i
    .m_axi_3_rresp        (m_axi_hp_3_rresp[1:0]                        ), //i
    .m_axi_3_rlast        (m_axi_hp_3_rlast                             ), //i
    .ctrl_aw_valid        (dmaHp_ctrl_aw_valid                          ), //i
    .ctrl_aw_ready        (dmaHp_ctrl_aw_ready                          ), //o
    .ctrl_aw_payload_addr (dmaHp_ctrl_aw_payload_addr[31:0]             ), //i
    .ctrl_aw_payload_prot (dmaHp_ctrl_aw_payload_prot[2:0]              ), //i
    .ctrl_w_valid         (dmaHp_ctrl_w_valid                           ), //i
    .ctrl_w_ready         (dmaHp_ctrl_w_ready                           ), //o
    .ctrl_w_payload_data  (dmaHp_ctrl_w_payload_data[31:0]              ), //i
    .ctrl_w_payload_strb  (dmaHp_ctrl_w_payload_strb[3:0]               ), //i
    .ctrl_b_valid         (dmaHp_ctrl_b_valid                           ), //o
    .ctrl_b_ready         (dmaHp_ctrl_b_ready                           ), //i
    .ctrl_b_payload_resp  (dmaHp_ctrl_b_payload_resp[1:0]               ), //o
    .ctrl_ar_valid        (dmaHp_ctrl_ar_valid                          ), //i
    .ctrl_ar_ready        (dmaHp_ctrl_ar_ready                          ), //o
    .ctrl_ar_payload_addr (dmaHp_ctrl_ar_payload_addr[31:0]             ), //i
    .ctrl_ar_payload_prot (dmaHp_ctrl_ar_payload_prot[2:0]              ), //i
    .ctrl_r_valid         (dmaHp_ctrl_r_valid                           ), //o
    .ctrl_r_ready         (dmaHp_ctrl_r_ready                           ), //i
    .ctrl_r_payload_data  (dmaHp_ctrl_r_payload_data[31:0]              ), //o
    .ctrl_r_payload_resp  (dmaHp_ctrl_r_payload_resp[1:0]               ), //o
    .aresetn              (aresetn                                      ), //i
    .clk                  (clk                                          ), //i
    .resetn               (resetn                                       )  //i
  );
  StreamFifo cmdFifo (
    .io_push_valid   (testCmdStreamPipe_valid        ), //i
    .io_push_ready   (cmdFifo_io_push_ready          ), //o
    .io_push_payload (testCmdStreamPipe_payload[71:0]), //i
    .io_pop_valid    (cmdFifo_io_pop_valid           ), //o
    .io_pop_ready    (cmdFifo_io_pop_ready           ), //i
    .io_pop_payload  (cmdFifo_io_pop_payload[71:0]   ), //o
    .io_flush        (1'b0                           ), //i
    .io_occupancy    (cmdFifo_io_occupancy[10:0]     ), //o
    .io_availability (cmdFifo_io_availability[10:0]  ), //o
    .clk             (clk                            ), //i
    .resetn          (resetn                         )  //i
  );
  assign m_axi_hp_0_arvalid = dmaHp_m_axi_0_arvalid;
  assign m_axi_hp_0_araddr = dmaHp_m_axi_0_araddr;
  assign m_axi_hp_0_arid = dmaHp_m_axi_0_arid;
  assign m_axi_hp_0_arlen = dmaHp_m_axi_0_arlen;
  assign m_axi_hp_0_arsize = dmaHp_m_axi_0_arsize;
  assign m_axi_hp_0_arburst = dmaHp_m_axi_0_arburst;
  assign m_axi_hp_0_arcache = dmaHp_m_axi_0_arcache;
  assign m_axi_hp_0_aruser = dmaHp_m_axi_0_aruser;
  assign m_axi_hp_0_arprot = dmaHp_m_axi_0_arprot;
  assign m_axi_hp_0_awvalid = dmaHp_m_axi_0_awvalid;
  assign m_axi_hp_0_awaddr = dmaHp_m_axi_0_awaddr;
  assign m_axi_hp_0_awid = dmaHp_m_axi_0_awid;
  assign m_axi_hp_0_awlen = dmaHp_m_axi_0_awlen;
  assign m_axi_hp_0_awsize = dmaHp_m_axi_0_awsize;
  assign m_axi_hp_0_awburst = dmaHp_m_axi_0_awburst;
  assign m_axi_hp_0_awcache = dmaHp_m_axi_0_awcache;
  assign m_axi_hp_0_awuser = dmaHp_m_axi_0_awuser;
  assign m_axi_hp_0_awprot = dmaHp_m_axi_0_awprot;
  assign m_axi_hp_0_wvalid = dmaHp_m_axi_0_wvalid;
  assign m_axi_hp_0_wdata = dmaHp_m_axi_0_wdata;
  assign m_axi_hp_0_wstrb = dmaHp_m_axi_0_wstrb;
  assign m_axi_hp_0_wlast = dmaHp_m_axi_0_wlast;
  assign m_axi_hp_0_rready = dmaHp_m_axi_0_rready;
  assign m_axi_hp_0_bready = dmaHp_m_axi_0_bready;
  assign m_axi_hp_1_arvalid = dmaHp_m_axi_1_arvalid;
  assign m_axi_hp_1_araddr = dmaHp_m_axi_1_araddr;
  assign m_axi_hp_1_arid = dmaHp_m_axi_1_arid;
  assign m_axi_hp_1_arlen = dmaHp_m_axi_1_arlen;
  assign m_axi_hp_1_arsize = dmaHp_m_axi_1_arsize;
  assign m_axi_hp_1_arburst = dmaHp_m_axi_1_arburst;
  assign m_axi_hp_1_arcache = dmaHp_m_axi_1_arcache;
  assign m_axi_hp_1_aruser = dmaHp_m_axi_1_aruser;
  assign m_axi_hp_1_arprot = dmaHp_m_axi_1_arprot;
  assign m_axi_hp_1_awvalid = dmaHp_m_axi_1_awvalid;
  assign m_axi_hp_1_awaddr = dmaHp_m_axi_1_awaddr;
  assign m_axi_hp_1_awid = dmaHp_m_axi_1_awid;
  assign m_axi_hp_1_awlen = dmaHp_m_axi_1_awlen;
  assign m_axi_hp_1_awsize = dmaHp_m_axi_1_awsize;
  assign m_axi_hp_1_awburst = dmaHp_m_axi_1_awburst;
  assign m_axi_hp_1_awcache = dmaHp_m_axi_1_awcache;
  assign m_axi_hp_1_awuser = dmaHp_m_axi_1_awuser;
  assign m_axi_hp_1_awprot = dmaHp_m_axi_1_awprot;
  assign m_axi_hp_1_wvalid = dmaHp_m_axi_1_wvalid;
  assign m_axi_hp_1_wdata = dmaHp_m_axi_1_wdata;
  assign m_axi_hp_1_wstrb = dmaHp_m_axi_1_wstrb;
  assign m_axi_hp_1_wlast = dmaHp_m_axi_1_wlast;
  assign m_axi_hp_1_rready = dmaHp_m_axi_1_rready;
  assign m_axi_hp_1_bready = dmaHp_m_axi_1_bready;
  assign m_axi_hp_2_arvalid = dmaHp_m_axi_2_arvalid;
  assign m_axi_hp_2_araddr = dmaHp_m_axi_2_araddr;
  assign m_axi_hp_2_arid = dmaHp_m_axi_2_arid;
  assign m_axi_hp_2_arlen = dmaHp_m_axi_2_arlen;
  assign m_axi_hp_2_arsize = dmaHp_m_axi_2_arsize;
  assign m_axi_hp_2_arburst = dmaHp_m_axi_2_arburst;
  assign m_axi_hp_2_arcache = dmaHp_m_axi_2_arcache;
  assign m_axi_hp_2_aruser = dmaHp_m_axi_2_aruser;
  assign m_axi_hp_2_arprot = dmaHp_m_axi_2_arprot;
  assign m_axi_hp_2_awvalid = dmaHp_m_axi_2_awvalid;
  assign m_axi_hp_2_awaddr = dmaHp_m_axi_2_awaddr;
  assign m_axi_hp_2_awid = dmaHp_m_axi_2_awid;
  assign m_axi_hp_2_awlen = dmaHp_m_axi_2_awlen;
  assign m_axi_hp_2_awsize = dmaHp_m_axi_2_awsize;
  assign m_axi_hp_2_awburst = dmaHp_m_axi_2_awburst;
  assign m_axi_hp_2_awcache = dmaHp_m_axi_2_awcache;
  assign m_axi_hp_2_awuser = dmaHp_m_axi_2_awuser;
  assign m_axi_hp_2_awprot = dmaHp_m_axi_2_awprot;
  assign m_axi_hp_2_wvalid = dmaHp_m_axi_2_wvalid;
  assign m_axi_hp_2_wdata = dmaHp_m_axi_2_wdata;
  assign m_axi_hp_2_wstrb = dmaHp_m_axi_2_wstrb;
  assign m_axi_hp_2_wlast = dmaHp_m_axi_2_wlast;
  assign m_axi_hp_2_rready = dmaHp_m_axi_2_rready;
  assign m_axi_hp_2_bready = dmaHp_m_axi_2_bready;
  assign m_axi_hp_3_arvalid = dmaHp_m_axi_3_arvalid;
  assign m_axi_hp_3_araddr = dmaHp_m_axi_3_araddr;
  assign m_axi_hp_3_arid = dmaHp_m_axi_3_arid;
  assign m_axi_hp_3_arlen = dmaHp_m_axi_3_arlen;
  assign m_axi_hp_3_arsize = dmaHp_m_axi_3_arsize;
  assign m_axi_hp_3_arburst = dmaHp_m_axi_3_arburst;
  assign m_axi_hp_3_arcache = dmaHp_m_axi_3_arcache;
  assign m_axi_hp_3_aruser = dmaHp_m_axi_3_aruser;
  assign m_axi_hp_3_arprot = dmaHp_m_axi_3_arprot;
  assign m_axi_hp_3_awvalid = dmaHp_m_axi_3_awvalid;
  assign m_axi_hp_3_awaddr = dmaHp_m_axi_3_awaddr;
  assign m_axi_hp_3_awid = dmaHp_m_axi_3_awid;
  assign m_axi_hp_3_awlen = dmaHp_m_axi_3_awlen;
  assign m_axi_hp_3_awsize = dmaHp_m_axi_3_awsize;
  assign m_axi_hp_3_awburst = dmaHp_m_axi_3_awburst;
  assign m_axi_hp_3_awcache = dmaHp_m_axi_3_awcache;
  assign m_axi_hp_3_awuser = dmaHp_m_axi_3_awuser;
  assign m_axi_hp_3_awprot = dmaHp_m_axi_3_awprot;
  assign m_axi_hp_3_wvalid = dmaHp_m_axi_3_wvalid;
  assign m_axi_hp_3_wdata = dmaHp_m_axi_3_wdata;
  assign m_axi_hp_3_wstrb = dmaHp_m_axi_3_wstrb;
  assign m_axi_hp_3_wlast = dmaHp_m_axi_3_wlast;
  assign m_axi_hp_3_rready = dmaHp_m_axi_3_rready;
  assign m_axi_hp_3_bready = dmaHp_m_axi_3_bready;
  assign t_s2mm_tdata = 577'h0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000;
  assign dmaHp_s2mm_tdata = t_s2mm_tdata[511 : 0];
  assign dmaHp_s2mm_tkeep = t_s2mm_tdata[575 : 512];
  assign dmaHp_s2mm_tlast = t_s2mm_tdata[576];
  assign ctrlTool_readErrorFlag = 1'b0;
  assign ctrlTool_writeErrorFlag = 1'b0;
  assign ctrlTool_readHaltRequest = 1'b0;
  assign ctrlTool_writeHaltRequest = 1'b0;
  assign ctrlTool_writeOccur = (ctrlTool_writeJoinEvent_valid && ctrlTool_writeJoinEvent_ready);
  assign ctrlTool_writeJoinEvent_valid = (S00_AXIL_awvalid && S00_AXIL_wvalid);
  assign S00_AXIL_awready = ctrlTool_writeOccur;
  assign S00_AXIL_wready = ctrlTool_writeOccur;
  assign ctrlTool_writeJoinEvent_translated_valid = ctrlTool_writeJoinEvent_valid;
  assign ctrlTool_writeJoinEvent_ready = ctrlTool_writeJoinEvent_translated_ready;
  assign ctrlTool_writeJoinEvent_translated_payload_resp = ctrlTool_writeRsp_resp;
  assign t_ctrlTool_writeJoinEvent_translated_ready = (! ctrlTool_writeHaltRequest);
  assign ctrlTool_writeJoinEvent_translated_ready = (t_ctrlTool_writeJoinEvent_translated_ready_1 && t_ctrlTool_writeJoinEvent_translated_ready);
  always @(*) begin
    t_ctrlTool_writeJoinEvent_translated_ready_1 = S00_AXIL_bready;
    if((! t_S00_AXIL_bvalid)) begin
      t_ctrlTool_writeJoinEvent_translated_ready_1 = 1'b1;
    end
  end

  assign t_S00_AXIL_bvalid = t_S00_AXIL_bvalid_1;
  assign S00_AXIL_bvalid = t_S00_AXIL_bvalid;
  assign S00_AXIL_bresp = t_S00_AXIL_bresp;
  always @(*) begin
    S00_AXIL_arready = ctrlTool_readDataStage_ready;
    if((! ctrlTool_readDataStage_valid)) begin
      S00_AXIL_arready = 1'b1;
    end
  end

  assign ctrlTool_readDataStage_valid = S00_AXIL_ar_rValid;
  assign ctrlTool_readDataStage_payload_addr = S00_AXIL_ar_rData_addr;
  assign ctrlTool_readDataStage_payload_prot = S00_AXIL_ar_rData_prot;
  assign t_S00_AXIL_rvalid = (! ctrlTool_readHaltRequest);
  assign ctrlTool_readDataStage_ready = (S00_AXIL_rready && t_S00_AXIL_rvalid);
  assign S00_AXIL_rvalid = (ctrlTool_readDataStage_valid && t_S00_AXIL_rvalid);
  assign S00_AXIL_rdata = ctrlTool_readRsp_data;
  assign S00_AXIL_rresp = ctrlTool_readRsp_resp;
  always @(*) begin
    if(ctrlTool_writeErrorFlag) begin
      ctrlTool_writeRsp_resp = 2'b10;
    end else begin
      ctrlTool_writeRsp_resp = 2'b00;
    end
  end

  always @(*) begin
    if(ctrlTool_readErrorFlag) begin
      ctrlTool_readRsp_resp = 2'b10;
    end else begin
      ctrlTool_readRsp_resp = 2'b00;
    end
  end

  always @(*) begin
    ctrlTool_readRsp_data = 32'h00000000;
    case(ctrlTool_readAddressMasked)
      32'h00000014 : begin
        ctrlTool_readRsp_data[23 : 0] = cnt;
      end
      32'h0000001c : begin
        ctrlTool_readRsp_data[31 : 0] = fireCnt;
      end
      default : begin
      end
    endcase
  end

  assign ctrlTool_readAddressMasked = (ctrlTool_readDataStage_payload_addr & (~ 32'h00000003));
  assign ctrlTool_writeAddressMasked = (S00_AXIL_awaddr & (~ 32'h00000003));
  assign ctrlTool_readOccur = (S00_AXIL_rvalid && S00_AXIL_rready);
  assign sliceCntOvf = (sliceCnt == sliceCntBound);
  assign testCmd = {{{{{{{4'b0000,4'b0000},t_testCmd},1'b0},sliceCntOvf},6'h00},1'b1},t_testCmd_3};
  assign testCmdStream_valid = cmdVld;
  assign testCmdStream_payload = testCmd;
  assign testCmdStream_fire = (testCmdStream_valid && testCmdStream_ready);
  assign enInc = testCmdStream_fire;
  assign testCmdStream_ready = (t_testCmdStream_ready && enTransfer);
  always @(*) begin
    t_testCmdStream_ready = t_testCmdStream_ready_1;
    if((! t_testCmdStreamPipe_valid)) begin
      t_testCmdStream_ready = 1'b1;
    end
  end

  assign t_testCmdStreamPipe_valid = t_testCmdStreamPipe_valid_1;
  always @(*) begin
    t_testCmdStream_ready_1 = testCmdStreamPipe_ready;
    if((! testCmdStreamPipe_valid)) begin
      t_testCmdStream_ready_1 = 1'b1;
    end
  end

  assign testCmdStreamPipe_valid = t_testCmdStreamPipe_valid_2;
  assign testCmdStreamPipe_payload = t_testCmdStreamPipe_payload_1;
  assign testCmdStreamPipe_ready = cmdFifo_io_push_ready;
  always @(*) begin
    cmdFifo_io_pop_ready = toplevel_cmdFifo_io_pop_m2sPipe_ready;
    if((! toplevel_cmdFifo_io_pop_m2sPipe_valid)) begin
      cmdFifo_io_pop_ready = 1'b1;
    end
  end

  assign toplevel_cmdFifo_io_pop_m2sPipe_valid = toplevel_cmdFifo_io_pop_rValid;
  assign toplevel_cmdFifo_io_pop_m2sPipe_payload = toplevel_cmdFifo_io_pop_rData;
  assign toplevel_cmdFifo_io_pop_m2sPipe_ready = dmaHp_mm2sCmd_tready;
  assign fire = (dmaHp_mm2s_tvalid && 1'b1);
  always @(posedge clk or negedge resetn) begin
    if(!resetn) begin
      t_S00_AXIL_bvalid_1 <= 1'b0;
      S00_AXIL_ar_rValid <= 1'b0;
      baseAddr <= 32'h00000000;
      enTransfer <= 1'b0;
      lenPerTransfer <= 23'h000000;
      pageSize <= 23'h000000;
      sliceCntBound <= 10'h000;
      sliceCnt <= 10'h000;
      sliceBase <= 27'h0000000;
      cmdVld <= 1'b1;
      t_testCmdStreamPipe_valid_1 <= 1'b0;
      t_testCmdStreamPipe_valid_2 <= 1'b0;
      toplevel_cmdFifo_io_pop_rValid <= 1'b0;
      flag <= 1'b0;
      fireCnt <= 32'h00000000;
      cnt <= 24'h000000;
    end else begin
      if(t_ctrlTool_writeJoinEvent_translated_ready_1) begin
        t_S00_AXIL_bvalid_1 <= (ctrlTool_writeJoinEvent_translated_valid && t_ctrlTool_writeJoinEvent_translated_ready);
      end
      if(S00_AXIL_arready) begin
        S00_AXIL_ar_rValid <= S00_AXIL_arvalid;
      end
      if((enInc && cmdVld)) begin
        sliceCnt <= (sliceCnt + 10'h001);
        sliceBase <= (sliceBase + t_sliceBase);
        if(sliceCntOvf) begin
          sliceCnt <= 10'h000;
          cmdVld <= 1'b0;
        end
      end
      if(t_testCmdStream_ready) begin
        t_testCmdStreamPipe_valid_1 <= (testCmdStream_valid && enTransfer);
      end
      if(t_testCmdStream_ready_1) begin
        t_testCmdStreamPipe_valid_2 <= t_testCmdStreamPipe_valid;
      end
      if(cmdFifo_io_pop_ready) begin
        toplevel_cmdFifo_io_pop_rValid <= cmdFifo_io_pop_valid;
      end
      if(fire) begin
        flag <= 1'b1;
      end
      if((fire && dmaHp_mm2s_tlast)) begin
        flag <= 1'b0;
      end
      if(fire) begin
        fireCnt <= (fireCnt + 32'h00000001);
      end
      if(flag) begin
        cnt <= (cnt + 24'h000001);
      end
      case(ctrlTool_writeAddressMasked)
        32'h00000000 : begin
          if(ctrlTool_writeOccur) begin
            baseAddr <= S00_AXIL_wdata[31 : 0];
          end
        end
        32'h00000004 : begin
          if(ctrlTool_writeOccur) begin
            enTransfer <= S00_AXIL_wdata[0];
          end
        end
        32'h00000008 : begin
          if(ctrlTool_writeOccur) begin
            lenPerTransfer <= S00_AXIL_wdata[22 : 0];
          end
        end
        32'h0000000c : begin
          if(ctrlTool_writeOccur) begin
            sliceCntBound <= S00_AXIL_wdata[9 : 0];
          end
        end
        32'h00000010 : begin
          if(ctrlTool_writeOccur) begin
            pageSize <= S00_AXIL_wdata[22 : 0];
          end
        end
        default : begin
        end
      endcase
    end
  end

  always @(posedge clk) begin
    if(t_ctrlTool_writeJoinEvent_translated_ready_1) begin
      t_S00_AXIL_bresp <= ctrlTool_writeJoinEvent_translated_payload_resp;
    end
    if(S00_AXIL_arready) begin
      S00_AXIL_ar_rData_addr <= S00_AXIL_araddr;
      S00_AXIL_ar_rData_prot <= S00_AXIL_arprot;
    end
    if(t_testCmdStream_ready) begin
      t_testCmdStreamPipe_payload <= testCmdStream_payload;
    end
    if(t_testCmdStream_ready_1) begin
      t_testCmdStreamPipe_payload_1 <= t_testCmdStreamPipe_payload;
    end
    if(cmdFifo_io_pop_ready) begin
      toplevel_cmdFifo_io_pop_rData <= cmdFifo_io_pop_payload;
    end
  end


endmodule

module StreamFifo (
  input               io_push_valid,
  output              io_push_ready,
  input      [71:0]   io_push_payload,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [71:0]   io_pop_payload,
  input               io_flush,
  output     [10:0]   io_occupancy,
  output     [10:0]   io_availability,
  input               clk,
  input               resetn
);

  reg        [71:0]   t_logic_ram_port1;
  reg                 t_1;
  wire                logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [10:0]   logic_ptr_push;
  reg        [10:0]   logic_ptr_pop;
  wire       [10:0]   logic_ptr_occupancy;
  wire       [10:0]   logic_ptr_popOnIo;
  reg                 logic_ptr_wentUp;
  wire                logic_ptr_arb_fmax_emptyTracker_incr;
  wire                logic_ptr_arb_fmax_emptyTracker_decr;
  reg        [10:0]   logic_ptr_arb_fmax_emptyTracker_value;
  (* keep , syn_keep *) wire       [10:0]   logic_ptr_arb_fmax_emptyTracker_plusOne /* synthesis syn_keep = 1 */ ;
  (* keep , syn_keep *) wire       [10:0]   logic_ptr_arb_fmax_emptyTracker_minusOne /* synthesis syn_keep = 1 */ ;
  wire                logic_ptr_arb_fmax_fullTracker_incr;
  wire                logic_ptr_arb_fmax_fullTracker_decr;
  reg        [10:0]   logic_ptr_arb_fmax_fullTracker_value;
  (* keep , syn_keep *) wire       [10:0]   logic_ptr_arb_fmax_fullTracker_plusOne /* synthesis syn_keep = 1 */ ;
  (* keep , syn_keep *) wire       [10:0]   logic_ptr_arb_fmax_fullTracker_minusOne /* synthesis syn_keep = 1 */ ;
  wire                io_push_fire;
  wire                io_pop_fire;
  wire                logic_ptr_fmax_incr;
  wire                logic_ptr_fmax_decr;
  reg        [10:0]   logic_ptr_fmax_value;
  (* keep , syn_keep *) wire       [10:0]   logic_ptr_fmax_plusOne /* synthesis syn_keep = 1 */ ;
  (* keep , syn_keep *) wire       [10:0]   logic_ptr_fmax_minusOne /* synthesis syn_keep = 1 */ ;
  wire                logic_push_onRam_write_valid;
  wire       [9:0]    logic_push_onRam_write_payload_address;
  wire       [71:0]   logic_push_onRam_write_payload_data;
  wire                logic_pop_addressGen_valid;
  reg                 logic_pop_addressGen_ready;
  wire       [9:0]    logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire                logic_pop_sync_readArbitation_valid;
  wire                logic_pop_sync_readArbitation_ready;
  wire       [9:0]    logic_pop_sync_readArbitation_payload;
  reg                 logic_pop_addressGen_rValid;
  reg        [9:0]    logic_pop_addressGen_rData;
  wire                logic_pop_sync_readPort_cmd_valid;
  wire       [9:0]    logic_pop_sync_readPort_cmd_payload;
  wire       [71:0]   logic_pop_sync_readPort_rsp;
  wire                logic_pop_sync_readArbitation_translated_valid;
  wire                logic_pop_sync_readArbitation_translated_ready;
  wire       [71:0]   logic_pop_sync_readArbitation_translated_payload;
  wire                logic_pop_sync_readArbitation_fire;
  reg        [10:0]   logic_pop_sync_popReg;
  wire                logic_fmaxAvail_incr;
  wire                logic_fmaxAvail_decr;
  reg        [10:0]   logic_fmaxAvail_value;
  (* keep , syn_keep *) wire       [10:0]   logic_fmaxAvail_plusOne /* synthesis syn_keep = 1 */ ;
  (* keep , syn_keep *) wire       [10:0]   logic_fmaxAvail_minusOne /* synthesis syn_keep = 1 */ ;
  reg [71:0] logic_ram [0:1023];

  always @(posedge clk) begin
    if(t_1) begin
      logic_ram[logic_push_onRam_write_payload_address] <= logic_push_onRam_write_payload_data;
    end
  end

  always @(posedge clk) begin
    if(logic_pop_sync_readPort_cmd_valid) begin
      t_logic_ram_port1 <= logic_ram[logic_pop_sync_readPort_cmd_payload];
    end
  end

  always @(*) begin
    t_1 = 1'b0;
    if(logic_push_onRam_write_valid) begin
      t_1 = 1'b1;
    end
  end

  assign logic_ptr_arb_fmax_emptyTracker_plusOne = (logic_ptr_arb_fmax_emptyTracker_value + 11'h001);
  assign logic_ptr_arb_fmax_emptyTracker_minusOne = (logic_ptr_arb_fmax_emptyTracker_value - 11'h001);
  assign logic_ptr_arb_fmax_emptyTracker_incr = logic_ptr_doPop;
  assign logic_ptr_arb_fmax_emptyTracker_decr = logic_ptr_doPush;
  assign logic_ptr_empty = logic_ptr_arb_fmax_emptyTracker_value[10];
  assign logic_ptr_arb_fmax_fullTracker_plusOne = (logic_ptr_arb_fmax_fullTracker_value + 11'h001);
  assign logic_ptr_arb_fmax_fullTracker_minusOne = (logic_ptr_arb_fmax_fullTracker_value - 11'h001);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign logic_ptr_arb_fmax_fullTracker_incr = io_push_fire;
  assign io_pop_fire = (io_pop_valid && io_pop_ready);
  assign logic_ptr_arb_fmax_fullTracker_decr = io_pop_fire;
  assign logic_ptr_full = logic_ptr_arb_fmax_fullTracker_value[10];
  assign logic_ptr_fmax_plusOne = (logic_ptr_fmax_value + 11'h001);
  assign logic_ptr_fmax_minusOne = (logic_ptr_fmax_value - 11'h001);
  assign logic_ptr_fmax_incr = io_push_fire;
  assign logic_ptr_fmax_decr = io_pop_fire;
  assign logic_ptr_occupancy = logic_ptr_fmax_value;
  assign io_push_ready = (! logic_ptr_full);
  assign logic_ptr_doPush = io_push_fire;
  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push[9:0];
  assign logic_push_onRam_write_payload_data = io_push_payload;
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop[9:0];
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  always @(*) begin
    logic_pop_addressGen_ready = logic_pop_sync_readArbitation_ready;
    if((! logic_pop_sync_readArbitation_valid)) begin
      logic_pop_addressGen_ready = 1'b1;
    end
  end

  assign logic_pop_sync_readArbitation_valid = logic_pop_addressGen_rValid;
  assign logic_pop_sync_readArbitation_payload = logic_pop_addressGen_rData;
  assign logic_pop_sync_readPort_rsp = t_logic_ram_port1;
  assign logic_pop_sync_readPort_cmd_valid = logic_pop_addressGen_fire;
  assign logic_pop_sync_readPort_cmd_payload = logic_pop_addressGen_payload;
  assign logic_pop_sync_readArbitation_translated_valid = logic_pop_sync_readArbitation_valid;
  assign logic_pop_sync_readArbitation_ready = logic_pop_sync_readArbitation_translated_ready;
  assign logic_pop_sync_readArbitation_translated_payload = logic_pop_sync_readPort_rsp;
  assign io_pop_valid = logic_pop_sync_readArbitation_translated_valid;
  assign logic_pop_sync_readArbitation_translated_ready = io_pop_ready;
  assign io_pop_payload = logic_pop_sync_readArbitation_translated_payload;
  assign logic_pop_sync_readArbitation_fire = (logic_pop_sync_readArbitation_valid && logic_pop_sync_readArbitation_ready);
  assign logic_ptr_popOnIo = logic_pop_sync_popReg;
  assign io_occupancy = logic_ptr_occupancy;
  assign logic_fmaxAvail_plusOne = (logic_fmaxAvail_value + 11'h001);
  assign logic_fmaxAvail_minusOne = (logic_fmaxAvail_value - 11'h001);
  assign logic_fmaxAvail_incr = io_pop_fire;
  assign logic_fmaxAvail_decr = io_push_fire;
  assign io_availability = logic_fmaxAvail_value;
  always @(posedge clk or negedge resetn) begin
    if(!resetn) begin
      logic_ptr_push <= 11'h000;
      logic_ptr_pop <= 11'h000;
      logic_ptr_wentUp <= 1'b0;
      logic_ptr_arb_fmax_emptyTracker_value <= 11'h400;
      logic_ptr_arb_fmax_fullTracker_value <= 11'h000;
      logic_ptr_fmax_value <= 11'h000;
      logic_pop_addressGen_rValid <= 1'b0;
      logic_pop_sync_popReg <= 11'h000;
      logic_fmaxAvail_value <= 11'h400;
    end else begin
      if((logic_ptr_doPush != logic_ptr_doPop)) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if((logic_ptr_arb_fmax_emptyTracker_incr != logic_ptr_arb_fmax_emptyTracker_decr)) begin
        logic_ptr_arb_fmax_emptyTracker_value <= (logic_ptr_arb_fmax_emptyTracker_incr ? logic_ptr_arb_fmax_emptyTracker_plusOne : logic_ptr_arb_fmax_emptyTracker_minusOne);
      end
      if(io_flush) begin
        logic_ptr_arb_fmax_emptyTracker_value <= 11'h400;
      end
      if((logic_ptr_arb_fmax_fullTracker_incr != logic_ptr_arb_fmax_fullTracker_decr)) begin
        logic_ptr_arb_fmax_fullTracker_value <= (logic_ptr_arb_fmax_fullTracker_incr ? logic_ptr_arb_fmax_fullTracker_plusOne : logic_ptr_arb_fmax_fullTracker_minusOne);
      end
      if(io_flush) begin
        logic_ptr_arb_fmax_fullTracker_value <= 11'h000;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 11'h001);
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 11'h001);
      end
      if(io_flush) begin
        logic_ptr_push <= 11'h000;
        logic_ptr_pop <= 11'h000;
      end
      if((logic_ptr_fmax_incr != logic_ptr_fmax_decr)) begin
        logic_ptr_fmax_value <= (logic_ptr_fmax_incr ? logic_ptr_fmax_plusOne : logic_ptr_fmax_minusOne);
      end
      if(io_flush) begin
        logic_ptr_fmax_value <= 11'h000;
      end
      if(logic_pop_addressGen_ready) begin
        logic_pop_addressGen_rValid <= logic_pop_addressGen_valid;
      end
      if(io_flush) begin
        logic_pop_addressGen_rValid <= 1'b0;
      end
      if(logic_pop_sync_readArbitation_fire) begin
        logic_pop_sync_popReg <= logic_ptr_pop;
      end
      if(io_flush) begin
        logic_pop_sync_popReg <= 11'h000;
      end
      if((logic_fmaxAvail_incr != logic_fmaxAvail_decr)) begin
        logic_fmaxAvail_value <= (logic_fmaxAvail_incr ? logic_fmaxAvail_plusOne : logic_fmaxAvail_minusOne);
      end
      if(io_flush) begin
        logic_fmaxAvail_value <= 11'h400;
      end
    end
  end

  always @(posedge clk) begin
    if(logic_pop_addressGen_ready) begin
      logic_pop_addressGen_rData <= logic_pop_addressGen_payload;
    end
  end


endmodule

module SplitAxiDatamover (
  input               s2mm_tvalid,
  output              s2mm_tready,
  input      [511:0]  s2mm_tdata,
  input      [63:0]   s2mm_tkeep,
  input               s2mm_tlast,
  output              mm2s_tvalid,
  input               mm2s_tready,
  output     [511:0]  mm2s_tdata,
  output     [63:0]   mm2s_tkeep,
  output              mm2s_tlast,
  input               s2mmCmd_tvalid,
  output              s2mmCmd_tready,
  input      [71:0]   s2mmCmd_tdata,
  input               mm2sCmd_tvalid,
  output              mm2sCmd_tready,
  input      [71:0]   mm2sCmd_tdata,
  output              m_axi_0_awvalid,
  input               m_axi_0_awready,
  output     [31:0]   m_axi_0_awaddr,
  output     [3:0]    m_axi_0_awid,
  output     [7:0]    m_axi_0_awlen,
  output     [2:0]    m_axi_0_awsize,
  output     [1:0]    m_axi_0_awburst,
  output     [3:0]    m_axi_0_awcache,
  output     [3:0]    m_axi_0_awuser,
  output     [2:0]    m_axi_0_awprot,
  output              m_axi_0_wvalid,
  input               m_axi_0_wready,
  output     [127:0]  m_axi_0_wdata,
  output     [15:0]   m_axi_0_wstrb,
  output              m_axi_0_wlast,
  input               m_axi_0_bvalid,
  output              m_axi_0_bready,
  input      [3:0]    m_axi_0_bid,
  input      [1:0]    m_axi_0_bresp,
  output              m_axi_0_arvalid,
  input               m_axi_0_arready,
  output     [31:0]   m_axi_0_araddr,
  output     [3:0]    m_axi_0_arid,
  output     [7:0]    m_axi_0_arlen,
  output     [2:0]    m_axi_0_arsize,
  output     [1:0]    m_axi_0_arburst,
  output     [3:0]    m_axi_0_arcache,
  output     [3:0]    m_axi_0_aruser,
  output     [2:0]    m_axi_0_arprot,
  input               m_axi_0_rvalid,
  output              m_axi_0_rready,
  input      [127:0]  m_axi_0_rdata,
  input      [3:0]    m_axi_0_rid,
  input      [1:0]    m_axi_0_rresp,
  input               m_axi_0_rlast,
  output              m_axi_1_awvalid,
  input               m_axi_1_awready,
  output     [31:0]   m_axi_1_awaddr,
  output     [3:0]    m_axi_1_awid,
  output     [7:0]    m_axi_1_awlen,
  output     [2:0]    m_axi_1_awsize,
  output     [1:0]    m_axi_1_awburst,
  output     [3:0]    m_axi_1_awcache,
  output     [3:0]    m_axi_1_awuser,
  output     [2:0]    m_axi_1_awprot,
  output              m_axi_1_wvalid,
  input               m_axi_1_wready,
  output     [127:0]  m_axi_1_wdata,
  output     [15:0]   m_axi_1_wstrb,
  output              m_axi_1_wlast,
  input               m_axi_1_bvalid,
  output              m_axi_1_bready,
  input      [3:0]    m_axi_1_bid,
  input      [1:0]    m_axi_1_bresp,
  output              m_axi_1_arvalid,
  input               m_axi_1_arready,
  output     [31:0]   m_axi_1_araddr,
  output     [3:0]    m_axi_1_arid,
  output     [7:0]    m_axi_1_arlen,
  output     [2:0]    m_axi_1_arsize,
  output     [1:0]    m_axi_1_arburst,
  output     [3:0]    m_axi_1_arcache,
  output     [3:0]    m_axi_1_aruser,
  output     [2:0]    m_axi_1_arprot,
  input               m_axi_1_rvalid,
  output              m_axi_1_rready,
  input      [127:0]  m_axi_1_rdata,
  input      [3:0]    m_axi_1_rid,
  input      [1:0]    m_axi_1_rresp,
  input               m_axi_1_rlast,
  output              m_axi_2_awvalid,
  input               m_axi_2_awready,
  output     [31:0]   m_axi_2_awaddr,
  output     [3:0]    m_axi_2_awid,
  output     [7:0]    m_axi_2_awlen,
  output     [2:0]    m_axi_2_awsize,
  output     [1:0]    m_axi_2_awburst,
  output     [3:0]    m_axi_2_awcache,
  output     [3:0]    m_axi_2_awuser,
  output     [2:0]    m_axi_2_awprot,
  output              m_axi_2_wvalid,
  input               m_axi_2_wready,
  output     [127:0]  m_axi_2_wdata,
  output     [15:0]   m_axi_2_wstrb,
  output              m_axi_2_wlast,
  input               m_axi_2_bvalid,
  output              m_axi_2_bready,
  input      [3:0]    m_axi_2_bid,
  input      [1:0]    m_axi_2_bresp,
  output              m_axi_2_arvalid,
  input               m_axi_2_arready,
  output     [31:0]   m_axi_2_araddr,
  output     [3:0]    m_axi_2_arid,
  output     [7:0]    m_axi_2_arlen,
  output     [2:0]    m_axi_2_arsize,
  output     [1:0]    m_axi_2_arburst,
  output     [3:0]    m_axi_2_arcache,
  output     [3:0]    m_axi_2_aruser,
  output     [2:0]    m_axi_2_arprot,
  input               m_axi_2_rvalid,
  output              m_axi_2_rready,
  input      [127:0]  m_axi_2_rdata,
  input      [3:0]    m_axi_2_rid,
  input      [1:0]    m_axi_2_rresp,
  input               m_axi_2_rlast,
  output              m_axi_3_awvalid,
  input               m_axi_3_awready,
  output     [31:0]   m_axi_3_awaddr,
  output     [3:0]    m_axi_3_awid,
  output     [7:0]    m_axi_3_awlen,
  output     [2:0]    m_axi_3_awsize,
  output     [1:0]    m_axi_3_awburst,
  output     [3:0]    m_axi_3_awcache,
  output     [3:0]    m_axi_3_awuser,
  output     [2:0]    m_axi_3_awprot,
  output              m_axi_3_wvalid,
  input               m_axi_3_wready,
  output     [127:0]  m_axi_3_wdata,
  output     [15:0]   m_axi_3_wstrb,
  output              m_axi_3_wlast,
  input               m_axi_3_bvalid,
  output              m_axi_3_bready,
  input      [3:0]    m_axi_3_bid,
  input      [1:0]    m_axi_3_bresp,
  output              m_axi_3_arvalid,
  input               m_axi_3_arready,
  output     [31:0]   m_axi_3_araddr,
  output     [3:0]    m_axi_3_arid,
  output     [7:0]    m_axi_3_arlen,
  output     [2:0]    m_axi_3_arsize,
  output     [1:0]    m_axi_3_arburst,
  output     [3:0]    m_axi_3_arcache,
  output     [3:0]    m_axi_3_aruser,
  output     [2:0]    m_axi_3_arprot,
  input               m_axi_3_rvalid,
  output              m_axi_3_rready,
  input      [127:0]  m_axi_3_rdata,
  input      [3:0]    m_axi_3_rid,
  input      [1:0]    m_axi_3_rresp,
  input               m_axi_3_rlast,
  input               ctrl_aw_valid,
  output              ctrl_aw_ready,
  input      [31:0]   ctrl_aw_payload_addr,
  input      [2:0]    ctrl_aw_payload_prot,
  input               ctrl_w_valid,
  output              ctrl_w_ready,
  input      [31:0]   ctrl_w_payload_data,
  input      [3:0]    ctrl_w_payload_strb,
  output              ctrl_b_valid,
  input               ctrl_b_ready,
  output     [1:0]    ctrl_b_payload_resp,
  input               ctrl_ar_valid,
  output              ctrl_ar_ready,
  input      [31:0]   ctrl_ar_payload_addr,
  input      [2:0]    ctrl_ar_payload_prot,
  output              ctrl_r_valid,
  input               ctrl_r_ready,
  output     [31:0]   ctrl_r_payload_data,
  output     [1:0]    ctrl_r_payload_resp,
  input               aresetn,
  input               clk,
  input               resetn
);

  wire                dma_0_s_axis_s2mm_tready;
  wire                dma_0_s_axis_s2mm_cmd_tready;
  wire                dma_0_s_axis_mm2s_cmd_tready;
  wire                dma_0_m_axi_mm2s_arvalid;
  wire       [31:0]   dma_0_m_axi_mm2s_araddr;
  wire       [3:0]    dma_0_m_axi_mm2s_arid;
  wire       [7:0]    dma_0_m_axi_mm2s_arlen;
  wire       [2:0]    dma_0_m_axi_mm2s_arsize;
  wire       [1:0]    dma_0_m_axi_mm2s_arburst;
  wire       [3:0]    dma_0_m_axi_mm2s_arcache;
  wire       [3:0]    dma_0_m_axi_mm2s_aruser;
  wire       [2:0]    dma_0_m_axi_mm2s_arprot;
  wire                dma_0_m_axi_s2mm_awvalid;
  wire       [31:0]   dma_0_m_axi_s2mm_awaddr;
  wire       [3:0]    dma_0_m_axi_s2mm_awid;
  wire       [7:0]    dma_0_m_axi_s2mm_awlen;
  wire       [2:0]    dma_0_m_axi_s2mm_awsize;
  wire       [1:0]    dma_0_m_axi_s2mm_awburst;
  wire       [3:0]    dma_0_m_axi_s2mm_awcache;
  wire       [3:0]    dma_0_m_axi_s2mm_awuser;
  wire       [2:0]    dma_0_m_axi_s2mm_awprot;
  wire                dma_0_m_axi_s2mm_wvalid;
  wire       [127:0]  dma_0_m_axi_s2mm_wdata;
  wire       [15:0]   dma_0_m_axi_s2mm_wstrb;
  wire                dma_0_m_axi_s2mm_wlast;
  wire                dma_0_m_axi_mm2s_rready;
  wire                dma_0_m_axi_s2mm_bready;
  wire                dma_0_m_axis_s2mm_sts_tvalid;
  wire       [7:0]    dma_0_m_axis_s2mm_sts_tdata;
  wire       [0:0]    dma_0_m_axis_s2mm_sts_tkeep;
  wire                dma_0_m_axis_s2mm_sts_tlast;
  wire                dma_0_m_axis_mm2s_sts_tvalid;
  wire       [7:0]    dma_0_m_axis_mm2s_sts_tdata;
  wire       [0:0]    dma_0_m_axis_mm2s_sts_tkeep;
  wire                dma_0_m_axis_mm2s_sts_tlast;
  wire                dma_0_m_axis_mm2s_tvalid;
  wire       [127:0]  dma_0_m_axis_mm2s_tdata;
  wire       [15:0]   dma_0_m_axis_mm2s_tkeep;
  wire                dma_0_m_axis_mm2s_tlast;
  wire                dma_0_mm2s_err;
  wire                dma_0_s2mm_err;
  wire                dma_1_s_axis_s2mm_tready;
  wire                dma_1_s_axis_s2mm_cmd_tready;
  wire                dma_1_s_axis_mm2s_cmd_tready;
  wire                dma_1_m_axi_mm2s_arvalid;
  wire       [31:0]   dma_1_m_axi_mm2s_araddr;
  wire       [3:0]    dma_1_m_axi_mm2s_arid;
  wire       [7:0]    dma_1_m_axi_mm2s_arlen;
  wire       [2:0]    dma_1_m_axi_mm2s_arsize;
  wire       [1:0]    dma_1_m_axi_mm2s_arburst;
  wire       [3:0]    dma_1_m_axi_mm2s_arcache;
  wire       [3:0]    dma_1_m_axi_mm2s_aruser;
  wire       [2:0]    dma_1_m_axi_mm2s_arprot;
  wire                dma_1_m_axi_s2mm_awvalid;
  wire       [31:0]   dma_1_m_axi_s2mm_awaddr;
  wire       [3:0]    dma_1_m_axi_s2mm_awid;
  wire       [7:0]    dma_1_m_axi_s2mm_awlen;
  wire       [2:0]    dma_1_m_axi_s2mm_awsize;
  wire       [1:0]    dma_1_m_axi_s2mm_awburst;
  wire       [3:0]    dma_1_m_axi_s2mm_awcache;
  wire       [3:0]    dma_1_m_axi_s2mm_awuser;
  wire       [2:0]    dma_1_m_axi_s2mm_awprot;
  wire                dma_1_m_axi_s2mm_wvalid;
  wire       [127:0]  dma_1_m_axi_s2mm_wdata;
  wire       [15:0]   dma_1_m_axi_s2mm_wstrb;
  wire                dma_1_m_axi_s2mm_wlast;
  wire                dma_1_m_axi_mm2s_rready;
  wire                dma_1_m_axi_s2mm_bready;
  wire                dma_1_m_axis_s2mm_sts_tvalid;
  wire       [7:0]    dma_1_m_axis_s2mm_sts_tdata;
  wire       [0:0]    dma_1_m_axis_s2mm_sts_tkeep;
  wire                dma_1_m_axis_s2mm_sts_tlast;
  wire                dma_1_m_axis_mm2s_sts_tvalid;
  wire       [7:0]    dma_1_m_axis_mm2s_sts_tdata;
  wire       [0:0]    dma_1_m_axis_mm2s_sts_tkeep;
  wire                dma_1_m_axis_mm2s_sts_tlast;
  wire                dma_1_m_axis_mm2s_tvalid;
  wire       [127:0]  dma_1_m_axis_mm2s_tdata;
  wire       [15:0]   dma_1_m_axis_mm2s_tkeep;
  wire                dma_1_m_axis_mm2s_tlast;
  wire                dma_1_mm2s_err;
  wire                dma_1_s2mm_err;
  wire                dma_2_s_axis_s2mm_tready;
  wire                dma_2_s_axis_s2mm_cmd_tready;
  wire                dma_2_s_axis_mm2s_cmd_tready;
  wire                dma_2_m_axi_mm2s_arvalid;
  wire       [31:0]   dma_2_m_axi_mm2s_araddr;
  wire       [3:0]    dma_2_m_axi_mm2s_arid;
  wire       [7:0]    dma_2_m_axi_mm2s_arlen;
  wire       [2:0]    dma_2_m_axi_mm2s_arsize;
  wire       [1:0]    dma_2_m_axi_mm2s_arburst;
  wire       [3:0]    dma_2_m_axi_mm2s_arcache;
  wire       [3:0]    dma_2_m_axi_mm2s_aruser;
  wire       [2:0]    dma_2_m_axi_mm2s_arprot;
  wire                dma_2_m_axi_s2mm_awvalid;
  wire       [31:0]   dma_2_m_axi_s2mm_awaddr;
  wire       [3:0]    dma_2_m_axi_s2mm_awid;
  wire       [7:0]    dma_2_m_axi_s2mm_awlen;
  wire       [2:0]    dma_2_m_axi_s2mm_awsize;
  wire       [1:0]    dma_2_m_axi_s2mm_awburst;
  wire       [3:0]    dma_2_m_axi_s2mm_awcache;
  wire       [3:0]    dma_2_m_axi_s2mm_awuser;
  wire       [2:0]    dma_2_m_axi_s2mm_awprot;
  wire                dma_2_m_axi_s2mm_wvalid;
  wire       [127:0]  dma_2_m_axi_s2mm_wdata;
  wire       [15:0]   dma_2_m_axi_s2mm_wstrb;
  wire                dma_2_m_axi_s2mm_wlast;
  wire                dma_2_m_axi_mm2s_rready;
  wire                dma_2_m_axi_s2mm_bready;
  wire                dma_2_m_axis_s2mm_sts_tvalid;
  wire       [7:0]    dma_2_m_axis_s2mm_sts_tdata;
  wire       [0:0]    dma_2_m_axis_s2mm_sts_tkeep;
  wire                dma_2_m_axis_s2mm_sts_tlast;
  wire                dma_2_m_axis_mm2s_sts_tvalid;
  wire       [7:0]    dma_2_m_axis_mm2s_sts_tdata;
  wire       [0:0]    dma_2_m_axis_mm2s_sts_tkeep;
  wire                dma_2_m_axis_mm2s_sts_tlast;
  wire                dma_2_m_axis_mm2s_tvalid;
  wire       [127:0]  dma_2_m_axis_mm2s_tdata;
  wire       [15:0]   dma_2_m_axis_mm2s_tkeep;
  wire                dma_2_m_axis_mm2s_tlast;
  wire                dma_2_mm2s_err;
  wire                dma_2_s2mm_err;
  wire                dma_3_s_axis_s2mm_tready;
  wire                dma_3_s_axis_s2mm_cmd_tready;
  wire                dma_3_s_axis_mm2s_cmd_tready;
  wire                dma_3_m_axi_mm2s_arvalid;
  wire       [31:0]   dma_3_m_axi_mm2s_araddr;
  wire       [3:0]    dma_3_m_axi_mm2s_arid;
  wire       [7:0]    dma_3_m_axi_mm2s_arlen;
  wire       [2:0]    dma_3_m_axi_mm2s_arsize;
  wire       [1:0]    dma_3_m_axi_mm2s_arburst;
  wire       [3:0]    dma_3_m_axi_mm2s_arcache;
  wire       [3:0]    dma_3_m_axi_mm2s_aruser;
  wire       [2:0]    dma_3_m_axi_mm2s_arprot;
  wire                dma_3_m_axi_s2mm_awvalid;
  wire       [31:0]   dma_3_m_axi_s2mm_awaddr;
  wire       [3:0]    dma_3_m_axi_s2mm_awid;
  wire       [7:0]    dma_3_m_axi_s2mm_awlen;
  wire       [2:0]    dma_3_m_axi_s2mm_awsize;
  wire       [1:0]    dma_3_m_axi_s2mm_awburst;
  wire       [3:0]    dma_3_m_axi_s2mm_awcache;
  wire       [3:0]    dma_3_m_axi_s2mm_awuser;
  wire       [2:0]    dma_3_m_axi_s2mm_awprot;
  wire                dma_3_m_axi_s2mm_wvalid;
  wire       [127:0]  dma_3_m_axi_s2mm_wdata;
  wire       [15:0]   dma_3_m_axi_s2mm_wstrb;
  wire                dma_3_m_axi_s2mm_wlast;
  wire                dma_3_m_axi_mm2s_rready;
  wire                dma_3_m_axi_s2mm_bready;
  wire                dma_3_m_axis_s2mm_sts_tvalid;
  wire       [7:0]    dma_3_m_axis_s2mm_sts_tdata;
  wire       [0:0]    dma_3_m_axis_s2mm_sts_tkeep;
  wire                dma_3_m_axis_s2mm_sts_tlast;
  wire                dma_3_m_axis_mm2s_sts_tvalid;
  wire       [7:0]    dma_3_m_axis_mm2s_sts_tdata;
  wire       [0:0]    dma_3_m_axis_mm2s_sts_tkeep;
  wire                dma_3_m_axis_mm2s_sts_tlast;
  wire                dma_3_m_axis_mm2s_tvalid;
  wire       [127:0]  dma_3_m_axis_mm2s_tdata;
  wire       [15:0]   dma_3_m_axis_mm2s_tkeep;
  wire                dma_3_m_axis_mm2s_tlast;
  wire                dma_3_mm2s_err;
  wire                dma_3_s2mm_err;
  wire                mm2sCmdSplit_io_inCmd_ready;
  wire                mm2sCmdSplit_io_outCmd_0_valid;
  wire       [71:0]   mm2sCmdSplit_io_outCmd_0_payload;
  wire                mm2sCmdSplit_io_outCmd_1_valid;
  wire       [71:0]   mm2sCmdSplit_io_outCmd_1_payload;
  wire                mm2sCmdSplit_io_outCmd_2_valid;
  wire       [71:0]   mm2sCmdSplit_io_outCmd_2_payload;
  wire                mm2sCmdSplit_io_outCmd_3_valid;
  wire       [71:0]   mm2sCmdSplit_io_outCmd_3_payload;
  wire                s2mmCmdSplit_io_inCmd_ready;
  wire                s2mmCmdSplit_io_outCmd_0_valid;
  wire       [71:0]   s2mmCmdSplit_io_outCmd_0_payload;
  wire                s2mmCmdSplit_io_outCmd_1_valid;
  wire       [71:0]   s2mmCmdSplit_io_outCmd_1_payload;
  wire                s2mmCmdSplit_io_outCmd_2_valid;
  wire       [71:0]   s2mmCmdSplit_io_outCmd_2_payload;
  wire                s2mmCmdSplit_io_outCmd_3_valid;
  wire       [71:0]   s2mmCmdSplit_io_outCmd_3_payload;
  wire                inBuf_0_io_push_ready;
  wire                inBuf_0_io_pop_valid;
  wire       [127:0]  inBuf_0_io_pop_payload;
  wire       [10:0]   inBuf_0_io_occupancy;
  wire       [10:0]   inBuf_0_io_availability;
  wire                inBuf_1_io_push_ready;
  wire                inBuf_1_io_pop_valid;
  wire       [127:0]  inBuf_1_io_pop_payload;
  wire       [10:0]   inBuf_1_io_occupancy;
  wire       [10:0]   inBuf_1_io_availability;
  wire                inBuf_2_io_push_ready;
  wire                inBuf_2_io_pop_valid;
  wire       [127:0]  inBuf_2_io_pop_payload;
  wire       [10:0]   inBuf_2_io_occupancy;
  wire       [10:0]   inBuf_2_io_availability;
  wire                inBuf_3_io_push_ready;
  wire                inBuf_3_io_pop_valid;
  wire       [127:0]  inBuf_3_io_pop_payload;
  wire       [10:0]   inBuf_3_io_occupancy;
  wire       [10:0]   inBuf_3_io_availability;
  wire                inLastBuf_io_push_ready;
  wire                inLastBuf_io_pop_valid;
  wire                inLastBuf_io_pop_payload;
  wire       [10:0]   inLastBuf_io_occupancy;
  wire       [10:0]   inLastBuf_io_availability;
  wire                outBuf_0_io_push_ready;
  wire                outBuf_0_io_pop_valid;
  wire                outBuf_0_io_pop_payload_last;
  wire       [127:0]  outBuf_0_io_pop_payload_fragment;
  wire       [5:0]    outBuf_0_io_occupancy;
  wire       [5:0]    outBuf_0_io_availability;
  wire                outBuf_1_io_push_ready;
  wire                outBuf_1_io_pop_valid;
  wire                outBuf_1_io_pop_payload_last;
  wire       [127:0]  outBuf_1_io_pop_payload_fragment;
  wire       [5:0]    outBuf_1_io_occupancy;
  wire       [5:0]    outBuf_1_io_availability;
  wire                outBuf_2_io_push_ready;
  wire                outBuf_2_io_pop_valid;
  wire                outBuf_2_io_pop_payload_last;
  wire       [127:0]  outBuf_2_io_pop_payload_fragment;
  wire       [5:0]    outBuf_2_io_occupancy;
  wire       [5:0]    outBuf_2_io_availability;
  wire                outBuf_3_io_push_ready;
  wire                outBuf_3_io_pop_valid;
  wire                outBuf_3_io_pop_payload_last;
  wire       [127:0]  outBuf_3_io_pop_payload_fragment;
  wire       [5:0]    outBuf_3_io_occupancy;
  wire       [5:0]    outBuf_3_io_availability;
  wire                s2mmFork_io_input_ready;
  wire                s2mmFork_io_outputs_0_valid;
  wire                s2mmFork_io_outputs_1_valid;
  wire                s2mmFork_io_outputs_2_valid;
  wire                s2mmFork_io_outputs_3_valid;
  wire       [127:0]  s2mmPayloadSplit_0;
  wire       [127:0]  s2mmPayloadSplit_1;
  wire       [127:0]  s2mmPayloadSplit_2;
  wire       [127:0]  s2mmPayloadSplit_3;
  wire                dmaHp_inBuf_0_io_push_fire;
  wire                dmaHp_inBuf_0_io_pop_fire;
  wire       [511:0]  inBufPayload;
  wire                joinEvent_valid;
  wire                joinEvent_ready;
  wire                joinEvent_fire;
  wire                mm2s_valid;
  reg                 mm2s_ready;
  wire       [511:0]  mm2s_payload_data;
  wire       [63:0]   mm2s_payload_keep;
  wire                mm2s_payload_last;
  wire                mm2s_m2sPipe_valid;
  wire                mm2s_m2sPipe_ready;
  wire       [511:0]  mm2s_m2sPipe_payload_data;
  wire       [63:0]   mm2s_m2sPipe_payload_keep;
  wire                mm2s_m2sPipe_payload_last;
  reg                 mm2s_rValid;
  reg        [511:0]  mm2s_rData_data;
  reg        [63:0]   mm2s_rData_keep;
  reg                 mm2s_rData_last;

  AxiDatamover128 dma_0 (
    .s_axis_s2mm_tvalid         (outBuf_0_io_pop_valid                  ), //i
    .s_axis_s2mm_tready         (dma_0_s_axis_s2mm_tready               ), //o
    .s_axis_s2mm_tdata          (outBuf_0_io_pop_payload_fragment[127:0]), //i
    .s_axis_s2mm_tkeep          (16'hffff                               ), //i
    .s_axis_s2mm_tlast          (outBuf_0_io_pop_payload_last           ), //i
    .s_axis_s2mm_cmd_tvalid     (s2mmCmdSplit_io_outCmd_0_valid         ), //i
    .s_axis_s2mm_cmd_tready     (dma_0_s_axis_s2mm_cmd_tready           ), //o
    .s_axis_s2mm_cmd_tdata      (s2mmCmdSplit_io_outCmd_0_payload[71:0] ), //i
    .s_axis_mm2s_cmd_tvalid     (mm2sCmdSplit_io_outCmd_0_valid         ), //i
    .s_axis_mm2s_cmd_tready     (dma_0_s_axis_mm2s_cmd_tready           ), //o
    .s_axis_mm2s_cmd_tdata      (mm2sCmdSplit_io_outCmd_0_payload[71:0] ), //i
    .m_axi_s2mm_awvalid         (dma_0_m_axi_s2mm_awvalid               ), //o
    .m_axi_s2mm_awready         (m_axi_0_awready                        ), //i
    .m_axi_s2mm_awaddr          (dma_0_m_axi_s2mm_awaddr[31:0]          ), //o
    .m_axi_s2mm_awid            (dma_0_m_axi_s2mm_awid[3:0]             ), //o
    .m_axi_s2mm_awlen           (dma_0_m_axi_s2mm_awlen[7:0]            ), //o
    .m_axi_s2mm_awsize          (dma_0_m_axi_s2mm_awsize[2:0]           ), //o
    .m_axi_s2mm_awburst         (dma_0_m_axi_s2mm_awburst[1:0]          ), //o
    .m_axi_s2mm_awcache         (dma_0_m_axi_s2mm_awcache[3:0]          ), //o
    .m_axi_s2mm_awuser          (dma_0_m_axi_s2mm_awuser[3:0]           ), //o
    .m_axi_s2mm_awprot          (dma_0_m_axi_s2mm_awprot[2:0]           ), //o
    .m_axi_s2mm_wvalid          (dma_0_m_axi_s2mm_wvalid                ), //o
    .m_axi_s2mm_wready          (m_axi_0_wready                         ), //i
    .m_axi_s2mm_wdata           (dma_0_m_axi_s2mm_wdata[127:0]          ), //o
    .m_axi_s2mm_wstrb           (dma_0_m_axi_s2mm_wstrb[15:0]           ), //o
    .m_axi_s2mm_wlast           (dma_0_m_axi_s2mm_wlast                 ), //o
    .m_axi_s2mm_bvalid          (m_axi_0_bvalid                         ), //i
    .m_axi_s2mm_bready          (dma_0_m_axi_s2mm_bready                ), //o
    .m_axi_s2mm_bresp           (m_axi_0_bresp[1:0]                     ), //i
    .m_axi_mm2s_arvalid         (dma_0_m_axi_mm2s_arvalid               ), //o
    .m_axi_mm2s_arready         (m_axi_0_arready                        ), //i
    .m_axi_mm2s_araddr          (dma_0_m_axi_mm2s_araddr[31:0]          ), //o
    .m_axi_mm2s_arid            (dma_0_m_axi_mm2s_arid[3:0]             ), //o
    .m_axi_mm2s_arlen           (dma_0_m_axi_mm2s_arlen[7:0]            ), //o
    .m_axi_mm2s_arsize          (dma_0_m_axi_mm2s_arsize[2:0]           ), //o
    .m_axi_mm2s_arburst         (dma_0_m_axi_mm2s_arburst[1:0]          ), //o
    .m_axi_mm2s_arcache         (dma_0_m_axi_mm2s_arcache[3:0]          ), //o
    .m_axi_mm2s_aruser          (dma_0_m_axi_mm2s_aruser[3:0]           ), //o
    .m_axi_mm2s_arprot          (dma_0_m_axi_mm2s_arprot[2:0]           ), //o
    .m_axi_mm2s_rvalid          (m_axi_0_rvalid                         ), //i
    .m_axi_mm2s_rready          (dma_0_m_axi_mm2s_rready                ), //o
    .m_axi_mm2s_rdata           (m_axi_0_rdata[127:0]                   ), //i
    .m_axi_mm2s_rresp           (m_axi_0_rresp[1:0]                     ), //i
    .m_axi_mm2s_rlast           (m_axi_0_rlast                          ), //i
    .m_axis_s2mm_sts_tvalid     (dma_0_m_axis_s2mm_sts_tvalid           ), //o
    .m_axis_s2mm_sts_tready     (1'b1                                   ), //i
    .m_axis_s2mm_sts_tdata      (dma_0_m_axis_s2mm_sts_tdata[7:0]       ), //o
    .m_axis_s2mm_sts_tkeep      (dma_0_m_axis_s2mm_sts_tkeep            ), //o
    .m_axis_s2mm_sts_tlast      (dma_0_m_axis_s2mm_sts_tlast            ), //o
    .m_axis_mm2s_sts_tvalid     (dma_0_m_axis_mm2s_sts_tvalid           ), //o
    .m_axis_mm2s_sts_tready     (1'b1                                   ), //i
    .m_axis_mm2s_sts_tdata      (dma_0_m_axis_mm2s_sts_tdata[7:0]       ), //o
    .m_axis_mm2s_sts_tkeep      (dma_0_m_axis_mm2s_sts_tkeep            ), //o
    .m_axis_mm2s_sts_tlast      (dma_0_m_axis_mm2s_sts_tlast            ), //o
    .m_axis_mm2s_tvalid         (dma_0_m_axis_mm2s_tvalid               ), //o
    .m_axis_mm2s_tready         (inBuf_0_io_push_ready                  ), //i
    .m_axis_mm2s_tdata          (dma_0_m_axis_mm2s_tdata[127:0]         ), //o
    .m_axis_mm2s_tkeep          (dma_0_m_axis_mm2s_tkeep[15:0]          ), //o
    .m_axis_mm2s_tlast          (dma_0_m_axis_mm2s_tlast                ), //o
    .m_axi_mm2s_aclk            (clk                                    ), //i
    .m_axi_mm2s_aresetn         (aresetn                                ), //i
    .m_axis_mm2s_cmdsts_aclk    (clk                                    ), //i
    .m_axis_mm2s_cmdsts_aresetn (aresetn                                ), //i
    .m_axi_s2mm_aclk            (clk                                    ), //i
    .m_axi_s2mm_aresetn         (aresetn                                ), //i
    .m_axis_s2mm_cmdsts_awclk   (clk                                    ), //i
    .m_axis_s2mm_cmdsts_aresetn (aresetn                                ), //i
    .mm2s_err                   (dma_0_mm2s_err                         ), //o
    .s2mm_err                   (dma_0_s2mm_err                         )  //o
  );
  AxiDatamover128 dma_1 (
    .s_axis_s2mm_tvalid         (outBuf_1_io_pop_valid                  ), //i
    .s_axis_s2mm_tready         (dma_1_s_axis_s2mm_tready               ), //o
    .s_axis_s2mm_tdata          (outBuf_1_io_pop_payload_fragment[127:0]), //i
    .s_axis_s2mm_tkeep          (16'hffff                               ), //i
    .s_axis_s2mm_tlast          (outBuf_1_io_pop_payload_last           ), //i
    .s_axis_s2mm_cmd_tvalid     (s2mmCmdSplit_io_outCmd_1_valid         ), //i
    .s_axis_s2mm_cmd_tready     (dma_1_s_axis_s2mm_cmd_tready           ), //o
    .s_axis_s2mm_cmd_tdata      (s2mmCmdSplit_io_outCmd_1_payload[71:0] ), //i
    .s_axis_mm2s_cmd_tvalid     (mm2sCmdSplit_io_outCmd_1_valid         ), //i
    .s_axis_mm2s_cmd_tready     (dma_1_s_axis_mm2s_cmd_tready           ), //o
    .s_axis_mm2s_cmd_tdata      (mm2sCmdSplit_io_outCmd_1_payload[71:0] ), //i
    .m_axi_s2mm_awvalid         (dma_1_m_axi_s2mm_awvalid               ), //o
    .m_axi_s2mm_awready         (m_axi_1_awready                        ), //i
    .m_axi_s2mm_awaddr          (dma_1_m_axi_s2mm_awaddr[31:0]          ), //o
    .m_axi_s2mm_awid            (dma_1_m_axi_s2mm_awid[3:0]             ), //o
    .m_axi_s2mm_awlen           (dma_1_m_axi_s2mm_awlen[7:0]            ), //o
    .m_axi_s2mm_awsize          (dma_1_m_axi_s2mm_awsize[2:0]           ), //o
    .m_axi_s2mm_awburst         (dma_1_m_axi_s2mm_awburst[1:0]          ), //o
    .m_axi_s2mm_awcache         (dma_1_m_axi_s2mm_awcache[3:0]          ), //o
    .m_axi_s2mm_awuser          (dma_1_m_axi_s2mm_awuser[3:0]           ), //o
    .m_axi_s2mm_awprot          (dma_1_m_axi_s2mm_awprot[2:0]           ), //o
    .m_axi_s2mm_wvalid          (dma_1_m_axi_s2mm_wvalid                ), //o
    .m_axi_s2mm_wready          (m_axi_1_wready                         ), //i
    .m_axi_s2mm_wdata           (dma_1_m_axi_s2mm_wdata[127:0]          ), //o
    .m_axi_s2mm_wstrb           (dma_1_m_axi_s2mm_wstrb[15:0]           ), //o
    .m_axi_s2mm_wlast           (dma_1_m_axi_s2mm_wlast                 ), //o
    .m_axi_s2mm_bvalid          (m_axi_1_bvalid                         ), //i
    .m_axi_s2mm_bready          (dma_1_m_axi_s2mm_bready                ), //o
    .m_axi_s2mm_bresp           (m_axi_1_bresp[1:0]                     ), //i
    .m_axi_mm2s_arvalid         (dma_1_m_axi_mm2s_arvalid               ), //o
    .m_axi_mm2s_arready         (m_axi_1_arready                        ), //i
    .m_axi_mm2s_araddr          (dma_1_m_axi_mm2s_araddr[31:0]          ), //o
    .m_axi_mm2s_arid            (dma_1_m_axi_mm2s_arid[3:0]             ), //o
    .m_axi_mm2s_arlen           (dma_1_m_axi_mm2s_arlen[7:0]            ), //o
    .m_axi_mm2s_arsize          (dma_1_m_axi_mm2s_arsize[2:0]           ), //o
    .m_axi_mm2s_arburst         (dma_1_m_axi_mm2s_arburst[1:0]          ), //o
    .m_axi_mm2s_arcache         (dma_1_m_axi_mm2s_arcache[3:0]          ), //o
    .m_axi_mm2s_aruser          (dma_1_m_axi_mm2s_aruser[3:0]           ), //o
    .m_axi_mm2s_arprot          (dma_1_m_axi_mm2s_arprot[2:0]           ), //o
    .m_axi_mm2s_rvalid          (m_axi_1_rvalid                         ), //i
    .m_axi_mm2s_rready          (dma_1_m_axi_mm2s_rready                ), //o
    .m_axi_mm2s_rdata           (m_axi_1_rdata[127:0]                   ), //i
    .m_axi_mm2s_rresp           (m_axi_1_rresp[1:0]                     ), //i
    .m_axi_mm2s_rlast           (m_axi_1_rlast                          ), //i
    .m_axis_s2mm_sts_tvalid     (dma_1_m_axis_s2mm_sts_tvalid           ), //o
    .m_axis_s2mm_sts_tready     (1'b1                                   ), //i
    .m_axis_s2mm_sts_tdata      (dma_1_m_axis_s2mm_sts_tdata[7:0]       ), //o
    .m_axis_s2mm_sts_tkeep      (dma_1_m_axis_s2mm_sts_tkeep            ), //o
    .m_axis_s2mm_sts_tlast      (dma_1_m_axis_s2mm_sts_tlast            ), //o
    .m_axis_mm2s_sts_tvalid     (dma_1_m_axis_mm2s_sts_tvalid           ), //o
    .m_axis_mm2s_sts_tready     (1'b1                                   ), //i
    .m_axis_mm2s_sts_tdata      (dma_1_m_axis_mm2s_sts_tdata[7:0]       ), //o
    .m_axis_mm2s_sts_tkeep      (dma_1_m_axis_mm2s_sts_tkeep            ), //o
    .m_axis_mm2s_sts_tlast      (dma_1_m_axis_mm2s_sts_tlast            ), //o
    .m_axis_mm2s_tvalid         (dma_1_m_axis_mm2s_tvalid               ), //o
    .m_axis_mm2s_tready         (inBuf_1_io_push_ready                  ), //i
    .m_axis_mm2s_tdata          (dma_1_m_axis_mm2s_tdata[127:0]         ), //o
    .m_axis_mm2s_tkeep          (dma_1_m_axis_mm2s_tkeep[15:0]          ), //o
    .m_axis_mm2s_tlast          (dma_1_m_axis_mm2s_tlast                ), //o
    .m_axi_mm2s_aclk            (clk                                    ), //i
    .m_axi_mm2s_aresetn         (aresetn                                ), //i
    .m_axis_mm2s_cmdsts_aclk    (clk                                    ), //i
    .m_axis_mm2s_cmdsts_aresetn (aresetn                                ), //i
    .m_axi_s2mm_aclk            (clk                                    ), //i
    .m_axi_s2mm_aresetn         (aresetn                                ), //i
    .m_axis_s2mm_cmdsts_awclk   (clk                                    ), //i
    .m_axis_s2mm_cmdsts_aresetn (aresetn                                ), //i
    .mm2s_err                   (dma_1_mm2s_err                         ), //o
    .s2mm_err                   (dma_1_s2mm_err                         )  //o
  );
  AxiDatamover128 dma_2 (
    .s_axis_s2mm_tvalid         (outBuf_2_io_pop_valid                  ), //i
    .s_axis_s2mm_tready         (dma_2_s_axis_s2mm_tready               ), //o
    .s_axis_s2mm_tdata          (outBuf_2_io_pop_payload_fragment[127:0]), //i
    .s_axis_s2mm_tkeep          (16'hffff                               ), //i
    .s_axis_s2mm_tlast          (outBuf_2_io_pop_payload_last           ), //i
    .s_axis_s2mm_cmd_tvalid     (s2mmCmdSplit_io_outCmd_2_valid         ), //i
    .s_axis_s2mm_cmd_tready     (dma_2_s_axis_s2mm_cmd_tready           ), //o
    .s_axis_s2mm_cmd_tdata      (s2mmCmdSplit_io_outCmd_2_payload[71:0] ), //i
    .s_axis_mm2s_cmd_tvalid     (mm2sCmdSplit_io_outCmd_2_valid         ), //i
    .s_axis_mm2s_cmd_tready     (dma_2_s_axis_mm2s_cmd_tready           ), //o
    .s_axis_mm2s_cmd_tdata      (mm2sCmdSplit_io_outCmd_2_payload[71:0] ), //i
    .m_axi_s2mm_awvalid         (dma_2_m_axi_s2mm_awvalid               ), //o
    .m_axi_s2mm_awready         (m_axi_2_awready                        ), //i
    .m_axi_s2mm_awaddr          (dma_2_m_axi_s2mm_awaddr[31:0]          ), //o
    .m_axi_s2mm_awid            (dma_2_m_axi_s2mm_awid[3:0]             ), //o
    .m_axi_s2mm_awlen           (dma_2_m_axi_s2mm_awlen[7:0]            ), //o
    .m_axi_s2mm_awsize          (dma_2_m_axi_s2mm_awsize[2:0]           ), //o
    .m_axi_s2mm_awburst         (dma_2_m_axi_s2mm_awburst[1:0]          ), //o
    .m_axi_s2mm_awcache         (dma_2_m_axi_s2mm_awcache[3:0]          ), //o
    .m_axi_s2mm_awuser          (dma_2_m_axi_s2mm_awuser[3:0]           ), //o
    .m_axi_s2mm_awprot          (dma_2_m_axi_s2mm_awprot[2:0]           ), //o
    .m_axi_s2mm_wvalid          (dma_2_m_axi_s2mm_wvalid                ), //o
    .m_axi_s2mm_wready          (m_axi_2_wready                         ), //i
    .m_axi_s2mm_wdata           (dma_2_m_axi_s2mm_wdata[127:0]          ), //o
    .m_axi_s2mm_wstrb           (dma_2_m_axi_s2mm_wstrb[15:0]           ), //o
    .m_axi_s2mm_wlast           (dma_2_m_axi_s2mm_wlast                 ), //o
    .m_axi_s2mm_bvalid          (m_axi_2_bvalid                         ), //i
    .m_axi_s2mm_bready          (dma_2_m_axi_s2mm_bready                ), //o
    .m_axi_s2mm_bresp           (m_axi_2_bresp[1:0]                     ), //i
    .m_axi_mm2s_arvalid         (dma_2_m_axi_mm2s_arvalid               ), //o
    .m_axi_mm2s_arready         (m_axi_2_arready                        ), //i
    .m_axi_mm2s_araddr          (dma_2_m_axi_mm2s_araddr[31:0]          ), //o
    .m_axi_mm2s_arid            (dma_2_m_axi_mm2s_arid[3:0]             ), //o
    .m_axi_mm2s_arlen           (dma_2_m_axi_mm2s_arlen[7:0]            ), //o
    .m_axi_mm2s_arsize          (dma_2_m_axi_mm2s_arsize[2:0]           ), //o
    .m_axi_mm2s_arburst         (dma_2_m_axi_mm2s_arburst[1:0]          ), //o
    .m_axi_mm2s_arcache         (dma_2_m_axi_mm2s_arcache[3:0]          ), //o
    .m_axi_mm2s_aruser          (dma_2_m_axi_mm2s_aruser[3:0]           ), //o
    .m_axi_mm2s_arprot          (dma_2_m_axi_mm2s_arprot[2:0]           ), //o
    .m_axi_mm2s_rvalid          (m_axi_2_rvalid                         ), //i
    .m_axi_mm2s_rready          (dma_2_m_axi_mm2s_rready                ), //o
    .m_axi_mm2s_rdata           (m_axi_2_rdata[127:0]                   ), //i
    .m_axi_mm2s_rresp           (m_axi_2_rresp[1:0]                     ), //i
    .m_axi_mm2s_rlast           (m_axi_2_rlast                          ), //i
    .m_axis_s2mm_sts_tvalid     (dma_2_m_axis_s2mm_sts_tvalid           ), //o
    .m_axis_s2mm_sts_tready     (1'b1                                   ), //i
    .m_axis_s2mm_sts_tdata      (dma_2_m_axis_s2mm_sts_tdata[7:0]       ), //o
    .m_axis_s2mm_sts_tkeep      (dma_2_m_axis_s2mm_sts_tkeep            ), //o
    .m_axis_s2mm_sts_tlast      (dma_2_m_axis_s2mm_sts_tlast            ), //o
    .m_axis_mm2s_sts_tvalid     (dma_2_m_axis_mm2s_sts_tvalid           ), //o
    .m_axis_mm2s_sts_tready     (1'b1                                   ), //i
    .m_axis_mm2s_sts_tdata      (dma_2_m_axis_mm2s_sts_tdata[7:0]       ), //o
    .m_axis_mm2s_sts_tkeep      (dma_2_m_axis_mm2s_sts_tkeep            ), //o
    .m_axis_mm2s_sts_tlast      (dma_2_m_axis_mm2s_sts_tlast            ), //o
    .m_axis_mm2s_tvalid         (dma_2_m_axis_mm2s_tvalid               ), //o
    .m_axis_mm2s_tready         (inBuf_2_io_push_ready                  ), //i
    .m_axis_mm2s_tdata          (dma_2_m_axis_mm2s_tdata[127:0]         ), //o
    .m_axis_mm2s_tkeep          (dma_2_m_axis_mm2s_tkeep[15:0]          ), //o
    .m_axis_mm2s_tlast          (dma_2_m_axis_mm2s_tlast                ), //o
    .m_axi_mm2s_aclk            (clk                                    ), //i
    .m_axi_mm2s_aresetn         (aresetn                                ), //i
    .m_axis_mm2s_cmdsts_aclk    (clk                                    ), //i
    .m_axis_mm2s_cmdsts_aresetn (aresetn                                ), //i
    .m_axi_s2mm_aclk            (clk                                    ), //i
    .m_axi_s2mm_aresetn         (aresetn                                ), //i
    .m_axis_s2mm_cmdsts_awclk   (clk                                    ), //i
    .m_axis_s2mm_cmdsts_aresetn (aresetn                                ), //i
    .mm2s_err                   (dma_2_mm2s_err                         ), //o
    .s2mm_err                   (dma_2_s2mm_err                         )  //o
  );
  AxiDatamover128 dma_3 (
    .s_axis_s2mm_tvalid         (outBuf_3_io_pop_valid                  ), //i
    .s_axis_s2mm_tready         (dma_3_s_axis_s2mm_tready               ), //o
    .s_axis_s2mm_tdata          (outBuf_3_io_pop_payload_fragment[127:0]), //i
    .s_axis_s2mm_tkeep          (16'hffff                               ), //i
    .s_axis_s2mm_tlast          (outBuf_3_io_pop_payload_last           ), //i
    .s_axis_s2mm_cmd_tvalid     (s2mmCmdSplit_io_outCmd_3_valid         ), //i
    .s_axis_s2mm_cmd_tready     (dma_3_s_axis_s2mm_cmd_tready           ), //o
    .s_axis_s2mm_cmd_tdata      (s2mmCmdSplit_io_outCmd_3_payload[71:0] ), //i
    .s_axis_mm2s_cmd_tvalid     (mm2sCmdSplit_io_outCmd_3_valid         ), //i
    .s_axis_mm2s_cmd_tready     (dma_3_s_axis_mm2s_cmd_tready           ), //o
    .s_axis_mm2s_cmd_tdata      (mm2sCmdSplit_io_outCmd_3_payload[71:0] ), //i
    .m_axi_s2mm_awvalid         (dma_3_m_axi_s2mm_awvalid               ), //o
    .m_axi_s2mm_awready         (m_axi_3_awready                        ), //i
    .m_axi_s2mm_awaddr          (dma_3_m_axi_s2mm_awaddr[31:0]          ), //o
    .m_axi_s2mm_awid            (dma_3_m_axi_s2mm_awid[3:0]             ), //o
    .m_axi_s2mm_awlen           (dma_3_m_axi_s2mm_awlen[7:0]            ), //o
    .m_axi_s2mm_awsize          (dma_3_m_axi_s2mm_awsize[2:0]           ), //o
    .m_axi_s2mm_awburst         (dma_3_m_axi_s2mm_awburst[1:0]          ), //o
    .m_axi_s2mm_awcache         (dma_3_m_axi_s2mm_awcache[3:0]          ), //o
    .m_axi_s2mm_awuser          (dma_3_m_axi_s2mm_awuser[3:0]           ), //o
    .m_axi_s2mm_awprot          (dma_3_m_axi_s2mm_awprot[2:0]           ), //o
    .m_axi_s2mm_wvalid          (dma_3_m_axi_s2mm_wvalid                ), //o
    .m_axi_s2mm_wready          (m_axi_3_wready                         ), //i
    .m_axi_s2mm_wdata           (dma_3_m_axi_s2mm_wdata[127:0]          ), //o
    .m_axi_s2mm_wstrb           (dma_3_m_axi_s2mm_wstrb[15:0]           ), //o
    .m_axi_s2mm_wlast           (dma_3_m_axi_s2mm_wlast                 ), //o
    .m_axi_s2mm_bvalid          (m_axi_3_bvalid                         ), //i
    .m_axi_s2mm_bready          (dma_3_m_axi_s2mm_bready                ), //o
    .m_axi_s2mm_bresp           (m_axi_3_bresp[1:0]                     ), //i
    .m_axi_mm2s_arvalid         (dma_3_m_axi_mm2s_arvalid               ), //o
    .m_axi_mm2s_arready         (m_axi_3_arready                        ), //i
    .m_axi_mm2s_araddr          (dma_3_m_axi_mm2s_araddr[31:0]          ), //o
    .m_axi_mm2s_arid            (dma_3_m_axi_mm2s_arid[3:0]             ), //o
    .m_axi_mm2s_arlen           (dma_3_m_axi_mm2s_arlen[7:0]            ), //o
    .m_axi_mm2s_arsize          (dma_3_m_axi_mm2s_arsize[2:0]           ), //o
    .m_axi_mm2s_arburst         (dma_3_m_axi_mm2s_arburst[1:0]          ), //o
    .m_axi_mm2s_arcache         (dma_3_m_axi_mm2s_arcache[3:0]          ), //o
    .m_axi_mm2s_aruser          (dma_3_m_axi_mm2s_aruser[3:0]           ), //o
    .m_axi_mm2s_arprot          (dma_3_m_axi_mm2s_arprot[2:0]           ), //o
    .m_axi_mm2s_rvalid          (m_axi_3_rvalid                         ), //i
    .m_axi_mm2s_rready          (dma_3_m_axi_mm2s_rready                ), //o
    .m_axi_mm2s_rdata           (m_axi_3_rdata[127:0]                   ), //i
    .m_axi_mm2s_rresp           (m_axi_3_rresp[1:0]                     ), //i
    .m_axi_mm2s_rlast           (m_axi_3_rlast                          ), //i
    .m_axis_s2mm_sts_tvalid     (dma_3_m_axis_s2mm_sts_tvalid           ), //o
    .m_axis_s2mm_sts_tready     (1'b1                                   ), //i
    .m_axis_s2mm_sts_tdata      (dma_3_m_axis_s2mm_sts_tdata[7:0]       ), //o
    .m_axis_s2mm_sts_tkeep      (dma_3_m_axis_s2mm_sts_tkeep            ), //o
    .m_axis_s2mm_sts_tlast      (dma_3_m_axis_s2mm_sts_tlast            ), //o
    .m_axis_mm2s_sts_tvalid     (dma_3_m_axis_mm2s_sts_tvalid           ), //o
    .m_axis_mm2s_sts_tready     (1'b1                                   ), //i
    .m_axis_mm2s_sts_tdata      (dma_3_m_axis_mm2s_sts_tdata[7:0]       ), //o
    .m_axis_mm2s_sts_tkeep      (dma_3_m_axis_mm2s_sts_tkeep            ), //o
    .m_axis_mm2s_sts_tlast      (dma_3_m_axis_mm2s_sts_tlast            ), //o
    .m_axis_mm2s_tvalid         (dma_3_m_axis_mm2s_tvalid               ), //o
    .m_axis_mm2s_tready         (inBuf_3_io_push_ready                  ), //i
    .m_axis_mm2s_tdata          (dma_3_m_axis_mm2s_tdata[127:0]         ), //o
    .m_axis_mm2s_tkeep          (dma_3_m_axis_mm2s_tkeep[15:0]          ), //o
    .m_axis_mm2s_tlast          (dma_3_m_axis_mm2s_tlast                ), //o
    .m_axi_mm2s_aclk            (clk                                    ), //i
    .m_axi_mm2s_aresetn         (aresetn                                ), //i
    .m_axis_mm2s_cmdsts_aclk    (clk                                    ), //i
    .m_axis_mm2s_cmdsts_aresetn (aresetn                                ), //i
    .m_axi_s2mm_aclk            (clk                                    ), //i
    .m_axi_s2mm_aresetn         (aresetn                                ), //i
    .m_axis_s2mm_cmdsts_awclk   (clk                                    ), //i
    .m_axis_s2mm_cmdsts_aresetn (aresetn                                ), //i
    .mm2s_err                   (dma_3_mm2s_err                         ), //o
    .s2mm_err                   (dma_3_s2mm_err                         )  //o
  );
  SplitAxiDatamoverCmd mm2sCmdSplit (
    .io_inCmd_valid      (mm2sCmd_tvalid                        ), //i
    .io_inCmd_ready      (mm2sCmdSplit_io_inCmd_ready           ), //o
    .io_inCmd_payload    (mm2sCmd_tdata[71:0]                   ), //i
    .io_outCmd_0_valid   (mm2sCmdSplit_io_outCmd_0_valid        ), //o
    .io_outCmd_0_ready   (dma_0_s_axis_mm2s_cmd_tready          ), //i
    .io_outCmd_0_payload (mm2sCmdSplit_io_outCmd_0_payload[71:0]), //o
    .io_outCmd_1_valid   (mm2sCmdSplit_io_outCmd_1_valid        ), //o
    .io_outCmd_1_ready   (dma_1_s_axis_mm2s_cmd_tready          ), //i
    .io_outCmd_1_payload (mm2sCmdSplit_io_outCmd_1_payload[71:0]), //o
    .io_outCmd_2_valid   (mm2sCmdSplit_io_outCmd_2_valid        ), //o
    .io_outCmd_2_ready   (dma_2_s_axis_mm2s_cmd_tready          ), //i
    .io_outCmd_2_payload (mm2sCmdSplit_io_outCmd_2_payload[71:0]), //o
    .io_outCmd_3_valid   (mm2sCmdSplit_io_outCmd_3_valid        ), //o
    .io_outCmd_3_ready   (dma_3_s_axis_mm2s_cmd_tready          ), //i
    .io_outCmd_3_payload (mm2sCmdSplit_io_outCmd_3_payload[71:0]), //o
    .clk                 (clk                                   ), //i
    .resetn              (resetn                                )  //i
  );
  SplitAxiDatamoverCmd s2mmCmdSplit (
    .io_inCmd_valid      (s2mmCmd_tvalid                        ), //i
    .io_inCmd_ready      (s2mmCmdSplit_io_inCmd_ready           ), //o
    .io_inCmd_payload    (s2mmCmd_tdata[71:0]                   ), //i
    .io_outCmd_0_valid   (s2mmCmdSplit_io_outCmd_0_valid        ), //o
    .io_outCmd_0_ready   (dma_0_s_axis_s2mm_cmd_tready          ), //i
    .io_outCmd_0_payload (s2mmCmdSplit_io_outCmd_0_payload[71:0]), //o
    .io_outCmd_1_valid   (s2mmCmdSplit_io_outCmd_1_valid        ), //o
    .io_outCmd_1_ready   (dma_1_s_axis_s2mm_cmd_tready          ), //i
    .io_outCmd_1_payload (s2mmCmdSplit_io_outCmd_1_payload[71:0]), //o
    .io_outCmd_2_valid   (s2mmCmdSplit_io_outCmd_2_valid        ), //o
    .io_outCmd_2_ready   (dma_2_s_axis_s2mm_cmd_tready          ), //i
    .io_outCmd_2_payload (s2mmCmdSplit_io_outCmd_2_payload[71:0]), //o
    .io_outCmd_3_valid   (s2mmCmdSplit_io_outCmd_3_valid        ), //o
    .io_outCmd_3_ready   (dma_3_s_axis_s2mm_cmd_tready          ), //i
    .io_outCmd_3_payload (s2mmCmdSplit_io_outCmd_3_payload[71:0]), //o
    .clk                 (clk                                   ), //i
    .resetn              (resetn                                )  //i
  );
  StreamFifo_1 inBuf_0 (
    .io_push_valid   (dma_0_m_axis_mm2s_tvalid      ), //i
    .io_push_ready   (inBuf_0_io_push_ready         ), //o
    .io_push_payload (dma_0_m_axis_mm2s_tdata[127:0]), //i
    .io_pop_valid    (inBuf_0_io_pop_valid          ), //o
    .io_pop_ready    (joinEvent_fire                ), //i
    .io_pop_payload  (inBuf_0_io_pop_payload[127:0] ), //o
    .io_flush        (1'b0                          ), //i
    .io_occupancy    (inBuf_0_io_occupancy[10:0]    ), //o
    .io_availability (inBuf_0_io_availability[10:0] ), //o
    .clk             (clk                           ), //i
    .resetn          (resetn                        )  //i
  );
  StreamFifo_1 inBuf_1 (
    .io_push_valid   (dma_1_m_axis_mm2s_tvalid      ), //i
    .io_push_ready   (inBuf_1_io_push_ready         ), //o
    .io_push_payload (dma_1_m_axis_mm2s_tdata[127:0]), //i
    .io_pop_valid    (inBuf_1_io_pop_valid          ), //o
    .io_pop_ready    (joinEvent_fire                ), //i
    .io_pop_payload  (inBuf_1_io_pop_payload[127:0] ), //o
    .io_flush        (1'b0                          ), //i
    .io_occupancy    (inBuf_1_io_occupancy[10:0]    ), //o
    .io_availability (inBuf_1_io_availability[10:0] ), //o
    .clk             (clk                           ), //i
    .resetn          (resetn                        )  //i
  );
  StreamFifo_1 inBuf_2 (
    .io_push_valid   (dma_2_m_axis_mm2s_tvalid      ), //i
    .io_push_ready   (inBuf_2_io_push_ready         ), //o
    .io_push_payload (dma_2_m_axis_mm2s_tdata[127:0]), //i
    .io_pop_valid    (inBuf_2_io_pop_valid          ), //o
    .io_pop_ready    (joinEvent_fire                ), //i
    .io_pop_payload  (inBuf_2_io_pop_payload[127:0] ), //o
    .io_flush        (1'b0                          ), //i
    .io_occupancy    (inBuf_2_io_occupancy[10:0]    ), //o
    .io_availability (inBuf_2_io_availability[10:0] ), //o
    .clk             (clk                           ), //i
    .resetn          (resetn                        )  //i
  );
  StreamFifo_1 inBuf_3 (
    .io_push_valid   (dma_3_m_axis_mm2s_tvalid      ), //i
    .io_push_ready   (inBuf_3_io_push_ready         ), //o
    .io_push_payload (dma_3_m_axis_mm2s_tdata[127:0]), //i
    .io_pop_valid    (inBuf_3_io_pop_valid          ), //o
    .io_pop_ready    (joinEvent_fire                ), //i
    .io_pop_payload  (inBuf_3_io_pop_payload[127:0] ), //o
    .io_flush        (1'b0                          ), //i
    .io_occupancy    (inBuf_3_io_occupancy[10:0]    ), //o
    .io_availability (inBuf_3_io_availability[10:0] ), //o
    .clk             (clk                           ), //i
    .resetn          (resetn                        )  //i
  );
  StreamFifo_5 inLastBuf (
    .io_push_valid   (dmaHp_inBuf_0_io_push_fire     ), //i
    .io_push_ready   (inLastBuf_io_push_ready        ), //o
    .io_push_payload (dma_0_m_axis_mm2s_tlast        ), //i
    .io_pop_valid    (inLastBuf_io_pop_valid         ), //o
    .io_pop_ready    (dmaHp_inBuf_0_io_pop_fire      ), //i
    .io_pop_payload  (inLastBuf_io_pop_payload       ), //o
    .io_flush        (1'b0                           ), //i
    .io_occupancy    (inLastBuf_io_occupancy[10:0]   ), //o
    .io_availability (inLastBuf_io_availability[10:0]), //o
    .clk             (clk                            ), //i
    .resetn          (resetn                         )  //i
  );
  StreamFifo_6 outBuf_0 (
    .io_push_valid            (s2mmFork_io_outputs_0_valid            ), //i
    .io_push_ready            (outBuf_0_io_push_ready                 ), //o
    .io_push_payload_last     (s2mm_tlast                             ), //i
    .io_push_payload_fragment (s2mmPayloadSplit_0[127:0]              ), //i
    .io_pop_valid             (outBuf_0_io_pop_valid                  ), //o
    .io_pop_ready             (dma_0_s_axis_s2mm_tready               ), //i
    .io_pop_payload_last      (outBuf_0_io_pop_payload_last           ), //o
    .io_pop_payload_fragment  (outBuf_0_io_pop_payload_fragment[127:0]), //o
    .io_flush                 (1'b0                                   ), //i
    .io_occupancy             (outBuf_0_io_occupancy[5:0]             ), //o
    .io_availability          (outBuf_0_io_availability[5:0]          ), //o
    .clk                      (clk                                    ), //i
    .resetn                   (resetn                                 )  //i
  );
  StreamFifo_6 outBuf_1 (
    .io_push_valid            (s2mmFork_io_outputs_1_valid            ), //i
    .io_push_ready            (outBuf_1_io_push_ready                 ), //o
    .io_push_payload_last     (s2mm_tlast                             ), //i
    .io_push_payload_fragment (s2mmPayloadSplit_1[127:0]              ), //i
    .io_pop_valid             (outBuf_1_io_pop_valid                  ), //o
    .io_pop_ready             (dma_1_s_axis_s2mm_tready               ), //i
    .io_pop_payload_last      (outBuf_1_io_pop_payload_last           ), //o
    .io_pop_payload_fragment  (outBuf_1_io_pop_payload_fragment[127:0]), //o
    .io_flush                 (1'b0                                   ), //i
    .io_occupancy             (outBuf_1_io_occupancy[5:0]             ), //o
    .io_availability          (outBuf_1_io_availability[5:0]          ), //o
    .clk                      (clk                                    ), //i
    .resetn                   (resetn                                 )  //i
  );
  StreamFifo_6 outBuf_2 (
    .io_push_valid            (s2mmFork_io_outputs_2_valid            ), //i
    .io_push_ready            (outBuf_2_io_push_ready                 ), //o
    .io_push_payload_last     (s2mm_tlast                             ), //i
    .io_push_payload_fragment (s2mmPayloadSplit_2[127:0]              ), //i
    .io_pop_valid             (outBuf_2_io_pop_valid                  ), //o
    .io_pop_ready             (dma_2_s_axis_s2mm_tready               ), //i
    .io_pop_payload_last      (outBuf_2_io_pop_payload_last           ), //o
    .io_pop_payload_fragment  (outBuf_2_io_pop_payload_fragment[127:0]), //o
    .io_flush                 (1'b0                                   ), //i
    .io_occupancy             (outBuf_2_io_occupancy[5:0]             ), //o
    .io_availability          (outBuf_2_io_availability[5:0]          ), //o
    .clk                      (clk                                    ), //i
    .resetn                   (resetn                                 )  //i
  );
  StreamFifo_6 outBuf_3 (
    .io_push_valid            (s2mmFork_io_outputs_3_valid            ), //i
    .io_push_ready            (outBuf_3_io_push_ready                 ), //o
    .io_push_payload_last     (s2mm_tlast                             ), //i
    .io_push_payload_fragment (s2mmPayloadSplit_3[127:0]              ), //i
    .io_pop_valid             (outBuf_3_io_pop_valid                  ), //o
    .io_pop_ready             (dma_3_s_axis_s2mm_tready               ), //i
    .io_pop_payload_last      (outBuf_3_io_pop_payload_last           ), //o
    .io_pop_payload_fragment  (outBuf_3_io_pop_payload_fragment[127:0]), //o
    .io_flush                 (1'b0                                   ), //i
    .io_occupancy             (outBuf_3_io_occupancy[5:0]             ), //o
    .io_availability          (outBuf_3_io_availability[5:0]          ), //o
    .clk                      (clk                                    ), //i
    .resetn                   (resetn                                 )  //i
  );
  StreamFork_2 s2mmFork (
    .io_input_valid     (s2mm_tvalid                ), //i
    .io_input_ready     (s2mmFork_io_input_ready    ), //o
    .io_outputs_0_valid (s2mmFork_io_outputs_0_valid), //o
    .io_outputs_0_ready (outBuf_0_io_push_ready     ), //i
    .io_outputs_1_valid (s2mmFork_io_outputs_1_valid), //o
    .io_outputs_1_ready (outBuf_1_io_push_ready     ), //i
    .io_outputs_2_valid (s2mmFork_io_outputs_2_valid), //o
    .io_outputs_2_ready (outBuf_2_io_push_ready     ), //i
    .io_outputs_3_valid (s2mmFork_io_outputs_3_valid), //o
    .io_outputs_3_ready (outBuf_3_io_push_ready     )  //i
  );
  assign mm2sCmd_tready = mm2sCmdSplit_io_inCmd_ready;
  assign s2mmCmd_tready = s2mmCmdSplit_io_inCmd_ready;
  assign s2mm_tready = s2mmFork_io_input_ready;
  assign s2mmPayloadSplit_0 = s2mm_tdata[127 : 0];
  assign s2mmPayloadSplit_1 = s2mm_tdata[255 : 128];
  assign s2mmPayloadSplit_2 = s2mm_tdata[383 : 256];
  assign s2mmPayloadSplit_3 = s2mm_tdata[511 : 384];
  assign m_axi_0_arvalid = dma_0_m_axi_mm2s_arvalid;
  assign m_axi_0_araddr = dma_0_m_axi_mm2s_araddr;
  assign m_axi_0_arid = dma_0_m_axi_mm2s_arid;
  assign m_axi_0_arlen = dma_0_m_axi_mm2s_arlen;
  assign m_axi_0_arsize = dma_0_m_axi_mm2s_arsize;
  assign m_axi_0_arburst = dma_0_m_axi_mm2s_arburst;
  assign m_axi_0_arcache = dma_0_m_axi_mm2s_arcache;
  assign m_axi_0_aruser = dma_0_m_axi_mm2s_aruser;
  assign m_axi_0_arprot = dma_0_m_axi_mm2s_arprot;
  assign m_axi_0_awvalid = dma_0_m_axi_s2mm_awvalid;
  assign m_axi_0_awaddr = dma_0_m_axi_s2mm_awaddr;
  assign m_axi_0_awid = dma_0_m_axi_s2mm_awid;
  assign m_axi_0_awlen = dma_0_m_axi_s2mm_awlen;
  assign m_axi_0_awsize = dma_0_m_axi_s2mm_awsize;
  assign m_axi_0_awburst = dma_0_m_axi_s2mm_awburst;
  assign m_axi_0_awcache = dma_0_m_axi_s2mm_awcache;
  assign m_axi_0_awuser = dma_0_m_axi_s2mm_awuser;
  assign m_axi_0_awprot = dma_0_m_axi_s2mm_awprot;
  assign m_axi_0_wvalid = dma_0_m_axi_s2mm_wvalid;
  assign m_axi_0_wdata = dma_0_m_axi_s2mm_wdata;
  assign m_axi_0_wstrb = dma_0_m_axi_s2mm_wstrb;
  assign m_axi_0_wlast = dma_0_m_axi_s2mm_wlast;
  assign m_axi_0_rready = dma_0_m_axi_mm2s_rready;
  assign m_axi_0_bready = dma_0_m_axi_s2mm_bready;
  assign m_axi_1_arvalid = dma_1_m_axi_mm2s_arvalid;
  assign m_axi_1_araddr = dma_1_m_axi_mm2s_araddr;
  assign m_axi_1_arid = dma_1_m_axi_mm2s_arid;
  assign m_axi_1_arlen = dma_1_m_axi_mm2s_arlen;
  assign m_axi_1_arsize = dma_1_m_axi_mm2s_arsize;
  assign m_axi_1_arburst = dma_1_m_axi_mm2s_arburst;
  assign m_axi_1_arcache = dma_1_m_axi_mm2s_arcache;
  assign m_axi_1_aruser = dma_1_m_axi_mm2s_aruser;
  assign m_axi_1_arprot = dma_1_m_axi_mm2s_arprot;
  assign m_axi_1_awvalid = dma_1_m_axi_s2mm_awvalid;
  assign m_axi_1_awaddr = dma_1_m_axi_s2mm_awaddr;
  assign m_axi_1_awid = dma_1_m_axi_s2mm_awid;
  assign m_axi_1_awlen = dma_1_m_axi_s2mm_awlen;
  assign m_axi_1_awsize = dma_1_m_axi_s2mm_awsize;
  assign m_axi_1_awburst = dma_1_m_axi_s2mm_awburst;
  assign m_axi_1_awcache = dma_1_m_axi_s2mm_awcache;
  assign m_axi_1_awuser = dma_1_m_axi_s2mm_awuser;
  assign m_axi_1_awprot = dma_1_m_axi_s2mm_awprot;
  assign m_axi_1_wvalid = dma_1_m_axi_s2mm_wvalid;
  assign m_axi_1_wdata = dma_1_m_axi_s2mm_wdata;
  assign m_axi_1_wstrb = dma_1_m_axi_s2mm_wstrb;
  assign m_axi_1_wlast = dma_1_m_axi_s2mm_wlast;
  assign m_axi_1_rready = dma_1_m_axi_mm2s_rready;
  assign m_axi_1_bready = dma_1_m_axi_s2mm_bready;
  assign m_axi_2_arvalid = dma_2_m_axi_mm2s_arvalid;
  assign m_axi_2_araddr = dma_2_m_axi_mm2s_araddr;
  assign m_axi_2_arid = dma_2_m_axi_mm2s_arid;
  assign m_axi_2_arlen = dma_2_m_axi_mm2s_arlen;
  assign m_axi_2_arsize = dma_2_m_axi_mm2s_arsize;
  assign m_axi_2_arburst = dma_2_m_axi_mm2s_arburst;
  assign m_axi_2_arcache = dma_2_m_axi_mm2s_arcache;
  assign m_axi_2_aruser = dma_2_m_axi_mm2s_aruser;
  assign m_axi_2_arprot = dma_2_m_axi_mm2s_arprot;
  assign m_axi_2_awvalid = dma_2_m_axi_s2mm_awvalid;
  assign m_axi_2_awaddr = dma_2_m_axi_s2mm_awaddr;
  assign m_axi_2_awid = dma_2_m_axi_s2mm_awid;
  assign m_axi_2_awlen = dma_2_m_axi_s2mm_awlen;
  assign m_axi_2_awsize = dma_2_m_axi_s2mm_awsize;
  assign m_axi_2_awburst = dma_2_m_axi_s2mm_awburst;
  assign m_axi_2_awcache = dma_2_m_axi_s2mm_awcache;
  assign m_axi_2_awuser = dma_2_m_axi_s2mm_awuser;
  assign m_axi_2_awprot = dma_2_m_axi_s2mm_awprot;
  assign m_axi_2_wvalid = dma_2_m_axi_s2mm_wvalid;
  assign m_axi_2_wdata = dma_2_m_axi_s2mm_wdata;
  assign m_axi_2_wstrb = dma_2_m_axi_s2mm_wstrb;
  assign m_axi_2_wlast = dma_2_m_axi_s2mm_wlast;
  assign m_axi_2_rready = dma_2_m_axi_mm2s_rready;
  assign m_axi_2_bready = dma_2_m_axi_s2mm_bready;
  assign m_axi_3_arvalid = dma_3_m_axi_mm2s_arvalid;
  assign m_axi_3_araddr = dma_3_m_axi_mm2s_araddr;
  assign m_axi_3_arid = dma_3_m_axi_mm2s_arid;
  assign m_axi_3_arlen = dma_3_m_axi_mm2s_arlen;
  assign m_axi_3_arsize = dma_3_m_axi_mm2s_arsize;
  assign m_axi_3_arburst = dma_3_m_axi_mm2s_arburst;
  assign m_axi_3_arcache = dma_3_m_axi_mm2s_arcache;
  assign m_axi_3_aruser = dma_3_m_axi_mm2s_aruser;
  assign m_axi_3_arprot = dma_3_m_axi_mm2s_arprot;
  assign m_axi_3_awvalid = dma_3_m_axi_s2mm_awvalid;
  assign m_axi_3_awaddr = dma_3_m_axi_s2mm_awaddr;
  assign m_axi_3_awid = dma_3_m_axi_s2mm_awid;
  assign m_axi_3_awlen = dma_3_m_axi_s2mm_awlen;
  assign m_axi_3_awsize = dma_3_m_axi_s2mm_awsize;
  assign m_axi_3_awburst = dma_3_m_axi_s2mm_awburst;
  assign m_axi_3_awcache = dma_3_m_axi_s2mm_awcache;
  assign m_axi_3_awuser = dma_3_m_axi_s2mm_awuser;
  assign m_axi_3_awprot = dma_3_m_axi_s2mm_awprot;
  assign m_axi_3_wvalid = dma_3_m_axi_s2mm_wvalid;
  assign m_axi_3_wdata = dma_3_m_axi_s2mm_wdata;
  assign m_axi_3_wstrb = dma_3_m_axi_s2mm_wstrb;
  assign m_axi_3_wlast = dma_3_m_axi_s2mm_wlast;
  assign m_axi_3_rready = dma_3_m_axi_mm2s_rready;
  assign m_axi_3_bready = dma_3_m_axi_s2mm_bready;
  assign dmaHp_inBuf_0_io_push_fire = (dma_0_m_axis_mm2s_tvalid && inBuf_0_io_push_ready);
  assign dmaHp_inBuf_0_io_pop_fire = (inBuf_0_io_pop_valid && joinEvent_fire);
  assign inBufPayload = {inBuf_3_io_pop_payload,{inBuf_2_io_pop_payload,{inBuf_1_io_pop_payload,inBuf_0_io_pop_payload}}};
  assign joinEvent_fire = (joinEvent_valid && joinEvent_ready);
  assign joinEvent_valid = (((inBuf_0_io_pop_valid && inBuf_1_io_pop_valid) && inBuf_2_io_pop_valid) && inBuf_3_io_pop_valid);
  assign mm2s_valid = joinEvent_valid;
  assign joinEvent_ready = mm2s_ready;
  assign mm2s_payload_data = inBufPayload;
  assign mm2s_payload_keep = 64'hffffffffffffffff;
  assign mm2s_payload_last = inLastBuf_io_pop_payload;
  always @(*) begin
    mm2s_ready = mm2s_m2sPipe_ready;
    if((! mm2s_m2sPipe_valid)) begin
      mm2s_ready = 1'b1;
    end
  end

  assign mm2s_m2sPipe_valid = mm2s_rValid;
  assign mm2s_m2sPipe_payload_data = mm2s_rData_data;
  assign mm2s_m2sPipe_payload_keep = mm2s_rData_keep;
  assign mm2s_m2sPipe_payload_last = mm2s_rData_last;
  assign mm2s_tvalid = mm2s_m2sPipe_valid;
  assign mm2s_m2sPipe_ready = mm2s_tready;
  assign mm2s_tdata = mm2s_m2sPipe_payload_data;
  assign mm2s_tkeep = mm2s_m2sPipe_payload_keep;
  assign mm2s_tlast = mm2s_m2sPipe_payload_last;
  always @(posedge clk or negedge resetn) begin
    if(!resetn) begin
      mm2s_rValid <= 1'b0;
    end else begin
      if(mm2s_ready) begin
        mm2s_rValid <= mm2s_valid;
      end
    end
  end

  always @(posedge clk) begin
    if(mm2s_ready) begin
      mm2s_rData_data <= mm2s_payload_data;
      mm2s_rData_keep <= mm2s_payload_keep;
      mm2s_rData_last <= mm2s_payload_last;
    end
  end


endmodule

//StreamFork replaced by StreamFork_2

//StreamFifo_9 replaced by StreamFifo_6

//StreamFifo_8 replaced by StreamFifo_6

//StreamFifo_7 replaced by StreamFifo_6

module StreamFifo_6 (
  input               io_push_valid,
  output              io_push_ready,
  input               io_push_payload_last,
  input      [127:0]  io_push_payload_fragment,
  output              io_pop_valid,
  input               io_pop_ready,
  output              io_pop_payload_last,
  output     [127:0]  io_pop_payload_fragment,
  input               io_flush,
  output     [5:0]    io_occupancy,
  output     [5:0]    io_availability,
  input               clk,
  input               resetn
);

  reg        [128:0]  t_logic_ram_port1;
  wire       [128:0]  t_logic_ram_port;
  reg                 t_1;
  wire                logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [5:0]    logic_ptr_push;
  reg        [5:0]    logic_ptr_pop;
  wire       [5:0]    logic_ptr_occupancy;
  wire       [5:0]    logic_ptr_popOnIo;
  reg                 logic_ptr_wentUp;
  wire                io_push_fire;
  wire                logic_push_onRam_write_valid;
  wire       [4:0]    logic_push_onRam_write_payload_address;
  wire                logic_push_onRam_write_payload_data_last;
  wire       [127:0]  logic_push_onRam_write_payload_data_fragment;
  wire                logic_pop_addressGen_valid;
  reg                 logic_pop_addressGen_ready;
  wire       [4:0]    logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire                logic_pop_sync_readArbitation_valid;
  wire                logic_pop_sync_readArbitation_ready;
  wire       [4:0]    logic_pop_sync_readArbitation_payload;
  reg                 logic_pop_addressGen_rValid;
  reg        [4:0]    logic_pop_addressGen_rData;
  wire                logic_pop_sync_readPort_cmd_valid;
  wire       [4:0]    logic_pop_sync_readPort_cmd_payload;
  wire                logic_pop_sync_readPort_rsp_last;
  wire       [127:0]  logic_pop_sync_readPort_rsp_fragment;
  wire       [128:0]  t_logic_pop_sync_readPort_rsp_last;
  wire                logic_pop_sync_readArbitation_translated_valid;
  wire                logic_pop_sync_readArbitation_translated_ready;
  wire                logic_pop_sync_readArbitation_translated_payload_last;
  wire       [127:0]  logic_pop_sync_readArbitation_translated_payload_fragment;
  wire                logic_pop_sync_readArbitation_fire;
  reg        [5:0]    logic_pop_sync_popReg;
  reg [128:0] logic_ram [0:31];

  assign t_logic_ram_port = {logic_push_onRam_write_payload_data_fragment,logic_push_onRam_write_payload_data_last};
  always @(posedge clk) begin
    if(t_1) begin
      logic_ram[logic_push_onRam_write_payload_address] <= t_logic_ram_port;
    end
  end

  always @(posedge clk) begin
    if(logic_pop_sync_readPort_cmd_valid) begin
      t_logic_ram_port1 <= logic_ram[logic_pop_sync_readPort_cmd_payload];
    end
  end

  always @(*) begin
    t_1 = 1'b0;
    if(logic_push_onRam_write_valid) begin
      t_1 = 1'b1;
    end
  end

  assign logic_ptr_full = (((logic_ptr_push ^ logic_ptr_popOnIo) ^ 6'h20) == 6'h00);
  assign logic_ptr_empty = (logic_ptr_push == logic_ptr_pop);
  assign logic_ptr_occupancy = (logic_ptr_push - logic_ptr_popOnIo);
  assign io_push_ready = (! logic_ptr_full);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign logic_ptr_doPush = io_push_fire;
  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push[4:0];
  assign logic_push_onRam_write_payload_data_last = io_push_payload_last;
  assign logic_push_onRam_write_payload_data_fragment = io_push_payload_fragment;
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop[4:0];
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  always @(*) begin
    logic_pop_addressGen_ready = logic_pop_sync_readArbitation_ready;
    if((! logic_pop_sync_readArbitation_valid)) begin
      logic_pop_addressGen_ready = 1'b1;
    end
  end

  assign logic_pop_sync_readArbitation_valid = logic_pop_addressGen_rValid;
  assign logic_pop_sync_readArbitation_payload = logic_pop_addressGen_rData;
  assign t_logic_pop_sync_readPort_rsp_last = t_logic_ram_port1;
  assign logic_pop_sync_readPort_rsp_last = t_logic_pop_sync_readPort_rsp_last[0];
  assign logic_pop_sync_readPort_rsp_fragment = t_logic_pop_sync_readPort_rsp_last[128 : 1];
  assign logic_pop_sync_readPort_cmd_valid = logic_pop_addressGen_fire;
  assign logic_pop_sync_readPort_cmd_payload = logic_pop_addressGen_payload;
  assign logic_pop_sync_readArbitation_translated_valid = logic_pop_sync_readArbitation_valid;
  assign logic_pop_sync_readArbitation_ready = logic_pop_sync_readArbitation_translated_ready;
  assign logic_pop_sync_readArbitation_translated_payload_last = logic_pop_sync_readPort_rsp_last;
  assign logic_pop_sync_readArbitation_translated_payload_fragment = logic_pop_sync_readPort_rsp_fragment;
  assign io_pop_valid = logic_pop_sync_readArbitation_translated_valid;
  assign logic_pop_sync_readArbitation_translated_ready = io_pop_ready;
  assign io_pop_payload_last = logic_pop_sync_readArbitation_translated_payload_last;
  assign io_pop_payload_fragment = logic_pop_sync_readArbitation_translated_payload_fragment;
  assign logic_pop_sync_readArbitation_fire = (logic_pop_sync_readArbitation_valid && logic_pop_sync_readArbitation_ready);
  assign logic_ptr_popOnIo = logic_pop_sync_popReg;
  assign io_occupancy = logic_ptr_occupancy;
  assign io_availability = (6'h20 - logic_ptr_occupancy);
  always @(posedge clk or negedge resetn) begin
    if(!resetn) begin
      logic_ptr_push <= 6'h00;
      logic_ptr_pop <= 6'h00;
      logic_ptr_wentUp <= 1'b0;
      logic_pop_addressGen_rValid <= 1'b0;
      logic_pop_sync_popReg <= 6'h00;
    end else begin
      if((logic_ptr_doPush != logic_ptr_doPop)) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 6'h01);
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 6'h01);
      end
      if(io_flush) begin
        logic_ptr_push <= 6'h00;
        logic_ptr_pop <= 6'h00;
      end
      if(logic_pop_addressGen_ready) begin
        logic_pop_addressGen_rValid <= logic_pop_addressGen_valid;
      end
      if(io_flush) begin
        logic_pop_addressGen_rValid <= 1'b0;
      end
      if(logic_pop_sync_readArbitation_fire) begin
        logic_pop_sync_popReg <= logic_ptr_pop;
      end
      if(io_flush) begin
        logic_pop_sync_popReg <= 6'h00;
      end
    end
  end

  always @(posedge clk) begin
    if(logic_pop_addressGen_ready) begin
      logic_pop_addressGen_rData <= logic_pop_addressGen_payload;
    end
  end


endmodule

module StreamFifo_5 (
  input               io_push_valid,
  output              io_push_ready,
  input               io_push_payload,
  output              io_pop_valid,
  input               io_pop_ready,
  output              io_pop_payload,
  input               io_flush,
  output     [10:0]   io_occupancy,
  output     [10:0]   io_availability,
  input               clk,
  input               resetn
);

  reg        [0:0]    t_logic_ram_port1;
  wire       [0:0]    t_logic_ram_port;
  reg                 t_1;
  wire                logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [10:0]   logic_ptr_push;
  reg        [10:0]   logic_ptr_pop;
  wire       [10:0]   logic_ptr_occupancy;
  wire       [10:0]   logic_ptr_popOnIo;
  reg                 logic_ptr_wentUp;
  wire                io_push_fire;
  wire                logic_push_onRam_write_valid;
  wire       [9:0]    logic_push_onRam_write_payload_address;
  wire                logic_push_onRam_write_payload_data;
  wire                logic_pop_addressGen_valid;
  reg                 logic_pop_addressGen_ready;
  wire       [9:0]    logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire                logic_pop_sync_readArbitation_valid;
  wire                logic_pop_sync_readArbitation_ready;
  wire       [9:0]    logic_pop_sync_readArbitation_payload;
  reg                 logic_pop_addressGen_rValid;
  reg        [9:0]    logic_pop_addressGen_rData;
  wire                logic_pop_sync_readPort_cmd_valid;
  wire       [9:0]    logic_pop_sync_readPort_cmd_payload;
  wire                logic_pop_sync_readPort_rsp;
  wire                logic_pop_sync_readArbitation_translated_valid;
  wire                logic_pop_sync_readArbitation_translated_ready;
  wire                logic_pop_sync_readArbitation_translated_payload;
  wire                logic_pop_sync_readArbitation_fire;
  reg        [10:0]   logic_pop_sync_popReg;
  reg [0:0] logic_ram [0:1023];

  assign t_logic_ram_port = logic_push_onRam_write_payload_data;
  always @(posedge clk) begin
    if(t_1) begin
      logic_ram[logic_push_onRam_write_payload_address] <= t_logic_ram_port;
    end
  end

  always @(posedge clk) begin
    if(logic_pop_sync_readPort_cmd_valid) begin
      t_logic_ram_port1 <= logic_ram[logic_pop_sync_readPort_cmd_payload];
    end
  end

  always @(*) begin
    t_1 = 1'b0;
    if(logic_push_onRam_write_valid) begin
      t_1 = 1'b1;
    end
  end

  assign logic_ptr_full = (((logic_ptr_push ^ logic_ptr_popOnIo) ^ 11'h400) == 11'h000);
  assign logic_ptr_empty = (logic_ptr_push == logic_ptr_pop);
  assign logic_ptr_occupancy = (logic_ptr_push - logic_ptr_popOnIo);
  assign io_push_ready = (! logic_ptr_full);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign logic_ptr_doPush = io_push_fire;
  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push[9:0];
  assign logic_push_onRam_write_payload_data = io_push_payload;
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop[9:0];
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  always @(*) begin
    logic_pop_addressGen_ready = logic_pop_sync_readArbitation_ready;
    if((! logic_pop_sync_readArbitation_valid)) begin
      logic_pop_addressGen_ready = 1'b1;
    end
  end

  assign logic_pop_sync_readArbitation_valid = logic_pop_addressGen_rValid;
  assign logic_pop_sync_readArbitation_payload = logic_pop_addressGen_rData;
  assign logic_pop_sync_readPort_rsp = t_logic_ram_port1[0];
  assign logic_pop_sync_readPort_cmd_valid = logic_pop_addressGen_fire;
  assign logic_pop_sync_readPort_cmd_payload = logic_pop_addressGen_payload;
  assign logic_pop_sync_readArbitation_translated_valid = logic_pop_sync_readArbitation_valid;
  assign logic_pop_sync_readArbitation_ready = logic_pop_sync_readArbitation_translated_ready;
  assign logic_pop_sync_readArbitation_translated_payload = logic_pop_sync_readPort_rsp;
  assign io_pop_valid = logic_pop_sync_readArbitation_translated_valid;
  assign logic_pop_sync_readArbitation_translated_ready = io_pop_ready;
  assign io_pop_payload = logic_pop_sync_readArbitation_translated_payload;
  assign logic_pop_sync_readArbitation_fire = (logic_pop_sync_readArbitation_valid && logic_pop_sync_readArbitation_ready);
  assign logic_ptr_popOnIo = logic_pop_sync_popReg;
  assign io_occupancy = logic_ptr_occupancy;
  assign io_availability = (11'h400 - logic_ptr_occupancy);
  always @(posedge clk or negedge resetn) begin
    if(!resetn) begin
      logic_ptr_push <= 11'h000;
      logic_ptr_pop <= 11'h000;
      logic_ptr_wentUp <= 1'b0;
      logic_pop_addressGen_rValid <= 1'b0;
      logic_pop_sync_popReg <= 11'h000;
    end else begin
      if((logic_ptr_doPush != logic_ptr_doPop)) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 11'h001);
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 11'h001);
      end
      if(io_flush) begin
        logic_ptr_push <= 11'h000;
        logic_ptr_pop <= 11'h000;
      end
      if(logic_pop_addressGen_ready) begin
        logic_pop_addressGen_rValid <= logic_pop_addressGen_valid;
      end
      if(io_flush) begin
        logic_pop_addressGen_rValid <= 1'b0;
      end
      if(logic_pop_sync_readArbitation_fire) begin
        logic_pop_sync_popReg <= logic_ptr_pop;
      end
      if(io_flush) begin
        logic_pop_sync_popReg <= 11'h000;
      end
    end
  end

  always @(posedge clk) begin
    if(logic_pop_addressGen_ready) begin
      logic_pop_addressGen_rData <= logic_pop_addressGen_payload;
    end
  end


endmodule

//StreamFifo_4 replaced by StreamFifo_1

//StreamFifo_3 replaced by StreamFifo_1

//StreamFifo_2 replaced by StreamFifo_1

module StreamFifo_1 (
  input               io_push_valid,
  output              io_push_ready,
  input      [127:0]  io_push_payload,
  output              io_pop_valid,
  input               io_pop_ready,
  output     [127:0]  io_pop_payload,
  input               io_flush,
  output     [10:0]   io_occupancy,
  output     [10:0]   io_availability,
  input               clk,
  input               resetn
);

  reg        [127:0]  t_logic_ram_port1;
  reg                 t_1;
  wire                logic_ptr_doPush;
  wire                logic_ptr_doPop;
  wire                logic_ptr_full;
  wire                logic_ptr_empty;
  reg        [10:0]   logic_ptr_push;
  reg        [10:0]   logic_ptr_pop;
  wire       [10:0]   logic_ptr_occupancy;
  wire       [10:0]   logic_ptr_popOnIo;
  reg                 logic_ptr_wentUp;
  wire                io_push_fire;
  wire                logic_push_onRam_write_valid;
  wire       [9:0]    logic_push_onRam_write_payload_address;
  wire       [127:0]  logic_push_onRam_write_payload_data;
  wire                logic_pop_addressGen_valid;
  reg                 logic_pop_addressGen_ready;
  wire       [9:0]    logic_pop_addressGen_payload;
  wire                logic_pop_addressGen_fire;
  wire                logic_pop_sync_readArbitation_valid;
  wire                logic_pop_sync_readArbitation_ready;
  wire       [9:0]    logic_pop_sync_readArbitation_payload;
  reg                 logic_pop_addressGen_rValid;
  reg        [9:0]    logic_pop_addressGen_rData;
  wire                logic_pop_sync_readPort_cmd_valid;
  wire       [9:0]    logic_pop_sync_readPort_cmd_payload;
  wire       [127:0]  logic_pop_sync_readPort_rsp;
  wire                logic_pop_sync_readArbitation_translated_valid;
  wire                logic_pop_sync_readArbitation_translated_ready;
  wire       [127:0]  logic_pop_sync_readArbitation_translated_payload;
  wire                logic_pop_sync_readArbitation_fire;
  reg        [10:0]   logic_pop_sync_popReg;
  reg [127:0] logic_ram [0:1023];

  always @(posedge clk) begin
    if(t_1) begin
      logic_ram[logic_push_onRam_write_payload_address] <= logic_push_onRam_write_payload_data;
    end
  end

  always @(posedge clk) begin
    if(logic_pop_sync_readPort_cmd_valid) begin
      t_logic_ram_port1 <= logic_ram[logic_pop_sync_readPort_cmd_payload];
    end
  end

  always @(*) begin
    t_1 = 1'b0;
    if(logic_push_onRam_write_valid) begin
      t_1 = 1'b1;
    end
  end

  assign logic_ptr_full = (((logic_ptr_push ^ logic_ptr_popOnIo) ^ 11'h400) == 11'h000);
  assign logic_ptr_empty = (logic_ptr_push == logic_ptr_pop);
  assign logic_ptr_occupancy = (logic_ptr_push - logic_ptr_popOnIo);
  assign io_push_ready = (! logic_ptr_full);
  assign io_push_fire = (io_push_valid && io_push_ready);
  assign logic_ptr_doPush = io_push_fire;
  assign logic_push_onRam_write_valid = io_push_fire;
  assign logic_push_onRam_write_payload_address = logic_ptr_push[9:0];
  assign logic_push_onRam_write_payload_data = io_push_payload;
  assign logic_pop_addressGen_valid = (! logic_ptr_empty);
  assign logic_pop_addressGen_payload = logic_ptr_pop[9:0];
  assign logic_pop_addressGen_fire = (logic_pop_addressGen_valid && logic_pop_addressGen_ready);
  assign logic_ptr_doPop = logic_pop_addressGen_fire;
  always @(*) begin
    logic_pop_addressGen_ready = logic_pop_sync_readArbitation_ready;
    if((! logic_pop_sync_readArbitation_valid)) begin
      logic_pop_addressGen_ready = 1'b1;
    end
  end

  assign logic_pop_sync_readArbitation_valid = logic_pop_addressGen_rValid;
  assign logic_pop_sync_readArbitation_payload = logic_pop_addressGen_rData;
  assign logic_pop_sync_readPort_rsp = t_logic_ram_port1;
  assign logic_pop_sync_readPort_cmd_valid = logic_pop_addressGen_fire;
  assign logic_pop_sync_readPort_cmd_payload = logic_pop_addressGen_payload;
  assign logic_pop_sync_readArbitation_translated_valid = logic_pop_sync_readArbitation_valid;
  assign logic_pop_sync_readArbitation_ready = logic_pop_sync_readArbitation_translated_ready;
  assign logic_pop_sync_readArbitation_translated_payload = logic_pop_sync_readPort_rsp;
  assign io_pop_valid = logic_pop_sync_readArbitation_translated_valid;
  assign logic_pop_sync_readArbitation_translated_ready = io_pop_ready;
  assign io_pop_payload = logic_pop_sync_readArbitation_translated_payload;
  assign logic_pop_sync_readArbitation_fire = (logic_pop_sync_readArbitation_valid && logic_pop_sync_readArbitation_ready);
  assign logic_ptr_popOnIo = logic_pop_sync_popReg;
  assign io_occupancy = logic_ptr_occupancy;
  assign io_availability = (11'h400 - logic_ptr_occupancy);
  always @(posedge clk or negedge resetn) begin
    if(!resetn) begin
      logic_ptr_push <= 11'h000;
      logic_ptr_pop <= 11'h000;
      logic_ptr_wentUp <= 1'b0;
      logic_pop_addressGen_rValid <= 1'b0;
      logic_pop_sync_popReg <= 11'h000;
    end else begin
      if((logic_ptr_doPush != logic_ptr_doPop)) begin
        logic_ptr_wentUp <= logic_ptr_doPush;
      end
      if(io_flush) begin
        logic_ptr_wentUp <= 1'b0;
      end
      if(logic_ptr_doPush) begin
        logic_ptr_push <= (logic_ptr_push + 11'h001);
      end
      if(logic_ptr_doPop) begin
        logic_ptr_pop <= (logic_ptr_pop + 11'h001);
      end
      if(io_flush) begin
        logic_ptr_push <= 11'h000;
        logic_ptr_pop <= 11'h000;
      end
      if(logic_pop_addressGen_ready) begin
        logic_pop_addressGen_rValid <= logic_pop_addressGen_valid;
      end
      if(io_flush) begin
        logic_pop_addressGen_rValid <= 1'b0;
      end
      if(logic_pop_sync_readArbitation_fire) begin
        logic_pop_sync_popReg <= logic_ptr_pop;
      end
      if(io_flush) begin
        logic_pop_sync_popReg <= 11'h000;
      end
    end
  end

  always @(posedge clk) begin
    if(logic_pop_addressGen_ready) begin
      logic_pop_addressGen_rData <= logic_pop_addressGen_payload;
    end
  end


endmodule

//SplitAxiDatamoverCmd_1 replaced by SplitAxiDatamoverCmd

module SplitAxiDatamoverCmd (
  input               io_inCmd_valid,
  output              io_inCmd_ready,
  input      [71:0]   io_inCmd_payload,
  output              io_outCmd_0_valid,
  input               io_outCmd_0_ready,
  output     [71:0]   io_outCmd_0_payload,
  output              io_outCmd_1_valid,
  input               io_outCmd_1_ready,
  output     [71:0]   io_outCmd_1_payload,
  output              io_outCmd_2_valid,
  input               io_outCmd_2_ready,
  output     [71:0]   io_outCmd_2_payload,
  output              io_outCmd_3_valid,
  input               io_outCmd_3_ready,
  output     [71:0]   io_outCmd_3_payload,
  input               clk,
  input               resetn
);

  wire                forks_io_input_ready;
  wire                forks_io_outputs_0_valid;
  wire                forks_io_outputs_1_valid;
  wire                forks_io_outputs_2_valid;
  wire                forks_io_outputs_3_valid;
  wire       [63:0]   t_addr;
  wire       [7:0]    t_tag;
  wire       [31:0]   t_forkCmd_0_payload;
  wire       [31:0]   t_forkCmd_0_payload_1;
  wire       [31:0]   t_forkCmd_0_payload_2;
  wire       [22:0]   t_forkCmd_0_payload_3;
  wire       [31:0]   t_forkCmd_1_payload;
  wire       [31:0]   t_forkCmd_1_payload_1;
  wire       [31:0]   t_forkCmd_1_payload_2;
  wire       [22:0]   t_forkCmd_1_payload_3;
  wire       [31:0]   t_forkCmd_2_payload;
  wire       [31:0]   t_forkCmd_2_payload_1;
  wire       [31:0]   t_forkCmd_2_payload_2;
  wire       [22:0]   t_forkCmd_2_payload_3;
  wire       [31:0]   t_forkCmd_3_payload;
  wire       [31:0]   t_forkCmd_3_payload_1;
  wire       [31:0]   t_forkCmd_3_payload_2;
  wire       [22:0]   t_forkCmd_3_payload_3;
  wire       [31:0]   addr;
  wire       [22:0]   len;
  wire                inc;
  wire                eof;
  wire       [3:0]    tag;
  wire       [20:0]   splitLen;
  wire       [20:0]   offsetBase;
  wire       [20:0]   offset_0;
  wire       [21:0]   offset_1;
  wire       [22:0]   offset_2;
  wire       [22:0]   offset_3;
  wire                forkCmd_0_valid;
  reg                 forkCmd_0_ready;
  wire       [71:0]   forkCmd_0_payload;
  wire                forkCmd_1_valid;
  reg                 forkCmd_1_ready;
  wire       [71:0]   forkCmd_1_payload;
  wire                forkCmd_2_valid;
  reg                 forkCmd_2_ready;
  wire       [71:0]   forkCmd_2_payload;
  wire                forkCmd_3_valid;
  reg                 forkCmd_3_ready;
  wire       [71:0]   forkCmd_3_payload;
  wire                forkCmd_0_m2sPipe_valid;
  wire                forkCmd_0_m2sPipe_ready;
  wire       [71:0]   forkCmd_0_m2sPipe_payload;
  reg                 forkCmd_0_rValid;
  reg        [71:0]   forkCmd_0_rData;
  wire                forkCmd_1_m2sPipe_valid;
  wire                forkCmd_1_m2sPipe_ready;
  wire       [71:0]   forkCmd_1_m2sPipe_payload;
  reg                 forkCmd_1_rValid;
  reg        [71:0]   forkCmd_1_rData;
  wire                forkCmd_2_m2sPipe_valid;
  wire                forkCmd_2_m2sPipe_ready;
  wire       [71:0]   forkCmd_2_m2sPipe_payload;
  reg                 forkCmd_2_rValid;
  reg        [71:0]   forkCmd_2_rData;
  wire                forkCmd_3_m2sPipe_valid;
  wire                forkCmd_3_m2sPipe_ready;
  wire       [71:0]   forkCmd_3_m2sPipe_payload;
  reg                 forkCmd_3_rValid;
  reg        [71:0]   forkCmd_3_rData;

  assign t_addr = io_inCmd_payload[63 : 0];
  assign t_tag = io_inCmd_payload[71 : 64];
  assign t_forkCmd_0_payload_1 = (t_forkCmd_0_payload_2 + addr);
  assign t_forkCmd_0_payload = t_forkCmd_0_payload_1;
  assign t_forkCmd_0_payload_2 = {11'd0, offset_0};
  assign t_forkCmd_0_payload_3 = {2'd0, splitLen};
  assign t_forkCmd_1_payload_1 = (t_forkCmd_1_payload_2 + addr);
  assign t_forkCmd_1_payload = t_forkCmd_1_payload_1;
  assign t_forkCmd_1_payload_2 = {10'd0, offset_1};
  assign t_forkCmd_1_payload_3 = {2'd0, splitLen};
  assign t_forkCmd_2_payload_1 = (t_forkCmd_2_payload_2 + addr);
  assign t_forkCmd_2_payload = t_forkCmd_2_payload_1;
  assign t_forkCmd_2_payload_2 = {9'd0, offset_2};
  assign t_forkCmd_2_payload_3 = {2'd0, splitLen};
  assign t_forkCmd_3_payload_1 = (t_forkCmd_3_payload_2 + addr);
  assign t_forkCmd_3_payload = t_forkCmd_3_payload_1;
  assign t_forkCmd_3_payload_2 = {9'd0, offset_3};
  assign t_forkCmd_3_payload_3 = {2'd0, splitLen};
  StreamFork_2 forks (
    .io_input_valid     (io_inCmd_valid          ), //i
    .io_input_ready     (forks_io_input_ready    ), //o
    .io_outputs_0_valid (forks_io_outputs_0_valid), //o
    .io_outputs_0_ready (forkCmd_0_ready         ), //i
    .io_outputs_1_valid (forks_io_outputs_1_valid), //o
    .io_outputs_1_ready (forkCmd_1_ready         ), //i
    .io_outputs_2_valid (forks_io_outputs_2_valid), //o
    .io_outputs_2_ready (forkCmd_2_ready         ), //i
    .io_outputs_3_valid (forks_io_outputs_3_valid), //o
    .io_outputs_3_ready (forkCmd_3_ready         )  //i
  );
  assign addr = t_addr[63 : 32];
  assign len = io_inCmd_payload[22 : 0];
  assign inc = io_inCmd_payload[23];
  assign eof = io_inCmd_payload[30];
  assign tag = t_tag[3 : 0];
  assign splitLen = len[22 : 2];
  assign offsetBase = ((tag == 4'b0000) ? splitLen : 21'h000000);
  assign offset_0 = 21'h000000;
  assign offset_1 = (offsetBase * 1'b1);
  assign offset_2 = (offsetBase * 2'b10);
  assign offset_3 = (offsetBase * 2'b11);
  assign io_inCmd_ready = forks_io_input_ready;
  assign forkCmd_0_valid = forks_io_outputs_0_valid;
  assign forkCmd_0_payload = {{{{{{{4'b0000,4'b0000},t_forkCmd_0_payload},1'b0},eof},6'h00},inc},t_forkCmd_0_payload_3};
  always @(*) begin
    forkCmd_0_ready = forkCmd_0_m2sPipe_ready;
    if((! forkCmd_0_m2sPipe_valid)) begin
      forkCmd_0_ready = 1'b1;
    end
  end

  assign forkCmd_0_m2sPipe_valid = forkCmd_0_rValid;
  assign forkCmd_0_m2sPipe_payload = forkCmd_0_rData;
  assign io_outCmd_0_valid = forkCmd_0_m2sPipe_valid;
  assign forkCmd_0_m2sPipe_ready = io_outCmd_0_ready;
  assign io_outCmd_0_payload = forkCmd_0_m2sPipe_payload;
  assign forkCmd_1_valid = forks_io_outputs_1_valid;
  assign forkCmd_1_payload = {{{{{{{4'b0000,4'b0000},t_forkCmd_1_payload},1'b0},eof},6'h00},inc},t_forkCmd_1_payload_3};
  always @(*) begin
    forkCmd_1_ready = forkCmd_1_m2sPipe_ready;
    if((! forkCmd_1_m2sPipe_valid)) begin
      forkCmd_1_ready = 1'b1;
    end
  end

  assign forkCmd_1_m2sPipe_valid = forkCmd_1_rValid;
  assign forkCmd_1_m2sPipe_payload = forkCmd_1_rData;
  assign io_outCmd_1_valid = forkCmd_1_m2sPipe_valid;
  assign forkCmd_1_m2sPipe_ready = io_outCmd_1_ready;
  assign io_outCmd_1_payload = forkCmd_1_m2sPipe_payload;
  assign forkCmd_2_valid = forks_io_outputs_2_valid;
  assign forkCmd_2_payload = {{{{{{{4'b0000,4'b0000},t_forkCmd_2_payload},1'b0},eof},6'h00},inc},t_forkCmd_2_payload_3};
  always @(*) begin
    forkCmd_2_ready = forkCmd_2_m2sPipe_ready;
    if((! forkCmd_2_m2sPipe_valid)) begin
      forkCmd_2_ready = 1'b1;
    end
  end

  assign forkCmd_2_m2sPipe_valid = forkCmd_2_rValid;
  assign forkCmd_2_m2sPipe_payload = forkCmd_2_rData;
  assign io_outCmd_2_valid = forkCmd_2_m2sPipe_valid;
  assign forkCmd_2_m2sPipe_ready = io_outCmd_2_ready;
  assign io_outCmd_2_payload = forkCmd_2_m2sPipe_payload;
  assign forkCmd_3_valid = forks_io_outputs_3_valid;
  assign forkCmd_3_payload = {{{{{{{4'b0000,4'b0000},t_forkCmd_3_payload},1'b0},eof},6'h00},inc},t_forkCmd_3_payload_3};
  always @(*) begin
    forkCmd_3_ready = forkCmd_3_m2sPipe_ready;
    if((! forkCmd_3_m2sPipe_valid)) begin
      forkCmd_3_ready = 1'b1;
    end
  end

  assign forkCmd_3_m2sPipe_valid = forkCmd_3_rValid;
  assign forkCmd_3_m2sPipe_payload = forkCmd_3_rData;
  assign io_outCmd_3_valid = forkCmd_3_m2sPipe_valid;
  assign forkCmd_3_m2sPipe_ready = io_outCmd_3_ready;
  assign io_outCmd_3_payload = forkCmd_3_m2sPipe_payload;
  always @(posedge clk or negedge resetn) begin
    if(!resetn) begin
      forkCmd_0_rValid <= 1'b0;
      forkCmd_1_rValid <= 1'b0;
      forkCmd_2_rValid <= 1'b0;
      forkCmd_3_rValid <= 1'b0;
    end else begin
      if(forkCmd_0_ready) begin
        forkCmd_0_rValid <= forkCmd_0_valid;
      end
      if(forkCmd_1_ready) begin
        forkCmd_1_rValid <= forkCmd_1_valid;
      end
      if(forkCmd_2_ready) begin
        forkCmd_2_rValid <= forkCmd_2_valid;
      end
      if(forkCmd_3_ready) begin
        forkCmd_3_rValid <= forkCmd_3_valid;
      end
    end
  end

  always @(posedge clk) begin
    if(forkCmd_0_ready) begin
      forkCmd_0_rData <= forkCmd_0_payload;
    end
    if(forkCmd_1_ready) begin
      forkCmd_1_rData <= forkCmd_1_payload;
    end
    if(forkCmd_2_ready) begin
      forkCmd_2_rData <= forkCmd_2_payload;
    end
    if(forkCmd_3_ready) begin
      forkCmd_3_rData <= forkCmd_3_payload;
    end
  end


endmodule

//StreamFork_1 replaced by StreamFork_2

module StreamFork_2 (
  input               io_input_valid,
  output              io_input_ready,
  output              io_outputs_0_valid,
  input               io_outputs_0_ready,
  output              io_outputs_1_valid,
  input               io_outputs_1_ready,
  output              io_outputs_2_valid,
  input               io_outputs_2_ready,
  output              io_outputs_3_valid,
  input               io_outputs_3_ready
);


  assign io_input_ready = (((io_outputs_0_ready && io_outputs_1_ready) && io_outputs_2_ready) && io_outputs_3_ready);
  assign io_outputs_0_valid = (io_input_valid && io_input_ready);
  assign io_outputs_1_valid = (io_input_valid && io_input_ready);
  assign io_outputs_2_valid = (io_input_valid && io_input_ready);
  assign io_outputs_3_valid = (io_input_valid && io_input_ready);

endmodule
