/* c_bg_s_gnd_chk.cpp autogenerated by split.py v0.3 at 2020-12-31 14:10:48.799186 */

#include "SComponent/c_bg_s_gnd_chk.h"

// additional symbols needed for c_bg_s_gnd_chk.cpp
// autogenerated by split.py v0.3 at 2020-12-31 14:10:48.795807
extern "C" {
void __ct__13cBgS_PolyInfoFv(void);
void __ct__8cBgS_ChkFv(void);
void __dl__FPv(void);
void __dt__11cBgS_GndChkFv(void);
void __dt__13cBgS_PolyInfoFv(void);
void __dt__8cBgS_ChkFv(void);
}

extern u8 lbl_803C3F90;

// __ct__11cBgS_GndChkFv
asm cBgS_GndChk::cBgS_GndChk(void) {
    nofralloc
#include "SComponent/c_bg_s_gnd_chk/asm/func_80267C1C.s"
}

// __dt__11cBgS_GndChkFv
asm cBgS_GndChk::~cBgS_GndChk(void) {
    nofralloc
#include "SComponent/c_bg_s_gnd_chk/asm/func_80267C94.s"
}

// SetPos__11cBgS_GndChkFPC3Vec
asm void cBgS_GndChk::SetPos(const Vec*) {
    nofralloc
#include "SComponent/c_bg_s_gnd_chk/asm/func_80267D0C.s"
}

// SetPos__11cBgS_GndChkFPC4cXyz
asm void cBgS_GndChk::SetPos(const cXyz*) {
    nofralloc
#include "SComponent/c_bg_s_gnd_chk/asm/func_80267D28.s"
}

// PreCheck__11cBgS_GndChkFv
asm void cBgS_GndChk::PreCheck(void) {
    nofralloc
#include "SComponent/c_bg_s_gnd_chk/asm/func_80267D44.s"
}

extern "C" {

// @20@__dt__11cBgS_GndChkFv
// cBgS_GndChk::@20@__dt(void)
asm void func_80267D54(void) {
    nofralloc
#include "SComponent/c_bg_s_gnd_chk/asm/func_80267D54.s"
}
};
