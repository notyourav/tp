/* 8002F478 0002C3B8  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8002F47C 0002C3BC  7C 08 02 A6 */ mflr r0
/* 8002F480 0002C3C0  90 01 00 14 */ stw r0, 0x14(r1)
/* 8002F484 0002C3C4  7C 64 1B 78 */ mr r4, r3
/* 8002F488 0002C3C8  3C 60 80 38 */ lis r3, lbl_80378F38@ha
/* 8002F48C 0002C3CC  38 63 8F 38 */ addi r3, r3, lbl_80378F38@l
/* 8002F490 0002C3D0  38 63 01 67 */ addi r3, r3, 0x167
/* 8002F494 0002C3D4  3C A0 80 40 */ lis r5, g_dComIfG_gameInfo@ha
/* 8002F498 0002C3D8  38 A5 61 C0 */ addi r5, r5, g_dComIfG_gameInfo@l
/* 8002F49C 0002C3DC  3C A5 00 02 */ addis r5, r5, 2
/* 8002F4A0 0002C3E0  38 A5 D4 F8 */ addi r5, r5, -11016
/* 8002F4A4 0002C3E4  38 C0 00 40 */ li r6, 0x40
/* 8002F4A8 0002C3E8  48 00 CE D5 */ bl dRes_control_c_NS_getRes_X1_
/* 8002F4AC 0002C3EC  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8002F4B0 0002C3F0  7C 08 03 A6 */ mtlr r0
/* 8002F4B4 0002C3F4  38 21 00 10 */ addi r1, r1, 0x10
/* 8002F4B8 0002C3F8  4E 80 00 20 */ blr
