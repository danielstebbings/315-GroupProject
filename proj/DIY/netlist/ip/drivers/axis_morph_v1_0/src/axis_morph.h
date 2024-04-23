#ifndef AXIS_MORPH__H
#define AXIS_MORPH__H
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
#include "axis_morph_hw.h"
/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 axis_morph_config_BaseAddress;
} axis_morph_Config;
#endif
/**
* The axis_morph driver instance data. The user is required to
* allocate a variable of this type for every axis_morph device in the system.
* A pointer to a variable of this type is then passed to the driver
* API functions.
*/
typedef struct {
    u32 axis_morph_config_BaseAddress;
    u32 IsReady;
} axis_morph;
/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define axis_morph_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define axis_morph_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define axis_morph_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define axis_morph_ReadReg(BaseAddress, RegOffset) \
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
int axis_morph_Initialize(axis_morph *InstancePtr, u16 DeviceId);
axis_morph_Config* axis_morph_LookupConfig(u16 DeviceId);
int axis_morph_CfgInitialize(axis_morph *InstancePtr, axis_morph_Config *ConfigPtr);
#else
int axis_morph_Initialize(axis_morph *InstancePtr, const char* InstanceName);
int axis_morph_Release(axis_morph *InstancePtr);
#endif
/**
* Write to thresh_reg gateway of axis_morph. Assignments are LSB-justified.
*
* @param	InstancePtr is the thresh_reg instance to operate on.
* @param	Data is value to be written to gateway thresh_reg.
*
* @return	None.
*
* @note    Threshold.
*
*/
void axis_morph_thresh_reg_write(axis_morph *InstancePtr, u32 Data);
/**
* Read from thresh_reg gateway of axis_morph. Assignments are LSB-justified.
*
* @param	InstancePtr is the thresh_reg instance to operate on.
*
* @return	u32
*
* @note    Threshold.
*
*/
u32 axis_morph_thresh_reg_read(axis_morph *InstancePtr);
#ifdef __cplusplus
}
#endif
#endif
