nonmatching func_80095E8C, 0xB4

glabel func_80095E8C
    /* 8668C 80095E8C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 86690 80095E90 1400B1AF */  sw         $s1, 0x14($sp)
    /* 86694 80095E94 21888000 */  addu       $s1, $a0, $zero
    /* 86698 80095E98 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 8669C 80095E9C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 866A0 80095EA0 7153020C */  jal        func_80094DC4
    /* 866A4 80095EA4 1000B0AF */   sw        $s0, 0x10($sp)
    /* 866A8 80095EA8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 866AC 80095EAC 19004010 */  beqz       $v0, .L80095F14
    /* 866B0 80095EB0 00000000 */   nop
    /* 866B4 80095EB4 AE79000C */  jal        func_8001E6B8
    /* 866B8 80095EB8 24000424 */   addiu     $a0, $zero, 0x24
    /* 866BC 80095EBC 20004424 */  addiu      $a0, $v0, 0x20
    /* 866C0 80095EC0 AC032292 */  lbu        $v0, 0x3AC($s1)
    /* 866C4 80095EC4 AB032392 */  lbu        $v1, 0x3AB($s1)
    /* 866C8 80095EC8 02004014 */  bnez       $v0, .L80095ED4
    /* 866CC 80095ECC 21906400 */   addu      $s2, $v1, $a0
    /* 866D0 80095ED0 23906400 */  subu       $s2, $v1, $a0
  .L80095ED4:
    /* 866D4 80095ED4 D057020C */  jal        func_80095F40
    /* 866D8 80095ED8 00000000 */   nop
    /* 866DC 80095EDC 10000424 */  addiu      $a0, $zero, 0x10
    /* 866E0 80095EE0 AE79000C */  jal        func_8001E6B8
    /* 866E4 80095EE4 21804000 */   addu      $s0, $v0, $zero
    /* 866E8 80095EE8 21202002 */  addu       $a0, $s1, $zero
    /* 866EC 80095EEC FF004532 */  andi       $a1, $s2, 0xFF
    /* 866F0 80095EF0 21300002 */  addu       $a2, $s0, $zero
    /* 866F4 80095EF4 7154020C */  jal        func_800951C4
    /* 866F8 80095EF8 08004724 */   addiu     $a3, $v0, 0x8
    /* 866FC 80095EFC 2454020C */  jal        func_80095090
    /* 86700 80095F00 21202002 */   addu      $a0, $s1, $zero
    /* 86704 80095F04 5A5E010C */  jal        func_80057968
    /* 86708 80095F08 21202002 */   addu      $a0, $s1, $zero
    /* 8670C 80095F0C C9570208 */  j          .L80095F24
    /* 86710 80095F10 00000000 */   nop
  .L80095F14:
    /* 86714 80095F14 FD53020C */  jal        func_80094FF4
    /* 86718 80095F18 21202002 */   addu      $a0, $s1, $zero
    /* 8671C 80095F1C 125E010C */  jal        func_80057848
    /* 86720 80095F20 21202002 */   addu      $a0, $s1, $zero
  .L80095F24:
    /* 86724 80095F24 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 86728 80095F28 1800B28F */  lw         $s2, 0x18($sp)
    /* 8672C 80095F2C 1400B18F */  lw         $s1, 0x14($sp)
    /* 86730 80095F30 1000B08F */  lw         $s0, 0x10($sp)
    /* 86734 80095F34 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 86738 80095F38 0800E003 */  jr         $ra
    /* 8673C 80095F3C 00000000 */   nop
endlabel func_80095E8C
