#include "axis_morph.h"
#ifndef __linux__
int axis_morph_CfgInitialize(axis_morph *InstancePtr, axis_morph_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->axis_morph_config_BaseAddress = ConfigPtr->axis_morph_config_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
void axis_morph_thresh_reg_write(axis_morph *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    axis_morph_WriteReg(InstancePtr->axis_morph_config_BaseAddress, 0, Data);
}
u32 axis_morph_thresh_reg_read(axis_morph *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = axis_morph_ReadReg(InstancePtr->axis_morph_config_BaseAddress, 0);
    return Data;
}
