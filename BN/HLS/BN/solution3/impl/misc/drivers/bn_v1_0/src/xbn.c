// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xbn.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XBn_CfgInitialize(XBn *InstancePtr, XBn_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XBn_Start(XBn *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBn_ReadReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_AP_CTRL) & 0x80;
    XBn_WriteReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XBn_IsDone(XBn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBn_ReadReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XBn_IsIdle(XBn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBn_ReadReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XBn_IsReady(XBn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBn_ReadReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XBn_EnableAutoRestart(XBn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBn_WriteReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_AP_CTRL, 0x80);
}

void XBn_DisableAutoRestart(XBn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBn_WriteReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_AP_CTRL, 0);
}

void XBn_Set_in_V(XBn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBn_WriteReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_IN_V_DATA, Data);
}

u32 XBn_Get_in_V(XBn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBn_ReadReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_IN_V_DATA);
    return Data;
}

void XBn_Set_beta_V(XBn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBn_WriteReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_BETA_V_DATA, Data);
}

u32 XBn_Get_beta_V(XBn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBn_ReadReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_BETA_V_DATA);
    return Data;
}

void XBn_Set_gamma_V(XBn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBn_WriteReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_GAMMA_V_DATA, Data);
}

u32 XBn_Get_gamma_V(XBn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBn_ReadReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_GAMMA_V_DATA);
    return Data;
}

void XBn_Set_moving_mean_V(XBn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBn_WriteReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_MOVING_MEAN_V_DATA, Data);
}

u32 XBn_Get_moving_mean_V(XBn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBn_ReadReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_MOVING_MEAN_V_DATA);
    return Data;
}

void XBn_Set_moving_variance_V(XBn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBn_WriteReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_MOVING_VARIANCE_V_DATA, Data);
}

u32 XBn_Get_moving_variance_V(XBn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBn_ReadReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_MOVING_VARIANCE_V_DATA);
    return Data;
}

void XBn_Set_out_V(XBn *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBn_WriteReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_OUT_V_DATA, Data);
}

u32 XBn_Get_out_V(XBn *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XBn_ReadReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_OUT_V_DATA);
    return Data;
}

void XBn_InterruptGlobalEnable(XBn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBn_WriteReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_GIE, 1);
}

void XBn_InterruptGlobalDisable(XBn *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBn_WriteReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_GIE, 0);
}

void XBn_InterruptEnable(XBn *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBn_ReadReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_IER);
    XBn_WriteReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_IER, Register | Mask);
}

void XBn_InterruptDisable(XBn *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XBn_ReadReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_IER);
    XBn_WriteReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_IER, Register & (~Mask));
}

void XBn_InterruptClear(XBn *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XBn_WriteReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_ISR, Mask);
}

u32 XBn_InterruptGetEnabled(XBn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBn_ReadReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_IER);
}

u32 XBn_InterruptGetStatus(XBn *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XBn_ReadReg(InstancePtr->Ctrl_BaseAddress, XBN_CTRL_ADDR_ISR);
}

