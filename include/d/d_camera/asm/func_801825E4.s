/* 801825E4 0017F524  38 00 00 00 */ li r0, 0
/* 801825E8 0017F528  98 03 00 49 */ stb r0, 0x49(r3)
/* 801825EC 0017F52C  88 03 00 49 */ lbz r0, 0x49(r3)
/* 801825F0 0017F530  7C 00 00 34 */ cntlzw r0, r0
/* 801825F4 0017F534  54 03 D9 7E */ srwi r3, r0, 5
/* 801825F8 0017F538  4E 80 00 20 */ blr