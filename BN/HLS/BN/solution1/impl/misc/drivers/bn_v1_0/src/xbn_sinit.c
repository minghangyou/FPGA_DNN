// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xbn.h"

extern XBn_Config XBn_ConfigTable[];

XBn_Config *XBn_LookupConfig(u16 DeviceId) {
	XBn_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XBN_NUM_INSTANCES; Index++) {
		if (XBn_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XBn_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XBn_Initialize(XBn *InstancePtr, u16 DeviceId) {
	XBn_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XBn_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XBn_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

