/* 80264644 00261584  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80264648 00261588  7C 08 02 A6 */ mflr r0
/* 8026464C 0026158C  90 01 00 14 */ stw r0, 0x14(r1)
/* 80264650 00261590  28 04 00 00 */ cmplwi r4, 0
/* 80264654 00261594  41 82 00 08 */ beq lbl_8026465C
/* 80264658 00261598  38 84 00 20 */ addi r4, r4, 0x20
lbl_8026465C:
/* 8026465C 0026159C  38 63 00 20 */ addi r3, r3, 0x20
/* 80264660 002615A0  48 00 76 1D */ bl cM3d_Cross_SphSph__FPC8cM3dGSphPC8cM3dGSphPf
/* 80264664 002615A4  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80264668 002615A8  41 82 00 0C */ beq lbl_80264674
/* 8026466C 002615AC  38 60 00 01 */ li r3, 1
/* 80264670 002615B0  48 00 00 08 */ b lbl_80264678
lbl_80264674:
/* 80264674 002615B4  38 60 00 00 */ li r3, 0
lbl_80264678:
/* 80264678 002615B8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8026467C 002615BC  7C 08 03 A6 */ mtlr r0
/* 80264680 002615C0  38 21 00 10 */ addi r1, r1, 0x10
/* 80264684 002615C4  4E 80 00 20 */ blr