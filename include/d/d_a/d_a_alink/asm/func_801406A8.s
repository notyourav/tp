/* 801406A8 0013D5E8  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 801406AC 0013D5EC  7C 08 02 A6 */ mflr r0
/* 801406B0 0013D5F0  90 01 00 24 */ stw r0, 0x24(r1)
/* 801406B4 0013D5F4  39 61 00 20 */ addi r11, r1, 0x20
/* 801406B8 0013D5F8  48 22 1B 19 */ bl _savegpr_26
/* 801406BC 0013D5FC  7C 7D 1B 78 */ mr r29, r3
/* 801406C0 0013D600  80 03 05 78 */ lwz r0, 0x578(r3)
/* 801406C4 0013D604  64 00 00 40 */ oris r0, r0, 0x40
/* 801406C8 0013D608  90 03 05 78 */ stw r0, 0x578(r3)
/* 801406CC 0013D60C  38 60 14 00 */ li r3, 0x1400
/* 801406D0 0013D610  38 80 00 20 */ li r4, 0x20
/* 801406D4 0013D614  48 18 E6 19 */ bl __nwa__FUli
/* 801406D8 0013D618  7C 7A 1B 78 */ mr r26, r3
/* 801406DC 0013D61C  80 1D 05 74 */ lwz r0, 0x574(r29)
/* 801406E0 0013D620  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 801406E4 0013D624  41 82 00 20 */ beq lbl_80140704
/* 801406E8 0013D628  3B 80 02 FF */ li r28, 0x2ff
/* 801406EC 0013D62C  3B E0 04 08 */ li r31, 0x408
/* 801406F0 0013D630  3B C0 03 A7 */ li r30, 0x3a7
/* 801406F4 0013D634  7F A3 EB 78 */ mr r3, r29
/* 801406F8 0013D638  38 80 00 00 */ li r4, 0
/* 801406FC 0013D63C  4B FF FE 55 */ bl daAlink_c_NS_changeModelDataDirectWolf
/* 80140700 0013D640  48 00 00 4C */ b lbl_8014074C
lbl_80140704:
/* 80140704 0013D644  3B 80 02 6A */ li r28, 0x26a
/* 80140708 0013D648  3B E0 03 AF */ li r31, 0x3af
/* 8014070C 0013D64C  3B C0 03 2C */ li r30, 0x32c
/* 80140710 0013D650  7F A3 EB 78 */ mr r3, r29
/* 80140714 0013D654  4B F7 F6 9D */ bl daAlink_c_NS_checkZoraWearAbility
/* 80140718 0013D658  2C 03 00 00 */ cmpwi r3, 0
/* 8014071C 0013D65C  41 82 00 24 */ beq lbl_80140740
/* 80140720 0013D660  7F A3 EB 78 */ mr r3, r29
/* 80140724 0013D664  4B FC 11 6D */ bl daAlink_c_NS_checkZoraWearMaskDraw
/* 80140728 0013D668  2C 03 00 00 */ cmpwi r3, 0
/* 8014072C 0013D66C  40 82 00 14 */ bne lbl_80140740
/* 80140730 0013D670  80 7D 06 F0 */ lwz r3, 0x6f0(r29)
/* 80140734 0013D674  80 03 00 0C */ lwz r0, 0xc(r3)
/* 80140738 0013D678  60 00 00 01 */ ori r0, r0, 1
/* 8014073C 0013D67C  90 03 00 0C */ stw r0, 0xc(r3)
lbl_80140740:
/* 80140740 0013D680  7F A3 EB 78 */ mr r3, r29
/* 80140744 0013D684  38 80 00 00 */ li r4, 0
/* 80140748 0013D688  4B FF FB F1 */ bl daAlink_c_NS_changeModelDataDirect
lbl_8014074C:
/* 8014074C 0013D68C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 80140750 0013D690  3B 63 61 C0 */ addi r27, r3, g_dComIfG_gameInfo@l
/* 80140754 0013D694  80 7B 5C AC */ lwz r3, 0x5cac(r27)
/* 80140758 0013D698  7F 44 D3 78 */ mr r4, r26
/* 8014075C 0013D69C  38 A0 14 00 */ li r5, 0x1400
/* 80140760 0013D6A0  57 86 04 3E */ clrlwi r6, r28, 0x10
/* 80140764 0013D6A4  48 19 57 69 */ bl readIdxResource__10JKRArchiveFPvUlUl
/* 80140768 0013D6A8  38 60 00 1C */ li r3, 0x1c
/* 8014076C 0013D6AC  48 18 E4 E1 */ bl __nw__FUl
/* 80140770 0013D6B0  7C 7C 1B 79 */ or. r28, r3, r3
/* 80140774 0013D6B4  41 82 00 20 */ beq lbl_80140794
/* 80140778 0013D6B8  3C 80 80 3A */ lis r4, lbl_803A3354@ha
/* 8014077C 0013D6BC  38 04 33 54 */ addi r0, r4, lbl_803A3354@l
/* 80140780 0013D6C0  90 1C 00 00 */ stw r0, 0(r28)
/* 80140784 0013D6C4  38 80 00 00 */ li r4, 0
/* 80140788 0013D6C8  48 1E 7C 75 */ bl J3DFrameCtrl_NS_init
/* 8014078C 0013D6CC  38 00 00 00 */ li r0, 0
/* 80140790 0013D6D0  90 1C 00 18 */ stw r0, 0x18(r28)
lbl_80140794:
/* 80140794 0013D6D4  93 9D 07 BC */ stw r28, 0x7bc(r29)
/* 80140798 0013D6D8  7F 43 D3 78 */ mr r3, r26
/* 8014079C 0013D6DC  38 80 00 00 */ li r4, 0
/* 801407A0 0013D6E0  48 1F 73 A1 */ bl J3DAnmLoaderDataBase_NS_load
/* 801407A4 0013D6E4  7C 64 1B 78 */ mr r4, r3
/* 801407A8 0013D6E8  80 7D 07 BC */ lwz r3, 0x7bc(r29)
/* 801407AC 0013D6EC  38 A0 00 01 */ li r5, 1
/* 801407B0 0013D6F0  38 C0 00 02 */ li r6, 2
/* 801407B4 0013D6F4  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 801407B8 0013D6F8  38 E0 00 00 */ li r7, 0
/* 801407BC 0013D6FC  39 00 FF FF */ li r8, -1
/* 801407C0 0013D700  39 20 00 00 */ li r9, 0
/* 801407C4 0013D704  4B EC D0 19 */ bl mDoExt_bckAnm_NS_init
/* 801407C8 0013D708  38 60 04 00 */ li r3, 0x400
/* 801407CC 0013D70C  38 80 00 20 */ li r4, 0x20
/* 801407D0 0013D710  48 18 E5 1D */ bl __nwa__FUli
/* 801407D4 0013D714  7C 7C 1B 78 */ mr r28, r3
/* 801407D8 0013D718  80 7B 5C AC */ lwz r3, 0x5cac(r27)
/* 801407DC 0013D71C  7F 84 E3 78 */ mr r4, r28
/* 801407E0 0013D720  38 A0 04 00 */ li r5, 0x400
/* 801407E4 0013D724  57 E6 04 3E */ clrlwi r6, r31, 0x10
/* 801407E8 0013D728  48 19 56 E5 */ bl readIdxResource__10JKRArchiveFPvUlUl
/* 801407EC 0013D72C  7F 83 E3 78 */ mr r3, r28
/* 801407F0 0013D730  38 80 00 00 */ li r4, 0
/* 801407F4 0013D734  48 1F 73 4D */ bl J3DAnmLoaderDataBase_NS_load
/* 801407F8 0013D738  7C 7A 1B 78 */ mr r26, r3
/* 801407FC 0013D73C  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80140800 0013D740  D0 03 00 08 */ stfs f0, 8(r3)
/* 80140804 0013D744  80 9D 06 C0 */ lwz r4, 0x6c0(r29)
/* 80140808 0013D748  48 1E A8 95 */ bl J3DAnmTexPattern_NS_searchUpdateMaterialID_X1_
/* 8014080C 0013D74C  80 7D 06 C0 */ lwz r3, 0x6c0(r29)
/* 80140810 0013D750  38 63 00 58 */ addi r3, r3, 0x58
/* 80140814 0013D754  7F 44 D3 78 */ mr r4, r26
/* 80140818 0013D758  48 1E F3 B1 */ bl J3DMaterialTable_NS_entryTexNoAnimator
/* 8014081C 0013D75C  38 60 04 00 */ li r3, 0x400
/* 80140820 0013D760  38 80 00 20 */ li r4, 0x20
/* 80140824 0013D764  48 18 E4 C9 */ bl __nwa__FUli
/* 80140828 0013D768  7C 7C 1B 78 */ mr r28, r3
/* 8014082C 0013D76C  80 7B 5C AC */ lwz r3, 0x5cac(r27)
/* 80140830 0013D770  7F 84 E3 78 */ mr r4, r28
/* 80140834 0013D774  38 A0 04 00 */ li r5, 0x400
/* 80140838 0013D778  57 C6 04 3E */ clrlwi r6, r30, 0x10
/* 8014083C 0013D77C  48 19 56 91 */ bl readIdxResource__10JKRArchiveFPvUlUl
/* 80140840 0013D780  7F 83 E3 78 */ mr r3, r28
/* 80140844 0013D784  38 80 00 00 */ li r4, 0
/* 80140848 0013D788  48 1F 72 F9 */ bl J3DAnmLoaderDataBase_NS_load
/* 8014084C 0013D78C  7C 7A 1B 78 */ mr r26, r3
/* 80140850 0013D790  C0 02 92 C0 */ lfs f0, lbl_80452CC0-_SDA2_BASE_(r2)
/* 80140854 0013D794  D0 03 00 08 */ stfs f0, 8(r3)
/* 80140858 0013D798  80 9D 06 C0 */ lwz r4, 0x6c0(r29)
/* 8014085C 0013D79C  48 1E A9 79 */ bl J3DAnmTextureSRTKey_NS_searchUpdateMaterialID_X1_
/* 80140860 0013D7A0  80 7D 06 C0 */ lwz r3, 0x6c0(r29)
/* 80140864 0013D7A4  38 63 00 58 */ addi r3, r3, 0x58
/* 80140868 0013D7A8  7F 44 D3 78 */ mr r4, r26
/* 8014086C 0013D7AC  48 1E F4 59 */ bl J3DMaterialTable_NS_entryTexMtxAnimator
/* 80140870 0013D7B0  39 61 00 20 */ addi r11, r1, 0x20
/* 80140874 0013D7B4  48 22 19 A9 */ bl _restgpr_26
/* 80140878 0013D7B8  80 01 00 24 */ lwz r0, 0x24(r1)
/* 8014087C 0013D7BC  7C 08 03 A6 */ mtlr r0
/* 80140880 0013D7C0  38 21 00 20 */ addi r1, r1, 0x20
/* 80140884 0013D7C4  4E 80 00 20 */ blr
