// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xms.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMs_CfgInitialize(XMs *InstancePtr, XMs_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMs_Start(XMs *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMs_ReadReg(InstancePtr->Control_BaseAddress, XMS_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMs_WriteReg(InstancePtr->Control_BaseAddress, XMS_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMs_IsDone(XMs *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMs_ReadReg(InstancePtr->Control_BaseAddress, XMS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMs_IsIdle(XMs *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMs_ReadReg(InstancePtr->Control_BaseAddress, XMS_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMs_IsReady(XMs *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMs_ReadReg(InstancePtr->Control_BaseAddress, XMS_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMs_EnableAutoRestart(XMs *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMs_WriteReg(InstancePtr->Control_BaseAddress, XMS_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMs_DisableAutoRestart(XMs *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMs_WriteReg(InstancePtr->Control_BaseAddress, XMS_CONTROL_ADDR_AP_CTRL, 0);
}

void XMs_Set_conv_coeffs(XMs *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMs_WriteReg(InstancePtr->Control_BaseAddress, XMS_CONTROL_ADDR_CONV_COEFFS_DATA, Data);
}

u32 XMs_Get_conv_coeffs(XMs *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMs_ReadReg(InstancePtr->Control_BaseAddress, XMS_CONTROL_ADDR_CONV_COEFFS_DATA);
    return Data;
}

void XMs_Set_conv_threshold(XMs *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMs_WriteReg(InstancePtr->Control_BaseAddress, XMS_CONTROL_ADDR_CONV_THRESHOLD_DATA, Data);
}

u32 XMs_Get_conv_threshold(XMs *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMs_ReadReg(InstancePtr->Control_BaseAddress, XMS_CONTROL_ADDR_CONV_THRESHOLD_DATA);
    return Data;
}

void XMs_InterruptGlobalEnable(XMs *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMs_WriteReg(InstancePtr->Control_BaseAddress, XMS_CONTROL_ADDR_GIE, 1);
}

void XMs_InterruptGlobalDisable(XMs *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMs_WriteReg(InstancePtr->Control_BaseAddress, XMS_CONTROL_ADDR_GIE, 0);
}

void XMs_InterruptEnable(XMs *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMs_ReadReg(InstancePtr->Control_BaseAddress, XMS_CONTROL_ADDR_IER);
    XMs_WriteReg(InstancePtr->Control_BaseAddress, XMS_CONTROL_ADDR_IER, Register | Mask);
}

void XMs_InterruptDisable(XMs *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMs_ReadReg(InstancePtr->Control_BaseAddress, XMS_CONTROL_ADDR_IER);
    XMs_WriteReg(InstancePtr->Control_BaseAddress, XMS_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMs_InterruptClear(XMs *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMs_WriteReg(InstancePtr->Control_BaseAddress, XMS_CONTROL_ADDR_ISR, Mask);
}

u32 XMs_InterruptGetEnabled(XMs *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMs_ReadReg(InstancePtr->Control_BaseAddress, XMS_CONTROL_ADDR_IER);
}

u32 XMs_InterruptGetStatus(XMs *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMs_ReadReg(InstancePtr->Control_BaseAddress, XMS_CONTROL_ADDR_ISR);
}

