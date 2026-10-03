nonmatching func_801BF0F4, 0x268

glabel func_801BF0F4
    /* 3617C 801BF0F4 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 36180 801BF0F8 4000B6AF */  sw         $s6, 0x40($sp)
    /* 36184 801BF0FC D0FF1624 */  addiu      $s6, $zero, -0x30
    /* 36188 801BF100 4800BFAF */  sw         $ra, 0x48($sp)
    /* 3618C 801BF104 4400B7AF */  sw         $s7, 0x44($sp)
    /* 36190 801BF108 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 36194 801BF10C 3800B4AF */  sw         $s4, 0x38($sp)
    /* 36198 801BF110 3400B3AF */  sw         $s3, 0x34($sp)
    /* 3619C 801BF114 3000B2AF */  sw         $s2, 0x30($sp)
    /* 361A0 801BF118 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 361A4 801BF11C D6FE060C */  jal        func_801BFB58
    /* 361A8 801BF120 2800B0AF */   sw        $s0, 0x28($sp)
    /* 361AC 801BF124 1180023C */  lui        $v0, %hi(D_80108667)
    /* 361B0 801BF128 67864290 */  lbu        $v0, %lo(D_80108667)($v0)
    /* 361B4 801BF12C 1080173C */  lui        $s7, %hi(D_800FF748)
    /* 361B8 801BF130 48F7F726 */  addiu      $s7, $s7, %lo(D_800FF748)
    /* 361BC 801BF134 82110200 */  srl        $v0, $v0, 6
    /* 361C0 801BF138 01004230 */  andi       $v0, $v0, 0x1
    /* 361C4 801BF13C 10004010 */  beqz       $v0, .L801BF180
    /* 361C8 801BF140 0040043C */   lui       $a0, (0x40000000 >> 16)
    /* 361CC 801BF144 3A000524 */  addiu      $a1, $zero, 0x3A
    /* 361D0 801BF148 5FFF0624 */  addiu      $a2, $zero, -0xA1
    /* 361D4 801BF14C 21380000 */  addu       $a3, $zero, $zero
    /* 361D8 801BF150 62010224 */  addiu      $v0, $zero, 0x162
    /* 361DC 801BF154 1000A2AF */  sw         $v0, 0x10($sp)
    /* 361E0 801BF158 30000224 */  addiu      $v0, $zero, 0x30
    /* 361E4 801BF15C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 361E8 801BF160 60000224 */  addiu      $v0, $zero, 0x60
    /* 361EC 801BF164 1800A2AF */  sw         $v0, 0x18($sp)
    /* 361F0 801BF168 80000224 */  addiu      $v0, $zero, 0x80
    /* 361F4 801BF16C 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 361F8 801BF170 04000224 */  addiu      $v0, $zero, 0x4
    /* 361FC 801BF174 3E59060C */  jal        func_801964F8
    /* 36200 801BF178 2000A2AF */   sw        $v0, 0x20($sp)
    /* 36204 801BF17C CEFF1624 */  addiu      $s6, $zero, -0x32
  .L801BF180:
    /* 36208 801BF180 1180023C */  lui        $v0, %hi(D_80108667)
    /* 3620C 801BF184 67864290 */  lbu        $v0, %lo(D_80108667)($v0)
    /* 36210 801BF188 00000000 */  nop
    /* 36214 801BF18C 82110200 */  srl        $v0, $v0, 6
    /* 36218 801BF190 01004230 */  andi       $v0, $v0, 0x1
    /* 3621C 801BF194 02004010 */  beqz       $v0, .L801BF1A0
    /* 36220 801BF198 0F001524 */   addiu     $s5, $zero, 0xF
    /* 36224 801BF19C 07001524 */  addiu      $s5, $zero, 0x7
  .L801BF1A0:
    /* 36228 801BF1A0 1180023C */  lui        $v0, %hi(D_8010866A)
    /* 3622C 801BF1A4 6A864290 */  lbu        $v0, %lo(D_8010866A)($v0)
    /* 36230 801BF1A8 00000000 */  nop
    /* 36234 801BF1AC 00004228 */  slti       $v0, $v0, 0x0
    /* 36238 801BF1B0 33004014 */  bnez       $v0, .L801BF280
    /* 3623C 801BF1B4 21980000 */   addu      $s3, $zero, $zero
    /* 36240 801BF1B8 21A00000 */  addu       $s4, $zero, $zero
  .L801BF1BC:
    /* 36244 801BF1BC 0F00622A */  slti       $v0, $s3, 0xF
    /* 36248 801BF1C0 02004014 */  bnez       $v0, .L801BF1CC
    /* 3624C 801BF1C4 21909602 */   addu      $s2, $s4, $s6
    /* 36250 801BF1C8 06005226 */  addiu      $s2, $s2, 0x6
  .L801BF1CC:
    /* 36254 801BF1CC 21880000 */  addu       $s1, $zero, $zero
    /* 36258 801BF1D0 63FF1024 */  addiu      $s0, $zero, -0x9D
  .L801BF1D4:
    /* 3625C 801BF1D4 2110F102 */  addu       $v0, $s7, $s1
    /* 36260 801BF1D8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 36264 801BF1DC 21084100 */  addu       $at, $v0, $at
    /* 36268 801BF1E0 50AB2490 */  lbu        $a0, -0x54B0($at)
    /* 3626C 801BF1E4 A8F5060C */  jal        func_801BD6A0
    /* 36270 801BF1E8 21286002 */   addu      $a1, $s3, $zero
    /* 36274 801BF1EC 21184000 */  addu       $v1, $v0, $zero
    /* 36278 801BF1F0 02000224 */  addiu      $v0, $zero, 0x2
    /* 3627C 801BF1F4 0F006210 */  beq        $v1, $v0, .L801BF234
    /* 36280 801BF1F8 03006228 */   slti      $v0, $v1, 0x3
    /* 36284 801BF1FC 05004010 */  beqz       $v0, .L801BF214
    /* 36288 801BF200 01000224 */   addiu     $v0, $zero, 0x1
    /* 3628C 801BF204 08006210 */  beq        $v1, $v0, .L801BF228
    /* 36290 801BF208 21204002 */   addu      $a0, $s2, $zero
    /* 36294 801BF20C 96FC0608 */  j          .L801BF258
    /* 36298 801BF210 01003126 */   addiu     $s1, $s1, 0x1
  .L801BF214:
    /* 3629C 801BF214 03000224 */  addiu      $v0, $zero, 0x3
    /* 362A0 801BF218 0A006210 */  beq        $v1, $v0, .L801BF244
    /* 362A4 801BF21C 21204002 */   addu      $a0, $s2, $zero
    /* 362A8 801BF220 96FC0608 */  j          .L801BF258
    /* 362AC 801BF224 01003126 */   addiu     $s1, $s1, 0x1
  .L801BF228:
    /* 362B0 801BF228 21280002 */  addu       $a1, $s0, $zero
    /* 362B4 801BF22C 93FC0608 */  j          .L801BF24C
    /* 362B8 801BF230 01000624 */   addiu     $a2, $zero, 0x1
  .L801BF234:
    /* 362BC 801BF234 21204002 */  addu       $a0, $s2, $zero
    /* 362C0 801BF238 21280002 */  addu       $a1, $s0, $zero
    /* 362C4 801BF23C 93FC0608 */  j          .L801BF24C
    /* 362C8 801BF240 02000624 */   addiu     $a2, $zero, 0x2
  .L801BF244:
    /* 362CC 801BF244 21280002 */  addu       $a1, $s0, $zero
    /* 362D0 801BF248 03000624 */  addiu      $a2, $zero, 0x3
  .L801BF24C:
    /* 362D4 801BF24C 50A1060C */  jal        func_801A8540
    /* 362D8 801BF250 03000724 */   addiu     $a3, $zero, 0x3
    /* 362DC 801BF254 01003126 */  addiu      $s1, $s1, 0x1
  .L801BF258:
    /* 362E0 801BF258 1000222A */  slti       $v0, $s1, 0x10
    /* 362E4 801BF25C DDFF4014 */  bnez       $v0, .L801BF1D4
    /* 362E8 801BF260 16001026 */   addiu     $s0, $s0, 0x16
    /* 362EC 801BF264 0100013C */  lui        $at, (0x10000 >> 16)
    /* 362F0 801BF268 2108E102 */  addu       $at, $s7, $at
    /* 362F4 801BF26C 228F2290 */  lbu        $v0, -0x70DE($at)
    /* 362F8 801BF270 01007326 */  addiu      $s3, $s3, 0x1
    /* 362FC 801BF274 2A105300 */  slt        $v0, $v0, $s3
    /* 36300 801BF278 D0FF4010 */  beqz       $v0, .L801BF1BC
    /* 36304 801BF27C 21A09502 */   addu      $s4, $s4, $s5
  .L801BF280:
    /* 36308 801BF280 0050043C */  lui        $a0, (0x50000000 >> 16)
    /* 3630C 801BF284 64FF0524 */  addiu      $a1, $zero, -0x9C
    /* 36310 801BF288 50000724 */  addiu      $a3, $zero, 0x50
    /* 36314 801BF28C 14001024 */  addiu      $s0, $zero, 0x14
    /* 36318 801BF290 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 3631C 801BF294 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 36320 801BF298 A0000224 */  addiu      $v0, $zero, 0xA0
    /* 36324 801BF29C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 36328 801BF2A0 30000224 */  addiu      $v0, $zero, 0x30
    /* 3632C 801BF2A4 1800A2AF */  sw         $v0, 0x18($sp)
    /* 36330 801BF2A8 01000224 */  addiu      $v0, $zero, 0x1
    /* 36334 801BF2AC 2000A2AF */  sw         $v0, 0x20($sp)
    /* 36338 801BF2B0 04000224 */  addiu      $v0, $zero, 0x4
    /* 3633C 801BF2B4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 36340 801BF2B8 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 36344 801BF2BC 2400A2AF */  sw         $v0, 0x24($sp)
    /* 36348 801BF2C0 40300300 */  sll        $a2, $v1, 1
    /* 3634C 801BF2C4 2130C300 */  addu       $a2, $a2, $v1
    /* 36350 801BF2C8 80300600 */  sll        $a2, $a2, 2
    /* 36354 801BF2CC 2330C300 */  subu       $a2, $a2, $v1
    /* 36358 801BF2D0 40300600 */  sll        $a2, $a2, 1
    /* 3635C 801BF2D4 005A060C */  jal        func_80196800
    /* 36360 801BF2D8 60FFC624 */   addiu     $a2, $a2, -0xA0
    /* 36364 801BF2DC 0070043C */  lui        $a0, (0x70000000 >> 16)
    /* 36368 801BF2E0 CCFF0524 */  addiu      $a1, $zero, -0x34
    /* 3636C 801BF2E4 E0000724 */  addiu      $a3, $zero, 0xE0
    /* 36370 801BF2E8 FF000324 */  addiu      $v1, $zero, 0xFF
    /* 36374 801BF2EC 1400A3AF */  sw         $v1, 0x14($sp)
    /* 36378 801BF2F0 1C00A3AF */  sw         $v1, 0x1C($sp)
    /* 3637C 801BF2F4 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 36380 801BF2F8 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 36384 801BF2FC AA000224 */  addiu      $v0, $zero, 0xAA
    /* 36388 801BF300 1800A2AF */  sw         $v0, 0x18($sp)
    /* 3638C 801BF304 03000224 */  addiu      $v0, $zero, 0x3
    /* 36390 801BF308 1000B0AF */  sw         $s0, 0x10($sp)
    /* 36394 801BF30C 2000A2AF */  sw         $v0, 0x20($sp)
    /* 36398 801BF310 40300300 */  sll        $a2, $v1, 1
    /* 3639C 801BF314 2130C300 */  addu       $a2, $a2, $v1
    /* 363A0 801BF318 80300600 */  sll        $a2, $a2, 2
    /* 363A4 801BF31C 2330C300 */  subu       $a2, $a2, $v1
    /* 363A8 801BF320 40300600 */  sll        $a2, $a2, 1
    /* 363AC 801BF324 005A060C */  jal        func_80196800
    /* 363B0 801BF328 60FFC624 */   addiu     $a2, $a2, -0xA0
    /* 363B4 801BF32C 4800BF8F */  lw         $ra, 0x48($sp)
    /* 363B8 801BF330 4400B78F */  lw         $s7, 0x44($sp)
    /* 363BC 801BF334 4000B68F */  lw         $s6, 0x40($sp)
    /* 363C0 801BF338 3C00B58F */  lw         $s5, 0x3C($sp)
    /* 363C4 801BF33C 3800B48F */  lw         $s4, 0x38($sp)
    /* 363C8 801BF340 3400B38F */  lw         $s3, 0x34($sp)
    /* 363CC 801BF344 3000B28F */  lw         $s2, 0x30($sp)
    /* 363D0 801BF348 2C00B18F */  lw         $s1, 0x2C($sp)
    /* 363D4 801BF34C 2800B08F */  lw         $s0, 0x28($sp)
    /* 363D8 801BF350 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 363DC 801BF354 0800E003 */  jr         $ra
    /* 363E0 801BF358 00000000 */   nop
endlabel func_801BF0F4
