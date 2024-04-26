// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XMS_H
#define XMS_H

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
#include "xms_hw.h"

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
} XMs_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMs;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMs_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMs_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMs_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMs_ReadReg(BaseAddress, RegOffset) \
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
int XMs_Initialize(XMs *InstancePtr, u16 DeviceId);
XMs_Config* XMs_LookupConfig(u16 DeviceId);
int XMs_CfgInitialize(XMs *InstancePtr, XMs_Config *ConfigPtr);
#else
int XMs_Initialize(XMs *InstancePtr, const char* InstanceName);
int XMs_Release(XMs *InstancePtr);
#endif

void XMs_Start(XMs *InstancePtr);
u32 XMs_IsDone(XMs *InstancePtr);
u32 XMs_IsIdle(XMs *InstancePtr);
u32 XMs_IsReady(XMs *InstancePtr);
void XMs_EnableAutoRestart(XMs *InstancePtr);
void XMs_DisableAutoRestart(XMs *InstancePtr);

void XMs_Set_conv_coeffs(XMs *InstancePtr, u32 Data);
u32 XMs_Get_conv_coeffs(XMs *InstancePtr);
void XMs_Set_conv_threshold(XMs *InstancePtr, u32 Data);
u32 XMs_Get_conv_threshold(XMs *InstancePtr);

void XMs_InterruptGlobalEnable(XMs *InstancePtr);
void XMs_InterruptGlobalDisable(XMs *InstancePtr);
void XMs_InterruptEnable(XMs *InstancePtr, u32 Mask);
void XMs_InterruptDisable(XMs *InstancePtr, u32 Mask);
void XMs_InterruptClear(XMs *InstancePtr, u32 Mask);
u32 XMs_InterruptGetEnabled(XMs *InstancePtr);
u32 XMs_InterruptGetStatus(XMs *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
