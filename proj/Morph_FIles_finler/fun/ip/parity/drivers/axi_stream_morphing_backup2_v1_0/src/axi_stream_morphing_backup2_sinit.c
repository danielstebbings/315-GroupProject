/**
* @file axi_stream_morphing_backup2_sinit.c
*
* The implementation of the axi_stream_morphing_backup2 driver's static initialzation
* functionality.
*
* @note
*
* None
*
*/
#ifndef __linux__
#include "xstatus.h"
#include "xparameters.h"
#include "axi_stream_morphing_backup2.h"
extern axi_stream_morphing_backup2_Config axi_stream_morphing_backup2_ConfigTable[];
/**
* Lookup the device configuration based on the unique device ID.  The table
* ConfigTable contains the configuration info for each device in the system.
*
* @param DeviceId is the device identifier to lookup.
*
* @return
*     - A pointer of data type axi_stream_morphing_backup2_Config which
*    points to the device configuration if DeviceID is found.
*    - NULL if DeviceID is not found.
*
* @note    None.
*
*/
axi_stream_morphing_backup2_Config *axi_stream_morphing_backup2_LookupConfig(u16 DeviceId) {
    axi_stream_morphing_backup2_Config *ConfigPtr = NULL;
    int Index;
    for (Index = 0; Index < XPAR_AXI_STREAM_MORPHING_BACKUP2_NUM_INSTANCES; Index++) {
        if (axi_stream_morphing_backup2_ConfigTable[Index].DeviceId == DeviceId) {
            ConfigPtr = &axi_stream_morphing_backup2_ConfigTable[Index];
            break;
        }
    }
    return ConfigPtr;
}
int axi_stream_morphing_backup2_Initialize(axi_stream_morphing_backup2 *InstancePtr, u16 DeviceId) {
    axi_stream_morphing_backup2_Config *ConfigPtr;
    Xil_AssertNonvoid(InstancePtr != NULL);
    ConfigPtr = axi_stream_morphing_backup2_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        InstancePtr->IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }
    return axi_stream_morphing_backup2_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif
