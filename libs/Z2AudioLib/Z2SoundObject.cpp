/* Z2SoundObject.cpp autogenerated by split.py v0.3 at 2021-01-04 23:48:52.467160 */

#include "Z2AudioLib/Z2SoundObject/Z2SoundObject.h"
#include "JSystem/JAudio2/JAISoundParamsMove.h"
#include "JSystem/JAudio2/JAUSoundAnimation.h"
#include "Z2AudioLib/Z2Calc/Z2Calc.h"
#include "Z2AudioLib/Z2SeMgr/Z2SeMgr.h"
#include "Z2AudioLib/Z2SoundInfo/Z2SoundInfo.h"

extern "C" {
void __dl__FPv(void);
void getNthLink__10JSUPtrListCFUl(void);
}

Z2SoundObjBase::Z2SoundObjBase() {
    //! @note initializer list doesn't work since fields were initialized out of
    //! structure layout order, indicating original code didn't use initializer list.
    mSoundPos = NULL;
    mIsInitialized = false;
    mSoundStarter = lbl_80450B74;
    field_0x1c = 0;
    field_0x1e = 0;
}

Z2SoundObjBase::~Z2SoundObjBase() {
    deleteObject();
}

void Z2SoundObjBase::init(Vec* pSoundPos, u8 pNumHandles) {
    initHandlesPool(pNumHandles);
    mSoundPos = pSoundPos;
    mIsInitialized = true;
}

void Z2SoundObjBase::deleteObject() {
    this->dispose();
    this->deleteHandlesPool();
}

void Z2SoundObjBase::framework(u32 p1, s8 p2) {
    if (mIsInitialized) {
        this->field_0x1c = p1;
        this->field_0x1e = p2;
        this->setPos(*(JGeometry::TVec3<f32>*)this->mSoundPos);
    }
}

void Z2SoundObjBase::dispose() {
    JAISoundHandle* handle;
    JSULink<Z2SoundHandlePool>* link;
    for (link = this->getFirst(); link != NULL; link = link->getNext()) {
        handle = link->getObject();
        if (handle != NULL && (bool)*handle) {
            u32 swBit = lbl_80450B4C->getSwBit((*handle)->getID());
            if ((swBit & 0x8000) != 0) {
                handle->releaseSound();
            } else {
                (*handle)->stop();
            }
        }
    }

    this->mIsInitialized = false;
}

bool Z2SoundObjBase::stopOK(Z2SoundHandlePool& pSoundHandlePool) {
    return !(lbl_80450B4C->getSwBit(pSoundHandlePool->getID()) & 0x8000);
}

extern "C" {
// startSound__14Z2SoundObjBaseF10JAISoundIDUlSc
// Z2SoundObjBase::startSound(JAISoundID, unsigned long, char)
asm void Z2SoundObjBase_NS_startSound(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BE144.s"
}

// startLevelSound__14Z2SoundObjBaseF10JAISoundIDUlSc
// Z2SoundObjBase::startLevelSound(JAISoundID, unsigned long, char)
asm void Z2SoundObjBase_NS_startLevelSound(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BE2D4.s"
}

// startCollisionSE__14Z2SoundObjBaseFUlUlP14Z2SoundObjBase
// Z2SoundObjBase::startCollisionSE(unsigned long, unsigned long, Z2SoundObjBase*)
asm void Z2SoundObjBase_NS_startCollisionSE(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BE4A4.s"
}

// __ct__21Z2DopplerSoundObjBaseFv
// Z2DopplerSoundObjBase::Z2DopplerSoundObjBase(void)
asm void Z2DopplerSoundObjBase(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BE5A0.s"
}

// __dt__21Z2DopplerSoundObjBaseFv
// Z2DopplerSoundObjBase::~Z2DopplerSoundObjBase(void)
asm void func_802BE5FC(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BE5FC.s"
}

// init__21Z2DopplerSoundObjBaseFP3VecUc
// Z2DopplerSoundObjBase::init(Vec*, unsigned char)
asm void init__21Z2DopplerSoundObjBaseFP3VecUc(Vec* pSoundPos, u8 pNumHandles) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BE65C.s"
}

// framework__21Z2DopplerSoundObjBaseFUlSc
// Z2DopplerSoundObjBase::framework(unsigned long, char)
asm void func_802BE6B8(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BE6B8.s"
}

// startSound__21Z2DopplerSoundObjBaseF10JAISoundIDUlSc
// Z2DopplerSoundObjBase::startSound(JAISoundID, unsigned long, char)
asm void func_802BE714(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BE714.s"
}

