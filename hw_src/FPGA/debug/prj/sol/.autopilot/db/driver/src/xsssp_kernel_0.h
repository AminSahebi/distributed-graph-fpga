// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XSSSP_KERNEL_0_H
#define XSSSP_KERNEL_0_H

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
#include "xsssp_kernel_0_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XSssp_kernel_0_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XSssp_kernel_0;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XSssp_kernel_0_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XSssp_kernel_0_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XSssp_kernel_0_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XSssp_kernel_0_ReadReg(BaseAddress, RegOffset) \
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
int XSssp_kernel_0_Initialize(XSssp_kernel_0 *InstancePtr, u16 DeviceId);
XSssp_kernel_0_Config* XSssp_kernel_0_LookupConfig(u16 DeviceId);
int XSssp_kernel_0_CfgInitialize(XSssp_kernel_0 *InstancePtr, XSssp_kernel_0_Config *ConfigPtr);
#else
int XSssp_kernel_0_Initialize(XSssp_kernel_0 *InstancePtr, const char* InstanceName);
int XSssp_kernel_0_Release(XSssp_kernel_0 *InstancePtr);
#endif


void XSssp_kernel_0_Set_e_src(XSssp_kernel_0 *InstancePtr, u64 Data);
u64 XSssp_kernel_0_Get_e_src(XSssp_kernel_0 *InstancePtr);
void XSssp_kernel_0_Set_e_dst(XSssp_kernel_0 *InstancePtr, u64 Data);
u64 XSssp_kernel_0_Get_e_dst(XSssp_kernel_0 *InstancePtr);
void XSssp_kernel_0_Set_out_degree(XSssp_kernel_0 *InstancePtr, u64 Data);
u64 XSssp_kernel_0_Get_out_degree(XSssp_kernel_0 *InstancePtr);
void XSssp_kernel_0_Set_out_r(XSssp_kernel_0 *InstancePtr, u64 Data);
u64 XSssp_kernel_0_Get_out_r(XSssp_kernel_0 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
