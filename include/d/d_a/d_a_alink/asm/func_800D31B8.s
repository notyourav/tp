/* 800D31B8 000D00F8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800D31BC 000D00FC  7C 08 02 A6 */ mflr r0
/* 800D31C0 000D0100  90 01 00 14 */ stw r0, 0x14(r1)
/* 800D31C4 000D0104  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800D31C8 000D0108  93 C1 00 08 */ stw r30, 8(r1)
/* 800D31CC 000D010C  7C 7E 1B 78 */ mr r30, r3
/* 800D31D0 000D0110  4B FE 6D 81 */ bl daAlink_c_NS_checkGroundSpecialMode
/* 800D31D4 000D0114  2C 03 00 00 */ cmpwi r3, 0
/* 800D31D8 000D0118  41 82 00 0C */ beq lbl_800D31E4
/* 800D31DC 000D011C  38 60 00 01 */ li r3, 1
/* 800D31E0 000D0120  48 00 02 E0 */ b lbl_800D34C0
lbl_800D31E4:
/* 800D31E4 000D0124  7F C3 F3 78 */ mr r3, r30
/* 800D31E8 000D0128  38 80 00 01 */ li r4, 1
/* 800D31EC 000D012C  4B FE 80 C5 */ bl daAlink_c_NS_setBodyAngleXReadyAnime
/* 800D31F0 000D0130  3B FE 1F D0 */ addi r31, r30, 0x1fd0
/* 800D31F4 000D0134  7F C3 F3 78 */ mr r3, r30
/* 800D31F8 000D0138  4B FF EF 05 */ bl daAlink_c_NS_setComboReserb
/* 800D31FC 000D013C  7F C3 F3 78 */ mr r3, r30
/* 800D3200 000D0140  4B FF F4 85 */ bl daAlink_c_NS_checkCutTurnCharge_X1_
/* 800D3204 000D0144  7F C3 F3 78 */ mr r3, r30
/* 800D3208 000D0148  4B FF FA 4D */ bl daAlink_c_NS_checkCutAtnActorChange
/* 800D320C 000D014C  38 7E 33 98 */ addi r3, r30, 0x3398
/* 800D3210 000D0150  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800D3214 000D0154  3C 80 80 39 */ lis r4, lbl_8038D6BC@ha
/* 800D3218 000D0158  38 84 D6 BC */ addi r4, r4, lbl_8038D6BC@l
/* 800D321C 000D015C  C0 44 00 38 */ lfs f2, 0x38(r4)
/* 800D3220 000D0160  48 19 D5 21 */ bl cLib_chaseF__FPfff
/* 800D3224 000D0164  80 1E 05 88 */ lwz r0, 0x588(r30)
/* 800D3228 000D0168  64 00 08 00 */ oris r0, r0, 0x800
/* 800D322C 000D016C  90 1E 05 88 */ stw r0, 0x588(r30)
/* 800D3230 000D0170  38 00 00 04 */ li r0, 4
/* 800D3234 000D0174  98 1E 2F 99 */ stb r0, 0x2f99(r30)
/* 800D3238 000D0178  A8 1E 30 0E */ lha r0, 0x300e(r30)
/* 800D323C 000D017C  2C 00 00 00 */ cmpwi r0, 0
/* 800D3240 000D0180  41 82 00 64 */ beq lbl_800D32A4
/* 800D3244 000D0184  80 1E 05 78 */ lwz r0, 0x578(r30)
/* 800D3248 000D0188  54 00 07 BD */ rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800D324C 000D018C  41 82 00 58 */ beq lbl_800D32A4
/* 800D3250 000D0190  7F C3 F3 78 */ mr r3, r30
/* 800D3254 000D0194  4B FF F4 99 */ bl daAlink_c_NS_getCutDirection
/* 800D3258 000D0198  2C 03 00 03 */ cmpwi r3, 3
/* 800D325C 000D019C  40 82 00 20 */ bne lbl_800D327C
/* 800D3260 000D01A0  88 1E 05 68 */ lbz r0, 0x568(r30)
/* 800D3264 000D01A4  28 00 00 04 */ cmplwi r0, 4
/* 800D3268 000D01A8  40 82 00 14 */ bne lbl_800D327C
/* 800D326C 000D01AC  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800D3270 000D01B0  C0 02 93 1C */ lfs f0, lbl_80452D1C-_SDA2_BASE_(r2)
/* 800D3274 000D01B4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D3278 000D01B8  41 81 00 28 */ bgt lbl_800D32A0
lbl_800D327C:
/* 800D327C 000D01BC  2C 03 00 02 */ cmpwi r3, 2
/* 800D3280 000D01C0  40 82 00 24 */ bne lbl_800D32A4
/* 800D3284 000D01C4  88 1E 05 68 */ lbz r0, 0x568(r30)
/* 800D3288 000D01C8  28 00 00 03 */ cmplwi r0, 3
/* 800D328C 000D01CC  40 82 00 18 */ bne lbl_800D32A4
/* 800D3290 000D01D0  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800D3294 000D01D4  C0 02 93 1C */ lfs f0, lbl_80452D1C-_SDA2_BASE_(r2)
/* 800D3298 000D01D8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D329C 000D01DC  40 81 00 08 */ ble lbl_800D32A4
lbl_800D32A0:
/* 800D32A0 000D01E0  B0 7E 30 0A */ sth r3, 0x300a(r30)
lbl_800D32A4:
/* 800D32A4 000D01E4  7F E3 FB 78 */ mr r3, r31
/* 800D32A8 000D01E8  48 08 B2 25 */ bl daPy_frameCtrl_c_NS_checkAnmEnd
/* 800D32AC 000D01EC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800D32B0 000D01F0  41 82 00 4C */ beq lbl_800D32FC
/* 800D32B4 000D01F4  7F C3 F3 78 */ mr r3, r30
/* 800D32B8 000D01F8  38 80 00 01 */ li r4, 1
/* 800D32BC 000D01FC  4B FF E1 75 */ bl daAlink_c_NS_resetCombo
/* 800D32C0 000D0200  80 1E 06 14 */ lwz r0, 0x614(r30)
/* 800D32C4 000D0204  28 00 00 24 */ cmplwi r0, 0x24
/* 800D32C8 000D0208  41 82 00 0C */ beq lbl_800D32D4
/* 800D32CC 000D020C  28 00 00 54 */ cmplwi r0, 0x54
/* 800D32D0 000D0210  40 82 00 1C */ bne lbl_800D32EC
lbl_800D32D4:
/* 800D32D4 000D0214  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800D32D8 000D0218  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800D32DC 000D021C  38 63 4F F8 */ addi r3, r3, 0x4ff8
/* 800D32E0 000D0220  80 9E 31 84 */ lwz r4, 0x3184(r30)
/* 800D32E4 000D0224  4B F7 4E 99 */ bl dEvent_manager_c_NS_cutEnd
/* 800D32E8 000D0228  48 00 01 D4 */ b lbl_800D34BC
lbl_800D32EC:
/* 800D32EC 000D022C  7F C3 F3 78 */ mr r3, r30
/* 800D32F0 000D0230  38 80 00 00 */ li r4, 0
/* 800D32F4 000D0234  4B FE 6D DD */ bl daAlink_c_NS_checkNextAction
/* 800D32F8 000D0238  48 00 01 C4 */ b lbl_800D34BC
lbl_800D32FC:
/* 800D32FC 000D023C  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800D3300 000D0240  C0 1E 34 84 */ lfs f0, 0x3484(r30)
/* 800D3304 000D0244  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D3308 000D0248  41 81 00 10 */ bgt lbl_800D3318
/* 800D330C 000D024C  A8 1E 30 0A */ lha r0, 0x300a(r30)
/* 800D3310 000D0250  2C 00 00 04 */ cmpwi r0, 4
/* 800D3314 000D0254  41 82 00 18 */ beq lbl_800D332C
lbl_800D3318:
/* 800D3318 000D0258  7F C3 F3 78 */ mr r3, r30
/* 800D331C 000D025C  38 80 00 03 */ li r4, 3
/* 800D3320 000D0260  4B FF F4 41 */ bl daAlink_c_NS_checkCutCancelNextMode
/* 800D3324 000D0264  2C 03 00 00 */ cmpwi r3, 0
/* 800D3328 000D0268  40 82 01 94 */ bne lbl_800D34BC
lbl_800D332C:
/* 800D332C 000D026C  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800D3330 000D0270  C0 1E 34 84 */ lfs f0, 0x3484(r30)
/* 800D3334 000D0274  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D3338 000D0278  40 81 00 10 */ ble lbl_800D3348
/* 800D333C 000D027C  7F C3 F3 78 */ mr r3, r30
/* 800D3340 000D0280  38 80 00 01 */ li r4, 1
/* 800D3344 000D0284  4B FF E0 ED */ bl daAlink_c_NS_resetCombo
lbl_800D3348:
/* 800D3348 000D0288  7F C3 F3 78 */ mr r3, r30
/* 800D334C 000D028C  80 9E 31 98 */ lwz r4, 0x3198(r30)
/* 800D3350 000D0290  4B FF E6 79 */ bl daAlink_c_NS_changeCutReverseProc
/* 800D3354 000D0294  2C 03 00 00 */ cmpwi r3, 0
/* 800D3358 000D0298  41 82 00 0C */ beq lbl_800D3364
/* 800D335C 000D029C  38 60 00 01 */ li r3, 1
/* 800D3360 000D02A0  48 00 01 60 */ b lbl_800D34C0
lbl_800D3364:
/* 800D3364 000D02A4  7F C3 F3 78 */ mr r3, r30
/* 800D3368 000D02A8  A8 9E 30 10 */ lha r4, 0x3010(r30)
/* 800D336C 000D02AC  4B FE 03 C9 */ bl daAlink_c_NS_setShapeAngleToAtnActor
/* 800D3370 000D02B0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800D3374 000D02B4  41 82 00 30 */ beq lbl_800D33A4
/* 800D3378 000D02B8  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 800D337C 000D02BC  B0 1E 30 0C */ sth r0, 0x300c(r30)
/* 800D3380 000D02C0  7F C3 F3 78 */ mr r3, r30
/* 800D3384 000D02C4  4B FE 02 AD */ bl daAlink_c_NS_getShapeAngleYAtnActor
/* 800D3388 000D02C8  A8 9E 04 E6 */ lha r4, 0x4e6(r30)
/* 800D338C 000D02CC  48 19 DA 99 */ bl cLib_distanceAngleS__Fss
/* 800D3390 000D02D0  2C 03 08 00 */ cmpwi r3, 0x800
/* 800D3394 000D02D4  40 80 00 28 */ bge lbl_800D33BC
/* 800D3398 000D02D8  38 00 00 01 */ li r0, 1
/* 800D339C 000D02DC  B0 1E 30 10 */ sth r0, 0x3010(r30)
/* 800D33A0 000D02E0  48 00 00 1C */ b lbl_800D33BC
lbl_800D33A4:
/* 800D33A4 000D02E4  38 7E 04 E6 */ addi r3, r30, 0x4e6
/* 800D33A8 000D02E8  A8 9E 30 0C */ lha r4, 0x300c(r30)
/* 800D33AC 000D02EC  38 A0 00 02 */ li r5, 2
/* 800D33B0 000D02F0  38 C0 20 00 */ li r6, 0x2000
/* 800D33B4 000D02F4  38 E0 08 00 */ li r7, 0x800
/* 800D33B8 000D02F8  48 19 D1 89 */ bl cLib_addCalcAngleS__FPsssss
lbl_800D33BC:
/* 800D33BC 000D02FC  A8 1E 04 E6 */ lha r0, 0x4e6(r30)
/* 800D33C0 000D0300  B0 1E 04 DE */ sth r0, 0x4de(r30)
/* 800D33C4 000D0304  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800D33C8 000D0308  C0 1E 34 78 */ lfs f0, 0x3478(r30)
/* 800D33CC 000D030C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D33D0 000D0310  4C 41 13 82 */ cror 2, 1, 2
/* 800D33D4 000D0314  40 82 00 40 */ bne lbl_800D3414
/* 800D33D8 000D0318  C0 1E 34 7C */ lfs f0, 0x347c(r30)
/* 800D33DC 000D031C  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D33E0 000D0320  40 80 00 34 */ bge lbl_800D3414
/* 800D33E4 000D0324  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800D33E8 000D0328  54 00 06 73 */ rlwinm. r0, r0, 0, 0x19, 0x19
/* 800D33EC 000D032C  40 82 00 1C */ bne lbl_800D3408
/* 800D33F0 000D0330  7F C3 F3 78 */ mr r3, r30
/* 800D33F4 000D0334  3C 80 00 02 */ lis r4, 0x00020002@ha
/* 800D33F8 000D0338  38 84 00 02 */ addi r4, r4, 0x00020002@l
/* 800D33FC 000D033C  4B FE BC F1 */ bl daAlink_c_NS_seStartSwordCut
/* 800D3400 000D0340  C0 1E 34 80 */ lfs f0, 0x3480(r30)
/* 800D3404 000D0344  D0 1E 33 98 */ stfs f0, 0x3398(r30)
lbl_800D3408:
/* 800D3408 000D0348  80 1E 05 80 */ lwz r0, 0x580(r30)
/* 800D340C 000D034C  60 00 00 02 */ ori r0, r0, 2
/* 800D3410 000D0350  90 1E 05 80 */ stw r0, 0x580(r30)
lbl_800D3414:
/* 800D3414 000D0354  88 1E 05 68 */ lbz r0, 0x568(r30)
/* 800D3418 000D0358  28 00 00 04 */ cmplwi r0, 4
/* 800D341C 000D035C  40 82 00 40 */ bne lbl_800D345C
/* 800D3420 000D0360  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800D3424 000D0364  C0 02 93 20 */ lfs f0, lbl_80452D20-_SDA2_BASE_(r2)
/* 800D3428 000D0368  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D342C 000D036C  4C 41 13 82 */ cror 2, 1, 2
/* 800D3430 000D0370  40 82 00 10 */ bne lbl_800D3440
/* 800D3434 000D0374  38 00 00 00 */ li r0, 0
/* 800D3438 000D0378  98 1E 2F 92 */ stb r0, 0x2f92(r30)
/* 800D343C 000D037C  48 00 00 80 */ b lbl_800D34BC
lbl_800D3440:
/* 800D3440 000D0380  C0 02 93 24 */ lfs f0, lbl_80452D24-_SDA2_BASE_(r2)
/* 800D3444 000D0384  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D3448 000D0388  4C 41 13 82 */ cror 2, 1, 2
/* 800D344C 000D038C  40 82 00 70 */ bne lbl_800D34BC
/* 800D3450 000D0390  38 00 00 64 */ li r0, 0x64
/* 800D3454 000D0394  98 1E 2F 92 */ stb r0, 0x2f92(r30)
/* 800D3458 000D0398  48 00 00 64 */ b lbl_800D34BC
lbl_800D345C:
/* 800D345C 000D039C  28 00 00 03 */ cmplwi r0, 3
/* 800D3460 000D03A0  40 82 00 40 */ bne lbl_800D34A0
/* 800D3464 000D03A4  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800D3468 000D03A8  C0 02 93 28 */ lfs f0, lbl_80452D28-_SDA2_BASE_(r2)
/* 800D346C 000D03AC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D3470 000D03B0  4C 41 13 82 */ cror 2, 1, 2
/* 800D3474 000D03B4  40 82 00 10 */ bne lbl_800D3484
/* 800D3478 000D03B8  38 00 00 00 */ li r0, 0
/* 800D347C 000D03BC  98 1E 2F 92 */ stb r0, 0x2f92(r30)
/* 800D3480 000D03C0  48 00 00 3C */ b lbl_800D34BC
lbl_800D3484:
/* 800D3484 000D03C4  C0 02 93 24 */ lfs f0, lbl_80452D24-_SDA2_BASE_(r2)
/* 800D3488 000D03C8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D348C 000D03CC  4C 41 13 82 */ cror 2, 1, 2
/* 800D3490 000D03D0  40 82 00 2C */ bne lbl_800D34BC
/* 800D3494 000D03D4  38 00 00 64 */ li r0, 0x64
/* 800D3498 000D03D8  98 1E 2F 92 */ stb r0, 0x2f92(r30)
/* 800D349C 000D03DC  48 00 00 20 */ b lbl_800D34BC
lbl_800D34A0:
/* 800D34A0 000D03E0  C0 3F 00 10 */ lfs f1, 0x10(r31)
/* 800D34A4 000D03E4  C0 02 93 20 */ lfs f0, lbl_80452D20-_SDA2_BASE_(r2)
/* 800D34A8 000D03E8  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 800D34AC 000D03EC  4C 41 13 82 */ cror 2, 1, 2
/* 800D34B0 000D03F0  40 82 00 0C */ bne lbl_800D34BC
/* 800D34B4 000D03F4  38 00 00 00 */ li r0, 0
/* 800D34B8 000D03F8  98 1E 2F 92 */ stb r0, 0x2f92(r30)
lbl_800D34BC:
/* 800D34BC 000D03FC  38 60 00 01 */ li r3, 1
lbl_800D34C0:
/* 800D34C0 000D0400  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800D34C4 000D0404  83 C1 00 08 */ lwz r30, 8(r1)
/* 800D34C8 000D0408  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800D34CC 000D040C  7C 08 03 A6 */ mtlr r0
/* 800D34D0 000D0410  38 21 00 10 */ addi r1, r1, 0x10
/* 800D34D4 000D0414  4E 80 00 20 */ blr
