/* 8001F6B8 0001C5F8  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 8001F6BC 0001C5FC  7C 08 02 A6 */ mflr r0
/* 8001F6C0 0001C600  90 01 00 24 */ stw r0, 0x24(r1)
/* 8001F6C4 0001C604  39 61 00 20 */ addi r11, r1, 0x20
/* 8001F6C8 0001C608  48 34 2B 15 */ bl _savegpr_29
/* 8001F6CC 0001C60C  7C 7D 1B 78 */ mr r29, r3
/* 8001F6D0 0001C610  7C 9E 23 78 */ mr r30, r4
/* 8001F6D4 0001C614  7C BF 2B 78 */ mr r31, r5
/* 8001F6D8 0001C618  4B FF FF 89 */ bl fopKyM_CreateAppend
/* 8001F6DC 0001C61C  28 03 00 00 */ cmplwi r3, 0
/* 8001F6E0 0001C620  40 82 00 0C */ bne lbl_8001F6EC
/* 8001F6E4 0001C624  38 60 00 00 */ li r3, 0
/* 8001F6E8 0001C628  48 00 00 48 */ b lbl_8001F730
lbl_8001F6EC:
/* 8001F6EC 0001C62C  28 1E 00 00 */ cmplwi r30, 0
/* 8001F6F0 0001C630  41 82 00 1C */ beq lbl_8001F70C
/* 8001F6F4 0001C634  C0 1E 00 00 */ lfs f0, 0(r30)
/* 8001F6F8 0001C638  D0 03 00 00 */ stfs f0, 0(r3)
/* 8001F6FC 0001C63C  C0 1E 00 04 */ lfs f0, 4(r30)
/* 8001F700 0001C640  D0 03 00 04 */ stfs f0, 4(r3)
/* 8001F704 0001C644  C0 1E 00 08 */ lfs f0, 8(r30)
/* 8001F708 0001C648  D0 03 00 08 */ stfs f0, 8(r3)
lbl_8001F70C:
/* 8001F70C 0001C64C  28 1F 00 00 */ cmplwi r31, 0
/* 8001F710 0001C650  41 82 00 1C */ beq lbl_8001F72C
/* 8001F714 0001C654  C0 1F 00 00 */ lfs f0, 0(r31)
/* 8001F718 0001C658  D0 03 00 0C */ stfs f0, 0xc(r3)
/* 8001F71C 0001C65C  C0 1F 00 04 */ lfs f0, 4(r31)
/* 8001F720 0001C660  D0 03 00 10 */ stfs f0, 0x10(r3)
/* 8001F724 0001C664  C0 1F 00 08 */ lfs f0, 8(r31)
/* 8001F728 0001C668  D0 03 00 14 */ stfs f0, 0x14(r3)
lbl_8001F72C:
/* 8001F72C 0001C66C  93 A3 00 18 */ stw r29, 0x18(r3)
lbl_8001F730:
/* 8001F730 0001C670  39 61 00 20 */ addi r11, r1, 0x20
/* 8001F734 0001C674  48 34 2A F5 */ bl _restgpr_29
/* 8001F738 0001C678  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8001F73C 0001C67C  7C 08 03 A6 */ mtlr r0
/* 8001F740 0001C680  38 21 00 20 */ addi r1, r1, 0x20
/* 8001F744 0001C684  4E 80 00 20 */ blr