// startLevelSound__21Z2DopplerSoundObjBaseF10JAISoundIDUlSc
// Z2DopplerSoundObjBase::startLevelSound(JAISoundID, unsigned long, char)
asm void func_802BE7AC(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BE7AC.s"
}

// __ct__16Z2SoundObjSimpleFv
// Z2SoundObjSimple::Z2SoundObjSimple(void)
asm void Z2SoundObjSimple(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BE844.s"
}

#ifdef NONMATCHING
// init__16Z2SoundObjSimpleFP3VecUc
// Z2SoundObjSimple::init(Vec*, unsigned char)
void Z2SoundObjSimple::init(Vec* pSoundPos, u8 pNumHandles) {
    // i would write
    //   Z2SoundObjBase::init(pSoundPos, pNumHandles);
    // but MWCC says "illegal use of non-static member"
    // was calling like this not in C++98?

    // and this doesn't match
    ((Z2SoundObjBase*)this)->init(pSoundPos, pNumHandles);
}
#else
asm void Z2SoundObjSimple::init(Vec* pSoundPos, u8 pNumHandles) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BE880.s"
}
#endif

// startSound__16Z2SoundObjSimpleF10JAISoundIDUlSc
// Z2SoundObjSimple::startSound(JAISoundID, unsigned long, char)
asm void func_802BE8A0(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BE8A0.s"
}

// startLevelSound__16Z2SoundObjSimpleF10JAISoundIDUlSc
// Z2SoundObjSimple::startLevelSound(JAISoundID, unsigned long, char)
asm void func_802BE9B0(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BE9B0.s"
}

// __ct__15Z2SoundObjArrowFv
// Z2SoundObjArrow::Z2SoundObjArrow(void)
asm void func_802BEB38(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BEB38.s"
}

// init__15Z2SoundObjArrowFP3VecUc
// Z2SoundObjArrow::init(Vec*, unsigned char)
asm void func_802BEB74(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BEB74.s"
}

// __ct__15Z2SoundObjAnimeFv
// Z2SoundObjAnime::Z2SoundObjAnime(void)
asm void Z2SoundObjAnime(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BEB94.s"
}

// init__15Z2SoundObjAnimeFP3VecUc
// Z2SoundObjAnime::init(Vec*, unsigned char)
asm void func_802BEBDC(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BEBDC.s"
}

// initAnime__15Z2SoundObjAnimeFPvbff
// Z2SoundObjAnime::initAnime(void*, bool, float, float)
asm void Z2SoundObjAnime_NS_initAnime(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BEBFC.s"
}

// ageSounds___15Z2SoundObjAnimeFv
// Z2SoundObjAnime::ageSounds_(void)
asm void Z2SoundObjAnime_NS_ageSounds_(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BED68.s"
}

// updateAnime__15Z2SoundObjAnimeFff
// Z2SoundObjAnime::updateAnime(float, float)
asm void Z2SoundObjAnime_NS_updateAnime(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BEED4.s"
}

// updateSoundLifeTime___15Z2SoundObjAnimeFff
// Z2SoundObjAnime::updateSoundLifeTime_(float, float)
asm void Z2SoundObjAnime_NS_updateSoundLifeTime_(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BF304.s"
}

// startSoundInner__15Z2SoundObjAnimeFRCQ29JGeometry8TVec3<f>fP14Z2SoundStarterUlSc
// Z2SoundObjAnime::startSoundInner(JGeometry::TVec3<f>, float, Z2SoundStarter*, unsigned long,
// char)
asm void Z2SoundObjAnime_NS_startSoundInner(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BF660.s"
}

// getSoundID__15Z2SoundObjAnimeFPC22JAUSoundAnimationSoundRCQ29JGeometry8TVec3<f>f
// Z2SoundObjAnime::getSoundID(const JAUSoundAnimationSound*, JGeometry::TVec3<f>, float)
asm void Z2SoundObjAnime_NS_getSoundID(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BF890.s"
}

// playsSound__15Z2SoundObjAnimeFPC22JAUSoundAnimationSoundRCQ29JGeometry8TVec3<f>f
// Z2SoundObjAnime::playsSound(const JAUSoundAnimationSound*, JGeometry::TVec3<f>, float)
asm void Z2SoundObjAnime_NS_playsSound(void) {
    nofralloc
#include "Z2AudioLib/Z2SoundObject/asm/func_802BF898.s"
}
};
