nonmatching func_800BF1FC, 0x168

glabel func_800BF1FC
    /* AF9FC 800BF1FC 1080023C */  lui        $v0, %hi(D_800FB578)
    /* AFA00 800BF200 78B54280 */  lb         $v0, %lo(D_800FB578)($v0)
    /* AFA04 800BF204 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* AFA08 800BF208 1000B0AF */  sw         $s0, 0x10($sp)
    /* AFA0C 800BF20C 21800000 */  addu       $s0, $zero, $zero
    /* AFA10 800BF210 1400B1AF */  sw         $s1, 0x14($sp)
    /* AFA14 800BF214 21880000 */  addu       $s1, $zero, $zero
    /* AFA18 800BF218 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* AFA1C 800BF21C 2800B6AF */  sw         $s6, 0x28($sp)
    /* AFA20 800BF220 2400B5AF */  sw         $s5, 0x24($sp)
    /* AFA24 800BF224 2000B4AF */  sw         $s4, 0x20($sp)
    /* AFA28 800BF228 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* AFA2C 800BF22C 42004018 */  blez       $v0, .L800BF338
    /* AFA30 800BF230 1800B2AF */   sw        $s2, 0x18($sp)
    /* AFA34 800BF234 01001624 */  addiu      $s6, $zero, 0x1
    /* AFA38 800BF238 FFFFF530 */  andi       $s5, $a3, 0xFFFF
    /* AFA3C 800BF23C 00140600 */  sll        $v0, $a2, 16
    /* AFA40 800BF240 03A40200 */  sra        $s4, $v0, 16
    /* AFA44 800BF244 00140400 */  sll        $v0, $a0, 16
    /* AFA48 800BF248 039C0200 */  sra        $s3, $v0, 16
    /* AFA4C 800BF24C 00140500 */  sll        $v0, $a1, 16
    /* AFA50 800BF250 03940200 */  sra        $s2, $v0, 16
  .L800BF254:
    /* AFA54 800BF254 FF000432 */  andi       $a0, $s0, 0xFF
    /* AFA58 800BF258 0D80023C */  lui        $v0, %hi(D_800D4F0C)
    /* AFA5C 800BF25C 0C4F428C */  lw         $v0, %lo(D_800D4F0C)($v0)
    /* AFA60 800BF260 04189600 */  sllv       $v1, $s6, $a0
    /* AFA64 800BF264 24104300 */  and        $v0, $v0, $v1
    /* AFA68 800BF268 2C004014 */  bnez       $v0, .L800BF31C
    /* AFA6C 800BF26C C0100400 */   sll       $v0, $a0, 3
    /* AFA70 800BF270 23104400 */  subu       $v0, $v0, $a0
    /* AFA74 800BF274 80100200 */  sll        $v0, $v0, 2
    /* AFA78 800BF278 23104400 */  subu       $v0, $v0, $a0
    /* AFA7C 800BF27C 40180200 */  sll        $v1, $v0, 1
    /* AFA80 800BF280 0E80023C */  lui        $v0, %hi(D_800E78E6)
    /* AFA84 800BF284 21104300 */  addu       $v0, $v0, $v1
    /* AFA88 800BF288 E6784284 */  lh         $v0, %lo(D_800E78E6)($v0)
    /* AFA8C 800BF28C 00000000 */  nop
    /* AFA90 800BF290 22005514 */  bne        $v0, $s5, .L800BF31C
    /* AFA94 800BF294 00000000 */   nop
    /* AFA98 800BF298 0E80023C */  lui        $v0, %hi(D_800E78EC)
    /* AFA9C 800BF29C 21104300 */  addu       $v0, $v0, $v1
    /* AFAA0 800BF2A0 EC784284 */  lh         $v0, %lo(D_800E78EC)($v0)
    /* AFAA4 800BF2A4 00000000 */  nop
    /* AFAA8 800BF2A8 1C005414 */  bne        $v0, $s4, .L800BF31C
    /* AFAAC 800BF2AC 00000000 */   nop
    /* AFAB0 800BF2B0 0E80023C */  lui        $v0, %hi(D_800E78E8)
    /* AFAB4 800BF2B4 21104300 */  addu       $v0, $v0, $v1
    /* AFAB8 800BF2B8 E8784284 */  lh         $v0, %lo(D_800E78E8)($v0)
    /* AFABC 800BF2BC 00000000 */  nop
    /* AFAC0 800BF2C0 16005314 */  bne        $v0, $s3, .L800BF31C
    /* AFAC4 800BF2C4 00000000 */   nop
    /* AFAC8 800BF2C8 0E80023C */  lui        $v0, %hi(D_800E78F0)
    /* AFACC 800BF2CC 21104300 */  addu       $v0, $v0, $v1
    /* AFAD0 800BF2D0 F0784284 */  lh         $v0, %lo(D_800E78F0)($v0)
    /* AFAD4 800BF2D4 00000000 */  nop
    /* AFAD8 800BF2D8 10005214 */  bne        $v0, $s2, .L800BF31C
    /* AFADC 800BF2DC FF000224 */   addiu     $v0, $zero, 0xFF
    /* AFAE0 800BF2E0 0E80013C */  lui        $at, %hi(D_800E78D8)
    /* AFAE4 800BF2E4 21082300 */  addu       $at, $at, $v1
    /* AFAE8 800BF2E8 D8782384 */  lh         $v1, %lo(D_800E78D8)($at)
    /* AFAEC 800BF2EC 00000000 */  nop
    /* AFAF0 800BF2F0 05006214 */  bne        $v1, $v0, .L800BF308
    /* AFAF4 800BF2F4 FF000232 */   andi      $v0, $s0, 0xFF
    /* AFAF8 800BF2F8 36FF020C */  jal        func_800BFCD8
    /* AFAFC 800BF2FC 01003126 */   addiu     $s1, $s1, 0x1
    /* AFB00 800BF300 C8FC0208 */  j          .L800BF320
    /* AFB04 800BF304 01001026 */   addiu     $s0, $s0, 0x1
  .L800BF308:
    /* AFB08 800BF308 1180013C */  lui        $at, %hi(D_8010A3E2)
    /* AFB0C 800BF30C E2A322A4 */  sh         $v0, %lo(D_8010A3E2)($at)
    /* AFB10 800BF310 46FF020C */  jal        func_800BFD18
    /* AFB14 800BF314 21200000 */   addu      $a0, $zero, $zero
    /* AFB18 800BF318 01003126 */  addiu      $s1, $s1, 0x1
  .L800BF31C:
    /* AFB1C 800BF31C 01001026 */  addiu      $s0, $s0, 0x1
  .L800BF320:
    /* AFB20 800BF320 1080033C */  lui        $v1, %hi(D_800FB578)
    /* AFB24 800BF324 78B56380 */  lb         $v1, %lo(D_800FB578)($v1)
    /* AFB28 800BF328 FF000232 */  andi       $v0, $s0, 0xFF
    /* AFB2C 800BF32C 2A104300 */  slt        $v0, $v0, $v1
    /* AFB30 800BF330 C8FF4014 */  bnez       $v0, .L800BF254
    /* AFB34 800BF334 00000000 */   nop
  .L800BF338:
    /* AFB38 800BF338 21102002 */  addu       $v0, $s1, $zero
    /* AFB3C 800BF33C 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* AFB40 800BF340 2800B68F */  lw         $s6, 0x28($sp)
    /* AFB44 800BF344 2400B58F */  lw         $s5, 0x24($sp)
    /* AFB48 800BF348 2000B48F */  lw         $s4, 0x20($sp)
    /* AFB4C 800BF34C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* AFB50 800BF350 1800B28F */  lw         $s2, 0x18($sp)
    /* AFB54 800BF354 1400B18F */  lw         $s1, 0x14($sp)
    /* AFB58 800BF358 1000B08F */  lw         $s0, 0x10($sp)
    /* AFB5C 800BF35C 0800E003 */  jr         $ra
    /* AFB60 800BF360 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_800BF1FC
