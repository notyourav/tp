/* 802707AC 0026D6EC  94 21 FF B0 */ stwu r1, -0x50(r1)
/* 802707B0 0026D6F0  7C 08 02 A6 */ mflr r0
/* 802707B4 0026D6F4  90 01 00 54 */ stw r0, 0x54(r1)
/* 802707B8 0026D6F8  DB E1 00 40 */ stfd f31, 0x40(r1)
/* 802707BC 0026D6FC  F3 E1 00 48 */ psq_st f31, 72(r1), 0, 0
/* 802707C0 0026D700  93 E1 00 3C */ stw r31, 0x3c(r1)
/* 802707C4 0026D704  93 C1 00 38 */ stw r30, 0x38(r1)
/* 802707C8 0026D708  7C 7E 1B 78 */ mr r30, r3
/* 802707CC 0026D70C  7C 9F 23 78 */ mr r31, r4
/* 802707D0 0026D710  FF E0 08 90 */ fmr f31, f1
/* 802707D4 0026D714  C0 02 B7 E0 */ lfs f0, lbl_804551E0-_SDA2_BASE_(r2)
/* 802707D8 0026D718  FC 1F 00 00 */ fcmpu cr0, f31, f0
/* 802707DC 0026D71C  41 82 01 7C */ beq lbl_80270958
/* 802707E0 0026D720  38 61 00 18 */ addi r3, r1, 0x18
/* 802707E4 0026D724  7F C4 F3 78 */ mr r4, r30
/* 802707E8 0026D728  7F E5 FB 78 */ mr r5, r31
/* 802707EC 0026D72C  4B FF 63 49 */ bl __mi__4cXyzCFRC3Vec
/* 802707F0 0026D730  C0 01 00 18 */ lfs f0, 0x18(r1)
/* 802707F4 0026D734  D0 01 00 24 */ stfs f0, 0x24(r1)
/* 802707F8 0026D738  C0 01 00 1C */ lfs f0, 0x1c(r1)
/* 802707FC 0026D73C  D0 01 00 28 */ stfs f0, 0x28(r1)
/* 80270800 0026D740  C0 01 00 20 */ lfs f0, 0x20(r1)
/* 80270804 0026D744  D0 01 00 2C */ stfs f0, 0x2c(r1)
/* 80270808 0026D748  38 61 00 24 */ addi r3, r1, 0x24
/* 8027080C 0026D74C  48 0D 69 2D */ bl PSVECSquareMag
/* 80270810 0026D750  C0 02 B7 E0 */ lfs f0, lbl_804551E0-_SDA2_BASE_(r2)
/* 80270814 0026D754  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80270818 0026D758  40 81 00 58 */ ble lbl_80270870
/* 8027081C 0026D75C  FC 00 08 34 */ frsqrte f0, f1
/* 80270820 0026D760  C8 82 B7 E8 */ lfd f4, lbl_804551E8-_SDA2_BASE_(r2)
/* 80270824 0026D764  FC 44 00 32 */ fmul f2, f4, f0
/* 80270828 0026D768  C8 62 B7 F0 */ lfd f3, lbl_804551F0-_SDA2_BASE_(r2)
/* 8027082C 0026D76C  FC 00 00 32 */ fmul f0, f0, f0
/* 80270830 0026D770  FC 01 00 32 */ fmul f0, f1, f0
/* 80270834 0026D774  FC 03 00 28 */ fsub f0, f3, f0
/* 80270838 0026D778  FC 02 00 32 */ fmul f0, f2, f0
/* 8027083C 0026D77C  FC 44 00 32 */ fmul f2, f4, f0
/* 80270840 0026D780  FC 00 00 32 */ fmul f0, f0, f0
/* 80270844 0026D784  FC 01 00 32 */ fmul f0, f1, f0
/* 80270848 0026D788  FC 03 00 28 */ fsub f0, f3, f0
/* 8027084C 0026D78C  FC 02 00 32 */ fmul f0, f2, f0
/* 80270850 0026D790  FC 44 00 32 */ fmul f2, f4, f0
/* 80270854 0026D794  FC 00 00 32 */ fmul f0, f0, f0
/* 80270858 0026D798  FC 01 00 32 */ fmul f0, f1, f0
/* 8027085C 0026D79C  FC 03 00 28 */ fsub f0, f3, f0
/* 80270860 0026D7A0  FC 02 00 32 */ fmul f0, f2, f0
/* 80270864 0026D7A4  FC 21 00 32 */ fmul f1, f1, f0
/* 80270868 0026D7A8  FC 20 08 18 */ frsp f1, f1
/* 8027086C 0026D7AC  48 00 00 88 */ b lbl_802708F4
lbl_80270870:
/* 80270870 0026D7B0  C8 02 B7 F8 */ lfd f0, lbl_804551F8-_SDA2_BASE_(r2)
/* 80270874 0026D7B4  FC 01 00 40 */ fcmpo cr0, f1, f0
/* 80270878 0026D7B8  40 80 00 10 */ bge lbl_80270888
/* 8027087C 0026D7BC  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 80270880 0026D7C0  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
/* 80270884 0026D7C4  48 00 00 70 */ b lbl_802708F4
lbl_80270888:
/* 80270888 0026D7C8  D0 21 00 08 */ stfs f1, 8(r1)
/* 8027088C 0026D7CC  80 81 00 08 */ lwz r4, 8(r1)
/* 80270890 0026D7D0  54 83 00 50 */ rlwinm r3, r4, 0, 1, 8
/* 80270894 0026D7D4  3C 00 7F 80 */ lis r0, 0x7f80
/* 80270898 0026D7D8  7C 03 00 00 */ cmpw r3, r0
/* 8027089C 0026D7DC  41 82 00 14 */ beq lbl_802708B0
/* 802708A0 0026D7E0  40 80 00 40 */ bge lbl_802708E0
/* 802708A4 0026D7E4  2C 03 00 00 */ cmpwi r3, 0
/* 802708A8 0026D7E8  41 82 00 20 */ beq lbl_802708C8
/* 802708AC 0026D7EC  48 00 00 34 */ b lbl_802708E0
lbl_802708B0:
/* 802708B0 0026D7F0  54 80 02 7F */ clrlwi. r0, r4, 9
/* 802708B4 0026D7F4  41 82 00 0C */ beq lbl_802708C0
/* 802708B8 0026D7F8  38 00 00 01 */ li r0, 1
/* 802708BC 0026D7FC  48 00 00 28 */ b lbl_802708E4
lbl_802708C0:
/* 802708C0 0026D800  38 00 00 02 */ li r0, 2
/* 802708C4 0026D804  48 00 00 20 */ b lbl_802708E4
lbl_802708C8:
/* 802708C8 0026D808  54 80 02 7F */ clrlwi. r0, r4, 9
/* 802708CC 0026D80C  41 82 00 0C */ beq lbl_802708D8
/* 802708D0 0026D810  38 00 00 05 */ li r0, 5
/* 802708D4 0026D814  48 00 00 10 */ b lbl_802708E4
lbl_802708D8:
/* 802708D8 0026D818  38 00 00 03 */ li r0, 3
/* 802708DC 0026D81C  48 00 00 08 */ b lbl_802708E4
lbl_802708E0:
/* 802708E0 0026D820  38 00 00 04 */ li r0, 4
lbl_802708E4:
/* 802708E4 0026D824  2C 00 00 01 */ cmpwi r0, 1
/* 802708E8 0026D828  40 82 00 0C */ bne lbl_802708F4
/* 802708EC 0026D82C  3C 60 80 45 */ lis r3, lbl_80450AE0@ha
/* 802708F0 0026D830  C0 23 0A E0 */ lfs f1, lbl_80450AE0@l(r3)
lbl_802708F4:
/* 802708F4 0026D834  FC 00 0A 10 */ fabs f0, f1
/* 802708F8 0026D838  FC 40 00 18 */ frsp f2, f0
/* 802708FC 0026D83C  C0 02 B8 00 */ lfs f0, lbl_80455200-_SDA2_BASE_(r2)
/* 80270900 0026D840  FC 02 00 40 */ fcmpo cr0, f2, f0
/* 80270904 0026D844  41 80 00 10 */ blt lbl_80270914
/* 80270908 0026D848  FC 01 F8 40 */ fcmpo cr0, f1, f31
/* 8027090C 0026D84C  4C 40 13 82 */ cror 2, 0, 2
/* 80270910 0026D850  40 82 00 24 */ bne lbl_80270934
lbl_80270914:
/* 80270914 0026D854  C0 1F 00 00 */ lfs f0, 0(r31)
/* 80270918 0026D858  D0 1E 00 00 */ stfs f0, 0(r30)
/* 8027091C 0026D85C  C0 1F 00 04 */ lfs f0, 4(r31)
/* 80270920 0026D860  D0 1E 00 04 */ stfs f0, 4(r30)
/* 80270924 0026D864  C0 1F 00 08 */ lfs f0, 8(r31)
/* 80270928 0026D868  D0 1E 00 08 */ stfs f0, 8(r30)
/* 8027092C 0026D86C  38 60 00 01 */ li r3, 1
/* 80270930 0026D870  48 00 00 40 */ b lbl_80270970
lbl_80270934:
/* 80270934 0026D874  38 61 00 0C */ addi r3, r1, 0xc
/* 80270938 0026D878  38 81 00 24 */ addi r4, r1, 0x24
/* 8027093C 0026D87C  EC 3F 08 24 */ fdivs f1, f31, f1
/* 80270940 0026D880  4B FF 62 45 */ bl __ml__4cXyzCFf
/* 80270944 0026D884  7F C3 F3 78 */ mr r3, r30
/* 80270948 0026D888  38 81 00 0C */ addi r4, r1, 0xc
/* 8027094C 0026D88C  7F C5 F3 78 */ mr r5, r30
/* 80270950 0026D890  48 0D 67 65 */ bl PSVECSubtract
/* 80270954 0026D894  48 00 00 18 */ b lbl_8027096C
lbl_80270958:
/* 80270958 0026D898  4B FF 66 D5 */ bl __eq__4cXyzCFRC3Vec
/* 8027095C 0026D89C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 80270960 0026D8A0  41 82 00 0C */ beq lbl_8027096C
/* 80270964 0026D8A4  38 60 00 01 */ li r3, 1
/* 80270968 0026D8A8  48 00 00 08 */ b lbl_80270970
lbl_8027096C:
/* 8027096C 0026D8AC  38 60 00 00 */ li r3, 0
lbl_80270970:
/* 80270970 0026D8B0  E3 E1 00 48 */ psq_l f31, 72(r1), 0, 0
/* 80270974 0026D8B4  CB E1 00 40 */ lfd f31, 0x40(r1)
/* 80270978 0026D8B8  83 E1 00 3C */ lwz r31, 0x3c(r1)
/* 8027097C 0026D8BC  83 C1 00 38 */ lwz r30, 0x38(r1)
/* 80270980 0026D8C0  80 01 00 54 */ lwz r0, 0x54(r1)
/* 80270984 0026D8C4  7C 08 03 A6 */ mtlr r0
/* 80270988 0026D8C8  38 21 00 50 */ addi r1, r1, 0x50
/* 8027098C 0026D8CC  4E 80 00 20 */ blr