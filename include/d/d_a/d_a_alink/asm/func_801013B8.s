/* 801013B8 000FE2F8  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 801013BC 000FE2FC  7C 08 02 A6 */ mflr r0
/* 801013C0 000FE300  90 01 00 24 */ stw r0, 0x24(r1)
/* 801013C4 000FE304  DB E1 00 10 */ stfd f31, 0x10(r1)
/* 801013C8 000FE308  F3 E1 00 18 */ psq_st f31, 24(r1), 0, 0
/* 801013CC 000FE30C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 801013D0 000FE310  7C 7F 1B 78 */ mr r31, r3
/* 801013D4 000FE314  38 80 00 8A */ li r4, 0x8a
/* 801013D8 000FE318  4B FC 0B 95 */ bl daAlink_c_NS_commonProcInit
/* 801013DC 000FE31C  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 801013E0 000FE320  A8 1F 2F E2 */ lha r0, 0x2fe2(r31)
/* 801013E4 000FE324  7C 03 00 50 */ subf r0, r3, r0
/* 801013E8 000FE328  7C 00 07 35 */ extsh. r0, r0
/* 801013EC 000FE32C  40 80 00 6C */ bge lbl_80101458
/* 801013F0 000FE330  3C 60 80 39 */ lis r3, lbl_8038EBFC@ha
/* 801013F4 000FE334  38 63 EB FC */ addi r3, r3, lbl_8038EBFC@l
/* 801013F8 000FE338  C0 03 00 44 */ lfs f0, 0x44(r3)
/* 801013FC 000FE33C  FF E0 00 50 */ fneg f31, f0
/* 80101400 000FE340  38 00 00 01 */ li r0, 1
/* 80101404 000FE344  B0 1F 30 08 */ sth r0, 0x3008(r31)
/* 80101408 000FE348  A8 7F 04 E6 */ lha r3, 0x4e6(r31)
/* 8010140C 000FE34C  3C 63 00 01 */ addis r3, r3, 1
/* 80101410 000FE350  38 03 80 00 */ addi r0, r3, -32768
/* 80101414 000FE354  B0 1F 04 E6 */ sth r0, 0x4e6(r31)
/* 80101418 000FE358  7F E3 FB 78 */ mr r3, r31
/* 8010141C 000FE35C  38 80 00 00 */ li r4, 0
/* 80101420 000FE360  38 A0 80 00 */ li r5, -32768
/* 80101424 000FE364  38 C0 00 00 */ li r6, 0
/* 80101428 000FE368  4B FA C7 51 */ bl daAlink_c_NS_setOldRootQuaternion
/* 8010142C 000FE36C  80 7F 20 60 */ lwz r3, 0x2060(r31)
/* 80101430 000FE370  80 63 00 1C */ lwz r3, 0x1c(r3)
/* 80101434 000FE374  C0 02 95 B4 */ lfs f0, lbl_80452FB4-_SDA2_BASE_(r2)
/* 80101438 000FE378  D0 03 00 1C */ stfs f0, 0x1c(r3)
/* 8010143C 000FE37C  A8 1F 2F E2 */ lha r0, 0x2fe2(r31)
/* 80101440 000FE380  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 80101444 000FE384  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80101448 000FE388  D0 1F 34 78 */ stfs f0, 0x3478(r31)
/* 8010144C 000FE38C  C0 02 93 30 */ lfs f0, lbl_80452D30-_SDA2_BASE_(r2)
/* 80101450 000FE390  D0 1F 34 7C */ stfs f0, 0x347c(r31)
/* 80101454 000FE394  48 00 00 38 */ b lbl_8010148C
lbl_80101458:
/* 80101458 000FE398  3C 60 80 39 */ lis r3, lbl_8038EBFC@ha
/* 8010145C 000FE39C  38 63 EB FC */ addi r3, r3, lbl_8038EBFC@l
/* 80101460 000FE3A0  C3 E3 00 44 */ lfs f31, 0x44(r3)
/* 80101464 000FE3A4  38 00 00 00 */ li r0, 0
/* 80101468 000FE3A8  B0 1F 30 08 */ sth r0, 0x3008(r31)
/* 8010146C 000FE3AC  A8 7F 2F E2 */ lha r3, 0x2fe2(r31)
/* 80101470 000FE3B0  3C 63 00 01 */ addis r3, r3, 1
/* 80101474 000FE3B4  38 03 80 00 */ addi r0, r3, -32768
/* 80101478 000FE3B8  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 8010147C 000FE3BC  C0 02 93 30 */ lfs f0, lbl_80452D30-_SDA2_BASE_(r2)
/* 80101480 000FE3C0  D0 1F 34 78 */ stfs f0, 0x3478(r31)
/* 80101484 000FE3C4  C0 02 95 B8 */ lfs f0, lbl_80452FB8-_SDA2_BASE_(r2)
/* 80101488 000FE3C8  D0 1F 34 7C */ stfs f0, 0x347c(r31)
lbl_8010148C:
/* 8010148C 000FE3CC  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 80101490 000FE3D0  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 80101494 000FE3D4  7F E3 FB 78 */ mr r3, r31
/* 80101498 000FE3D8  38 80 00 AD */ li r4, 0xad
/* 8010149C 000FE3DC  FC 20 F8 90 */ fmr f1, f31
/* 801014A0 000FE3E0  3C A0 80 39 */ lis r5, lbl_8038EBFC@ha
/* 801014A4 000FE3E4  38 A5 EB FC */ addi r5, r5, lbl_8038EBFC@l
/* 801014A8 000FE3E8  C0 45 00 48 */ lfs f2, 0x48(r5)
/* 801014AC 000FE3EC  4B FA BB 35 */ bl daAlink_c_NS_setSingleAnimeBaseSpeed
/* 801014B0 000FE3F0  A8 1F 30 08 */ lha r0, 0x3008(r31)
/* 801014B4 000FE3F4  2C 00 00 00 */ cmpwi r0, 0
/* 801014B8 000FE3F8  41 82 00 14 */ beq lbl_801014CC
/* 801014BC 000FE3FC  7F E3 FB 78 */ mr r3, r31
/* 801014C0 000FE400  38 80 00 04 */ li r4, 4
/* 801014C4 000FE404  4B FA E3 DD */ bl daAlink_c_NS_setFaceBasicTexture
/* 801014C8 000FE408  48 00 00 10 */ b lbl_801014D8
lbl_801014CC:
/* 801014CC 000FE40C  7F E3 FB 78 */ mr r3, r31
/* 801014D0 000FE410  38 80 00 03 */ li r4, 3
/* 801014D4 000FE414  4B FA E3 CD */ bl daAlink_c_NS_setFaceBasicTexture
lbl_801014D8:
/* 801014D8 000FE418  38 00 00 04 */ li r0, 4
/* 801014DC 000FE41C  98 1F 2F 98 */ stb r0, 0x2f98(r31)
/* 801014E0 000FE420  7F E3 FB 78 */ mr r3, r31
/* 801014E4 000FE424  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 801014E8 000FE428  C0 5F 05 34 */ lfs f2, 0x534(r31)
/* 801014EC 000FE42C  38 80 00 00 */ li r4, 0
/* 801014F0 000FE430  4B FB A2 81 */ bl setSpecialGravity__9daAlink_cFffi
/* 801014F4 000FE434  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 801014F8 000FE438  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 801014FC 000FE43C  D0 1F 04 FC */ stfs f0, 0x4fc(r31)
/* 80101500 000FE440  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80101504 000FE444  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 80101508 000FE448  80 03 5F 1C */ lwz r0, 0x5f1c(r3)
/* 8010150C 000FE44C  64 00 00 10 */ oris r0, r0, 0x10
/* 80101510 000FE450  90 03 5F 1C */ stw r0, 0x5f1c(r3)
/* 80101514 000FE454  38 60 00 01 */ li r3, 1
/* 80101518 000FE458  E3 E1 00 18 */ psq_l f31, 24(r1), 0, 0
/* 8010151C 000FE45C  CB E1 00 10 */ lfd f31, 0x10(r1)
/* 80101520 000FE460  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80101524 000FE464  80 01 00 24 */ lwz r0, 0x24(r1)
/* 80101528 000FE468  7C 08 03 A6 */ mtlr r0
/* 8010152C 000FE46C  38 21 00 20 */ addi r1, r1, 0x20
/* 80101530 000FE470  4E 80 00 20 */ blr