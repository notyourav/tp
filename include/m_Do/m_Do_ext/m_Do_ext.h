#ifndef __M_DO_EXT_H_
#define __M_DO_EXT_H_

#include "JSystem/J3DGraphAnimator/J3DAnimation.h"
#include "global.h"

class mDoExt_baseAnm {
public:
private:
    J3DFrameCtrl frame_control;
};

class mDoExt_btkAnm {
public:
private:
    mDoExt_baseAnm base_anm;
    u32 field_0x14;
};

class mDoExt_brkAnm {
public:
private:
    mDoExt_baseAnm mDoExt_baseAnm;
    u32 field_0x14;
};

class mDoExt_bpkAnm {
public:
private:
    mDoExt_baseAnm mDoExt_baseAnm;
    u32 field_0x14;
};

class mDoExt_bckAnm {
public:
private:
    mDoExt_baseAnm base_anm;
    u8 field_0x14[4];
    u32 field_0x18;
};

class mDoExt_McaMorfCallBack1_c {
public:
private:
    void* vtable;
};

#endif