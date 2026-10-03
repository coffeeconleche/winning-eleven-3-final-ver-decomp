nonmatching func_8006F4A8, 0x80

glabel func_8006F4A8
    /* 5FCA8 8006F4A8 FF008430 */  andi       $a0, $a0, 0xFF
    /* 5FCAC 8006F4AC 80100400 */  sll        $v0, $a0, 2
    /* 5FCB0 8006F4B0 21104400 */  addu       $v0, $v0, $a0
    /* 5FCB4 8006F4B4 C0100200 */  sll        $v0, $v0, 3
    /* 5FCB8 8006F4B8 1080033C */  lui        $v1, %hi(D_80105508)
    /* 5FCBC 8006F4BC 08556324 */  addiu      $v1, $v1, %lo(D_80105508)
    /* 5FCC0 8006F4C0 21204300 */  addu       $a0, $v0, $v1
    /* 5FCC4 8006F4C4 00100224 */  addiu      $v0, $zero, 0x1000
    /* 5FCC8 8006F4C8 1E008384 */  lh         $v1, 0x1E($a0)
    /* 5FCCC 8006F4CC 0C00868C */  lw         $a2, 0xC($a0)
    /* 5FCD0 8006F4D0 09006214 */  bne        $v1, $v0, .L8006F4F8
    /* 5FCD4 8006F4D4 00000000 */   nop
    /* 5FCD8 8006F4D8 20008284 */  lh         $v0, 0x20($a0)
    /* 5FCDC 8006F4DC 00000000 */  nop
    /* 5FCE0 8006F4E0 05004314 */  bne        $v0, $v1, .L8006F4F8
    /* 5FCE4 8006F4E4 00000000 */   nop
    /* 5FCE8 8006F4E8 2400828C */  lw         $v0, 0x24($a0)
    /* 5FCEC 8006F4EC 00000000 */  nop
    /* 5FCF0 8006F4F0 07004010 */  beqz       $v0, .L8006F510
    /* 5FCF4 8006F4F4 00000000 */   nop
  .L8006F4F8:
    /* 5FCF8 8006F4F8 1C008294 */  lhu        $v0, 0x1C($a0)
    /* 5FCFC 8006F4FC 0800C394 */  lhu        $v1, 0x8($a2)
    /* 5FD00 8006F500 00000000 */  nop
    /* 5FD04 8006F504 21104300 */  addu       $v0, $v0, $v1
    /* 5FD08 8006F508 23104500 */  subu       $v0, $v0, $a1
    /* 5FD0C 8006F50C 1C0082A4 */  sh         $v0, 0x1C($a0)
  .L8006F510:
    /* 5FD10 8006F510 0800C294 */  lhu        $v0, 0x8($a2)
    /* 5FD14 8006F514 00000000 */  nop
    /* 5FD18 8006F518 2310A200 */  subu       $v0, $a1, $v0
    /* 5FD1C 8006F51C 120082A4 */  sh         $v0, 0x12($a0)
    /* 5FD20 8006F520 0800E003 */  jr         $ra
    /* 5FD24 8006F524 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_8006F4A8
