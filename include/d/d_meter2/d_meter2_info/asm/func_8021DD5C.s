/* 8021DD5C 0021AC9C  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8021DD60 0021ACA0  7C 08 02 A6 */ mflr r0
/* 8021DD64 0021ACA4  90 01 00 24 */ stw r0, 0x24(r1)
/* 8021DD68 0021ACA8  39 61 00 20 */ addi r11, r1, 0x20
/* 8021DD6C 0021ACAC  48 14 44 6D */ bl _savegpr_28
/* 8021DD70 0021ACB0  7C 9C 23 78 */ mr r28, r4
/* 8021DD74 0021ACB4  38 80 00 00 */ li r4, 0
/* 8021DD78 0021ACB8  57 9E 06 3E */ clrlwi r30, r28, 0x18
/* 8021DD7C 0021ACBC  38 1E FF F5 */ addi r0, r30, -11
/* 8021DD80 0021ACC0  54 00 08 3C */ slwi r0, r0, 1
/* 8021DD84 0021ACC4  7C 63 02 14 */ add r3, r3, r0
/* 8021DD88 0021ACC8  B0 83 00 9A */ sth r4, 0x9a(r3)
/* 8021DD8C 0021ACCC  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021DD90 0021ACD0  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8021DD94 0021ACD4  3B E3 00 9C */ addi r31, r3, 0x9c
/* 8021DD98 0021ACD8  7F E3 FB 78 */ mr r3, r31
/* 8021DD9C 0021ACDC  7F C4 F3 78 */ mr r4, r30
/* 8021DDA0 0021ACE0  38 A0 00 01 */ li r5, 1
/* 8021DDA4 0021ACE4  4B E1 52 8D */ bl getItem__17dSv_player_item_cCFib
/* 8021DDA8 0021ACE8  54 60 06 3E */ clrlwi r0, r3, 0x18
/* 8021DDAC 0021ACEC  28 00 00 6B */ cmplwi r0, 0x6b
/* 8021DDB0 0021ACF0  40 82 00 50 */ bne lbl_8021DE00
/* 8021DDB4 0021ACF4  7F E3 FB 78 */ mr r3, r31
/* 8021DDB8 0021ACF8  7F C4 F3 78 */ mr r4, r30
/* 8021DDBC 0021ACFC  38 A0 00 67 */ li r5, 0x67
/* 8021DDC0 0021AD00  4B E1 51 F9 */ bl setItem__17dSv_player_item_cFiUc
/* 8021DDC4 0021AD04  3B A0 00 00 */ li r29, 0
/* 8021DDC8 0021AD08  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8021DDCC 0021AD0C  3B C3 61 C0 */ addi r30, r3, g_dComIfG_gameInfo@l
/* 8021DDD0 0021AD10  57 9F 06 3E */ clrlwi r31, r28, 0x18
lbl_8021DDD4:
/* 8021DDD4 0021AD14  7F C3 F3 78 */ mr r3, r30
/* 8021DDD8 0021AD18  7F A4 EB 78 */ mr r4, r29
/* 8021DDDC 0021AD1C  4B E1 4C 81 */ bl getSelectItemIndex__21dSv_player_status_a_cCFi
/* 8021DDE0 0021AD20  54 60 06 3E */ clrlwi r0, r3, 0x18
/* 8021DDE4 0021AD24  7C 1F 00 40 */ cmplw r31, r0
/* 8021DDE8 0021AD28  40 82 00 0C */ bne lbl_8021DDF4
/* 8021DDEC 0021AD2C  7F A3 EB 78 */ mr r3, r29
/* 8021DDF0 0021AD30  4B E1 00 05 */ bl dComIfGp_setSelectItem
lbl_8021DDF4:
/* 8021DDF4 0021AD34  3B BD 00 01 */ addi r29, r29, 1
/* 8021DDF8 0021AD38  2C 1D 00 03 */ cmpwi r29, 3
/* 8021DDFC 0021AD3C  41 80 FF D8 */ blt lbl_8021DDD4
lbl_8021DE00:
/* 8021DE00 0021AD40  39 61 00 20 */ addi r11, r1, 0x20
/* 8021DE04 0021AD44  48 14 44 21 */ bl _restgpr_28
/* 8021DE08 0021AD48  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8021DE0C 0021AD4C  7C 08 03 A6 */ mtlr r0
/* 8021DE10 0021AD50  38 21 00 20 */ addi r1, r1, 0x20
/* 8021DE14 0021AD54  4E 80 00 20 */ blr
