// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xsssp_kernel_0.h"

extern XSssp_kernel_0_Config XSssp_kernel_0_ConfigTable[];

XSssp_kernel_0_Config *XSssp_kernel_0_LookupConfig(u16 DeviceId) {
	XSssp_kernel_0_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XSSSP_KERNEL_0_NUM_INSTANCES; Index++) {
		if (XSssp_kernel_0_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XSssp_kernel_0_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XSssp_kernel_0_Initialize(XSssp_kernel_0 *InstancePtr, u16 DeviceId) {
	XSssp_kernel_0_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XSssp_kernel_0_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XSssp_kernel_0_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

