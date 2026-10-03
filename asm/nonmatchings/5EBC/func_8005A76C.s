nonmatching func_8005A76C, 0x78

glabel func_8005A76C
    /* 4AF6C 8005A76C 00340600 */  sll        $a2, $a2, 16
    /* 4AF70 8005A770 03340600 */  sra        $a2, $a2, 16
    /* 4AF74 8005A774 0300C01C */  bgtz       $a2, .L8005A784
    /* 4AF78 8005A778 0A00C228 */   slti      $v0, $a2, 0xA
    /* 4AF7C 8005A77C F7690108 */  j          .L8005A7DC
    /* 4AF80 8005A780 00140400 */   sll       $v0, $a0, 16
  .L8005A784:
    /* 4AF84 8005A784 14004010 */  beqz       $v0, .L8005A7D8
    /* 4AF88 8005A788 001C0400 */   sll       $v1, $a0, 16
    /* 4AF8C 8005A78C 031C0300 */  sra        $v1, $v1, 16
    /* 4AF90 8005A790 0A000224 */  addiu      $v0, $zero, 0xA
    /* 4AF94 8005A794 23104600 */  subu       $v0, $v0, $a2
    /* 4AF98 8005A798 18006200 */  mult       $v1, $v0
    /* 4AF9C 8005A79C 12180000 */  mflo       $v1
    /* 4AFA0 8005A7A0 00140500 */  sll        $v0, $a1, 16
    /* 4AFA4 8005A7A4 03140200 */  sra        $v0, $v0, 16
    /* 4AFA8 8005A7A8 18004600 */  mult       $v0, $a2
    /* 4AFAC 8005A7AC 6666023C */  lui        $v0, (0x66666667 >> 16)
    /* 4AFB0 8005A7B0 12400000 */  mflo       $t0
    /* 4AFB4 8005A7B4 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 4AFB8 8005A7B8 21186800 */  addu       $v1, $v1, $t0
    /* 4AFBC 8005A7BC 18006200 */  mult       $v1, $v0
    /* 4AFC0 8005A7C0 C31F0300 */  sra        $v1, $v1, 31
    /* 4AFC4 8005A7C4 10380000 */  mfhi       $a3
    /* 4AFC8 8005A7C8 83100700 */  sra        $v0, $a3, 2
    /* 4AFCC 8005A7CC 23104300 */  subu       $v0, $v0, $v1
    /* 4AFD0 8005A7D0 F7690108 */  j          .L8005A7DC
    /* 4AFD4 8005A7D4 00140200 */   sll       $v0, $v0, 16
  .L8005A7D8:
    /* 4AFD8 8005A7D8 00140500 */  sll        $v0, $a1, 16
  .L8005A7DC:
    /* 4AFDC 8005A7DC 0800E003 */  jr         $ra
    /* 4AFE0 8005A7E0 03140200 */   sra       $v0, $v0, 16
endlabel func_8005A76C
