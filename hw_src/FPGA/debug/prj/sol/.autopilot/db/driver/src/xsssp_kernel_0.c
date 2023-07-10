// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xsssp_kernel_0.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XSssp_kernel_0_CfgInitialize(XSssp_kernel_0 *InstancePtr, XSssp_kernel_0_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XSssp_kernel_0_Set_e_src(XSssp_kernel_0 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSssp_kernel_0_WriteReg(InstancePtr->Control_BaseAddress, XSSSP_KERNEL_0_CONTROL_ADDR_E_SRC_DATA, (u32)(Data));
    XSssp_kernel_0_WriteReg(InstancePtr->Control_BaseAddress, XSSSP_KERNEL_0_CONTROL_ADDR_E_SRC_DATA + 4, (u32)(Data >> 32));
}

u64 XSssp_kernel_0_Get_e_src(XSssp_kernel_0 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSssp_kernel_0_ReadReg(InstancePtr->Control_BaseAddress, XSSSP_KERNEL_0_CONTROL_ADDR_E_SRC_DATA);
    Data += (u64)XSssp_kernel_0_ReadReg(InstancePtr->Control_BaseAddress, XSSSP_KERNEL_0_CONTROL_ADDR_E_SRC_DATA + 4) << 32;
    return Data;
}

void XSssp_kernel_0_Set_e_dst(XSssp_kernel_0 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSssp_kernel_0_WriteReg(InstancePtr->Control_BaseAddress, XSSSP_KERNEL_0_CONTROL_ADDR_E_DST_DATA, (u32)(Data));
    XSssp_kernel_0_WriteReg(InstancePtr->Control_BaseAddress, XSSSP_KERNEL_0_CONTROL_ADDR_E_DST_DATA + 4, (u32)(Data >> 32));
}

u64 XSssp_kernel_0_Get_e_dst(XSssp_kernel_0 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSssp_kernel_0_ReadReg(InstancePtr->Control_BaseAddress, XSSSP_KERNEL_0_CONTROL_ADDR_E_DST_DATA);
    Data += (u64)XSssp_kernel_0_ReadReg(InstancePtr->Control_BaseAddress, XSSSP_KERNEL_0_CONTROL_ADDR_E_DST_DATA + 4) << 32;
    return Data;
}

void XSssp_kernel_0_Set_out_degree(XSssp_kernel_0 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSssp_kernel_0_WriteReg(InstancePtr->Control_BaseAddress, XSSSP_KERNEL_0_CONTROL_ADDR_OUT_DEGREE_DATA, (u32)(Data));
    XSssp_kernel_0_WriteReg(InstancePtr->Control_BaseAddress, XSSSP_KERNEL_0_CONTROL_ADDR_OUT_DEGREE_DATA + 4, (u32)(Data >> 32));
}

u64 XSssp_kernel_0_Get_out_degree(XSssp_kernel_0 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSssp_kernel_0_ReadReg(InstancePtr->Control_BaseAddress, XSSSP_KERNEL_0_CONTROL_ADDR_OUT_DEGREE_DATA);
    Data += (u64)XSssp_kernel_0_ReadReg(InstancePtr->Control_BaseAddress, XSSSP_KERNEL_0_CONTROL_ADDR_OUT_DEGREE_DATA + 4) << 32;
    return Data;
}

void XSssp_kernel_0_Set_out_r(XSssp_kernel_0 *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XSssp_kernel_0_WriteReg(InstancePtr->Control_BaseAddress, XSSSP_KERNEL_0_CONTROL_ADDR_OUT_R_DATA, (u32)(Data));
    XSssp_kernel_0_WriteReg(InstancePtr->Control_BaseAddress, XSSSP_KERNEL_0_CONTROL_ADDR_OUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XSssp_kernel_0_Get_out_r(XSssp_kernel_0 *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XSssp_kernel_0_ReadReg(InstancePtr->Control_BaseAddress, XSSSP_KERNEL_0_CONTROL_ADDR_OUT_R_DATA);
    Data += (u64)XSssp_kernel_0_ReadReg(InstancePtr->Control_BaseAddress, XSSSP_KERNEL_0_CONTROL_ADDR_OUT_R_DATA + 4) << 32;
    return Data;
}

