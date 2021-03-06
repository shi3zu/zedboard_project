// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2012.4
// Copyright (C) 2012 Xilinx Inc. All rights reserved.
// 
// ==============================================================

#ifndef XFIR_H
#define XFIR_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#include "xfir_fir_io.h"

/**************************** Type Definitions ******************************/
typedef struct {
    u16 DeviceId; // currently not used
    u32 Fir_io_BaseAddress;
} XFir_Config;

typedef struct {
    u32 Fir_io_BaseAddress;
    u32 IsReady;
} XFir;

/***************** Macros (Inline Functions) Definitions *********************/
#define XFir_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

#define XFir_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes *****************************/
int XFir_Initialize(XFir *InstancePtr, XFir_Config *ConfigPtr);

void XFir_Start(XFir *InstancePtr);
u32 XFir_IsDone(XFir *InstancePtr);
u32 XFir_IsIdle(XFir *InstancePtr);
u32 XFir_IsReady(XFir *InstancePtr);
void XFir_EnableAutoRestart(XFir *InstancePtr);
void XFir_DisableAutoRestart(XFir *InstancePtr);

u32 XFir_GetY(XFir *InstancePtr);
u32 XFir_GetYVld(XFir *InstancePtr);
void XFir_SetX(XFir *InstancePtr, u32 Data);
u32 XFir_GetX(XFir *InstancePtr);

void XFir_InterruptGlobalEnable(XFir *InstancePtr);
void XFir_InterruptGlobalDisable(XFir *InstancePtr);
void XFir_InterruptEnable(XFir *InstancePtr, u32 Mask);
void XFir_InterruptDisable(XFir *InstancePtr, u32 Mask);
void XFir_InterruptClear(XFir *InstancePtr, u32 Mask);
u32 XFir_InterruptGetEnabled(XFir *InstancePtr);
u32 XFir_InterruptGetStatus(XFir *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
