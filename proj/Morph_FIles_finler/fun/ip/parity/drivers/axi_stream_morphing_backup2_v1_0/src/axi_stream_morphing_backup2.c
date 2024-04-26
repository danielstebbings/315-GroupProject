#include "axi_stream_morphing_backup2.h"
#ifndef __linux__
int axi_stream_morphing_backup2_CfgInitialize(axi_stream_morphing_backup2 *InstancePtr, axi_stream_morphing_backup2_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->axi_stream_morphing_backup2_config_BaseAddress = ConfigPtr->axi_stream_morphing_backup2_config_BaseAddress;

    InstancePtr->IsReady = 1;
    return XST_SUCCESS;
}
#endif
void axi_stream_morphing_backup2_thresh_reg_write(axi_stream_morphing_backup2 *InstancePtr, u32 Data) {

    Xil_AssertVoid(InstancePtr != NULL);

    axi_stream_morphing_backup2_WriteReg(InstancePtr->axi_stream_morphing_backup2_config_BaseAddress, 0, Data);
}
u32 axi_stream_morphing_backup2_thresh_reg_read(axi_stream_morphing_backup2 *InstancePtr) {

    u32 Data;
    Xil_AssertVoid(InstancePtr != NULL);

    Data = axi_stream_morphing_backup2_ReadReg(InstancePtr->axi_stream_morphing_backup2_config_BaseAddress, 0);
    return Data;
}
