/* 8015FEB8 0015CDF8  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 8015FEBC 0015CDFC  7C 08 02 A6 */ mflr r0
/* 8015FEC0 0015CE00  90 01 00 34 */ stw r0, 0x34(r1)
/* 8015FEC4 0015CE04  39 61 00 30 */ addi r11, r1, 0x30
/* 8015FEC8 0015CE08  48 20 23 01 */ bl _savegpr_24
/* 8015FECC 0015CE0C  7C 7B 1B 78 */ mr r27, r3
/* 8015FED0 0015CE10  7C 98 23 78 */ mr r24, r4
/* 8015FED4 0015CE14  7C DC 33 78 */ mr r28, r6
/* 8015FED8 0015CE18  7D 1D 43 78 */ mr r29, r8
/* 8015FEDC 0015CE1C  54 FF 04 3E */ clrlwi r31, r7, 0x10
/* 8015FEE0 0015CE20  54 FE 06 3E */ clrlwi r30, r7, 0x18
/* 8015FEE4 0015CE24  A0 03 00 38 */ lhz r0, 0x38(r3)
/* 8015FEE8 0015CE28  7C 1E 00 00 */ cmpw r30, r0
/* 8015FEEC 0015CE2C  40 81 00 0C */ ble lbl_8015FEF8
/* 8015FEF0 0015CE30  38 60 00 00 */ li r3, 0
/* 8015FEF4 0015CE34  48 00 01 80 */ b lbl_80160074
lbl_8015FEF8:
/* 8015FEF8 0015CE38  7C B9 2B 78 */ mr r25, r5
/* 8015FEFC 0015CE3C  7F 23 CB 78 */ mr r3, r25
/* 8015FF00 0015CE40  4B EC D3 5D */ bl dComIfGp_getRoomCamera
/* 8015FF04 0015CE44  7C 7A 1B 78 */ mr r26, r3
/* 8015FF08 0015CE48  7F 23 CB 78 */ mr r3, r25
/* 8015FF0C 0015CE4C  4B EC D3 A1 */ bl dComIfGp_getRoomArrow
/* 8015FF10 0015CE50  28 1A 00 00 */ cmplwi r26, 0
/* 8015FF14 0015CE54  41 82 01 5C */ beq lbl_80160070
/* 8015FF18 0015CE58  2C 18 00 00 */ cmpwi r24, 0
/* 8015FF1C 0015CE5C  41 80 01 54 */ blt lbl_80160070
/* 8015FF20 0015CE60  80 1A 00 00 */ lwz r0, 0(r26)
/* 8015FF24 0015CE64  7C 18 00 00 */ cmpw r24, r0
/* 8015FF28 0015CE68  40 80 01 48 */ bge lbl_80160070
/* 8015FF2C 0015CE6C  38 80 00 FF */ li r4, 0xff
/* 8015FF30 0015CE70  90 9B 00 2C */ stw r4, 0x2c(r27)
/* 8015FF34 0015CE74  90 9B 00 30 */ stw r4, 0x30(r27)
/* 8015FF38 0015CE78  38 00 00 00 */ li r0, 0
/* 8015FF3C 0015CE7C  98 1B 00 3A */ stb r0, 0x3a(r27)
/* 8015FF40 0015CE80  90 1B 00 34 */ stw r0, 0x34(r27)
/* 8015FF44 0015CE84  98 9B 00 3B */ stb r4, 0x3b(r27)
/* 8015FF48 0015CE88  B0 9B 00 38 */ sth r4, 0x38(r27)
/* 8015FF4C 0015CE8C  93 1B 00 30 */ stw r24, 0x30(r27)
/* 8015FF50 0015CE90  80 9A 00 04 */ lwz r4, 4(r26)
/* 8015FF54 0015CE94  80 1B 00 30 */ lwz r0, 0x30(r27)
/* 8015FF58 0015CE98  1C 00 00 18 */ mulli r0, r0, 0x18
/* 8015FF5C 0015CE9C  7C A4 02 14 */ add r5, r4, r0
/* 8015FF60 0015CEA0  80 85 00 00 */ lwz r4, 0(r5)
/* 8015FF64 0015CEA4  80 05 00 04 */ lwz r0, 4(r5)
/* 8015FF68 0015CEA8  90 9B 00 00 */ stw r4, 0(r27)
/* 8015FF6C 0015CEAC  90 1B 00 04 */ stw r0, 4(r27)
/* 8015FF70 0015CEB0  80 85 00 08 */ lwz r4, 8(r5)
/* 8015FF74 0015CEB4  80 05 00 0C */ lwz r0, 0xc(r5)
/* 8015FF78 0015CEB8  90 9B 00 08 */ stw r4, 8(r27)
/* 8015FF7C 0015CEBC  90 1B 00 0C */ stw r0, 0xc(r27)
/* 8015FF80 0015CEC0  88 05 00 10 */ lbz r0, 0x10(r5)
/* 8015FF84 0015CEC4  98 1B 00 10 */ stb r0, 0x10(r27)
/* 8015FF88 0015CEC8  88 05 00 11 */ lbz r0, 0x11(r5)
/* 8015FF8C 0015CECC  98 1B 00 11 */ stb r0, 0x11(r27)
/* 8015FF90 0015CED0  88 05 00 12 */ lbz r0, 0x12(r5)
/* 8015FF94 0015CED4  98 1B 00 12 */ stb r0, 0x12(r27)
/* 8015FF98 0015CED8  88 05 00 13 */ lbz r0, 0x13(r5)
/* 8015FF9C 0015CEDC  98 1B 00 13 */ stb r0, 0x13(r27)
/* 8015FFA0 0015CEE0  A0 05 00 14 */ lhz r0, 0x14(r5)
/* 8015FFA4 0015CEE4  B0 1B 00 14 */ sth r0, 0x14(r27)
/* 8015FFA8 0015CEE8  A0 05 00 16 */ lhz r0, 0x16(r5)
/* 8015FFAC 0015CEEC  B0 1B 00 16 */ sth r0, 0x16(r27)
/* 8015FFB0 0015CEF0  A0 1B 00 14 */ lhz r0, 0x14(r27)
/* 8015FFB4 0015CEF4  54 00 97 BE */ rlwinm r0, r0, 0x12, 0x1e, 0x1f
/* 8015FFB8 0015CEF8  98 1B 00 3A */ stb r0, 0x3a(r27)
/* 8015FFBC 0015CEFC  57 E0 04 21 */ rlwinm. r0, r31, 0, 0x10, 0x10
/* 8015FFC0 0015CF00  41 82 00 10 */ beq lbl_8015FFD0
/* 8015FFC4 0015CF04  88 1B 00 3A */ lbz r0, 0x3a(r27)
/* 8015FFC8 0015CF08  60 00 00 10 */ ori r0, r0, 0x10
/* 8015FFCC 0015CF0C  98 1B 00 3A */ stb r0, 0x3a(r27)
lbl_8015FFD0:
/* 8015FFD0 0015CF10  A0 9B 00 14 */ lhz r4, 0x14(r27)
/* 8015FFD4 0015CF14  54 80 04 A5 */ rlwinm. r0, r4, 0, 0x12, 0x12
/* 8015FFD8 0015CF18  41 82 00 10 */ beq lbl_8015FFE8
/* 8015FFDC 0015CF1C  60 80 C0 00 */ ori r0, r4, 0xc000
/* 8015FFE0 0015CF20  B0 1B 00 14 */ sth r0, 0x14(r27)
/* 8015FFE4 0015CF24  48 00 00 0C */ b lbl_8015FFF0
lbl_8015FFE8:
/* 8015FFE8 0015CF28  54 80 04 BE */ clrlwi r0, r4, 0x12
/* 8015FFEC 0015CF2C  B0 1B 00 14 */ sth r0, 0x14(r27)
lbl_8015FFF0:
/* 8015FFF0 0015CF30  88 1B 00 10 */ lbz r0, 0x10(r27)
/* 8015FFF4 0015CF34  90 1B 00 2C */ stw r0, 0x2c(r27)
/* 8015FFF8 0015CF38  28 03 00 00 */ cmplwi r3, 0
/* 8015FFFC 0015CF3C  41 82 00 60 */ beq lbl_8016005C
/* 80160000 0015CF40  80 9B 00 2C */ lwz r4, 0x2c(r27)
/* 80160004 0015CF44  2C 04 00 00 */ cmpwi r4, 0
/* 80160008 0015CF48  41 80 00 54 */ blt lbl_8016005C
/* 8016000C 0015CF4C  80 03 00 00 */ lwz r0, 0(r3)
/* 80160010 0015CF50  7C 04 00 00 */ cmpw r4, r0
/* 80160014 0015CF54  40 80 00 48 */ bge lbl_8016005C
/* 80160018 0015CF58  80 63 00 04 */ lwz r3, 4(r3)
/* 8016001C 0015CF5C  1C 04 00 14 */ mulli r0, r4, 0x14
/* 80160020 0015CF60  7C 63 02 14 */ add r3, r3, r0
/* 80160024 0015CF64  C0 03 00 00 */ lfs f0, 0(r3)
/* 80160028 0015CF68  D0 1B 00 18 */ stfs f0, 0x18(r27)
/* 8016002C 0015CF6C  C0 03 00 04 */ lfs f0, 4(r3)
/* 80160030 0015CF70  D0 1B 00 1C */ stfs f0, 0x1c(r27)
/* 80160034 0015CF74  C0 03 00 08 */ lfs f0, 8(r3)
/* 80160038 0015CF78  D0 1B 00 20 */ stfs f0, 0x20(r27)
/* 8016003C 0015CF7C  A8 03 00 0C */ lha r0, 0xc(r3)
/* 80160040 0015CF80  B0 1B 00 24 */ sth r0, 0x24(r27)
/* 80160044 0015CF84  A8 03 00 0E */ lha r0, 0xe(r3)
/* 80160048 0015CF88  B0 1B 00 26 */ sth r0, 0x26(r27)
/* 8016004C 0015CF8C  A8 03 00 10 */ lha r0, 0x10(r3)
/* 80160050 0015CF90  B0 1B 00 28 */ sth r0, 0x28(r27)
/* 80160054 0015CF94  A8 03 00 12 */ lha r0, 0x12(r3)
/* 80160058 0015CF98  B0 1B 00 2A */ sth r0, 0x2a(r27)
lbl_8016005C:
/* 8016005C 0015CF9C  93 9B 00 34 */ stw r28, 0x34(r27)
/* 80160060 0015CFA0  9B BB 00 3B */ stb r29, 0x3b(r27)
/* 80160064 0015CFA4  B3 DB 00 38 */ sth r30, 0x38(r27)
/* 80160068 0015CFA8  38 60 00 01 */ li r3, 1
/* 8016006C 0015CFAC  48 00 00 08 */ b lbl_80160074
lbl_80160070:
/* 80160070 0015CFB0  38 60 00 00 */ li r3, 0
lbl_80160074:
/* 80160074 0015CFB4  39 61 00 30 */ addi r11, r1, 0x30
/* 80160078 0015CFB8  48 20 21 9D */ bl _restgpr_24
/* 8016007C 0015CFBC  80 01 00 34 */ lwz r0, 0x34(r1)
/* 80160080 0015CFC0  7C 08 03 A6 */ mtlr r0
/* 80160084 0015CFC4  38 21 00 30 */ addi r1, r1, 0x30
/* 80160088 0015CFC8  4E 80 00 20 */ blr
