/* 8026EFA4 0026BEE4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8026EFA8 0026BEE8  7C 08 02 A6 */ mflr r0
/* 8026EFAC 0026BEEC  90 01 00 14 */ stw r0, 0x14(r1)
/* 8026EFB0 0026BEF0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8026EFB4 0026BEF4  7C 7F 1B 79 */ or. r31, r3, r3
/* 8026EFB8 0026BEF8  41 82 00 30 */ beq lbl_8026EFE8
/* 8026EFBC 0026BEFC  3C 60 80 3C */ lis r3, lbl_803C3FF8@ha
/* 8026EFC0 0026BF00  38 03 3F F8 */ addi r0, r3, lbl_803C3FF8@l
/* 8026EFC4 0026BF04  90 1F 00 18 */ stw r0, 0x18(r31)
/* 8026EFC8 0026BF08  41 82 00 10 */ beq lbl_8026EFD8
/* 8026EFCC 0026BF0C  3C 60 80 3A */ lis r3, lbl_803A78F8@ha
/* 8026EFD0 0026BF10  38 03 78 F8 */ addi r0, r3, lbl_803A78F8@l
/* 8026EFD4 0026BF14  90 1F 00 18 */ stw r0, 0x18(r31)
lbl_8026EFD8:
/* 8026EFD8 0026BF18  7C 80 07 35 */ extsh. r0, r4
/* 8026EFDC 0026BF1C  40 81 00 0C */ ble lbl_8026EFE8
/* 8026EFE0 0026BF20  7F E3 FB 78 */ mr r3, r31
/* 8026EFE4 0026BF24  48 05 FD 59 */ bl __dl__FPv
lbl_8026EFE8:
/* 8026EFE8 0026BF28  7F E3 FB 78 */ mr r3, r31
/* 8026EFEC 0026BF2C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8026EFF0 0026BF30  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8026EFF4 0026BF34  7C 08 03 A6 */ mtlr r0
/* 8026EFF8 0026BF38  38 21 00 10 */ addi r1, r1, 0x10
/* 8026EFFC 0026BF3C  4E 80 00 20 */ blr
