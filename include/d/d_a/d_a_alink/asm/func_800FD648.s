/* 800FD648 000FA588  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800FD64C 000FA58C  7C 08 02 A6 */ mflr r0
/* 800FD650 000FA590  90 01 00 14 */ stw r0, 0x14(r1)
/* 800FD654 000FA594  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800FD658 000FA598  7C 7F 1B 78 */ mr r31, r3
/* 800FD65C 000FA59C  A0 03 2F DC */ lhz r0, 0x2fdc(r3)
/* 800FD660 000FA5A0  28 00 00 FF */ cmplwi r0, 0xff
/* 800FD664 000FA5A4  41 82 00 14 */ beq lbl_800FD678
/* 800FD668 000FA5A8  38 80 00 67 */ li r4, 0x67
/* 800FD66C 000FA5AC  38 A0 00 00 */ li r5, 0
/* 800FD670 000FA5B0  4B FC 57 6D */ bl daAlink_c_NS_procPreActionUnequipInit
/* 800FD674 000FA5B4  48 00 01 28 */ b lbl_800FD79C
lbl_800FD678:
/* 800FD678 000FA5B8  38 80 00 67 */ li r4, 0x67
/* 800FD67C 000FA5BC  4B FC 48 F1 */ bl daAlink_c_NS_commonProcInit
/* 800FD680 000FA5C0  7F E3 FB 78 */ mr r3, r31
/* 800FD684 000FA5C4  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800FD688 000FA5C8  C0 5F 05 34 */ lfs f2, 0x534(r31)
/* 800FD68C 000FA5CC  38 80 00 00 */ li r4, 0
/* 800FD690 000FA5D0  4B FB E0 E1 */ bl setSpecialGravity__9daAlink_cFffi
/* 800FD694 000FA5D4  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 800FD698 000FA5D8  D0 1F 04 FC */ stfs f0, 0x4fc(r31)
/* 800FD69C 000FA5DC  D0 1F 33 98 */ stfs f0, 0x3398(r31)
/* 800FD6A0 000FA5E0  D0 1F 05 2C */ stfs f0, 0x52c(r31)
/* 800FD6A4 000FA5E4  7F E3 FB 78 */ mr r3, r31
/* 800FD6A8 000FA5E8  38 80 00 99 */ li r4, 0x99
/* 800FD6AC 000FA5EC  3C A0 80 39 */ lis r5, lbl_8038EB8C@ha
/* 800FD6B0 000FA5F0  38 A5 EB 8C */ addi r5, r5, lbl_8038EB8C@l
/* 800FD6B4 000FA5F4  C0 25 00 28 */ lfs f1, 0x28(r5)
/* 800FD6B8 000FA5F8  C0 45 00 2C */ lfs f2, 0x2c(r5)
/* 800FD6BC 000FA5FC  4B FA F9 25 */ bl daAlink_c_NS_setSingleAnimeBaseSpeed
/* 800FD6C0 000FA600  38 00 00 10 */ li r0, 0x10
/* 800FD6C4 000FA604  98 1F 2F 99 */ stb r0, 0x2f99(r31)
/* 800FD6C8 000FA608  3C 60 80 42 */ lis r3, lbl_80425514@ha
/* 800FD6CC 000FA60C  C4 03 55 14 */ lfsu f0, lbl_80425514@l(r3)
/* 800FD6D0 000FA610  D0 1F 35 88 */ stfs f0, 0x3588(r31)
/* 800FD6D4 000FA614  C0 03 00 04 */ lfs f0, 4(r3)
/* 800FD6D8 000FA618  D0 1F 35 8C */ stfs f0, 0x358c(r31)
/* 800FD6DC 000FA61C  C0 03 00 08 */ lfs f0, 8(r3)
/* 800FD6E0 000FA620  D0 1F 35 90 */ stfs f0, 0x3590(r31)
/* 800FD6E4 000FA624  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 800FD6E8 000FA628  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 800FD6EC 000FA62C  80 03 5F 18 */ lwz r0, 0x5f18(r3)
/* 800FD6F0 000FA630  64 00 02 00 */ oris r0, r0, 0x200
/* 800FD6F4 000FA634  90 03 5F 18 */ stw r0, 0x5f18(r3)
/* 800FD6F8 000FA638  A8 1F 30 6E */ lha r0, 0x306e(r31)
/* 800FD6FC 000FA63C  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FD700 000FA640  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 800FD704 000FA644  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 800FD708 000FA648  7C 63 04 2E */ lfsx f3, r3, r0
/* 800FD70C 000FA64C  7C 63 02 14 */ add r3, r3, r0
/* 800FD710 000FA650  C0 83 00 04 */ lfs f4, 4(r3)
/* 800FD714 000FA654  C0 3F 34 EC */ lfs f1, 0x34ec(r31)
/* 800FD718 000FA658  C0 42 93 D4 */ lfs f2, lbl_80452DD4-_SDA2_BASE_(r2)
/* 800FD71C 000FA65C  EC 02 00 F2 */ fmuls f0, f2, f3
/* 800FD720 000FA660  EC 01 00 2A */ fadds f0, f1, f0
/* 800FD724 000FA664  D0 1F 04 D0 */ stfs f0, 0x4d0(r31)
/* 800FD728 000FA668  C0 1F 34 F0 */ lfs f0, 0x34f0(r31)
/* 800FD72C 000FA66C  D0 1F 04 D4 */ stfs f0, 0x4d4(r31)
/* 800FD730 000FA670  C0 3F 34 F4 */ lfs f1, 0x34f4(r31)
/* 800FD734 000FA674  EC 02 01 32 */ fmuls f0, f2, f4
/* 800FD738 000FA678  EC 01 00 2A */ fadds f0, f1, f0
/* 800FD73C 000FA67C  D0 1F 04 D8 */ stfs f0, 0x4d8(r31)
/* 800FD740 000FA680  A8 7F 30 6E */ lha r3, 0x306e(r31)
/* 800FD744 000FA684  3C 63 00 01 */ addis r3, r3, 1
/* 800FD748 000FA688  38 03 80 00 */ addi r0, r3, -32768
/* 800FD74C 000FA68C  B0 1F 04 E6 */ sth r0, 0x4e6(r31)
/* 800FD750 000FA690  A8 1F 04 E6 */ lha r0, 0x4e6(r31)
/* 800FD754 000FA694  B0 1F 04 DE */ sth r0, 0x4de(r31)
/* 800FD758 000FA698  C0 3F 34 EC */ lfs f1, 0x34ec(r31)
/* 800FD75C 000FA69C  C0 42 93 94 */ lfs f2, lbl_80452D94-_SDA2_BASE_(r2)
/* 800FD760 000FA6A0  EC 02 00 F2 */ fmuls f0, f2, f3
/* 800FD764 000FA6A4  EC 01 00 2A */ fadds f0, f1, f0
/* 800FD768 000FA6A8  D0 1F 37 C8 */ stfs f0, 0x37c8(r31)
/* 800FD76C 000FA6AC  C0 22 94 28 */ lfs f1, lbl_80452E28-_SDA2_BASE_(r2)
/* 800FD770 000FA6B0  C0 1F 34 F0 */ lfs f0, 0x34f0(r31)
/* 800FD774 000FA6B4  EC 01 00 2A */ fadds f0, f1, f0
/* 800FD778 000FA6B8  D0 1F 37 CC */ stfs f0, 0x37cc(r31)
/* 800FD77C 000FA6BC  C0 3F 34 F4 */ lfs f1, 0x34f4(r31)
/* 800FD780 000FA6C0  EC 02 01 32 */ fmuls f0, f2, f4
/* 800FD784 000FA6C4  EC 01 00 2A */ fadds f0, f1, f0
/* 800FD788 000FA6C8  D0 1F 37 D0 */ stfs f0, 0x37d0(r31)
/* 800FD78C 000FA6CC  38 00 00 01 */ li r0, 1
/* 800FD790 000FA6D0  B0 1F 30 0C */ sth r0, 0x300c(r31)
/* 800FD794 000FA6D4  B0 1F 30 10 */ sth r0, 0x3010(r31)
/* 800FD798 000FA6D8  38 60 00 01 */ li r3, 1
lbl_800FD79C:
/* 800FD79C 000FA6DC  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800FD7A0 000FA6E0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800FD7A4 000FA6E4  7C 08 03 A6 */ mtlr r0
/* 800FD7A8 000FA6E8  38 21 00 10 */ addi r1, r1, 0x10
/* 800FD7AC 000FA6EC  4E 80 00 20 */ blr