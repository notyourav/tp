/* 801824C8 0017F408  94 21 FF E0 */ stwu r1, -0x20(r1)
/* 801824CC 0017F40C  38 80 00 00 */ li r4, 0
/* 801824D0 0017F410  98 83 00 49 */ stb r4, 0x49(r3)
/* 801824D4 0017F414  38 00 00 01 */ li r0, 1
/* 801824D8 0017F418  98 03 00 48 */ stb r0, 0x48(r3)
/* 801824DC 0017F41C  C0 42 9E D8 */ lfs f2, lbl_804538D8-_SDA2_BASE_(r2)
/* 801824E0 0017F420  D0 41 00 08 */ stfs f2, 8(r1)
/* 801824E4 0017F424  C0 02 9F 24 */ lfs f0, lbl_80453924-_SDA2_BASE_(r2)
/* 801824E8 0017F428  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 801824EC 0017F42C  C0 22 9C A0 */ lfs f1, lbl_804536A0-_SDA2_BASE_(r2)
/* 801824F0 0017F430  D0 21 00 10 */ stfs f1, 0x10(r1)
/* 801824F4 0017F434  D0 43 00 38 */ stfs f2, 0x38(r3)
/* 801824F8 0017F438  D0 03 00 3C */ stfs f0, 0x3c(r3)
/* 801824FC 0017F43C  D0 23 00 40 */ stfs f1, 0x40(r3)
/* 80182500 0017F440  38 00 00 FF */ li r0, 0xff
/* 80182504 0017F444  98 03 00 44 */ stb r0, 0x44(r3)
/* 80182508 0017F448  98 03 00 45 */ stb r0, 0x45(r3)
/* 8018250C 0017F44C  98 03 00 46 */ stb r0, 0x46(r3)
/* 80182510 0017F450  38 00 00 60 */ li r0, 0x60
/* 80182514 0017F454  98 03 00 47 */ stb r0, 0x47(r3)
/* 80182518 0017F458  38 00 00 64 */ li r0, 0x64
/* 8018251C 0017F45C  90 03 00 4C */ stw r0, 0x4c(r3)
/* 80182520 0017F460  90 03 00 50 */ stw r0, 0x50(r3)
/* 80182524 0017F464  90 03 00 54 */ stw r0, 0x54(r3)
/* 80182528 0017F468  38 00 00 50 */ li r0, 0x50
/* 8018252C 0017F46C  B0 03 00 58 */ sth r0, 0x58(r3)
/* 80182530 0017F470  B0 83 00 5A */ sth r4, 0x5a(r3)
/* 80182534 0017F474  38 00 00 04 */ li r0, 4
/* 80182538 0017F478  B0 03 00 5C */ sth r0, 0x5c(r3)
/* 8018253C 0017F47C  B0 03 00 5E */ sth r0, 0x5e(r3)
/* 80182540 0017F480  C0 02 9D E8 */ lfs f0, lbl_804537E8-_SDA2_BASE_(r2)
/* 80182544 0017F484  D0 03 00 68 */ stfs f0, 0x68(r3)
/* 80182548 0017F488  D0 23 00 6C */ stfs f1, 0x6c(r3)
/* 8018254C 0017F48C  D0 03 00 60 */ stfs f0, 0x60(r3)
/* 80182550 0017F490  C0 02 9C B8 */ lfs f0, lbl_804536B8-_SDA2_BASE_(r2)
/* 80182554 0017F494  D0 03 00 64 */ stfs f0, 0x64(r3)
/* 80182558 0017F498  38 21 00 20 */ addi r1, r1, 0x20
/* 8018255C 0017F49C  4E 80 00 20 */ blr
