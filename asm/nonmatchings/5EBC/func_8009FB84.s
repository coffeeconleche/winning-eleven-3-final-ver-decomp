nonmatching func_8009FB84, 0x1BC

glabel func_8009FB84
    /* 90384 8009FB84 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 90388 8009FB88 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9038C 8009FB8C 21808000 */  addu       $s0, $a0, $zero
    /* 90390 8009FB90 801F053C */  lui        $a1, (0x1F8000F8 >> 16)
    /* 90394 8009FB94 F800A534 */  ori        $a1, $a1, (0x1F8000F8 & 0xFFFF)
    /* 90398 8009FB98 801F063C */  lui        $a2, (0x1F8000FC >> 16)
    /* 9039C 8009FB9C FC00C634 */  ori        $a2, $a2, (0x1F8000FC & 0xFFFF)
    /* 903A0 8009FBA0 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 903A4 8009FBA4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 903A8 8009FBA8 176A010C */  jal        func_8005A85C
    /* 903AC 8009FBAC 1400B1AF */   sw        $s1, 0x14($sp)
    /* 903B0 8009FBB0 FFFF1224 */  addiu      $s2, $zero, -0x1
    /* 903B4 8009FBB4 99030292 */  lbu        $v0, 0x399($s0)
    /* 903B8 8009FBB8 00000000 */  nop
    /* 903BC 8009FBBC 02004014 */  bnez       $v0, .L8009FBC8
    /* 903C0 8009FBC0 801F113C */   lui       $s1, (0x1F8000FC >> 16)
    /* 903C4 8009FBC4 01001224 */  addiu      $s2, $zero, 0x1
  .L8009FBC8:
    /* 903C8 8009FBC8 801F033C */  lui        $v1, (0x1F80030B >> 16)
    /* 903CC 8009FBCC 0B036390 */  lbu        $v1, (0x1F80030B & 0xFFFF)($v1)
    /* 903D0 8009FBD0 00000000 */  nop
    /* 903D4 8009FBD4 0600622C */  sltiu      $v0, $v1, 0x6
    /* 903D8 8009FBD8 2C004010 */  beqz       $v0, .L8009FC8C
    /* 903DC 8009FBDC 80100300 */   sll       $v0, $v1, 2
    /* 903E0 8009FBE0 0180013C */  lui        $at, %hi(jtbl_800143E0)
    /* 903E4 8009FBE4 21082200 */  addu       $at, $at, $v0
    /* 903E8 8009FBE8 E043228C */  lw         $v0, %lo(jtbl_800143E0)($at)
    /* 903EC 8009FBEC 00000000 */  nop
    /* 903F0 8009FBF0 08004000 */  jr         $v0
    /* 903F4 8009FBF4 00000000 */   nop
  jlabel .L8009FBF8
    /* 903F8 8009FBF8 FC002296 */  lhu        $v0, (0x1F8000FC & 0xFFFF)($s1)
    /* 903FC 8009FBFC 00000000 */  nop
    /* 90400 8009FC00 00140200 */  sll        $v0, $v0, 16
    /* 90404 8009FC04 031C0200 */  sra        $v1, $v0, 16
    /* 90408 8009FC08 C2170200 */  srl        $v0, $v0, 31
    /* 9040C 8009FC0C 21186200 */  addu       $v1, $v1, $v0
    /* 90410 8009FC10 43180300 */  sra        $v1, $v1, 1
    /* 90414 8009FC14 237F0208 */  j          .L8009FC8C
    /* 90418 8009FC18 FC0023A6 */   sh        $v1, (0x1F8000FC & 0xFFFF)($s1)
  jlabel .L8009FC1C
    /* 9041C 8009FC1C FC002296 */  lhu        $v0, 0xFC($s1)
    /* 90420 8009FC20 00000000 */  nop
    /* 90424 8009FC24 00140200 */  sll        $v0, $v0, 16
    /* 90428 8009FC28 03140200 */  sra        $v0, $v0, 16
    /* 9042C 8009FC2C 02004104 */  bgez       $v0, .L8009FC38
    /* 90430 8009FC30 00000000 */   nop
    /* 90434 8009FC34 03004224 */  addiu      $v0, $v0, 0x3
  .L8009FC38:
    /* 90438 8009FC38 227F0208 */  j          .L8009FC88
    /* 9043C 8009FC3C 83100200 */   sra       $v0, $v0, 2
  jlabel .L8009FC40
    /* 90440 8009FC40 AA2A043C */  lui        $a0, (0x2AAAAAAB >> 16)
    /* 90444 8009FC44 FC002296 */  lhu        $v0, 0xFC($s1)
    /* 90448 8009FC48 ABAA8434 */  ori        $a0, $a0, (0x2AAAAAAB & 0xFFFF)
    /* 9044C 8009FC4C 00140200 */  sll        $v0, $v0, 16
    /* 90450 8009FC50 031C0200 */  sra        $v1, $v0, 16
    /* 90454 8009FC54 18006400 */  mult       $v1, $a0
    /* 90458 8009FC58 C3170200 */  sra        $v0, $v0, 31
    /* 9045C 8009FC5C 10380000 */  mfhi       $a3
    /* 90460 8009FC60 227F0208 */  j          .L8009FC88
    /* 90464 8009FC64 2310E200 */   subu      $v0, $a3, $v0
  jlabel .L8009FC68
    /* 90468 8009FC68 FC002296 */  lhu        $v0, 0xFC($s1)
    /* 9046C 8009FC6C 00000000 */  nop
    /* 90470 8009FC70 00140200 */  sll        $v0, $v0, 16
    /* 90474 8009FC74 03140200 */  sra        $v0, $v0, 16
    /* 90478 8009FC78 02004104 */  bgez       $v0, .L8009FC84
    /* 9047C 8009FC7C 00000000 */   nop
    /* 90480 8009FC80 07004224 */  addiu      $v0, $v0, 0x7
  .L8009FC84:
    /* 90484 8009FC84 C3100200 */  sra        $v0, $v0, 3
  .L8009FC88:
    /* 90488 8009FC88 FC0022A6 */  sh         $v0, 0xFC($s1)
  jlabel .L8009FC8C
    /* 9048C 8009FC8C DA030392 */  lbu        $v1, 0x3DA($s0)
    /* 90490 8009FC90 CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 90494 8009FC94 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 90498 8009FC98 19006200 */  multu      $v1, $v0
    /* 9049C 8009FC9C 10380000 */  mfhi       $a3
    /* 904A0 8009FCA0 82200700 */  srl        $a0, $a3, 2
    /* 904A4 8009FCA4 80100400 */  sll        $v0, $a0, 2
    /* 904A8 8009FCA8 21104400 */  addu       $v0, $v0, $a0
    /* 904AC 8009FCAC 23186200 */  subu       $v1, $v1, $v0
    /* 904B0 8009FCB0 FF006330 */  andi       $v1, $v1, 0xFF
    /* 904B4 8009FCB4 0B006014 */  bnez       $v1, .L8009FCE4
    /* 904B8 8009FCB8 00000000 */   nop
    /* 904BC 8009FCBC AE79000C */  jal        func_8001E6B8
    /* 904C0 8009FCC0 05000424 */   addiu     $a0, $zero, 0x5
    /* 904C4 8009FCC4 09000424 */  addiu      $a0, $zero, 0x9
    /* 904C8 8009FCC8 C0110200 */  sll        $v0, $v0, 7
    /* 904CC 8009FCCC 80004224 */  addiu      $v0, $v0, 0x80
    /* 904D0 8009FCD0 AE79000C */  jal        func_8001E6B8
    /* 904D4 8009FCD4 DC0302A6 */   sh        $v0, 0x3DC($s0)
    /* 904D8 8009FCD8 FCFF4224 */  addiu      $v0, $v0, -0x4
    /* 904DC 8009FCDC C0110200 */  sll        $v0, $v0, 7
    /* 904E0 8009FCE0 DE0302A6 */  sh         $v0, 0x3DE($s0)
  .L8009FCE4:
    /* 904E4 8009FCE4 DC030296 */  lhu        $v0, 0x3DC($s0)
    /* 904E8 8009FCE8 00000000 */  nop
    /* 904EC 8009FCEC 18005200 */  mult       $v0, $s2
    /* 904F0 8009FCF0 99030292 */  lbu        $v0, 0x399($s0)
    /* 904F4 8009FCF4 00000000 */  nop
    /* 904F8 8009FCF8 40100200 */  sll        $v0, $v0, 1
    /* 904FC 8009FCFC 21105100 */  addu       $v0, $v0, $s1
    /* 90500 8009FD00 0C034294 */  lhu        $v0, (0x1F80030C & 0xFFFF)($v0)
    /* 90504 8009FD04 12380000 */  mflo       $a3
    /* 90508 8009FD08 23104700 */  subu       $v0, $v0, $a3
    /* 9050C 8009FD0C F80022A6 */  sh         $v0, (0x1F8000F8 & 0xFFFF)($s1)
    /* 90510 8009FD10 FC002296 */  lhu        $v0, (0x1F8000FC & 0xFFFF)($s1)
    /* 90514 8009FD14 DE030396 */  lhu        $v1, 0x3DE($s0)
    /* 90518 8009FD18 00000000 */  nop
    /* 9051C 8009FD1C 21104300 */  addu       $v0, $v0, $v1
    /* 90520 8009FD20 FC0022A6 */  sh         $v0, (0x1F8000FC & 0xFFFF)($s1)
    /* 90524 8009FD24 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 90528 8009FD28 1800B28F */  lw         $s2, 0x18($sp)
    /* 9052C 8009FD2C 1400B18F */  lw         $s1, 0x14($sp)
    /* 90530 8009FD30 1000B08F */  lw         $s0, 0x10($sp)
    /* 90534 8009FD34 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 90538 8009FD38 0800E003 */  jr         $ra
    /* 9053C 8009FD3C 00000000 */   nop
endlabel func_8009FB84
