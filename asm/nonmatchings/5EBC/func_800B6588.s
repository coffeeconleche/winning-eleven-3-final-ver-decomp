nonmatching func_800B6588, 0xB4

glabel func_800B6588
    /* A6D88 800B6588 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* A6D8C 800B658C 3400B1AF */  sw         $s1, 0x34($sp)
    /* A6D90 800B6590 2188A000 */  addu       $s1, $a1, $zero
    /* A6D94 800B6594 0BB6023C */  lui        $v0, (0xB60B60B7 >> 16)
    /* A6D98 800B6598 B7604234 */  ori        $v0, $v0, (0xB60B60B7 & 0xFFFF)
    /* A6D9C 800B659C 18002202 */  mult       $s1, $v0
    /* A6DA0 800B65A0 3800B2AF */  sw         $s2, 0x38($sp)
    /* A6DA4 800B65A4 21908000 */  addu       $s2, $a0, $zero
    /* A6DA8 800B65A8 C3171100 */  sra        $v0, $s1, 31
    /* A6DAC 800B65AC 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* A6DB0 800B65B0 3000B0AF */  sw         $s0, 0x30($sp)
    /* A6DB4 800B65B4 10300000 */  mfhi       $a2
    /* A6DB8 800B65B8 2180D100 */  addu       $s0, $a2, $s1
    /* A6DBC 800B65BC 03821000 */  sra        $s0, $s0, 8
    /* A6DC0 800B65C0 23800202 */  subu       $s0, $s0, $v0
    /* A6DC4 800B65C4 C6D9020C */  jal        func_800B6718
    /* A6DC8 800B65C8 21200002 */   addu      $a0, $s0, $zero
    /* A6DCC 800B65CC 21200002 */  addu       $a0, $s0, $zero
    /* A6DD0 800B65D0 92D9020C */  jal        func_800B6648
    /* A6DD4 800B65D4 21804000 */   addu      $s0, $v0, $zero
    /* A6DD8 800B65D8 12002012 */  beqz       $s1, .L800B6624
    /* A6DDC 800B65DC 21184000 */   addu      $v1, $v0, $zero
    /* A6DE0 800B65E0 21204002 */  addu       $a0, $s2, $zero
    /* A6DE4 800B65E4 23100300 */  negu       $v0, $v1
    /* A6DE8 800B65E8 1200A2A7 */  sh         $v0, 0x12($sp)
    /* A6DEC 800B65EC 00100224 */  addiu      $v0, $zero, 0x1000
    /* A6DF0 800B65F0 1000A527 */  addiu      $a1, $sp, 0x10
    /* A6DF4 800B65F4 1000B0A7 */  sh         $s0, 0x10($sp)
    /* A6DF8 800B65F8 1400A0A7 */  sh         $zero, 0x14($sp)
    /* A6DFC 800B65FC 1600A3A7 */  sh         $v1, 0x16($sp)
    /* A6E00 800B6600 1800B0A7 */  sh         $s0, 0x18($sp)
    /* A6E04 800B6604 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* A6E08 800B6608 1C00A0A7 */  sh         $zero, 0x1C($sp)
    /* A6E0C 800B660C 1E00A0A7 */  sh         $zero, 0x1E($sp)
    /* A6E10 800B6610 2000A2A7 */  sh         $v0, 0x20($sp)
    /* A6E14 800B6614 2400A0AF */  sw         $zero, 0x24($sp)
    /* A6E18 800B6618 2800A0AF */  sw         $zero, 0x28($sp)
    /* A6E1C 800B661C 3ED4020C */  jal        func_800B50F8
    /* A6E20 800B6620 2C00A0AF */   sw        $zero, 0x2C($sp)
  .L800B6624:
    /* A6E24 800B6624 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* A6E28 800B6628 3800B28F */  lw         $s2, 0x38($sp)
    /* A6E2C 800B662C 3400B18F */  lw         $s1, 0x34($sp)
    /* A6E30 800B6630 3000B08F */  lw         $s0, 0x30($sp)
    /* A6E34 800B6634 0800E003 */  jr         $ra
    /* A6E38 800B6638 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_800B6588
    /* A6E3C 800B663C 00000000 */  nop
    /* A6E40 800B6640 00000000 */  nop
    /* A6E44 800B6644 00000000 */  nop
