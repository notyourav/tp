/* 80016E58 00013D98  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80016E5C 00013D9C  7C 08 02 A6 */ mflr r0
/* 80016E60 00013DA0  90 01 00 14 */ stw r0, 0x14(r1)
/* 80016E64 00013DA4  93 E1 00 0C */ stw r31, 0xc(r1)
/* 80016E68 00013DA8  7C 7F 1B 78 */ mr r31, r3
/* 80016E6C 00013DAC  38 7F 1F CC */ addi r3, r31, 0x1fcc
/* 80016E70 00013DB0  48 32 83 E5 */ bl OSTryLockMutex
/* 80016E74 00013DB4  2C 03 00 00 */ cmpwi r3, 0
/* 80016E78 00013DB8  41 82 00 1C */ beq lbl_80016E94
/* 80016E7C 00013DBC  38 00 00 03 */ li r0, 3
/* 80016E80 00013DC0  90 1F 1F C0 */ stw r0, 0x1fc0(r31)
/* 80016E84 00013DC4  38 7F 1F CC */ addi r3, r31, 0x1fcc
/* 80016E88 00013DC8  48 32 82 95 */ bl OSUnlockMutex
/* 80016E8C 00013DCC  38 7F 1F E4 */ addi r3, r31, 0x1fe4
/* 80016E90 00013DD0  48 32 85 75 */ bl OSSignalCond
lbl_80016E94:
/* 80016E94 00013DD4  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80016E98 00013DD8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80016E9C 00013DDC  7C 08 03 A6 */ mtlr r0
/* 80016EA0 00013DE0  38 21 00 10 */ addi r1, r1, 0x10
/* 80016EA4 00013DE4  4E 80 00 20 */ blr
