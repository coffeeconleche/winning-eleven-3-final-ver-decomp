nonmatching func_8003F2B8, 0x2A8

glabel func_8003F2B8
    /* 2FAB8 8003F2B8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2FABC 8003F2BC 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2FAC0 8003F2C0 21808000 */  addu       $s0, $a0, $zero
    /* 2FAC4 8003F2C4 06000524 */  addiu      $a1, $zero, 0x6
    /* 2FAC8 8003F2C8 0200063C */  lui        $a2, (0x24000 >> 16)
    /* 2FACC 8003F2CC 0040C634 */  ori        $a2, $a2, (0x24000 & 0xFFFF)
    /* 2FAD0 8003F2D0 2000BFAF */  sw         $ra, 0x20($sp)
    /* 2FAD4 8003F2D4 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2FAD8 8003F2D8 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2FADC 8003F2DC 9A4A010C */  jal        func_80052A68
    /* 2FAE0 8003F2E0 1400B1AF */   sw        $s1, 0x14($sp)
    /* 2FAE4 8003F2E4 1080133C */  lui        $s3, %hi(D_800FF748)
    /* 2FAE8 8003F2E8 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* 2FAEC 8003F2EC FF004230 */  andi       $v0, $v0, 0xFF
    /* 2FAF0 8003F2F0 92004014 */  bnez       $v0, .L8003F53C
    /* 2FAF4 8003F2F4 801F113C */   lui       $s1, (0x1F800072 >> 16)
    /* 2FAF8 8003F2F8 99030292 */  lbu        $v0, 0x399($s0)
    /* 2FAFC 8003F2FC 801F033C */  lui        $v1, (0x1F800042 >> 16)
    /* 2FB00 8003F300 42006384 */  lh         $v1, (0x1F800042 & 0xFFFF)($v1)
    /* 2FB04 8003F304 03004010 */  beqz       $v0, .L8003F314
    /* 2FB08 8003F308 23100300 */   negu      $v0, $v1
    /* 2FB0C 8003F30C C6FC0008 */  j          .L8003F318
    /* 2FB10 8003F310 E2234228 */   slti      $v0, $v0, 0x23E2
  .L8003F314:
    /* 2FB14 8003F314 E2236228 */  slti       $v0, $v1, 0x23E2
  .L8003F318:
    /* 2FB18 8003F318 89004014 */  bnez       $v0, .L8003F540
    /* 2FB1C 8003F31C 21100000 */   addu      $v0, $zero, $zero
    /* 2FB20 8003F320 02000486 */  lh         $a0, 0x2($s0)
    /* 2FB24 8003F324 42002696 */  lhu        $a2, (0x1F800042 & 0xFFFF)($s1)
    /* 2FB28 8003F328 06000586 */  lh         $a1, 0x6($s0)
    /* 2FB2C 8003F32C 72002796 */  lhu        $a3, (0x1F800072 & 0xFFFF)($s1)
    /* 2FB30 8003F330 00340600 */  sll        $a2, $a2, 16
    /* 2FB34 8003F334 03340600 */  sra        $a2, $a2, 16
    /* 2FB38 8003F338 003C0700 */  sll        $a3, $a3, 16
    /* 2FB3C 8003F33C DB6C010C */  jal        func_8005B36C
    /* 2FB40 8003F340 033C0700 */   sra       $a3, $a3, 16
    /* 2FB44 8003F344 AA030492 */  lbu        $a0, 0x3AA($s0)
    /* 2FB48 8003F348 21904000 */  addu       $s2, $v0, $zero
    /* 2FB4C 8003F34C 23104402 */  subu       $v0, $s2, $a0
    /* 2FB50 8003F350 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2FB54 8003F354 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2FB58 8003F358 04004014 */  bnez       $v0, .L8003F36C
    /* 2FB5C 8003F35C 23109200 */   subu      $v0, $a0, $s2
    /* 2FB60 8003F360 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2FB64 8003F364 DCFC0008 */  j          .L8003F370
    /* 2FB68 8003F368 51004228 */   slti      $v0, $v0, 0x51
  .L8003F36C:
    /* 2FB6C 8003F36C 51006228 */  slti       $v0, $v1, 0x51
  .L8003F370:
    /* 2FB70 8003F370 72004010 */  beqz       $v0, .L8003F53C
    /* 2FB74 8003F374 00000000 */   nop
    /* 2FB78 8003F378 44002296 */  lhu        $v0, (0x1F800044 & 0xFFFF)($s1)
    /* 2FB7C 8003F37C 99030392 */  lbu        $v1, 0x399($s0)
    /* 2FB80 8003F380 00140200 */  sll        $v0, $v0, 16
    /* 2FB84 8003F384 07006010 */  beqz       $v1, .L8003F3A4
    /* 2FB88 8003F388 03140200 */   sra       $v0, $v0, 16
    /* 2FB8C 8003F38C 23100200 */  negu       $v0, $v0
    /* 2FB90 8003F390 21334228 */  slti       $v0, $v0, 0x3321
    /* 2FB94 8003F394 06004010 */  beqz       $v0, .L8003F3B0
    /* 2FB98 8003F398 00000000 */   nop
    /* 2FB9C 8003F39C 1AFD0008 */  j          .L8003F468
    /* 2FBA0 8003F3A0 00000000 */   nop
  .L8003F3A4:
    /* 2FBA4 8003F3A4 21334228 */  slti       $v0, $v0, 0x3321
    /* 2FBA8 8003F3A8 2F004014 */  bnez       $v0, .L8003F468
    /* 2FBAC 8003F3AC 00000000 */   nop
  .L8003F3B0:
    /* 2FBB0 8003F3B0 8D030492 */  lbu        $a0, 0x38D($s0)
    /* 2FBB4 8003F3B4 8C73010C */  jal        func_8005CE30
    /* 2FBB8 8003F3B8 00000000 */   nop
    /* 2FBBC 8003F3BC FF004230 */  andi       $v0, $v0, 0xFF
    /* 2FBC0 8003F3C0 AAAA033C */  lui        $v1, (0xAAAAAAAB >> 16)
    /* 2FBC4 8003F3C4 ABAA6334 */  ori        $v1, $v1, (0xAAAAAAAB & 0xFFFF)
    /* 2FBC8 8003F3C8 19004300 */  multu      $v0, $v1
    /* 2FBCC 8003F3CC 10400000 */  mfhi       $t0
    /* 2FBD0 8003F3D0 02210800 */  srl        $a0, $t0, 4
    /* 2FBD4 8003F3D4 40180400 */  sll        $v1, $a0, 1
    /* 2FBD8 8003F3D8 21186400 */  addu       $v1, $v1, $a0
    /* 2FBDC 8003F3DC C0180300 */  sll        $v1, $v1, 3
    /* 2FBE0 8003F3E0 23104300 */  subu       $v0, $v0, $v1
    /* 2FBE4 8003F3E4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2FBE8 8003F3E8 40190200 */  sll        $v1, $v0, 5
    /* 2FBEC 8003F3EC 23186200 */  subu       $v1, $v1, $v0
    /* 2FBF0 8003F3F0 80180300 */  sll        $v1, $v1, 2
    /* 2FBF4 8003F3F4 21186200 */  addu       $v1, $v1, $v0
    /* 2FBF8 8003F3F8 C0180300 */  sll        $v1, $v1, 3
    /* 2FBFC 8003F3FC 21186302 */  addu       $v1, $s3, $v1
    /* 2FC00 8003F400 BC036284 */  lh         $v0, 0x3BC($v1)
    /* 2FC04 8003F404 00000000 */  nop
    /* 2FC08 8003F408 4D004014 */  bnez       $v0, .L8003F540
    /* 2FC0C 8003F40C 21100000 */   addu      $v0, $zero, $zero
    /* 2FC10 8003F410 5A002296 */  lhu        $v0, (0x1F80005A & 0xFFFF)($s1)
    /* 2FC14 8003F414 00000000 */  nop
    /* 2FC18 8003F418 00140200 */  sll        $v0, $v0, 16
    /* 2FC1C 8003F41C 03140200 */  sra        $v0, $v0, 16
    /* 2FC20 8003F420 00FF4228 */  slti       $v0, $v0, -0x100
    /* 2FC24 8003F424 45004014 */  bnez       $v0, .L8003F53C
    /* 2FC28 8003F428 00000000 */   nop
    /* 2FC2C 8003F42C 42002396 */  lhu        $v1, (0x1F800042 & 0xFFFF)($s1)
    /* 2FC30 8003F430 02000286 */  lh         $v0, 0x2($s0)
    /* 2FC34 8003F434 001C0300 */  sll        $v1, $v1, 16
    /* 2FC38 8003F438 031C0300 */  sra        $v1, $v1, 16
    /* 2FC3C 8003F43C 23104300 */  subu       $v0, $v0, $v1
    /* 2FC40 8003F440 18004200 */  mult       $v0, $v0
    /* 2FC44 8003F444 72002396 */  lhu        $v1, (0x1F800072 & 0xFFFF)($s1)
    /* 2FC48 8003F448 06000286 */  lh         $v0, 0x6($s0)
    /* 2FC4C 8003F44C 001C0300 */  sll        $v1, $v1, 16
    /* 2FC50 8003F450 12200000 */  mflo       $a0
    /* 2FC54 8003F454 031C0300 */  sra        $v1, $v1, 16
    /* 2FC58 8003F458 23104300 */  subu       $v0, $v0, $v1
    /* 2FC5C 8003F45C 18004200 */  mult       $v0, $v0
    /* 2FC60 8003F460 30FD0008 */  j          .L8003F4C0
    /* 2FC64 8003F464 1900023C */   lui       $v0, (0x190000 >> 16)
  .L8003F468:
    /* 2FC68 8003F468 5A002296 */  lhu        $v0, (0x1F80005A & 0xFFFF)($s1)
    /* 2FC6C 8003F46C 00000000 */  nop
    /* 2FC70 8003F470 00140200 */  sll        $v0, $v0, 16
    /* 2FC74 8003F474 03140200 */  sra        $v0, $v0, 16
    /* 2FC78 8003F478 60FF4228 */  slti       $v0, $v0, -0xA0
    /* 2FC7C 8003F47C 30004014 */  bnez       $v0, .L8003F540
    /* 2FC80 8003F480 21100000 */   addu      $v0, $zero, $zero
    /* 2FC84 8003F484 42002396 */  lhu        $v1, (0x1F800042 & 0xFFFF)($s1)
    /* 2FC88 8003F488 02000286 */  lh         $v0, 0x2($s0)
    /* 2FC8C 8003F48C 001C0300 */  sll        $v1, $v1, 16
    /* 2FC90 8003F490 031C0300 */  sra        $v1, $v1, 16
    /* 2FC94 8003F494 23104300 */  subu       $v0, $v0, $v1
    /* 2FC98 8003F498 18004200 */  mult       $v0, $v0
    /* 2FC9C 8003F49C 72002396 */  lhu        $v1, (0x1F800072 & 0xFFFF)($s1)
    /* 2FCA0 8003F4A0 06000286 */  lh         $v0, 0x6($s0)
    /* 2FCA4 8003F4A4 001C0300 */  sll        $v1, $v1, 16
    /* 2FCA8 8003F4A8 12200000 */  mflo       $a0
    /* 2FCAC 8003F4AC 031C0300 */  sra        $v1, $v1, 16
    /* 2FCB0 8003F4B0 23104300 */  subu       $v0, $v0, $v1
    /* 2FCB4 8003F4B4 18004200 */  mult       $v0, $v0
    /* 2FCB8 8003F4B8 0600023C */  lui        $v0, (0x64000 >> 16)
    /* 2FCBC 8003F4BC 00404234 */  ori        $v0, $v0, (0x64000 & 0xFFFF)
  .L8003F4C0:
    /* 2FCC0 8003F4C0 12180000 */  mflo       $v1
    /* 2FCC4 8003F4C4 21188300 */  addu       $v1, $a0, $v1
    /* 2FCC8 8003F4C8 2A104300 */  slt        $v0, $v0, $v1
    /* 2FCCC 8003F4CC 1C004014 */  bnez       $v0, .L8003F540
    /* 2FCD0 8003F4D0 21100000 */   addu      $v0, $zero, $zero
    /* 2FCD4 8003F4D4 02000486 */  lh         $a0, 0x2($s0)
    /* 2FCD8 8003F4D8 99030292 */  lbu        $v0, 0x399($s0)
    /* 2FCDC 8003F4DC 06000586 */  lh         $a1, 0x6($s0)
    /* 2FCE0 8003F4E0 02004014 */  bnez       $v0, .L8003F4EC
    /* 2FCE4 8003F4E4 E0CC0624 */   addiu     $a2, $zero, -0x3320
    /* 2FCE8 8003F4E8 20330624 */  addiu      $a2, $zero, 0x3320
  .L8003F4EC:
    /* 2FCEC 8003F4EC DB6C010C */  jal        func_8005B36C
    /* 2FCF0 8003F4F0 21380000 */   addu      $a3, $zero, $zero
    /* 2FCF4 8003F4F4 21204000 */  addu       $a0, $v0, $zero
    /* 2FCF8 8003F4F8 23104402 */  subu       $v0, $s2, $a0
    /* 2FCFC 8003F4FC FF004330 */  andi       $v1, $v0, 0xFF
    /* 2FD00 8003F500 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2FD04 8003F504 08004014 */  bnez       $v0, .L8003F528
    /* 2FD08 8003F508 49006228 */   slti      $v0, $v1, 0x49
    /* 2FD0C 8003F50C 23109200 */  subu       $v0, $a0, $s2
    /* 2FD10 8003F510 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2FD14 8003F514 49004228 */  slti       $v0, $v0, 0x49
    /* 2FD18 8003F518 05004014 */  bnez       $v0, .L8003F530
    /* 2FD1C 8003F51C 21100000 */   addu      $v0, $zero, $zero
    /* 2FD20 8003F520 50FD0008 */  j          .L8003F540
    /* 2FD24 8003F524 00000000 */   nop
  .L8003F528:
    /* 2FD28 8003F528 05004010 */  beqz       $v0, .L8003F540
    /* 2FD2C 8003F52C 21100000 */   addu      $v0, $zero, $zero
  .L8003F530:
    /* 2FD30 8003F530 D10300A2 */  sb         $zero, 0x3D1($s0)
    /* 2FD34 8003F534 50FD0008 */  j          .L8003F540
    /* 2FD38 8003F538 01000224 */   addiu     $v0, $zero, 0x1
  .L8003F53C:
    /* 2FD3C 8003F53C 21100000 */  addu       $v0, $zero, $zero
  .L8003F540:
    /* 2FD40 8003F540 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2FD44 8003F544 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2FD48 8003F548 1800B28F */  lw         $s2, 0x18($sp)
    /* 2FD4C 8003F54C 1400B18F */  lw         $s1, 0x14($sp)
    /* 2FD50 8003F550 1000B08F */  lw         $s0, 0x10($sp)
    /* 2FD54 8003F554 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2FD58 8003F558 0800E003 */  jr         $ra
    /* 2FD5C 8003F55C 00000000 */   nop
endlabel func_8003F2B8
