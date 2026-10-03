nonmatching func_8008A240, 0x220

glabel func_8008A240
    /* 7AA40 8008A240 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 7AA44 8008A244 1000BFAF */  sw         $ra, 0x10($sp)
    /* 7AA48 8008A248 96038290 */  lbu        $v0, 0x396($a0)
    /* 7AA4C 8008A24C 00000000 */  nop
    /* 7AA50 8008A250 7FFF4324 */  addiu      $v1, $v0, -0x81
    /* 7AA54 8008A254 7E00622C */  sltiu      $v0, $v1, 0x7E
    /* 7AA58 8008A258 7D004010 */  beqz       $v0, .L8008A450
    /* 7AA5C 8008A25C 80100300 */   sll       $v0, $v1, 2
    /* 7AA60 8008A260 0180013C */  lui        $at, %hi(jtbl_80013B1C)
    /* 7AA64 8008A264 21082200 */  addu       $at, $at, $v0
    /* 7AA68 8008A268 1C3B228C */  lw         $v0, %lo(jtbl_80013B1C)($at)
    /* 7AA6C 8008A26C 00000000 */  nop
    /* 7AA70 8008A270 08004000 */  jr         $v0
    /* 7AA74 8008A274 00000000 */   nop
  jlabel .L8008A278
    /* 7AA78 8008A278 DF2F020C */  jal        func_8008BF7C
    /* 7AA7C 8008A27C 00000000 */   nop
    /* 7AA80 8008A280 14290208 */  j          .L8008A450
    /* 7AA84 8008A284 00000000 */   nop
  jlabel .L8008A288
    /* 7AA88 8008A288 59B7010C */  jal        func_8006DD64
    /* 7AA8C 8008A28C 00000000 */   nop
    /* 7AA90 8008A290 14290208 */  j          .L8008A450
    /* 7AA94 8008A294 00000000 */   nop
  jlabel .L8008A298
    /* 7AA98 8008A298 1829020C */  jal        func_8008A460
    /* 7AA9C 8008A29C 00000000 */   nop
    /* 7AAA0 8008A2A0 14290208 */  j          .L8008A450
    /* 7AAA4 8008A2A4 00000000 */   nop
  jlabel .L8008A2A8
    /* 7AAA8 8008A2A8 9729020C */  jal        func_8008A65C
    /* 7AAAC 8008A2AC 00000000 */   nop
    /* 7AAB0 8008A2B0 14290208 */  j          .L8008A450
    /* 7AAB4 8008A2B4 00000000 */   nop
  jlabel .L8008A2B8
    /* 7AAB8 8008A2B8 D029020C */  jal        func_8008A740
    /* 7AABC 8008A2BC 00000000 */   nop
    /* 7AAC0 8008A2C0 14290208 */  j          .L8008A450
    /* 7AAC4 8008A2C4 00000000 */   nop
  jlabel .L8008A2C8
    /* 7AAC8 8008A2C8 292A020C */  jal        func_8008A8A4
    /* 7AACC 8008A2CC 00000000 */   nop
    /* 7AAD0 8008A2D0 14290208 */  j          .L8008A450
    /* 7AAD4 8008A2D4 00000000 */   nop
  jlabel .L8008A2D8
    /* 7AAD8 8008A2D8 AB3A020C */  jal        func_8008EAAC
    /* 7AADC 8008A2DC 00000000 */   nop
    /* 7AAE0 8008A2E0 14290208 */  j          .L8008A450
    /* 7AAE4 8008A2E4 00000000 */   nop
  jlabel .L8008A2E8
    /* 7AAE8 8008A2E8 303B020C */  jal        func_8008ECC0
    /* 7AAEC 8008A2EC 00000000 */   nop
    /* 7AAF0 8008A2F0 14290208 */  j          .L8008A450
    /* 7AAF4 8008A2F4 00000000 */   nop
  jlabel .L8008A2F8
    /* 7AAF8 8008A2F8 E93B020C */  jal        func_8008EFA4
    /* 7AAFC 8008A2FC 00000000 */   nop
    /* 7AB00 8008A300 14290208 */  j          .L8008A450
    /* 7AB04 8008A304 00000000 */   nop
  jlabel .L8008A308
    /* 7AB08 8008A308 D634020C */  jal        func_8008D358
    /* 7AB0C 8008A30C 00000000 */   nop
    /* 7AB10 8008A310 14290208 */  j          .L8008A450
    /* 7AB14 8008A314 00000000 */   nop
  jlabel .L8008A318
    /* 7AB18 8008A318 AE32020C */  jal        func_8008CAB8
    /* 7AB1C 8008A31C 00000000 */   nop
    /* 7AB20 8008A320 14290208 */  j          .L8008A450
    /* 7AB24 8008A324 00000000 */   nop
  jlabel .L8008A328
    /* 7AB28 8008A328 7B33020C */  jal        func_8008CDEC
    /* 7AB2C 8008A32C 00000000 */   nop
    /* 7AB30 8008A330 14290208 */  j          .L8008A450
    /* 7AB34 8008A334 00000000 */   nop
  jlabel .L8008A338
    /* 7AB38 8008A338 CD3D020C */  jal        func_8008F734
    /* 7AB3C 8008A33C 00000000 */   nop
    /* 7AB40 8008A340 14290208 */  j          .L8008A450
    /* 7AB44 8008A344 00000000 */   nop
  jlabel .L8008A348
    /* 7AB48 8008A348 B73C020C */  jal        func_8008F2DC
    /* 7AB4C 8008A34C 00000000 */   nop
    /* 7AB50 8008A350 14290208 */  j          .L8008A450
    /* 7AB54 8008A354 00000000 */   nop
  jlabel .L8008A358
    /* 7AB58 8008A358 6E3F020C */  jal        func_8008FDB8
    /* 7AB5C 8008A35C 00000000 */   nop
    /* 7AB60 8008A360 14290208 */  j          .L8008A450
    /* 7AB64 8008A364 00000000 */   nop
  jlabel .L8008A368
    /* 7AB68 8008A368 384C020C */  jal        func_800930E0
    /* 7AB6C 8008A36C 00000000 */   nop
    /* 7AB70 8008A370 14290208 */  j          .L8008A450
    /* 7AB74 8008A374 00000000 */   nop
  jlabel .L8008A378
    /* 7AB78 8008A378 B947020C */  jal        func_80091EE4
    /* 7AB7C 8008A37C 00000000 */   nop
    /* 7AB80 8008A380 14290208 */  j          .L8008A450
    /* 7AB84 8008A384 00000000 */   nop
  jlabel .L8008A388
    /* 7AB88 8008A388 5E49020C */  jal        func_80092578
    /* 7AB8C 8008A38C 00000000 */   nop
    /* 7AB90 8008A390 14290208 */  j          .L8008A450
    /* 7AB94 8008A394 00000000 */   nop
  jlabel .L8008A398
    /* 7AB98 8008A398 FC45020C */  jal        func_800917F0
    /* 7AB9C 8008A39C 00000000 */   nop
    /* 7ABA0 8008A3A0 14290208 */  j          .L8008A450
    /* 7ABA4 8008A3A4 00000000 */   nop
  jlabel .L8008A3A8
    /* 7ABA8 8008A3A8 034B020C */  jal        func_80092C0C
    /* 7ABAC 8008A3AC 00000000 */   nop
    /* 7ABB0 8008A3B0 14290208 */  j          .L8008A450
    /* 7ABB4 8008A3B4 00000000 */   nop
  jlabel .L8008A3B8
    /* 7ABB8 8008A3B8 914D020C */  jal        func_80093644
    /* 7ABBC 8008A3BC 00000000 */   nop
    /* 7ABC0 8008A3C0 14290208 */  j          .L8008A450
    /* 7ABC4 8008A3C4 00000000 */   nop
  jlabel .L8008A3C8
    /* 7ABC8 8008A3C8 7C2C020C */  jal        func_8008B1F0
    /* 7ABCC 8008A3CC 00000000 */   nop
    /* 7ABD0 8008A3D0 14290208 */  j          .L8008A450
    /* 7ABD4 8008A3D4 00000000 */   nop
  jlabel .L8008A3D8
    /* 7ABD8 8008A3D8 492E020C */  jal        func_8008B924
    /* 7ABDC 8008A3DC 00000000 */   nop
    /* 7ABE0 8008A3E0 14290208 */  j          .L8008A450
    /* 7ABE4 8008A3E4 00000000 */   nop
  jlabel .L8008A3E8
    /* 7ABE8 8008A3E8 C02D020C */  jal        func_8008B700
    /* 7ABEC 8008A3EC 00000000 */   nop
    /* 7ABF0 8008A3F0 14290208 */  j          .L8008A450
    /* 7ABF4 8008A3F4 00000000 */   nop
  jlabel .L8008A3F8
    /* 7ABF8 8008A3F8 D230020C */  jal        func_8008C348
    /* 7ABFC 8008A3FC 00000000 */   nop
    /* 7AC00 8008A400 14290208 */  j          .L8008A450
    /* 7AC04 8008A404 00000000 */   nop
  jlabel .L8008A408
    /* 7AC08 8008A408 752A020C */  jal        func_8008A9D4
    /* 7AC0C 8008A40C 00000000 */   nop
    /* 7AC10 8008A410 14290208 */  j          .L8008A450
    /* 7AC14 8008A414 00000000 */   nop
  jlabel .L8008A418
    /* 7AC18 8008A418 8130020C */  jal        func_8008C204
    /* 7AC1C 8008A41C 00000000 */   nop
    /* 7AC20 8008A420 14290208 */  j          .L8008A450
    /* 7AC24 8008A424 00000000 */   nop
  jlabel .L8008A428
    /* 7AC28 8008A428 7CB9010C */  jal        func_8006E5F0
    /* 7AC2C 8008A42C 00000000 */   nop
    /* 7AC30 8008A430 14290208 */  j          .L8008A450
    /* 7AC34 8008A434 00000000 */   nop
  jlabel .L8008A438
    /* 7AC38 8008A438 1A4F020C */  jal        func_80093C68
    /* 7AC3C 8008A43C 00000000 */   nop
    /* 7AC40 8008A440 14290208 */  j          .L8008A450
    /* 7AC44 8008A444 00000000 */   nop
  jlabel .L8008A448
    /* 7AC48 8008A448 2526060C */  jal        func_80189894
    /* 7AC4C 8008A44C 00000000 */   nop
  jlabel .L8008A450
    /* 7AC50 8008A450 1000BF8F */  lw         $ra, 0x10($sp)
    /* 7AC54 8008A454 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 7AC58 8008A458 0800E003 */  jr         $ra
    /* 7AC5C 8008A45C 00000000 */   nop
endlabel func_8008A240
