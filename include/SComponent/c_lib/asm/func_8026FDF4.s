/* 8026FDF4 0026CD34  94 21 FF 60 */ stwu r1, -0xa0(r1)
/* 8026FDF8 0026CD38  7C 08 02 A6 */ mflr r0
/* 8026FDFC 0026CD3C  90 01 00 A4 */ stw r0, 0xa4(r1)
/* 8026FE00 0026CD40  DB E1 00 90 */ stfd f31, 0x90(r1)
/* 8026FE04 0026CD44  F3 E1 00 98 */ psq_st f31, 152(r1), 0, 0
/* 8026FE08 0026CD48  DB C1 00 80 */ stfd f30, 0x80(r1)
/* 8026FE0C 0026CD4C  F3 C1 00 88 */ psq_st f30, 136(r1), 0, 0
/* 8026FE10 0026CD50  DB A1 00 70 */ stfd f29, 0x70(r1)
/* 8026FE14 0026CD54  F3 A1 00 78 */ psq_st f29, 120(r1), 0, 0
/* 8026FE18 0026CD58  DB 81 00 60 */ stfd f28, 0x60(r1)
/* 8026FE1C 0026CD5C  F3 81 00 68 */ psq_st f28, 104(r1), 0, 0
/* 8026FE20 0026CD60  93 E1 00 5C */ stw r31, 0x5c(r1)
/* 8026FE24 0026CD64  93 C1 00 58 */ stw r30, 0x58(r1)
/* 8026FE28 0026CD68  7C 7E 1B 78 */ mr r30, r3
/* 8026FE2C 0026CD6C  7C 9F 23 78 */ mr r31, r4
/* 8026FE30 0026CD70  FF A0 08 90 */ fmr f29, f1
/* 8026FE34 0026CD74  FF C0 10 90 */ fmr f30, f2
/* 8026FE38 0026CD78  FF E0 18 90 */ fmr f31, f3
/* 8026FE3C 0026CD7C  C0 23 00 00 */ lfs f1, 0(r3)
/* 8026FE40 0026CD80  C0 04 00 00 */ lfs f0, 0(r4)
/* 8026FE44 0026CD84  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 8026FE48 0026CD88  40 82 00 14 */ bne lbl_8026FE5C
/* 8026FE4C 0026CD8C  C0 3E 00 08 */ lfs f1, 8(r30)
/* 8026FE50 0026CD90  C0 1F 00 08 */ lfs f0, 8(r31)
/* 8026FE54 0026CD94  FC 01 00 00 */ fcmpu cr0, f1, f0
/* 8026FE58 0026CD98  41 82 01 D4 */ beq lbl_8027002C
lbl_8026FE5C:
/* 8026FE5C 0026CD9C  38 61 00 34 */ addi r3, r1, 0x34
/* 8026FE60 0026CDA0  7F C4 F3 78 */ mr r4, r30
/* 8026FE64 0026CDA4  7F E5 FB 78 */ mr r5, r31
/* 8026FE68 0026CDA8  4B FF 6C CD */ bl __mi__4cXyzCFRC3Vec
/* 8026FE6C 0026CDAC  C0 41 00 34 */ lfs f2, 0x34(r1)
/* 8026FE70 0026CDB0  D0 41 00 40 */ stfs f2, 0x40(r1)
/* 8026FE74 0026CDB4  C0 01 00 38 */ lfs f0, 0x38(r1)
/* 8026FE78 0026CDB8  D0 01 00 44 */ stfs f0, 0x44(r1)
/* 8026FE7C 0026CDBC  C0 21 00 3C */ lfs f1, 0x3c(r1)
/* 8026FE80 0026CDC0  D0 21 00 48 */ stfs f1, 0x48(r1)
/* 8026FE84 0026CDC4  D0 41 00 1C */ stfs f2, 0x1c(r1)
/* 8026FE88 0026CDC8  C0 02 B7 E0 */ lfs f0, lbl_804551E0-_SDA2_BASE_(r2)
/* 8026FE8C 0026CDCC  D0 01 00 20 */ stfs f0, 0x20(r1)
/* 8026FE90 0026CDD0  D0 21 00 24 */ stfs f1, 0x24(r1)
/* 8026FE94 0026CDD4  38 61 00 1C */ addi r3, r1, 0x1c
/* 8026FE98 0026CDD8  48 0D 72 A1 */ bl PSVECSquareMag
/* 8026FE9C 0026CDDC  C0 02 B7 E0 */ lfs f0, lbl_804551E0-_SDA2_BASE_(r2)
/* 8026FEA0 0026CDE0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026FEA4 0026CDE4  40 81 00 58 */ ble lbl_8026FEFC
/* 8026FEA8 0026CDE8  FC 00 08 34 */ frsqrte f0, f1
/* 8026FEAC 0026CDEC  C8 82 B7 E8 */ lfd f4, lbl_804551E8-_SDA2_BASE_(r2)
/* 8026FEB0 0026CDF0  FC 44 00 32 */ fmul f2, f4, f0
/* 8026FEB4 0026CDF4  C8 62 B7 F0 */ lfd f3, lbl_804551F0-_SDA2_BASE_(r2)
/* 8026FEB8 0026CDF8  FC 00 00 32 */ fmul f0, f0, f0
/* 8026FEBC 0026CDFC  FC 01 00 32 */ fmul f0, f1, f0
/* 8026FEC0 0026CE00  FC 03 00 28 */ fsub f0, f3, f0
/* 8026FEC4 0026CE04  FC 02 00 32 */ fmul f0, f2, f0
/* 8026FEC8 0026CE08  FC 44 00 32 */ fmul f2, f4, f0
/* 8026FECC 0026CE0C  FC 00 00 32 */ fmul f0, f0, f0
/* 8026FED0 0026CE10  FC 01 00 32 */ fmul f0, f1, f0
/* 8026FED4 0026CE14  FC 03 00 28 */ fsub f0, f3, f0
/* 8026FED8 0026CE18  FC 02 00 32 */ fmul f0, f2, f0
/* 8026FEDC 0026CE1C  FC 44 00 32 */ fmul f2, f4, f0
/* 8026FEE0 0026CE20  FC 00 00 32 */ fmul f0, f0, f0
/* 8026FEE4 0026CE24  FC 01 00 32 */ fmul f0, f1, f0
/* 8026FEE8 0026CE28  FC 03 00 28 */ fsub f0, f3, f0
/* 8026FEEC 0026CE2C  FC 02 00 32 */ fmul f0, f2, f0
/* 8026FEF0 0026CE30  FC 21 00 32 */ fmul f1, f1, f0
/* 8026FEF4 0026CE34  FC 20 08 18 */ frsp f1, f1
/* 8026FEF8 0026CE38  48 00 00 88 */ b lbl_8026FF80
lbl_8026FEFC:
/* 8026FEFC 0026CE3C  C8 02 B7 F8 */ lfd f0, lbl_804551F8-_SDA2_BASE_(r2)
/* 8026FF00 0026CE40  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026FF04 0026CE44  40 80 00 10 */ bge lbl_8026FF14
/* 8026FF08 0026CE48  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8026FF0C 0026CE4C  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 8026FF10 0026CE50  48 00 00 70 */ b lbl_8026FF80
lbl_8026FF14:
/* 8026FF14 0026CE54  D0 21 00 0C */ stfs f1, 0xc(r1)
/* 8026FF18 0026CE58  80 81 00 0C */ lwz r4, 0xc(r1)
/* 8026FF1C 0026CE5C  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 8026FF20 0026CE60  3C 00 7F 80 */ lis r0, 0x7f80
/* 8026FF24 0026CE64  7C 03 00 00 */ cmpw r3, r0
/* 8026FF28 0026CE68  41 82 00 14 */ beq lbl_8026FF3C
/* 8026FF2C 0026CE6C  40 80 00 40 */ bge lbl_8026FF6C
/* 8026FF30 0026CE70  2C 03 00 00 */ cmpwi r3, 0
/* 8026FF34 0026CE74  41 82 00 20 */ beq lbl_8026FF54
/* 8026FF38 0026CE78  48 00 00 34 */ b lbl_8026FF6C
lbl_8026FF3C:
/* 8026FF3C 0026CE7C  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8026FF40 0026CE80  41 82 00 0C */ beq lbl_8026FF4C
/* 8026FF44 0026CE84  38 00 00 01 */ li r0, 1
/* 8026FF48 0026CE88  48 00 00 28 */ b lbl_8026FF70
lbl_8026FF4C:
/* 8026FF4C 0026CE8C  38 00 00 02 */ li r0, 2
/* 8026FF50 0026CE90  48 00 00 20 */ b lbl_8026FF70
lbl_8026FF54:
/* 8026FF54 0026CE94  54 80 02 7F */ clrlwi. r0, r4, 9
/* 8026FF58 0026CE98  41 82 00 0C */ beq lbl_8026FF64
/* 8026FF5C 0026CE9C  38 00 00 05 */ li r0, 5
/* 8026FF60 0026CEA0  48 00 00 10 */ b lbl_8026FF70
lbl_8026FF64:
/* 8026FF64 0026CEA4  38 00 00 03 */ li r0, 3
/* 8026FF68 0026CEA8  48 00 00 08 */ b lbl_8026FF70
lbl_8026FF6C:
/* 8026FF6C 0026CEAC  38 00 00 04 */ li r0, 4
lbl_8026FF70:
/* 8026FF70 0026CEB0  2C 00 00 01 */ cmpwi r0, 1
/* 8026FF74 0026CEB4  40 82 00 0C */ bne lbl_8026FF80
/* 8026FF78 0026CEB8  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8026FF7C 0026CEBC  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_8026FF80:
/* 8026FF80 0026CEC0  FC 01 F8 40 */ fcmpo cr0, f1, f31
/* 8026FF84 0026CEC4  40 80 00 18 */ bge lbl_8026FF9C
/* 8026FF88 0026CEC8  C0 1F 00 00 */ lfs f0, 0(r31)
/* 8026FF8C 0026CECC  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8026FF90 0026CED0  C0 1F 00 08 */ lfs f0, 8(r31)
/* 8026FF94 0026CED4  D0 1E 00 08 */ stfs f0, 8(r30)
/* 8026FF98 0026CED8  48 00 00 94 */ b lbl_8027002C
lbl_8026FF9C:
/* 8026FF9C 0026CEDC  EF 81 07 72 */ fmuls f28, f1, f29
/* 8026FFA0 0026CEE0  38 61 00 40 */ addi r3, r1, 0x40
/* 8026FFA4 0026CEE4  7C 64 1B 78 */ mr r4, r3
/* 8026FFA8 0026CEE8  FC 20 E8 90 */ fmr f1, f29
/* 8026FFAC 0026CEEC  48 0D 71 2D */ bl PSVECScale
/* 8026FFB0 0026CEF0  FC 00 E2 10 */ fabs f0, f28
/* 8026FFB4 0026CEF4  FC 20 00 18 */ frsp f1, f0
/* 8026FFB8 0026CEF8  C0 02 B8 00 */ lfs f0, lbl_80455200-_SDA2_BASE_(r2)
/* 8026FFBC 0026CEFC  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 8026FFC0 0026CF00  41 80 00 5C */ blt lbl_8027001C
/* 8026FFC4 0026CF04  FC 1C F0 40 */ fcmpo cr0, f28, f30
/* 8026FFC8 0026CF08  40 81 00 18 */ ble lbl_8026FFE0
/* 8026FFCC 0026CF0C  38 61 00 40 */ addi r3, r1, 0x40
/* 8026FFD0 0026CF10  7C 64 1B 78 */ mr r4, r3
/* 8026FFD4 0026CF14  EC 3E E0 24 */ fdivs f1, f30, f28
/* 8026FFD8 0026CF18  48 0D 71 01 */ bl PSVECScale
/* 8026FFDC 0026CF1C  48 00 00 1C */ b lbl_8026FFF8
lbl_8026FFE0:
/* 8026FFE0 0026CF20  FC 1C F8 40 */ fcmpo cr0, f28, f31
/* 8026FFE4 0026CF24  40 80 00 14 */ bge lbl_8026FFF8
/* 8026FFE8 0026CF28  38 61 00 40 */ addi r3, r1, 0x40
/* 8026FFEC 0026CF2C  7C 64 1B 78 */ mr r4, r3
/* 8026FFF0 0026CF30  EC 3F E0 24 */ fdivs f1, f31, f28
/* 8026FFF4 0026CF34  48 0D 70 E5 */ bl PSVECScale
lbl_8026FFF8:
/* 8026FFF8 0026CF38  C0 3E 00 00 */ lfs f1, 0(r30)
/* 8026FFFC 0026CF3C  C0 01 00 40 */ lfs f0, 0x40(r1)
/* 80270000 0026CF40  EC 01 00 28 */ fsubs f0, f1, f0
/* 80270004 0026CF44  D0 1E 00 00 */ stfs f0, 0(r30)
/* 80270008 0026CF48  C0 3E 00 08 */ lfs f1, 8(r30)
/* 8027000C 0026CF4C  C0 01 00 48 */ lfs f0, 0x48(r1)
/* 80270010 0026CF50  EC 01 00 28 */ fsubs f0, f1, f0
/* 80270014 0026CF54  D0 1E 00 08 */ stfs f0, 8(r30)
/* 80270018 0026CF58  48 00 00 14 */ b lbl_8027002C
lbl_8027001C:
/* 8027001C 0026CF5C  C0 1F 00 00 */ lfs f0, 0(r31)
/* 80270020 0026CF60  D0 1E 00 00 */ stfs f0, 0(r30)
/* 80270024 0026CF64  C0 1F 00 08 */ lfs f0, 8(r31)
/* 80270028 0026CF68  D0 1E 00 08 */ stfs f0, 8(r30)
lbl_8027002C:
/* 8027002C 0026CF6C  38 61 00 28 */ addi r3, r1, 0x28
/* 80270030 0026CF70  7F C4 F3 78 */ mr r4, r30
/* 80270034 0026CF74  7F E5 FB 78 */ mr r5, r31
/* 80270038 0026CF78  4B FF 6A FD */ bl __mi__4cXyzCFRC3Vec
/* 8027003C 0026CF7C  C0 01 00 28 */ lfs f0, 0x28(r1)
/* 80270040 0026CF80  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 80270044 0026CF84  C0 02 B7 E0 */ lfs f0, lbl_804551E0-_SDA2_BASE_(r2)
/* 80270048 0026CF88  D0 01 00 14 */ stfs f0, 0x14(r1)
/* 8027004C 0026CF8C  C0 01 00 30 */ lfs f0, 0x30(r1)
/* 80270050 0026CF90  D0 01 00 18 */ stfs f0, 0x18(r1)
/* 80270054 0026CF94  38 61 00 10 */ addi r3, r1, 0x10
/* 80270058 0026CF98  48 0D 70 E1 */ bl PSVECSquareMag
/* 8027005C 0026CF9C  C0 02 B7 E0 */ lfs f0, lbl_804551E0-_SDA2_BASE_(r2)
/* 80270060 0026CFA0  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80270064 0026CFA4  40 81 00 58 */ ble lbl_802700BC
/* 80270068 0026CFA8  FC 00 08 34 */ frsqrte f0, f1
/* 8027006C 0026CFAC  C8 82 B7 E8 */ lfd f4, lbl_804551E8-_SDA2_BASE_(r2)
/* 80270070 0026CFB0  FC 44 00 32 */ fmul f2, f4, f0
/* 80270074 0026CFB4  C8 62 B7 F0 */ lfd f3, lbl_804551F0-_SDA2_BASE_(r2)
/* 80270078 0026CFB8  FC 00 00 32 */ fmul f0, f0, f0
/* 8027007C 0026CFBC  FC 01 00 32 */ fmul f0, f1, f0
/* 80270080 0026CFC0  FC 03 00 28 */ fsub f0, f3, f0
/* 80270084 0026CFC4  FC 02 00 32 */ fmul f0, f2, f0
/* 80270088 0026CFC8  FC 44 00 32 */ fmul f2, f4, f0
/* 8027008C 0026CFCC  FC 00 00 32 */ fmul f0, f0, f0
/* 80270090 0026CFD0  FC 01 00 32 */ fmul f0, f1, f0
/* 80270094 0026CFD4  FC 03 00 28 */ fsub f0, f3, f0
/* 80270098 0026CFD8  FC 02 00 32 */ fmul f0, f2, f0
/* 8027009C 0026CFDC  FC 44 00 32 */ fmul f2, f4, f0
/* 802700A0 0026CFE0  FC 00 00 32 */ fmul f0, f0, f0
/* 802700A4 0026CFE4  FC 01 00 32 */ fmul f0, f1, f0
/* 802700A8 0026CFE8  FC 03 00 28 */ fsub f0, f3, f0
/* 802700AC 0026CFEC  FC 02 00 32 */ fmul f0, f2, f0
/* 802700B0 0026CFF0  FC 21 00 32 */ fmul f1, f1, f0
/* 802700B4 0026CFF4  FC 20 08 18 */ frsp f1, f1
/* 802700B8 0026CFF8  48 00 00 88 */ b lbl_80270140
lbl_802700BC:
/* 802700BC 0026CFFC  C8 02 B7 F8 */ lfd f0, lbl_804551F8-_SDA2_BASE_(r2)
/* 802700C0 0026D000  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 802700C4 0026D004  40 80 00 10 */ bge lbl_802700D4
/* 802700C8 0026D008  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 802700CC 0026D00C  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 802700D0 0026D010  48 00 00 70 */ b lbl_80270140
lbl_802700D4:
/* 802700D4 0026D014  D0 21 00 08 */ stfs f1, 8(r1)
/* 802700D8 0026D018  80 81 00 08 */ lwz r4, 8(r1)
/* 802700DC 0026D01C  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 802700E0 0026D020  3C 00 7F 80 */ lis r0, 0x7f80
/* 802700E4 0026D024  7C 03 00 00 */ cmpw r3, r0
/* 802700E8 0026D028  41 82 00 14 */ beq lbl_802700FC
/* 802700EC 0026D02C  40 80 00 40 */ bge lbl_8027012C
/* 802700F0 0026D030  2C 03 00 00 */ cmpwi r3, 0
/* 802700F4 0026D034  41 82 00 20 */ beq lbl_80270114
/* 802700F8 0026D038  48 00 00 34 */ b lbl_8027012C
lbl_802700FC:
/* 802700FC 0026D03C  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80270100 0026D040  41 82 00 0C */ beq lbl_8027010C
/* 80270104 0026D044  38 00 00 01 */ li r0, 1
/* 80270108 0026D048  48 00 00 28 */ b lbl_80270130
lbl_8027010C:
/* 8027010C 0026D04C  38 00 00 02 */ li r0, 2
/* 80270110 0026D050  48 00 00 20 */ b lbl_80270130
lbl_80270114:
/* 80270114 0026D054  54 80 02 7F */ clrlwi. r0, r4, 9
/* 80270118 0026D058  41 82 00 0C */ beq lbl_80270124
/* 8027011C 0026D05C  38 00 00 05 */ li r0, 5
/* 80270120 0026D060  48 00 00 10 */ b lbl_80270130
lbl_80270124:
/* 80270124 0026D064  38 00 00 03 */ li r0, 3
/* 80270128 0026D068  48 00 00 08 */ b lbl_80270130
lbl_8027012C:
/* 8027012C 0026D06C  38 00 00 04 */ li r0, 4
lbl_80270130:
/* 80270130 0026D070  2C 00 00 01 */ cmpwi r0, 1
/* 80270134 0026D074  40 82 00 0C */ bne lbl_80270140
/* 80270138 0026D078  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 8027013C 0026D07C  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_80270140:
/* 80270140 0026D080  E3 E1 00 98 */ psq_l f31, 152(r1), 0, 0
/* 80270144 0026D084  CB E1 00 90 */ lfd f31, 0x90(r1)
/* 80270148 0026D088  E3 C1 00 88 */ psq_l f30, 136(r1), 0, 0
/* 8027014C 0026D08C  CB C1 00 80 */ lfd f30, 0x80(r1)
/* 80270150 0026D090  E3 A1 00 78 */ psq_l f29, 120(r1), 0, 0
/* 80270154 0026D094  CB A1 00 70 */ lfd f29, 0x70(r1)
/* 80270158 0026D098  E3 81 00 68 */ psq_l f28, 104(r1), 0, 0
/* 8027015C 0026D09C  CB 81 00 60 */ lfd f28, 0x60(r1)
/* 80270160 0026D0A0  83 E1 00 5C */ lwz r31, 0x5c(r1)
/* 80270164 0026D0A4  83 C1 00 58 */ lwz r30, 0x58(r1)
/* 80270168 0026D0A8  80 01 00 A4 */ lwz r0, 0xa4(r1)
/* 8027016C 0026D0AC  7C 08 03 A6 */ mtlr r0
/* 80270170 0026D0B0  38 21 00 A0 */ addi r1, r1, 0xa0
/* 80270174 0026D0B4  4E 80 00 20 */ blr
