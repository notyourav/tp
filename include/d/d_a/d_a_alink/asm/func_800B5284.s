/* 800B5284 000B21C4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 800B5288 000B21C8  7C 08 02 A6 */ mflr r0
/* 800B528C 000B21CC  90 01 00 14 */ stw r0, 0x14(r1)
/* 800B5290 000B21D0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 800B5294 000B21D4  93 C1 00 08 */ stw r30, 8(r1)
/* 800B5298 000B21D8  7C 7E 1B 78 */ mr r30, r3
/* 800B529C 000B21DC  38 60 00 00 */ li r3, 0
/* 800B52A0 000B21E0  A0 1E 1F BC */ lhz r0, 0x1fbc(r30)
/* 800B52A4 000B21E4  28 00 00 62 */ cmplwi r0, 0x62
/* 800B52A8 000B21E8  41 82 00 10 */ beq lbl_800B52B8
/* 800B52AC 000B21EC  54 00 04 3E */ clrlwi r0, r0, 0x10
/* 800B52B0 000B21F0  28 00 02 A0 */ cmplwi r0, 0x2a0
/* 800B52B4 000B21F4  40 82 00 08 */ bne lbl_800B52BC
lbl_800B52B8:
/* 800B52B8 000B21F8  38 60 00 01 */ li r3, 1
lbl_800B52BC:
/* 800B52BC 000B21FC  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 800B52C0 000B2200  40 82 06 14 */ bne lbl_800B58D4
/* 800B52C4 000B2204  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800B52C8 000B2208  54 00 01 CF */ rlwinm. r0, r0, 0, 7, 7
/* 800B52CC 000B220C  41 82 00 10 */ beq lbl_800B52DC
/* 800B52D0 000B2210  7F C3 F3 78 */ mr r3, r30
/* 800B52D4 000B2214  38 80 00 62 */ li r4, 0x62
/* 800B52D8 000B2218  4B FF DF 91 */ bl setDoStatusEmphasys__9daAlink_cFUc
lbl_800B52DC:
/* 800B52DC 000B221C  80 1E 27 EC */ lwz r0, 0x27ec(r30)
/* 800B52E0 000B2220  28 00 00 00 */ cmplwi r0, 0
/* 800B52E4 000B2224  40 82 00 60 */ bne lbl_800B5344
/* 800B52E8 000B2228  80 1E 27 E4 */ lwz r0, 0x27e4(r30)
/* 800B52EC 000B222C  28 00 00 00 */ cmplwi r0, 0
/* 800B52F0 000B2230  40 82 00 54 */ bne lbl_800B5344
/* 800B52F4 000B2234  80 1E 05 80 */ lwz r0, 0x580(r30)
/* 800B52F8 000B2238  54 00 07 39 */ rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800B52FC 000B223C  41 82 00 48 */ beq lbl_800B5344
/* 800B5300 000B2240  7F C3 F3 78 */ mr r3, r30
/* 800B5304 000B2244  38 80 00 15 */ li r4, 0x15
/* 800B5308 000B2248  38 A0 00 02 */ li r5, 2
/* 800B530C 000B224C  48 03 2B C5 */ bl daAlink_c_NS_setWallGrabStatus
/* 800B5310 000B2250  88 1E 2F 91 */ lbz r0, 0x2f91(r30)
/* 800B5314 000B2254  28 00 00 07 */ cmplwi r0, 7
/* 800B5318 000B2258  41 82 00 1C */ beq lbl_800B5334
/* 800B531C 000B225C  28 00 00 08 */ cmplwi r0, 8
/* 800B5320 000B2260  41 82 00 14 */ beq lbl_800B5334
/* 800B5324 000B2264  28 00 00 06 */ cmplwi r0, 6
/* 800B5328 000B2268  41 82 00 0C */ beq lbl_800B5334
/* 800B532C 000B226C  28 00 00 09 */ cmplwi r0, 9
/* 800B5330 000B2270  40 82 05 A4 */ bne lbl_800B58D4
lbl_800B5334:
/* 800B5334 000B2274  7F C3 F3 78 */ mr r3, r30
/* 800B5338 000B2278  38 80 00 20 */ li r4, 0x20
/* 800B533C 000B227C  4B FF DF 15 */ bl setDoStatus__9daAlink_cFUc
/* 800B5340 000B2280  48 00 05 94 */ b lbl_800B58D4
lbl_800B5344:
/* 800B5344 000B2284  7F C3 F3 78 */ mr r3, r30
/* 800B5348 000B2288  48 03 26 B1 */ bl daAlink_c_NS_searchFmChainPos
/* 800B534C 000B228C  2C 03 00 00 */ cmpwi r3, 0
/* 800B5350 000B2290  41 82 00 18 */ beq lbl_800B5368
/* 800B5354 000B2294  7F C3 F3 78 */ mr r3, r30
/* 800B5358 000B2298  38 80 00 96 */ li r4, 0x96
/* 800B535C 000B229C  38 A0 00 02 */ li r5, 2
/* 800B5360 000B22A0  48 03 2B 71 */ bl daAlink_c_NS_setWallGrabStatus
/* 800B5364 000B22A4  48 00 05 68 */ b lbl_800B58CC
lbl_800B5368:
/* 800B5368 000B22A8  80 9E 27 E4 */ lwz r4, 0x27e4(r30)
/* 800B536C 000B22AC  28 04 00 00 */ cmplwi r4, 0
/* 800B5370 000B22B0  41 82 05 5C */ beq lbl_800B58CC
/* 800B5374 000B22B4  80 7E 27 F4 */ lwz r3, 0x27f4(r30)
/* 800B5378 000B22B8  AB E3 00 08 */ lha r31, 8(r3)
/* 800B537C 000B22BC  80 04 00 0C */ lwz r0, 0xc(r4)
/* 800B5380 000B22C0  28 00 00 05 */ cmplwi r0, 5
/* 800B5384 000B22C4  41 82 00 30 */ beq lbl_800B53B4
/* 800B5388 000B22C8  28 00 00 06 */ cmplwi r0, 6
/* 800B538C 000B22CC  40 82 00 38 */ bne lbl_800B53C4
/* 800B5390 000B22D0  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800B5394 000B22D4  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B5398 000B22D8  41 82 00 1C */ beq lbl_800B53B4
/* 800B539C 000B22DC  81 83 05 9C */ lwz r12, 0x59c(r3)
/* 800B53A0 000B22E0  81 8C 00 28 */ lwz r12, 0x28(r12)
/* 800B53A4 000B22E4  7D 89 03 A6 */ mtctr r12
/* 800B53A8 000B22E8  4E 80 04 21 */ bctrl
/* 800B53AC 000B22EC  2C 03 00 00 */ cmpwi r3, 0
/* 800B53B0 000B22F0  41 82 00 14 */ beq lbl_800B53C4
lbl_800B53B4:
/* 800B53B4 000B22F4  7F C3 F3 78 */ mr r3, r30
/* 800B53B8 000B22F8  38 80 00 06 */ li r4, 6
/* 800B53BC 000B22FC  4B FF DE 95 */ bl setDoStatus__9daAlink_cFUc
/* 800B53C0 000B2300  48 00 05 0C */ b lbl_800B58CC
lbl_800B53C4:
/* 800B53C4 000B2304  80 7E 27 E4 */ lwz r3, 0x27e4(r30)
/* 800B53C8 000B2308  80 63 00 0C */ lwz r3, 0xc(r3)
/* 800B53CC 000B230C  28 03 00 07 */ cmplwi r3, 7
/* 800B53D0 000B2310  40 82 00 1C */ bne lbl_800B53EC
/* 800B53D4 000B2314  2C 1F 02 AF */ cmpwi r31, 0x2af
/* 800B53D8 000B2318  40 82 00 14 */ bne lbl_800B53EC
/* 800B53DC 000B231C  7F C3 F3 78 */ mr r3, r30
/* 800B53E0 000B2320  38 80 00 89 */ li r4, 0x89
/* 800B53E4 000B2324  4B FF DE 6D */ bl setDoStatus__9daAlink_cFUc
/* 800B53E8 000B2328  48 00 04 E4 */ b lbl_800B58CC
lbl_800B53EC:
/* 800B53EC 000B232C  80 1E 05 74 */ lwz r0, 0x574(r30)
/* 800B53F0 000B2330  54 00 01 8D */ rlwinm. r0, r0, 0, 6, 6
/* 800B53F4 000B2334  41 82 02 98 */ beq lbl_800B568C
/* 800B53F8 000B2338  28 03 00 04 */ cmplwi r3, 4
/* 800B53FC 000B233C  40 82 00 C0 */ bne lbl_800B54BC
/* 800B5400 000B2340  80 9E 27 F4 */ lwz r4, 0x27f4(r30)
/* 800B5404 000B2344  80 04 04 9C */ lwz r0, 0x49c(r4)
/* 800B5408 000B2348  54 00 04 A5 */ rlwinm. r0, r0, 0, 0x12, 0x12
/* 800B540C 000B234C  40 82 00 B0 */ bne lbl_800B54BC
/* 800B5410 000B2350  88 04 04 9A */ lbz r0, 0x49a(r4)
/* 800B5414 000B2354  54 00 06 F7 */ rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800B5418 000B2358  41 82 00 A4 */ beq lbl_800B54BC
/* 800B541C 000B235C  2C 1F 02 16 */ cmpwi r31, 0x216
/* 800B5420 000B2360  40 82 00 14 */ bne lbl_800B5434
/* 800B5424 000B2364  7F C3 F3 78 */ mr r3, r30
/* 800B5428 000B2368  38 80 00 91 */ li r4, 0x91
/* 800B542C 000B236C  4B FF DE 25 */ bl setDoStatus__9daAlink_cFUc
/* 800B5430 000B2370  48 00 04 9C */ b lbl_800B58CC
lbl_800B5434:
/* 800B5434 000B2374  2C 1F 01 4D */ cmpwi r31, 0x14d
/* 800B5438 000B2378  40 82 00 14 */ bne lbl_800B544C
/* 800B543C 000B237C  7F C3 F3 78 */ mr r3, r30
/* 800B5440 000B2380  38 80 00 05 */ li r4, 5
/* 800B5444 000B2384  4B FF DE 25 */ bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B5448 000B2388  48 00 04 84 */ b lbl_800B58CC
lbl_800B544C:
/* 800B544C 000B238C  2C 1F 02 FD */ cmpwi r31, 0x2fd
/* 800B5450 000B2390  40 82 00 14 */ bne lbl_800B5464
/* 800B5454 000B2394  7F C3 F3 78 */ mr r3, r30
/* 800B5458 000B2398  38 80 00 47 */ li r4, 0x47
/* 800B545C 000B239C  4B FF DD F5 */ bl setDoStatus__9daAlink_cFUc
/* 800B5460 000B23A0  48 00 04 6C */ b lbl_800B58CC
lbl_800B5464:
/* 800B5464 000B23A4  2C 1F 02 1F */ cmpwi r31, 0x21f
/* 800B5468 000B23A8  41 82 00 14 */ beq lbl_800B547C
/* 800B546C 000B23AC  2C 1F 01 AC */ cmpwi r31, 0x1ac
/* 800B5470 000B23B0  41 82 00 0C */ beq lbl_800B547C
/* 800B5474 000B23B4  2C 1F 02 19 */ cmpwi r31, 0x219
/* 800B5478 000B23B8  40 82 00 14 */ bne lbl_800B548C
lbl_800B547C:
/* 800B547C 000B23BC  7F C3 F3 78 */ mr r3, r30
/* 800B5480 000B23C0  38 80 00 39 */ li r4, 0x39
/* 800B5484 000B23C4  4B FF DD E5 */ bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B5488 000B23C8  48 00 04 44 */ b lbl_800B58CC
lbl_800B548C:
/* 800B548C 000B23CC  7F C3 F3 78 */ mr r3, r30
/* 800B5490 000B23D0  48 03 2E 21 */ bl daAlink_c_NS_checkGoatCatchActor
/* 800B5494 000B23D4  2C 03 00 00 */ cmpwi r3, 0
/* 800B5498 000B23D8  40 82 04 34 */ bne lbl_800B58CC
/* 800B549C 000B23DC  7F C3 F3 78 */ mr r3, r30
/* 800B54A0 000B23E0  48 02 E4 4D */ bl daAlink_c_NS_checkGrabLineCheck
/* 800B54A4 000B23E4  2C 03 00 00 */ cmpwi r3, 0
/* 800B54A8 000B23E8  40 82 04 24 */ bne lbl_800B58CC
/* 800B54AC 000B23EC  7F C3 F3 78 */ mr r3, r30
/* 800B54B0 000B23F0  38 80 00 0C */ li r4, 0xc
/* 800B54B4 000B23F4  4B FF DD B5 */ bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B54B8 000B23F8  48 00 04 14 */ b lbl_800B58CC
lbl_800B54BC:
/* 800B54BC 000B23FC  80 7E 27 EC */ lwz r3, 0x27ec(r30)
/* 800B54C0 000B2400  28 03 00 00 */ cmplwi r3, 0
/* 800B54C4 000B2404  41 82 00 5C */ beq lbl_800B5520
/* 800B54C8 000B2408  A8 03 00 08 */ lha r0, 8(r3)
/* 800B54CC 000B240C  2C 00 02 16 */ cmpwi r0, 0x216
/* 800B54D0 000B2410  40 82 00 50 */ bne lbl_800B5520
/* 800B54D4 000B2414  80 7E 27 E0 */ lwz r3, 0x27e0(r30)
/* 800B54D8 000B2418  4B FB B3 A9 */ bl dAttention_c_NS_getActionBtnB
/* 800B54DC 000B241C  28 03 00 00 */ cmplwi r3, 0
/* 800B54E0 000B2420  41 82 00 40 */ beq lbl_800B5520
/* 800B54E4 000B2424  80 7E 27 E0 */ lwz r3, 0x27e0(r30)
/* 800B54E8 000B2428  4B FB B3 99 */ bl dAttention_c_NS_getActionBtnB
/* 800B54EC 000B242C  80 03 00 0C */ lwz r0, 0xc(r3)
/* 800B54F0 000B2430  28 00 00 04 */ cmplwi r0, 4
/* 800B54F4 000B2434  40 82 00 2C */ bne lbl_800B5520
/* 800B54F8 000B2438  80 7E 27 E0 */ lwz r3, 0x27e0(r30)
/* 800B54FC 000B243C  4B FB B3 85 */ bl dAttention_c_NS_getActionBtnB
/* 800B5500 000B2440  4B FB E3 65 */ bl dAttList_c_NS_getActor
/* 800B5504 000B2444  80 1E 27 EC */ lwz r0, 0x27ec(r30)
/* 800B5508 000B2448  7C 03 00 40 */ cmplw r3, r0
/* 800B550C 000B244C  40 82 00 14 */ bne lbl_800B5520
/* 800B5510 000B2450  7F C3 F3 78 */ mr r3, r30
/* 800B5514 000B2454  38 80 00 91 */ li r4, 0x91
/* 800B5518 000B2458  4B FF DD 39 */ bl setDoStatus__9daAlink_cFUc
/* 800B551C 000B245C  48 00 03 B0 */ b lbl_800B58CC
lbl_800B5520:
/* 800B5520 000B2460  80 7E 27 EC */ lwz r3, 0x27ec(r30)
/* 800B5524 000B2464  28 03 00 00 */ cmplwi r3, 0
/* 800B5528 000B2468  41 82 00 74 */ beq lbl_800B559C
/* 800B552C 000B246C  A8 03 00 08 */ lha r0, 8(r3)
/* 800B5530 000B2470  2C 00 01 F4 */ cmpwi r0, 0x1f4
/* 800B5534 000B2474  40 82 00 68 */ bne lbl_800B559C
/* 800B5538 000B2478  80 7E 27 E0 */ lwz r3, 0x27e0(r30)
/* 800B553C 000B247C  4B FB B3 45 */ bl dAttention_c_NS_getActionBtnB
/* 800B5540 000B2480  28 03 00 00 */ cmplwi r3, 0
/* 800B5544 000B2484  41 82 00 58 */ beq lbl_800B559C
/* 800B5548 000B2488  80 7E 27 E0 */ lwz r3, 0x27e0(r30)
/* 800B554C 000B248C  4B FB B3 35 */ bl dAttention_c_NS_getActionBtnB
/* 800B5550 000B2490  80 03 00 0C */ lwz r0, 0xc(r3)
/* 800B5554 000B2494  28 00 00 07 */ cmplwi r0, 7
/* 800B5558 000B2498  40 82 00 44 */ bne lbl_800B559C
/* 800B555C 000B249C  80 7E 27 E0 */ lwz r3, 0x27e0(r30)
/* 800B5560 000B24A0  4B FB B3 21 */ bl dAttention_c_NS_getActionBtnB
/* 800B5564 000B24A4  4B FB E3 01 */ bl dAttList_c_NS_getActor
/* 800B5568 000B24A8  80 1E 27 EC */ lwz r0, 0x27ec(r30)
/* 800B556C 000B24AC  7C 03 00 40 */ cmplw r3, r0
/* 800B5570 000B24B0  40 82 00 2C */ bne lbl_800B559C
/* 800B5574 000B24B4  80 1E 05 8C */ lwz r0, 0x58c(r30)
/* 800B5578 000B24B8  64 00 00 10 */ oris r0, r0, 0x10
/* 800B557C 000B24BC  90 1E 05 8C */ stw r0, 0x58c(r30)
/* 800B5580 000B24C0  A8 1E 30 AC */ lha r0, 0x30ac(r30)
/* 800B5584 000B24C4  2C 00 00 00 */ cmpwi r0, 0
/* 800B5588 000B24C8  41 82 03 44 */ beq lbl_800B58CC
/* 800B558C 000B24CC  7F C3 F3 78 */ mr r3, r30
/* 800B5590 000B24D0  38 80 00 02 */ li r4, 2
/* 800B5594 000B24D4  48 07 27 BD */ bl daAlink_c_NS_setWolfDigStatus
/* 800B5598 000B24D8  48 00 03 34 */ b lbl_800B58CC
lbl_800B559C:
/* 800B559C 000B24DC  80 7E 27 E4 */ lwz r3, 0x27e4(r30)
/* 800B55A0 000B24E0  80 03 00 0C */ lwz r0, 0xc(r3)
/* 800B55A4 000B24E4  28 00 00 07 */ cmplwi r0, 7
/* 800B55A8 000B24E8  40 82 00 A8 */ bne lbl_800B5650
/* 800B55AC 000B24EC  80 1E 27 F4 */ lwz r0, 0x27f4(r30)
/* 800B55B0 000B24F0  28 00 00 00 */ cmplwi r0, 0
/* 800B55B4 000B24F4  41 82 00 9C */ beq lbl_800B5650
/* 800B55B8 000B24F8  38 1F FF AE */ addi r0, r31, -82
/* 800B55BC 000B24FC  54 00 04 3E */ clrlwi r0, r0, 0x10
/* 800B55C0 000B2500  28 00 00 01 */ cmplwi r0, 1
/* 800B55C4 000B2504  40 81 00 1C */ ble lbl_800B55E0
/* 800B55C8 000B2508  2C 1F 00 90 */ cmpwi r31, 0x90
/* 800B55CC 000B250C  41 82 00 14 */ beq lbl_800B55E0
/* 800B55D0 000B2510  2C 1F 00 A9 */ cmpwi r31, 0xa9
/* 800B55D4 000B2514  41 82 00 0C */ beq lbl_800B55E0
/* 800B55D8 000B2518  2C 1F 01 F4 */ cmpwi r31, 0x1f4
/* 800B55DC 000B251C  40 82 00 2C */ bne lbl_800B5608
lbl_800B55E0:
/* 800B55E0 000B2520  80 1E 05 8C */ lwz r0, 0x58c(r30)
/* 800B55E4 000B2524  64 00 00 10 */ oris r0, r0, 0x10
/* 800B55E8 000B2528  90 1E 05 8C */ stw r0, 0x58c(r30)
/* 800B55EC 000B252C  A8 1E 30 AC */ lha r0, 0x30ac(r30)
/* 800B55F0 000B2530  2C 00 00 00 */ cmpwi r0, 0
/* 800B55F4 000B2534  41 82 02 D8 */ beq lbl_800B58CC
/* 800B55F8 000B2538  7F C3 F3 78 */ mr r3, r30
/* 800B55FC 000B253C  38 80 00 02 */ li r4, 2
/* 800B5600 000B2540  48 07 27 51 */ bl daAlink_c_NS_setWolfDigStatus
/* 800B5604 000B2544  48 00 02 C8 */ b lbl_800B58CC
lbl_800B5608:
/* 800B5608 000B2548  2C 1F 02 D4 */ cmpwi r31, 0x2d4
/* 800B560C 000B254C  41 82 00 1C */ beq lbl_800B5628
/* 800B5610 000B2550  2C 1F 01 8A */ cmpwi r31, 0x18a
/* 800B5614 000B2554  41 82 00 14 */ beq lbl_800B5628
/* 800B5618 000B2558  2C 1F 01 8D */ cmpwi r31, 0x18d
/* 800B561C 000B255C  41 82 00 0C */ beq lbl_800B5628
/* 800B5620 000B2560  2C 1F 01 8B */ cmpwi r31, 0x18b
/* 800B5624 000B2564  40 82 00 14 */ bne lbl_800B5638
lbl_800B5628:
/* 800B5628 000B2568  7F C3 F3 78 */ mr r3, r30
/* 800B562C 000B256C  38 80 00 05 */ li r4, 5
/* 800B5630 000B2570  4B FF DC 39 */ bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B5634 000B2574  48 00 02 98 */ b lbl_800B58CC
lbl_800B5638:
/* 800B5638 000B2578  2C 1F 02 AD */ cmpwi r31, 0x2ad
/* 800B563C 000B257C  40 82 02 90 */ bne lbl_800B58CC
/* 800B5640 000B2580  7F C3 F3 78 */ mr r3, r30
/* 800B5644 000B2584  38 80 00 45 */ li r4, 0x45
/* 800B5648 000B2588  4B FF DC 21 */ bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B564C 000B258C  48 00 02 80 */ b lbl_800B58CC
lbl_800B5650:
/* 800B5650 000B2590  80 7E 27 EC */ lwz r3, 0x27ec(r30)
/* 800B5654 000B2594  28 03 00 00 */ cmplwi r3, 0
/* 800B5658 000B2598  41 82 00 28 */ beq lbl_800B5680
/* 800B565C 000B259C  80 1E 27 F4 */ lwz r0, 0x27f4(r30)
/* 800B5660 000B25A0  7C 00 18 40 */ cmplw r0, r3
/* 800B5664 000B25A4  40 82 00 1C */ bne lbl_800B5680
/* 800B5668 000B25A8  2C 1F 01 59 */ cmpwi r31, 0x159
/* 800B566C 000B25AC  40 82 00 14 */ bne lbl_800B5680
/* 800B5670 000B25B0  7F C3 F3 78 */ mr r3, r30
/* 800B5674 000B25B4  38 80 00 7B */ li r4, 0x7b
/* 800B5678 000B25B8  4B FF DB F1 */ bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B567C 000B25BC  48 00 02 50 */ b lbl_800B58CC
lbl_800B5680:
/* 800B5680 000B25C0  7F C3 F3 78 */ mr r3, r30
/* 800B5684 000B25C4  4B FF F3 85 */ bl daAlink_c_NS_setTalkStatus
/* 800B5688 000B25C8  48 00 02 44 */ b lbl_800B58CC
lbl_800B568C:
/* 800B568C 000B25CC  28 03 00 07 */ cmplwi r3, 7
/* 800B5690 000B25D0  40 82 00 E4 */ bne lbl_800B5774
/* 800B5694 000B25D4  7F C3 F3 78 */ mr r3, r30
/* 800B5698 000B25D8  48 00 5D 71 */ bl checkMagicArmorHeavy__9daAlink_cCFv
/* 800B569C 000B25DC  2C 03 00 00 */ cmpwi r3, 0
/* 800B56A0 000B25E0  40 82 00 24 */ bne lbl_800B56C4
/* 800B56A4 000B25E4  2C 1F 00 EE */ cmpwi r31, 0xee
/* 800B56A8 000B25E8  41 82 00 0C */ beq lbl_800B56B4
/* 800B56AC 000B25EC  2C 1F 00 EF */ cmpwi r31, 0xef
/* 800B56B0 000B25F0  40 82 00 14 */ bne lbl_800B56C4
lbl_800B56B4:
/* 800B56B4 000B25F4  7F C3 F3 78 */ mr r3, r30
/* 800B56B8 000B25F8  48 03 72 41 */ bl daAlink_c_NS_checkReinRideBgCheck
/* 800B56BC 000B25FC  2C 03 00 00 */ cmpwi r3, 0
/* 800B56C0 000B2600  40 82 00 14 */ bne lbl_800B56D4
lbl_800B56C4:
/* 800B56C4 000B2604  2C 1F 00 ED */ cmpwi r31, 0xed
/* 800B56C8 000B2608  41 82 00 0C */ beq lbl_800B56D4
/* 800B56CC 000B260C  2C 1F 01 87 */ cmpwi r31, 0x187
/* 800B56D0 000B2610  40 82 00 14 */ bne lbl_800B56E4
lbl_800B56D4:
/* 800B56D4 000B2614  7F C3 F3 78 */ mr r3, r30
/* 800B56D8 000B2618  38 80 00 17 */ li r4, 0x17
/* 800B56DC 000B261C  4B FF DB 75 */ bl setDoStatus__9daAlink_cFUc
/* 800B56E0 000B2620  48 00 01 EC */ b lbl_800B58CC
lbl_800B56E4:
/* 800B56E4 000B2624  2C 1F 01 06 */ cmpwi r31, 0x106
/* 800B56E8 000B2628  40 82 00 14 */ bne lbl_800B56FC
/* 800B56EC 000B262C  7F C3 F3 78 */ mr r3, r30
/* 800B56F0 000B2630  38 80 00 38 */ li r4, 0x38
/* 800B56F4 000B2634  4B FF DB 5D */ bl setDoStatus__9daAlink_cFUc
/* 800B56F8 000B2638  48 00 01 D4 */ b lbl_800B58CC
lbl_800B56FC:
/* 800B56FC 000B263C  2C 1F 00 CC */ cmpwi r31, 0xcc
/* 800B5700 000B2640  40 82 00 14 */ bne lbl_800B5714
/* 800B5704 000B2644  7F C3 F3 78 */ mr r3, r30
/* 800B5708 000B2648  38 80 00 99 */ li r4, 0x99
/* 800B570C 000B264C  4B FF DB 5D */ bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B5710 000B2650  48 00 01 BC */ b lbl_800B58CC
lbl_800B5714:
/* 800B5714 000B2654  2C 1F 02 C9 */ cmpwi r31, 0x2c9
/* 800B5718 000B2658  41 82 00 30 */ beq lbl_800B5748
/* 800B571C 000B265C  2C 1F 02 EB */ cmpwi r31, 0x2eb
/* 800B5720 000B2660  40 82 01 AC */ bne lbl_800B58CC
/* 800B5724 000B2664  80 7E 27 F4 */ lwz r3, 0x27f4(r30)
/* 800B5728 000B2668  80 03 00 B0 */ lwz r0, 0xb0(r3)
/* 800B572C 000B266C  54 03 46 3E */ srwi r3, r0, 0x18
/* 800B5730 000B2670  38 03 FF 01 */ addi r0, r3, -255
/* 800B5734 000B2674  30 00 FF FF */ addic r0, r0, -1
/* 800B5738 000B2678  7C 00 01 10 */ subfe r0, r0, r0
/* 800B573C 000B267C  7C 60 00 78 */ andc r0, r3, r0
/* 800B5740 000B2680  2C 00 00 03 */ cmpwi r0, 3
/* 800B5744 000B2684  40 82 01 88 */ bne lbl_800B58CC
lbl_800B5748:
/* 800B5748 000B2688  7F C3 F3 78 */ mr r3, r30
/* 800B574C 000B268C  48 00 3B F5 */ bl daAlink_c_NS_checkEquipAnime
/* 800B5750 000B2690  2C 03 00 00 */ cmpwi r3, 0
/* 800B5754 000B2694  40 82 01 78 */ bne lbl_800B58CC
/* 800B5758 000B2698  48 0A 9C 41 */ bl daPy_py_c_NS_checkMasterSwordEquip
/* 800B575C 000B269C  2C 03 00 00 */ cmpwi r3, 0
/* 800B5760 000B26A0  41 82 01 6C */ beq lbl_800B58CC
/* 800B5764 000B26A4  7F C3 F3 78 */ mr r3, r30
/* 800B5768 000B26A8  38 80 00 63 */ li r4, 0x63
/* 800B576C 000B26AC  4B FF DA E5 */ bl setDoStatus__9daAlink_cFUc
/* 800B5770 000B26B0  48 00 01 5C */ b lbl_800B58CC
lbl_800B5774:
/* 800B5774 000B26B4  80 9E 27 EC */ lwz r4, 0x27ec(r30)
/* 800B5778 000B26B8  28 04 00 00 */ cmplwi r4, 0
/* 800B577C 000B26BC  41 82 00 60 */ beq lbl_800B57DC
/* 800B5780 000B26C0  7F C3 F3 78 */ mr r3, r30
/* 800B5784 000B26C4  48 03 2B 2D */ bl daAlink_c_NS_checkGoatCatchActor
/* 800B5788 000B26C8  2C 03 00 00 */ cmpwi r3, 0
/* 800B578C 000B26CC  41 82 00 50 */ beq lbl_800B57DC
/* 800B5790 000B26D0  80 7E 27 E0 */ lwz r3, 0x27e0(r30)
/* 800B5794 000B26D4  4B FB B0 ED */ bl dAttention_c_NS_getActionBtnB
/* 800B5798 000B26D8  28 03 00 00 */ cmplwi r3, 0
/* 800B579C 000B26DC  41 82 00 40 */ beq lbl_800B57DC
/* 800B57A0 000B26E0  80 7E 27 E0 */ lwz r3, 0x27e0(r30)
/* 800B57A4 000B26E4  4B FB B0 DD */ bl dAttention_c_NS_getActionBtnB
/* 800B57A8 000B26E8  80 03 00 0C */ lwz r0, 0xc(r3)
/* 800B57AC 000B26EC  28 00 00 04 */ cmplwi r0, 4
/* 800B57B0 000B26F0  40 82 00 2C */ bne lbl_800B57DC
/* 800B57B4 000B26F4  80 7E 27 E0 */ lwz r3, 0x27e0(r30)
/* 800B57B8 000B26F8  4B FB B0 C9 */ bl dAttention_c_NS_getActionBtnB
/* 800B57BC 000B26FC  4B FB E0 A9 */ bl dAttList_c_NS_getActor
/* 800B57C0 000B2700  80 1E 27 EC */ lwz r0, 0x27ec(r30)
/* 800B57C4 000B2704  7C 03 00 40 */ cmplw r3, r0
/* 800B57C8 000B2708  40 82 00 14 */ bne lbl_800B57DC
/* 800B57CC 000B270C  7F C3 F3 78 */ mr r3, r30
/* 800B57D0 000B2710  38 80 00 91 */ li r4, 0x91
/* 800B57D4 000B2714  4B FF DA 7D */ bl setDoStatus__9daAlink_cFUc
/* 800B57D8 000B2718  48 00 00 F4 */ b lbl_800B58CC
lbl_800B57DC:
/* 800B57DC 000B271C  80 7E 27 E4 */ lwz r3, 0x27e4(r30)
/* 800B57E0 000B2720  80 03 00 0C */ lwz r0, 0xc(r3)
/* 800B57E4 000B2724  28 00 00 04 */ cmplwi r0, 4
/* 800B57E8 000B2728  40 82 00 DC */ bne lbl_800B58C4
/* 800B57EC 000B272C  80 9E 27 F4 */ lwz r4, 0x27f4(r30)
/* 800B57F0 000B2730  80 04 04 9C */ lwz r0, 0x49c(r4)
/* 800B57F4 000B2734  54 00 04 A5 */ rlwinm. r0, r0, 0, 0x12, 0x12
/* 800B57F8 000B2738  40 82 00 D4 */ bne lbl_800B58CC
/* 800B57FC 000B273C  7F C3 F3 78 */ mr r3, r30
/* 800B5800 000B2740  48 03 2A B1 */ bl daAlink_c_NS_checkGoatCatchActor
/* 800B5804 000B2744  2C 03 00 00 */ cmpwi r3, 0
/* 800B5808 000B2748  41 82 00 14 */ beq lbl_800B581C
/* 800B580C 000B274C  7F C3 F3 78 */ mr r3, r30
/* 800B5810 000B2750  38 80 00 91 */ li r4, 0x91
/* 800B5814 000B2754  4B FF DA 3D */ bl setDoStatus__9daAlink_cFUc
/* 800B5818 000B2758  48 00 00 B4 */ b lbl_800B58CC
lbl_800B581C:
/* 800B581C 000B275C  80 1E 05 70 */ lwz r0, 0x570(r30)
/* 800B5820 000B2760  54 00 04 E7 */ rlwinm. r0, r0, 0, 0x13, 0x13
/* 800B5824 000B2764  40 82 00 A8 */ bne lbl_800B58CC
/* 800B5828 000B2768  7F C3 F3 78 */ mr r3, r30
/* 800B582C 000B276C  80 9E 27 F4 */ lwz r4, 0x27f4(r30)
/* 800B5830 000B2770  48 03 18 91 */ bl daAlink_c_NS_checkInsectActorName
/* 800B5834 000B2774  2C 03 00 00 */ cmpwi r3, 0
/* 800B5838 000B2778  41 82 00 14 */ beq lbl_800B584C
/* 800B583C 000B277C  7F C3 F3 78 */ mr r3, r30
/* 800B5840 000B2780  38 80 00 98 */ li r4, 0x98
/* 800B5844 000B2784  4B FF DA 25 */ bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B5848 000B2788  48 00 00 84 */ b lbl_800B58CC
lbl_800B584C:
/* 800B584C 000B278C  2C 1F 02 19 */ cmpwi r31, 0x219
/* 800B5850 000B2790  40 82 00 14 */ bne lbl_800B5864
/* 800B5854 000B2794  7F C3 F3 78 */ mr r3, r30
/* 800B5858 000B2798  38 80 00 39 */ li r4, 0x39
/* 800B585C 000B279C  4B FF DA 0D */ bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B5860 000B27A0  48 00 00 6C */ b lbl_800B58CC
lbl_800B5864:
/* 800B5864 000B27A4  7F C3 F3 78 */ mr r3, r30
/* 800B5868 000B27A8  48 02 E0 85 */ bl daAlink_c_NS_checkGrabLineCheck
/* 800B586C 000B27AC  2C 03 00 00 */ cmpwi r3, 0
/* 800B5870 000B27B0  40 82 00 5C */ bne lbl_800B58CC
/* 800B5874 000B27B4  2C 1F 01 4D */ cmpwi r31, 0x14d
/* 800B5878 000B27B8  40 82 00 14 */ bne lbl_800B588C
/* 800B587C 000B27BC  7F C3 F3 78 */ mr r3, r30
/* 800B5880 000B27C0  38 80 00 2B */ li r4, 0x2b
/* 800B5884 000B27C4  4B FF D9 CD */ bl setDoStatus__9daAlink_cFUc
/* 800B5888 000B27C8  48 00 00 44 */ b lbl_800B58CC
lbl_800B588C:
/* 800B588C 000B27CC  80 7E 27 F4 */ lwz r3, 0x27f4(r30)
/* 800B5890 000B27D0  88 03 04 9A */ lbz r0, 0x49a(r3)
/* 800B5894 000B27D4  54 00 07 39 */ rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 800B5898 000B27D8  41 82 00 14 */ beq lbl_800B58AC
/* 800B589C 000B27DC  7F C3 F3 78 */ mr r3, r30
/* 800B58A0 000B27E0  38 80 00 34 */ li r4, 0x34
/* 800B58A4 000B27E4  4B FF D9 C5 */ bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B58A8 000B27E8  48 00 00 24 */ b lbl_800B58CC
lbl_800B58AC:
/* 800B58AC 000B27EC  2C 1F 02 16 */ cmpwi r31, 0x216
/* 800B58B0 000B27F0  41 82 00 1C */ beq lbl_800B58CC
/* 800B58B4 000B27F4  7F C3 F3 78 */ mr r3, r30
/* 800B58B8 000B27F8  38 80 00 1F */ li r4, 0x1f
/* 800B58BC 000B27FC  4B FF D9 AD */ bl setDoStatusEmphasys__9daAlink_cFUc
/* 800B58C0 000B2800  48 00 00 0C */ b lbl_800B58CC
lbl_800B58C4:
/* 800B58C4 000B2804  7F C3 F3 78 */ mr r3, r30
/* 800B58C8 000B2808  4B FF F1 41 */ bl daAlink_c_NS_setTalkStatus
lbl_800B58CC:
/* 800B58CC 000B280C  7F C3 F3 78 */ mr r3, r30
/* 800B58D0 000B2810  4B FF F2 AD */ bl daAlink_c_NS_decideCommonDoStatus
lbl_800B58D4:
/* 800B58D4 000B2814  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 800B58D8 000B2818  83 C1 00 08 */ lwz r30, 8(r1)
/* 800B58DC 000B281C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 800B58E0 000B2820  7C 08 03 A6 */ mtlr r0
/* 800B58E4 000B2824  38 21 00 10 */ addi r1, r1, 0x10
/* 800B58E8 000B2828  4E 80 00 20 */ blr
