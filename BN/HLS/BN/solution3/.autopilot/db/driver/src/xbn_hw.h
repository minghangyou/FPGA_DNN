// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// CTRL
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of in_V
//        bit 31~0 - in_V[31:0] (Read/Write)
// 0x14 : reserved
// 0x18 : Data signal of beta_V
//        bit 31~0 - beta_V[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of gamma_V
//        bit 31~0 - gamma_V[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of moving_mean_V
//        bit 31~0 - moving_mean_V[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of moving_variance_V
//        bit 31~0 - moving_variance_V[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of out_V
//        bit 31~0 - out_V[31:0] (Read/Write)
// 0x3c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XBN_CTRL_ADDR_AP_CTRL                0x00
#define XBN_CTRL_ADDR_GIE                    0x04
#define XBN_CTRL_ADDR_IER                    0x08
#define XBN_CTRL_ADDR_ISR                    0x0c
#define XBN_CTRL_ADDR_IN_V_DATA              0x10
#define XBN_CTRL_BITS_IN_V_DATA              32
#define XBN_CTRL_ADDR_BETA_V_DATA            0x18
#define XBN_CTRL_BITS_BETA_V_DATA            32
#define XBN_CTRL_ADDR_GAMMA_V_DATA           0x20
#define XBN_CTRL_BITS_GAMMA_V_DATA           32
#define XBN_CTRL_ADDR_MOVING_MEAN_V_DATA     0x28
#define XBN_CTRL_BITS_MOVING_MEAN_V_DATA     32
#define XBN_CTRL_ADDR_MOVING_VARIANCE_V_DATA 0x30
#define XBN_CTRL_BITS_MOVING_VARIANCE_V_DATA 32
#define XBN_CTRL_ADDR_OUT_V_DATA             0x38
#define XBN_CTRL_BITS_OUT_V_DATA             32

