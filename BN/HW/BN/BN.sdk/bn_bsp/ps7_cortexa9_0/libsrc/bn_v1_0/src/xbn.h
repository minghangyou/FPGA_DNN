// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XBN_H
#define XBN_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xbn_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Ctrl_BaseAddress;
} XBn_Config;
#endif

typedef struct {
    u32 Ctrl_BaseAddress;
    u32 IsReady;
} XBn;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XBn_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XBn_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XBn_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XBn_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XBn_Initialize(XBn *InstancePtr, u16 DeviceId);
XBn_Config* XBn_LookupConfig(u16 DeviceId);
int XBn_CfgInitialize(XBn *InstancePtr, XBn_Config *ConfigPtr);
#else
int XBn_Initialize(XBn *InstancePtr, const char* InstanceName);
int XBn_Release(XBn *InstancePtr);
#endif

void XBn_Start(XBn *InstancePtr);
u32 XBn_IsDone(XBn *InstancePtr);
u32 XBn_IsIdle(XBn *InstancePtr);
u32 XBn_IsReady(XBn *InstancePtr);
void XBn_EnableAutoRestart(XBn *InstancePtr);
void XBn_DisableAutoRestart(XBn *InstancePtr);

void XBn_Set_in_V(XBn *InstancePtr, u32 Data);
u32 XBn_Get_in_V(XBn *InstancePtr);
void XBn_Set_beta_V(XBn *InstancePtr, u32 Data);
u32 XBn_Get_beta_V(XBn *InstancePtr);
void XBn_Set_gamma_V(XBn *InstancePtr, u32 Data);
u32 XBn_Get_gamma_V(XBn *InstancePtr);
void XBn_Set_moving_mean_V(XBn *InstancePtr, u32 Data);
u32 XBn_Get_moving_mean_V(XBn *InstancePtr);
void XBn_Set_moving_variance_V(XBn *InstancePtr, u32 Data);
u32 XBn_Get_moving_variance_V(XBn *InstancePtr);
void XBn_Set_out_V(XBn *InstancePtr, u32 Data);
u32 XBn_Get_out_V(XBn *InstancePtr);

void XBn_InterruptGlobalEnable(XBn *InstancePtr);
void XBn_InterruptGlobalDisable(XBn *InstancePtr);
void XBn_InterruptEnable(XBn *InstancePtr, u32 Mask);
void XBn_InterruptDisable(XBn *InstancePtr, u32 Mask);
void XBn_InterruptClear(XBn *InstancePtr, u32 Mask);
u32 XBn_InterruptGetEnabled(XBn *InstancePtr);
u32 XBn_InterruptGetStatus(XBn *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
