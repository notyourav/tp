/* 800BF79C 000BC6DC  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 800BF7A0 000BC6E0  7C 08 02 A6 */ mflr r0
/* 800BF7A4 000BC6E4  90 01 00 24 */ stw r0, 0x24(r1)
/* 800BF7A8 000BC6E8  39 61 00 20 */ addi r11, r1, 0x20
/* 800BF7AC 000BC6EC  48 2A 2A 31 */ bl _savegpr_29
/* 800BF7B0 000BC6F0  7C 7D 1B 78 */ mr r29, r3
/* 800BF7B4 000BC6F4  38 7D 21 D8 */ addi r3, r29, 0x21d8
/* 800BF7B8 000BC6F8  20 04 00 00 */ subfic r0, r4, 0
/* 800BF7BC 000BC6FC  7C 80 01 10 */ subfe r4, r0, r0
/* 800BF7C0 000BC700  38 84 02 7D */ addi r4, r4, 0x27d
/* 800BF7C4 000BC704  48 09 F8 A5 */ bl daPy_anmHeap_c_NS_loadDataIdx
/* 800BF7C8 000BC708  7C 7F 1B 78 */ mr r31, r3
/* 800BF7CC 000BC70C  7F A3 EB 78 */ mr r3, r29
/* 800BF7D0 000BC710  4B FE 44 BD */ bl daAlink_c_NS_setItemHeap
/* 800BF7D4 000BC714  7C 7E 1B 78 */ mr r30, r3
/* 800BF7D8 000BC718  7F A3 EB 78 */ mr r3, r29
/* 800BF7DC 000BC71C  38 80 03 1B */ li r4, 0x31b
/* 800BF7E0 000BC720  38 A0 60 00 */ li r5, 0x6000
/* 800BF7E4 000BC724  48 00 06 65 */ bl daAlink_c_NS_loadAramBmd
/* 800BF7E8 000BC728  7C 64 1B 78 */ mr r4, r3
/* 800BF7EC 000BC72C  7F A3 EB 78 */ mr r3, r29
/* 800BF7F0 000BC730  3C A0 00 08 */ lis r5, 8
/* 800BF7F4 000BC734  38 C0 00 00 */ li r6, 0
/* 800BF7F8 000BC738  4B FE 45 85 */ bl daAlink_c_NS_initModel
/* 800BF7FC 000BC73C  90 7D 07 08 */ stw r3, 0x708(r29)
/* 800BF800 000BC740  38 7D 07 30 */ addi r3, r29, 0x730
/* 800BF804 000BC744  7F E4 FB 78 */ mr r4, r31
/* 800BF808 000BC748  38 A0 00 00 */ li r5, 0
/* 800BF80C 000BC74C  38 C0 00 02 */ li r6, 2
/* 800BF810 000BC750  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 800BF814 000BC754  38 E0 00 00 */ li r7, 0
/* 800BF818 000BC758  39 00 FF FF */ li r8, -1
/* 800BF81C 000BC75C  39 20 00 00 */ li r9, 0
/* 800BF820 000BC760  4B F4 DF BD */ bl mDoExt_bckAnm_NS_init
/* 800BF824 000BC764  7F C3 F3 78 */ mr r3, r30
/* 800BF828 000BC768  4B F4 F9 A5 */ bl mDoExt_setCurrentHeap
/* 800BF82C 000BC76C  38 00 01 06 */ li r0, 0x106
/* 800BF830 000BC770  B0 1D 2F DC */ sth r0, 0x2fdc(r29)
/* 800BF834 000BC774  C0 1D 1F E0 */ lfs f0, 0x1fe0(r29)
/* 800BF838 000BC778  D0 1D 33 DC */ stfs f0, 0x33dc(r29)
/* 800BF83C 000BC77C  39 61 00 20 */ addi r11, r1, 0x20
/* 800BF840 000BC780  48 2A 29 E9 */ bl _restgpr_29
/* 800BF844 000BC784  80 01 00 24 */ lwz r0, 0x24(r1)
/* 800BF848 000BC788  7C 08 03 A6 */ mtlr r0
/* 800BF84C 000BC78C  38 21 00 20 */ addi r1, r1, 0x20
/* 800BF850 000BC790  4E 80 00 20 */ blr