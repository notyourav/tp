/* 8026EDE4 0026BD24  C0 03 00 0C */ lfs f0, 0xc(r3)
/* 8026EDE8 0026BD28  C0 24 00 00 */ lfs f1, 0(r4)
/* 8026EDEC 0026BD2C  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 8026EDF0 0026BD30  40 80 00 08 */ bge lbl_8026EDF8
/* 8026EDF4 0026BD34  D0 23 00 0C */ stfs f1, 0xc(r3)
lbl_8026EDF8:
/* 8026EDF8 0026BD38  C0 03 00 10 */ lfs f0, 0x10(r3)
/* 8026EDFC 0026BD3C  C0 24 00 04 */ lfs f1, 4(r4)
/* 8026EE00 0026BD40  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 8026EE04 0026BD44  40 80 00 08 */ bge lbl_8026EE0C
/* 8026EE08 0026BD48  D0 23 00 10 */ stfs f1, 0x10(r3)
lbl_8026EE0C:
/* 8026EE0C 0026BD4C  C0 03 00 14 */ lfs f0, 0x14(r3)
/* 8026EE10 0026BD50  C0 24 00 08 */ lfs f1, 8(r4)
/* 8026EE14 0026BD54  FC 00 08 40 */ fcmpo cr0, f0, f1
/* 8026EE18 0026BD58  4C 80 00 20 */ bgelr
/* 8026EE1C 0026BD5C  D0 23 00 14 */ stfs f1, 0x14(r3)
/* 8026EE20 0026BD60  4E 80 00 20 */ blr
