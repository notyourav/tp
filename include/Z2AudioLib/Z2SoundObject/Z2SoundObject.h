#ifndef __Z2SOUNDOBJECT_H__
#define __Z2SOUNDOBJECT_H__

#include "JSystem/JGeometry/JGeometry.h"
#include "Z2AudioLib/Z2SoundHandles/Z2SoundHandles.h"
#include "Z2AudioLib/Z2SoundStarter/Z2SoundStarter.h"
#include "global.h"

/* struct Z2SoundObjBase_vtable {
    void* field_0x0;
    void* field_0x4;
    void* framework;
    void* dispose;
    void* stopOK;
    void* init;
    void* startSound;
    void* startLevelSound;
};
 */

class Z2SoundObjBase : protected Z2SoundHandles {
public:
    Z2SoundObjBase();
    ~Z2SoundObjBase();

    void deleteObject();

    bool isAlive() const { return mIsInitialized; }

    virtual void framework(u32, s8);
    virtual void dispose();
    virtual bool stopOK(Z2SoundHandlePool& pool);
    virtual void init(Vec* pSoundPos, u8 pNumHandles);

    // Z2SoundObjBase_vtable* vtable;
    Z2SoundStarter* mSoundStarter;
    Vec* mSoundPos;
    u16 field_0x1c;
    u8 field_0x1e;
    bool mIsInitialized;
};

class Z2SoundObjSimple : protected Z2SoundHandles {
public:
    virtual void init(Vec* pSoundPos, u8 pNumHandles);
};

class Z2DopplerSoundObjBase : protected Z2SoundHandles {};

#endif