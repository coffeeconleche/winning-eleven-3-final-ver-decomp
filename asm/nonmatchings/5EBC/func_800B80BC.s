nonmatching func_800B80BC, 0x40C

glabel func_800B80BC
    /* A88BC 800B80BC 0D80023C */  lui        $v0, %hi(D_800D3958)
    /* A88C0 800B80C0 5839428C */  lw         $v0, %lo(D_800D3958)($v0)
    /* A88C4 800B80C4 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* A88C8 800B80C8 1800B0AF */  sw         $s0, 0x18($sp)
    /* A88CC 800B80CC 2180A000 */  addu       $s0, $a1, $zero
    /* A88D0 800B80D0 3000B6AF */  sw         $s6, 0x30($sp)
    /* A88D4 800B80D4 21B0C000 */  addu       $s6, $a2, $zero
    /* A88D8 800B80D8 2000B2AF */  sw         $s2, 0x20($sp)
    /* A88DC 800B80DC 2190E000 */  addu       $s2, $a3, $zero
    /* A88E0 800B80E0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A88E4 800B80E4 21888000 */  addu       $s1, $a0, $zero
    /* A88E8 800B80E8 3400BFAF */  sw         $ra, 0x34($sp)
    /* A88EC 800B80EC 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* A88F0 800B80F0 2800B4AF */  sw         $s4, 0x28($sp)
    /* A88F4 800B80F4 02004228 */  slti       $v0, $v0, 0x2
    /* A88F8 800B80F8 09004014 */  bnez       $v0, .L800B8120
    /* A88FC 800B80FC 2400B3AF */   sw        $s3, 0x24($sp)
    /* A8900 800B8100 FF002232 */  andi       $v0, $s1, 0xFF
    /* A8904 800B8104 80100200 */  sll        $v0, $v0, 2
    /* A8908 800B8108 0D80053C */  lui        $a1, %hi(D_800D3974)
    /* A890C 800B810C 2128A200 */  addu       $a1, $a1, $v0
    /* A8910 800B8110 7439A58C */  lw         $a1, %lo(D_800D3974)($a1)
    /* A8914 800B8114 0180043C */  lui        $a0, %hi(D_80015364)
    /* A8918 800B8118 A6B5020C */  jal        func_800AD698
    /* A891C 800B811C 64538424 */   addiu     $a0, $a0, %lo(D_80015364)
  .L800B8120:
    /* A8920 800B8120 FF002232 */  andi       $v0, $s1, 0xFF
    /* A8924 800B8124 80180200 */  sll        $v1, $v0, 2
    /* A8928 800B8128 0D80023C */  lui        $v0, %hi(D_800D3B94)
    /* A892C 800B812C 21104300 */  addu       $v0, $v0, $v1
    /* A8930 800B8130 943B428C */  lw         $v0, %lo(D_800D3B94)($v0)
    /* A8934 800B8134 00000000 */  nop
    /* A8938 800B8138 10004010 */  beqz       $v0, .L800B817C
    /* A893C 800B813C 21200000 */   addu      $a0, $zero, $zero
    /* A8940 800B8140 0E000016 */  bnez       $s0, .L800B817C
    /* A8944 800B8144 00000000 */   nop
    /* A8948 800B8148 0D80023C */  lui        $v0, %hi(D_800D3958)
    /* A894C 800B814C 5839428C */  lw         $v0, %lo(D_800D3958)($v0)
    /* A8950 800B8150 00000000 */  nop
    /* A8954 800B8154 D2004018 */  blez       $v0, .L800B84A0
    /* A8958 800B8158 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* A895C 800B815C 0D80053C */  lui        $a1, %hi(D_800D3974)
    /* A8960 800B8160 2128A300 */  addu       $a1, $a1, $v1
    /* A8964 800B8164 7439A58C */  lw         $a1, %lo(D_800D3974)($a1)
    /* A8968 800B8168 0180043C */  lui        $a0, %hi(D_8001536C)
    /* A896C 800B816C A6B5020C */  jal        func_800AD698
    /* A8970 800B8170 6C538424 */   addiu     $a0, $a0, %lo(D_8001536C)
    /* A8974 800B8174 28E10208 */  j          .L800B84A0
    /* A8978 800B8178 FEFF0224 */   addiu     $v0, $zero, -0x2
  .L800B817C:
    /* A897C 800B817C DDDE020C */  jal        func_800B7B74
    /* A8980 800B8180 21280000 */   addu      $a1, $zero, $zero
    /* A8984 800B8184 FF002332 */  andi       $v1, $s1, 0xFF
    /* A8988 800B8188 02000224 */  addiu      $v0, $zero, 0x2
    /* A898C 800B818C 0D006214 */  bne        $v1, $v0, .L800B81C4
    /* A8990 800B8190 0E000224 */   addiu     $v0, $zero, 0xE
    /* A8994 800B8194 21200000 */  addu       $a0, $zero, $zero
    /* A8998 800B8198 21100402 */  addu       $v0, $s0, $a0
  .L800B819C:
    /* A899C 800B819C 00004290 */  lbu        $v0, 0x0($v0)
    /* A89A0 800B81A0 0D80013C */  lui        $at, %hi(D_800D3968)
    /* A89A4 800B81A4 21082400 */  addu       $at, $at, $a0
    /* A89A8 800B81A8 683922A0 */  sb         $v0, %lo(D_800D3968)($at)
    /* A89AC 800B81AC 01008424 */  addiu      $a0, $a0, 0x1
    /* A89B0 800B81B0 04008228 */  slti       $v0, $a0, 0x4
    /* A89B4 800B81B4 F9FF4014 */  bnez       $v0, .L800B819C
    /* A89B8 800B81B8 21100402 */   addu      $v0, $s0, $a0
    /* A89BC 800B81BC FF002332 */  andi       $v1, $s1, 0xFF
    /* A89C0 800B81C0 0E000224 */  addiu      $v0, $zero, 0xE
  .L800B81C4:
    /* A89C4 800B81C4 04006214 */  bne        $v1, $v0, .L800B81D8
    /* A89C8 800B81C8 00000000 */   nop
    /* A89CC 800B81CC 00000292 */  lbu        $v0, 0x0($s0)
    /* A89D0 800B81D0 0D80013C */  lui        $at, %hi(D_800D396C)
    /* A89D4 800B81D4 6C3922A0 */  sb         $v0, %lo(D_800D396C)($at)
  .L800B81D8:
    /* A89D8 800B81D8 0D80053C */  lui        $a1, %hi(D_800D3C2C)
    /* A89DC 800B81DC 2C3CA524 */  addiu      $a1, $a1, %lo(D_800D3C2C)
    /* A89E0 800B81E0 80200300 */  sll        $a0, $v1, 2
    /* A89E4 800B81E4 0000A0A0 */  sb         $zero, 0x0($a1)
    /* A89E8 800B81E8 0D80023C */  lui        $v0, %hi(D_800D3A94)
    /* A89EC 800B81EC 21104400 */  addu       $v0, $v0, $a0
    /* A89F0 800B81F0 943A428C */  lw         $v0, %lo(D_800D3A94)($v0)
    /* A89F4 800B81F4 0D80033C */  lui        $v1, %hi(D_800D3A94)
    /* A89F8 800B81F8 02004010 */  beqz       $v0, .L800B8204
    /* A89FC 800B81FC 943A6324 */   addiu     $v1, $v1, %lo(D_800D3A94)
    /* A8A00 800B8200 0100A0A0 */  sb         $zero, 0x1($a1)
  .L800B8204:
    /* A8A04 800B8204 0D80023C */  lui        $v0, %hi(D_800D3C14)
    /* A8A08 800B8208 143C428C */  lw         $v0, %lo(D_800D3C14)($v0)
    /* A8A0C 800B820C 00000000 */  nop
    /* A8A10 800B8210 000040A0 */  sb         $zero, 0x0($v0)
    /* A8A14 800B8214 00016224 */  addiu      $v0, $v1, 0x100
    /* A8A18 800B8218 21188200 */  addu       $v1, $a0, $v0
    /* A8A1C 800B821C 0000628C */  lw         $v0, 0x0($v1)
    /* A8A20 800B8220 00000000 */  nop
    /* A8A24 800B8224 0D004018 */  blez       $v0, .L800B825C
    /* A8A28 800B8228 21200000 */   addu      $a0, $zero, $zero
    /* A8A2C 800B822C 21286000 */  addu       $a1, $v1, $zero
    /* A8A30 800B8230 21100402 */  addu       $v0, $s0, $a0
  .L800B8234:
    /* A8A34 800B8234 0D80033C */  lui        $v1, %hi(D_800D3C1C)
    /* A8A38 800B8238 1C3C638C */  lw         $v1, %lo(D_800D3C1C)($v1)
    /* A8A3C 800B823C 00004290 */  lbu        $v0, 0x0($v0)
    /* A8A40 800B8240 00000000 */  nop
    /* A8A44 800B8244 000062A0 */  sb         $v0, 0x0($v1)
    /* A8A48 800B8248 0000A28C */  lw         $v0, 0x0($a1)
    /* A8A4C 800B824C 01008424 */  addiu      $a0, $a0, 0x1
    /* A8A50 800B8250 2A108200 */  slt        $v0, $a0, $v0
    /* A8A54 800B8254 F7FF4014 */  bnez       $v0, .L800B8234
    /* A8A58 800B8258 21100402 */   addu      $v0, $s0, $a0
  .L800B825C:
    /* A8A5C 800B825C 0D80023C */  lui        $v0, %hi(D_800D3C18)
    /* A8A60 800B8260 183C428C */  lw         $v0, %lo(D_800D3C18)($v0)
    /* A8A64 800B8264 0D80013C */  lui        $at, %hi(D_800D396D)
    /* A8A68 800B8268 6D3931A0 */  sb         $s1, %lo(D_800D396D)($at)
    /* A8A6C 800B826C 000051A0 */  sb         $s1, 0x0($v0)
    /* A8A70 800B8270 8B004016 */  bnez       $s2, .L800B84A0
    /* A8A74 800B8274 21100000 */   addu      $v0, $zero, $zero
    /* A8A78 800B8278 46E9020C */  jal        func_800BA518
    /* A8A7C 800B827C FFFF0424 */   addiu     $a0, $zero, -0x1
    /* A8A80 800B8280 C0034224 */  addiu      $v0, $v0, 0x3C0
    /* A8A84 800B8284 0D80043C */  lui        $a0, %hi(D_800D3C2C)
    /* A8A88 800B8288 2C3C8424 */  addiu      $a0, $a0, %lo(D_800D3C2C)
    /* A8A8C 800B828C 0E80013C */  lui        $at, %hi(D_800E71E0)
    /* A8A90 800B8290 E07122AC */  sw         $v0, %lo(D_800E71E0)($at)
    /* A8A94 800B8294 0E80013C */  lui        $at, %hi(D_800E71E4)
    /* A8A98 800B8298 E47120AC */  sw         $zero, %lo(D_800E71E4)($at)
    /* A8A9C 800B829C 00008390 */  lbu        $v1, 0x0($a0)
    /* A8AA0 800B82A0 0180023C */  lui        $v0, %hi(D_8001537C)
    /* A8AA4 800B82A4 7C534224 */  addiu      $v0, $v0, %lo(D_8001537C)
    /* A8AA8 800B82A8 0E80013C */  lui        $at, %hi(D_800E71E8)
    /* A8AAC 800B82AC E87122AC */  sw         $v0, %lo(D_800E71E8)($at)
    /* A8AB0 800B82B0 67006014 */  bnez       $v1, .L800B8450
    /* A8AB4 800B82B4 2130C002 */   addu      $a2, $s6, $zero
    /* A8AB8 800B82B8 0D80153C */  lui        $s5, %hi(D_800D3974)
    /* A8ABC 800B82BC 7439B526 */  addiu      $s5, $s5, %lo(D_800D3974)
    /* A8AC0 800B82C0 0D80133C */  lui        $s3, %hi(D_800D39F4)
    /* A8AC4 800B82C4 F4397326 */  addiu      $s3, $s3, %lo(D_800D39F4)
    /* A8AC8 800B82C8 21908000 */  addu       $s2, $a0, $zero
    /* A8ACC 800B82CC 01005426 */  addiu      $s4, $s2, 0x1
  .L800B82D0:
    /* A8AD0 800B82D0 46E9020C */  jal        func_800BA518
    /* A8AD4 800B82D4 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* A8AD8 800B82D8 0E80033C */  lui        $v1, %hi(D_800E71E0)
    /* A8ADC 800B82DC E071638C */  lw         $v1, %lo(D_800E71E0)($v1)
    /* A8AE0 800B82E0 00000000 */  nop
    /* A8AE4 800B82E4 2A186200 */  slt        $v1, $v1, $v0
    /* A8AE8 800B82E8 0C006014 */  bnez       $v1, .L800B831C
    /* A8AEC 800B82EC 00000000 */   nop
    /* A8AF0 800B82F0 0E80023C */  lui        $v0, %hi(D_800E71E4)
    /* A8AF4 800B82F4 E471428C */  lw         $v0, %lo(D_800E71E4)($v0)
    /* A8AF8 800B82F8 00000000 */  nop
    /* A8AFC 800B82FC 21184000 */  addu       $v1, $v0, $zero
    /* A8B00 800B8300 01004224 */  addiu      $v0, $v0, 0x1
    /* A8B04 800B8304 0E80013C */  lui        $at, %hi(D_800E71E4)
    /* A8B08 800B8308 E47122AC */  sw         $v0, %lo(D_800E71E4)($at)
    /* A8B0C 800B830C 3C00023C */  lui        $v0, (0x3C0000 >> 16)
    /* A8B10 800B8310 2A104300 */  slt        $v0, $v0, $v1
    /* A8B14 800B8314 1B004010 */  beqz       $v0, .L800B8384
    /* A8B18 800B8318 00000000 */   nop
  .L800B831C:
    /* A8B1C 800B831C 0180043C */  lui        $a0, %hi(D_800152C8)
    /* A8B20 800B8320 60E3020C */  jal        func_800B8D80
    /* A8B24 800B8324 C8528424 */   addiu     $a0, $a0, %lo(D_800152C8)
    /* A8B28 800B8328 00004492 */  lbu        $a0, 0x0($s2)
    /* A8B2C 800B832C 01004292 */  lbu        $v0, 0x1($s2)
    /* A8B30 800B8330 0E80053C */  lui        $a1, %hi(D_800E71E8)
    /* A8B34 800B8334 E871A58C */  lw         $a1, %lo(D_800E71E8)($a1)
    /* A8B38 800B8338 80100200 */  sll        $v0, $v0, 2
    /* A8B3C 800B833C 21105300 */  addu       $v0, $v0, $s3
    /* A8B40 800B8340 80200400 */  sll        $a0, $a0, 2
    /* A8B44 800B8344 0000438C */  lw         $v1, 0x0($v0)
    /* A8B48 800B8348 0D80023C */  lui        $v0, %hi(D_800D396D)
    /* A8B4C 800B834C 6D394290 */  lbu        $v0, %lo(D_800D396D)($v0)
    /* A8B50 800B8350 21209300 */  addu       $a0, $a0, $s3
    /* A8B54 800B8354 80100200 */  sll        $v0, $v0, 2
    /* A8B58 800B8358 21105500 */  addu       $v0, $v0, $s5
    /* A8B5C 800B835C 1000A3AF */  sw         $v1, 0x10($sp)
    /* A8B60 800B8360 0000468C */  lw         $a2, 0x0($v0)
    /* A8B64 800B8364 0000878C */  lw         $a3, 0x0($a0)
    /* A8B68 800B8368 0180043C */  lui        $a0, %hi(D_800152D8)
    /* A8B6C 800B836C A6B5020C */  jal        func_800AD698
    /* A8B70 800B8370 D8528424 */   addiu     $a0, $a0, %lo(D_800152D8)
    /* A8B74 800B8374 54E1020C */  jal        func_800B8550
    /* A8B78 800B8378 00000000 */   nop
    /* A8B7C 800B837C E2E00208 */  j          .L800B8388
    /* A8B80 800B8380 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800B8384:
    /* A8B84 800B8384 21100000 */  addu       $v0, $zero, $zero
  .L800B8388:
    /* A8B88 800B8388 45004014 */  bnez       $v0, .L800B84A0
    /* A8B8C 800B838C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A8B90 800B8390 23EA020C */  jal        func_800BA88C
    /* A8B94 800B8394 00000000 */   nop
    /* A8B98 800B8398 29004010 */  beqz       $v0, .L800B8440
    /* A8B9C 800B839C 00000000 */   nop
    /* A8BA0 800B83A0 0D80023C */  lui        $v0, %hi(D_800D3C14)
    /* A8BA4 800B83A4 143C428C */  lw         $v0, %lo(D_800D3C14)($v0)
    /* A8BA8 800B83A8 00000000 */  nop
    /* A8BAC 800B83AC 00004290 */  lbu        $v0, 0x0($v0)
    /* A8BB0 800B83B0 00000000 */  nop
    /* A8BB4 800B83B4 03005130 */  andi       $s1, $v0, 0x3
  .L800B83B8:
    /* A8BB8 800B83B8 86DD020C */  jal        func_800B7618
    /* A8BBC 800B83BC 00000000 */   nop
    /* A8BC0 800B83C0 21804000 */  addu       $s0, $v0, $zero
    /* A8BC4 800B83C4 1A000012 */  beqz       $s0, .L800B8430
    /* A8BC8 800B83C8 04000232 */   andi      $v0, $s0, 0x4
    /* A8BCC 800B83CC 0B004010 */  beqz       $v0, .L800B83FC
    /* A8BD0 800B83D0 02000232 */   andi      $v0, $s0, 0x2
    /* A8BD4 800B83D4 0D80023C */  lui        $v0, %hi(D_800D3950)
    /* A8BD8 800B83D8 5039428C */  lw         $v0, %lo(D_800D3950)($v0)
    /* A8BDC 800B83DC 00000000 */  nop
    /* A8BE0 800B83E0 05004010 */  beqz       $v0, .L800B83F8
    /* A8BE4 800B83E4 00000000 */   nop
    /* A8BE8 800B83E8 00008492 */  lbu        $a0, 0x0($s4)
    /* A8BEC 800B83EC 0E80053C */  lui        $a1, %hi(D_800E71D0)
    /* A8BF0 800B83F0 09F84000 */  jalr       $v0
    /* A8BF4 800B83F4 D071A524 */   addiu     $a1, $a1, %lo(D_800E71D0)
  .L800B83F8:
    /* A8BF8 800B83F8 02000232 */  andi       $v0, $s0, 0x2
  .L800B83FC:
    /* A8BFC 800B83FC EEFF4010 */  beqz       $v0, .L800B83B8
    /* A8C00 800B8400 00000000 */   nop
    /* A8C04 800B8404 0D80023C */  lui        $v0, %hi(D_800D394C)
    /* A8C08 800B8408 4C39428C */  lw         $v0, %lo(D_800D394C)($v0)
    /* A8C0C 800B840C 00000000 */  nop
    /* A8C10 800B8410 E9FF4010 */  beqz       $v0, .L800B83B8
    /* A8C14 800B8414 00000000 */   nop
    /* A8C18 800B8418 00004492 */  lbu        $a0, 0x0($s2)
    /* A8C1C 800B841C 0E80053C */  lui        $a1, %hi(D_800E71C8)
    /* A8C20 800B8420 09F84000 */  jalr       $v0
    /* A8C24 800B8424 C871A524 */   addiu     $a1, $a1, %lo(D_800E71C8)
    /* A8C28 800B8428 EEE00208 */  j          .L800B83B8
    /* A8C2C 800B842C 00000000 */   nop
  .L800B8430:
    /* A8C30 800B8430 0D80023C */  lui        $v0, %hi(D_800D3C14)
    /* A8C34 800B8434 143C428C */  lw         $v0, %lo(D_800D3C14)($v0)
    /* A8C38 800B8438 00000000 */  nop
    /* A8C3C 800B843C 000051A0 */  sb         $s1, 0x0($v0)
  .L800B8440:
    /* A8C40 800B8440 00004292 */  lbu        $v0, 0x0($s2)
    /* A8C44 800B8444 00000000 */  nop
    /* A8C48 800B8448 A1FF4010 */  beqz       $v0, .L800B82D0
    /* A8C4C 800B844C 2130C002 */   addu      $a2, $s6, $zero
  .L800B8450:
    /* A8C50 800B8450 0E80043C */  lui        $a0, %hi(D_800E71C8)
    /* A8C54 800B8454 C8718424 */  addiu      $a0, $a0, %lo(D_800E71C8)
    /* A8C58 800B8458 0800C010 */  beqz       $a2, .L800B847C
    /* A8C5C 800B845C 07000324 */   addiu     $v1, $zero, 0x7
    /* A8C60 800B8460 FFFF0524 */  addiu      $a1, $zero, -0x1
  .L800B8464:
    /* A8C64 800B8464 00008290 */  lbu        $v0, 0x0($a0)
    /* A8C68 800B8468 01008424 */  addiu      $a0, $a0, 0x1
    /* A8C6C 800B846C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* A8C70 800B8470 0000C2A0 */  sb         $v0, 0x0($a2)
    /* A8C74 800B8474 FBFF6514 */  bne        $v1, $a1, .L800B8464
    /* A8C78 800B8478 0100C624 */   addiu     $a2, $a2, 0x1
  .L800B847C:
    /* A8C7C 800B847C 21200000 */  addu       $a0, $zero, $zero
    /* A8C80 800B8480 0D80023C */  lui        $v0, %hi(D_800D3C2C)
    /* A8C84 800B8484 2C3C4224 */  addiu      $v0, $v0, %lo(D_800D3C2C)
    /* A8C88 800B8488 00004390 */  lbu        $v1, 0x0($v0)
    /* A8C8C 800B848C 05000224 */  addiu      $v0, $zero, 0x5
    /* A8C90 800B8490 03006214 */  bne        $v1, $v0, .L800B84A0
    /* A8C94 800B8494 21108000 */   addu      $v0, $a0, $zero
    /* A8C98 800B8498 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* A8C9C 800B849C 21108000 */  addu       $v0, $a0, $zero
  .L800B84A0:
    /* A8CA0 800B84A0 3400BF8F */  lw         $ra, 0x34($sp)
    /* A8CA4 800B84A4 3000B68F */  lw         $s6, 0x30($sp)
    /* A8CA8 800B84A8 2C00B58F */  lw         $s5, 0x2C($sp)
    /* A8CAC 800B84AC 2800B48F */  lw         $s4, 0x28($sp)
    /* A8CB0 800B84B0 2400B38F */  lw         $s3, 0x24($sp)
    /* A8CB4 800B84B4 2000B28F */  lw         $s2, 0x20($sp)
    /* A8CB8 800B84B8 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A8CBC 800B84BC 1800B08F */  lw         $s0, 0x18($sp)
    /* A8CC0 800B84C0 0800E003 */  jr         $ra
    /* A8CC4 800B84C4 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_800B80BC
