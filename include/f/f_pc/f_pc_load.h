
#ifndef F_PC_LOAD_H_
#define F_PC_LOAD_H_

#include "global.h"

extern "C" {

BOOL fpcLd_Use(u16 procName);
s32 fpcLd_IsLoaded(u16 procName);
void fpcLd_Free(u16 procName);
s32 fpcLd_Load(u16 procName);
};

#endif
