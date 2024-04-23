/**
* @file axis_morph_sinit.c
*
* The implementation of the axis_morph driver's static initialzation
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
#include "axis_morph.h"
extern axis_morph_Config axis_morph_ConfigTable[];
/**
* Lookup the device configuration based on the unique device ID.  The table
* ConfigTable contains the configuration info for each device in the system.
*
* @param DeviceId is the device identifier to lookup.
*
* @return
*     - A pointer of data type axis_morph_Config which
*    points to the device configuration if DeviceID is found.
*    - NULL if DeviceID is not found.
*
* @note    None.
*
*/
axis_morph_Config *axis_morph_LookupConfig(u16 DeviceId) {
    axis_morph_Config *ConfigPtr = NULL;
    int Index;
    for (Index = 0; Index < XPAR_AXIS_MORPH_NUM_INSTANCES; Index++) {
        if (axis_morph_ConfigTable[Index].DeviceId == DeviceId) {
            ConfigPtr = &axis_morph_ConfigTable[Index];
            break;
        }
    }
    return ConfigPtr;
}
int axis_morph_Initialize(axis_morph *InstancePtr, u16 DeviceId) {
    axis_morph_Config *ConfigPtr;
    Xil_AssertNonvoid(InstancePtr != NULL);
    ConfigPtr = axis_morph_LookupConfig(DeviceId);
    if (ConfigPtr == NULL) {
        InstancePtr->IsReady = 0;
        return (XST_DEVICE_NOT_FOUND);
    }
    return axis_morph_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif
