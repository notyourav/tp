/* 802655E4 00262524  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 802655E8 00262528  7C 08 02 A6 */ mflr r0
/* 802655EC 0026252C  90 01 00 44 */ stw r0, 0x44(r1)
/* 802655F0 00262530  DB E1 00 38 */ stfd f31, 0x38(r1)
/* 802655F4 00262534  39 61 00 38 */ addi r11, r1, 0x38
/* 802655F8 00262538  48 0F CB C9 */ bl _savegpr_22
/* 802655FC 0026253C  7C 79 1B 78 */ mr r25, r3
/* 80265600 00262540  7C 9A 23 78 */ mr r26, r4
/* 80265604 00262544  7C BB 2B 78 */ mr r27, r5
/* 80265608 00262548  7C DC 33 78 */ mr r28, r6
/* 8026560C 0026254C  7C FD 3B 78 */ mr r29, r7
/* 80265610 00262550  FF E0 08 90 */ fmr f31, f1
/* 80265614 00262554  80 06 00 2C */ lwz r0, 0x2c(r6)
/* 80265618 00262558  54 00 05 AC */ rlwinm r0, r0, 0, 0x16, 0x16
/* 8026561C 0026255C  7C 03 00 34 */ cntlzw r3, r0
/* 80265620 00262560  54 60 D9 7E */ srwi r0, r3, 5
/* 80265624 00262564  7C 1F 03 78 */ mr r31, r0
/* 80265628 00262568  80 04 00 2C */ lwz r0, 0x2c(r4)
/* 8026562C 0026256C  54 00 05 AC */ rlwinm r0, r0, 0, 0x16, 0x16
/* 80265630 00262570  7C 00 00 34 */ cntlzw r0, r0
/* 80265634 00262574  54 00 D9 7E */ srwi r0, r0, 5
/* 80265638 00262578  7C 1E 03 78 */ mr r30, r0
/* 8026563C 0026257C  54 60 DE 3F */ rlwinm. r0, r3, 0x1b, 0x18, 0x1f
/* 80265640 00262580  41 82 00 10 */ beq lbl_80265650
/* 80265644 00262584  38 7A 00 2C */ addi r3, r26, 0x2c
/* 80265648 00262588  7F 84 E3 78 */ mr r4, r28
/* 8026564C 0026258C  4B FF F2 8D */ bl SetHit__10cCcD_ObjCoFP8cCcD_Obj
lbl_80265650:
/* 80265650 00262590  57 C0 06 3F */ clrlwi. r0, r30, 0x18
/* 80265654 00262594  41 82 00 10 */ beq lbl_80265664
/* 80265658 00262598  38 7C 00 2C */ addi r3, r28, 0x2c
/* 8026565C 0026259C  7F 44 D3 78 */ mr r4, r26
/* 80265660 002625A0  4B FF F2 79 */ bl SetHit__10cCcD_ObjCoFP8cCcD_Obj
lbl_80265664:
/* 80265664 002625A4  57 E0 06 3F */ clrlwi. r0, r31, 0x18
/* 80265668 002625A8  41 82 00 34 */ beq lbl_8026569C
/* 8026566C 002625AC  57 C0 06 3F */ clrlwi. r0, r30, 0x18
/* 80265670 002625B0  41 82 00 2C */ beq lbl_8026569C
/* 80265674 002625B4  7F 23 CB 78 */ mr r3, r25
/* 80265678 002625B8  7F 44 D3 78 */ mr r4, r26
/* 8026567C 002625BC  7F 65 DB 78 */ mr r5, r27
/* 80265680 002625C0  7F 86 E3 78 */ mr r6, r28
/* 80265684 002625C4  7F A7 EB 78 */ mr r7, r29
/* 80265688 002625C8  FC 20 F8 90 */ fmr f1, f31
/* 8026568C 002625CC  81 99 28 48 */ lwz r12, 0x2848(r25)
/* 80265690 002625D0  81 8C 00 0C */ lwz r12, 0xc(r12)
/* 80265694 002625D4  7D 89 03 A6 */ mtctr r12
/* 80265698 002625D8  4E 80 04 21 */ bctrl
lbl_8026569C:
/* 8026569C 002625DC  82 FA 00 44 */ lwz r23, 0x44(r26)
/* 802656A0 002625E0  82 DC 00 44 */ lwz r22, 0x44(r28)
/* 802656A4 002625E4  7E C3 B3 78 */ mr r3, r22
/* 802656A8 002625E8  81 96 00 18 */ lwz r12, 0x18(r22)
/* 802656AC 002625EC  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 802656B0 002625F0  7D 89 03 A6 */ mtctr r12
/* 802656B4 002625F4  4E 80 04 21 */ bctrl
/* 802656B8 002625F8  7C 78 1B 78 */ mr r24, r3
/* 802656BC 002625FC  7E E3 BB 78 */ mr r3, r23
/* 802656C0 00262600  81 97 00 18 */ lwz r12, 0x18(r23)
/* 802656C4 00262604  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 802656C8 00262608  7D 89 03 A6 */ mtctr r12
/* 802656CC 0026260C  4E 80 04 21 */ bctrl
/* 802656D0 00262610  7C 7D 1B 78 */ mr r29, r3
/* 802656D4 00262614  7F 83 E3 78 */ mr r3, r28
/* 802656D8 00262618  81 9C 00 3C */ lwz r12, 0x3c(r28)
/* 802656DC 0026261C  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 802656E0 00262620  7D 89 03 A6 */ mtctr r12
/* 802656E4 00262624  4E 80 04 21 */ bctrl
/* 802656E8 00262628  7C 7B 1B 78 */ mr r27, r3
/* 802656EC 0026262C  7F 43 D3 78 */ mr r3, r26
/* 802656F0 00262630  81 9A 00 3C */ lwz r12, 0x3c(r26)
/* 802656F4 00262634  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 802656F8 00262638  7D 89 03 A6 */ mtctr r12
/* 802656FC 0026263C  4E 80 04 21 */ bctrl
/* 80265700 00262640  7C 66 1B 78 */ mr r6, r3
/* 80265704 00262644  93 01 00 08 */ stw r24, 8(r1)
/* 80265708 00262648  7F 23 CB 78 */ mr r3, r25
/* 8026570C 0026264C  7F E4 FB 78 */ mr r4, r31
/* 80265710 00262650  7F C5 F3 78 */ mr r5, r30
/* 80265714 00262654  7F 67 DB 78 */ mr r7, r27
/* 80265718 00262658  7E E8 BB 78 */ mr r8, r23
/* 8026571C 0026265C  7E C9 B3 78 */ mr r9, r22
/* 80265720 00262660  7F AA EB 78 */ mr r10, r29
/* 80265724 00262664  81 99 28 48 */ lwz r12, 0x2848(r25)
/* 80265728 00262668  81 8C 00 10 */ lwz r12, 0x10(r12)
/* 8026572C 0026266C  7D 89 03 A6 */ mtctr r12
/* 80265730 00262670  4E 80 04 21 */ bctrl
/* 80265734 00262674  CB E1 00 38 */ lfd f31, 0x38(r1)
/* 80265738 00262678  39 61 00 38 */ addi r11, r1, 0x38
/* 8026573C 0026267C  48 0F CA D1 */ bl _restgpr_22
/* 80265740 00262680  80 01 00 44 */ lwz r0, 0x44(r1)
/* 80265744 00262684  7C 08 03 A6 */ mtlr r0
/* 80265748 00262688  38 21 00 40 */ addi r1, r1, 0x40
/* 8026574C 0026268C  4E 80 00 20 */ blr