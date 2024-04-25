// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xms.h"

extern XMs_Config XMs_ConfigTable[];

XMs_Config *XMs_LookupConfig(u16 DeviceId) {
	XMs_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMS_NUM_INSTANCES; Index++) {
		if (XMs_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMs_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMs_Initialize(XMs *InstancePtr, u16 DeviceId) {
	XMs_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMs_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMs_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

