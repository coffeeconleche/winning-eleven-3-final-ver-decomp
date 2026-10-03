nonmatching func_8007D5E8, 0x1F8

glabel func_8007D5E8
    /* 6DDE8 8007D5E8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 6DDEC 8007D5EC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6DDF0 8007D5F0 801F133C */  lui        $s3, (0x1F8002C0 >> 16)
    /* 6DDF4 8007D5F4 2000B4AF */  sw         $s4, 0x20($sp)
    /* 6DDF8 8007D5F8 1080143C */  lui        $s4, %hi(D_800FF748)
    /* 6DDFC 8007D5FC 48F79426 */  addiu      $s4, $s4, %lo(D_800FF748)
    /* 6DE00 8007D600 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6DE04 8007D604 E8039126 */  addiu      $s1, $s4, 0x3E8
    /* 6DE08 8007D608 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6DE0C 8007D60C 21900000 */  addu       $s2, $zero, $zero
    /* 6DE10 8007D610 1000B0AF */  sw         $s0, 0x10($sp)
    /* 6DE14 8007D614 88079026 */  addiu      $s0, $s4, 0x788
    /* 6DE18 8007D618 2400BFAF */  sw         $ra, 0x24($sp)
  .L8007D61C:
    /* 6DE1C 8007D61C F44D010C */  jal        func_800537D0
    /* 6DE20 8007D620 21202002 */   addu      $a0, $s1, $zero
    /* 6DE24 8007D624 0E004010 */  beqz       $v0, .L8007D660
    /* 6DE28 8007D628 01000224 */   addiu     $v0, $zero, 0x1
    /* 6DE2C 8007D62C EEFF0396 */  lhu        $v1, -0x12($s0)
    /* 6DE30 8007D630 00000000 */  nop
    /* 6DE34 8007D634 08006210 */  beq        $v1, $v0, .L8007D658
    /* 6DE38 8007D638 33000224 */   addiu     $v0, $zero, 0x33
    /* 6DE3C 8007D63C AE79000C */  jal        func_8001E6B8
    /* 6DE40 8007D640 15000424 */   addiu     $a0, $zero, 0x15
    /* 6DE44 8007D644 21202002 */  addu       $a0, $s1, $zero
    /* 6DE48 8007D648 01000524 */  addiu      $a1, $zero, 0x1
    /* 6DE4C 8007D64C 8C6E010C */  jal        func_8005BA30
    /* 6DE50 8007D650 FF004630 */   andi      $a2, $v0, 0xFF
    /* 6DE54 8007D654 33000224 */  addiu      $v0, $zero, 0x33
  .L8007D658:
    /* 6DE58 8007D658 F6FF02A2 */  sb         $v0, -0xA($s0)
    /* 6DE5C 8007D65C F7FF00A2 */  sb         $zero, -0x9($s0)
  .L8007D660:
    /* 6DE60 8007D660 A8026392 */  lbu        $v1, (0x1F8002A8 & 0xFFFF)($s3)
    /* 6DE64 8007D664 EDFF0292 */  lbu        $v0, -0x13($s0)
    /* 6DE68 8007D668 00000000 */  nop
    /* 6DE6C 8007D66C 08004314 */  bne        $v0, $v1, .L8007D690
    /* 6DE70 8007D670 21380000 */   addu      $a3, $zero, $zero
    /* 6DE74 8007D674 21202002 */  addu       $a0, $s1, $zero
    /* 6DE78 8007D678 0000068E */  lw         $a2, 0x0($s0)
    /* 6DE7C 8007D67C 0A000592 */  lbu        $a1, 0xA($s0)
    /* 6DE80 8007D680 3C2C010C */  jal        func_8004B0F0
    /* 6DE84 8007D684 0800C624 */   addiu     $a2, $a2, 0x8
    /* 6DE88 8007D688 88AD020C */  jal        func_800AB620
    /* 6DE8C 8007D68C 09050424 */   addiu     $a0, $zero, 0x509
  .L8007D690:
    /* 6DE90 8007D690 01005226 */  addiu      $s2, $s2, 0x1
    /* 6DE94 8007D694 E8031026 */  addiu      $s0, $s0, 0x3E8
    /* 6DE98 8007D698 1600422A */  slti       $v0, $s2, 0x16
    /* 6DE9C 8007D69C DFFF4014 */  bnez       $v0, .L8007D61C
    /* 6DEA0 8007D6A0 E8033126 */   addiu     $s1, $s1, 0x3E8
    /* 6DEA4 8007D6A4 AD026392 */  lbu        $v1, (0x1F8002AD & 0xFFFF)($s3)
    /* 6DEA8 8007D6A8 AAAA103C */  lui        $s0, (0xAAAAAAAB >> 16)
    /* 6DEAC 8007D6AC ABAA1036 */  ori        $s0, $s0, (0xAAAAAAAB & 0xFFFF)
    /* 6DEB0 8007D6B0 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6DEB4 8007D6B4 19007000 */  multu      $v1, $s0
    /* 6DEB8 8007D6B8 05000524 */  addiu      $a1, $zero, 0x5
    /* 6DEBC 8007D6BC 10400000 */  mfhi       $t0
    /* 6DEC0 8007D6C0 02210800 */  srl        $a0, $t0, 4
    /* 6DEC4 8007D6C4 40100400 */  sll        $v0, $a0, 1
    /* 6DEC8 8007D6C8 21104400 */  addu       $v0, $v0, $a0
    /* 6DECC 8007D6CC C0100200 */  sll        $v0, $v0, 3
    /* 6DED0 8007D6D0 23186200 */  subu       $v1, $v1, $v0
    /* 6DED4 8007D6D4 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6DED8 8007D6D8 40210300 */  sll        $a0, $v1, 5
    /* 6DEDC 8007D6DC 23208300 */  subu       $a0, $a0, $v1
    /* 6DEE0 8007D6E0 80200400 */  sll        $a0, $a0, 2
    /* 6DEE4 8007D6E4 21208300 */  addu       $a0, $a0, $v1
    /* 6DEE8 8007D6E8 C0200400 */  sll        $a0, $a0, 3
    /* 6DEEC 8007D6EC E81D010C */  jal        func_800477A0
    /* 6DEF0 8007D6F0 21208402 */   addu      $a0, $s4, $a0
    /* 6DEF4 8007D6F4 0F8A000C */  jal        func_8002283C
    /* 6DEF8 8007D6F8 00000000 */   nop
    /* 6DEFC 8007D6FC B428010C */  jal        func_8004A2D0
    /* 6DF00 8007D700 00000000 */   nop
    /* 6DF04 8007D704 0446010C */  jal        func_80051810
    /* 6DF08 8007D708 00000000 */   nop
    /* 6DF0C 8007D70C 94026296 */  lhu        $v0, (0x1F800294 & 0xFFFF)($s3)
    /* 6DF10 8007D710 00000000 */  nop
    /* 6DF14 8007D714 01004224 */  addiu      $v0, $v0, 0x1
    /* 6DF18 8007D718 940262A6 */  sh         $v0, (0x1F800294 & 0xFFFF)($s3)
    /* 6DF1C 8007D71C FFFF4230 */  andi       $v0, $v0, 0xFFFF
    /* 6DF20 8007D720 1E00422C */  sltiu      $v0, $v0, 0x1E
    /* 6DF24 8007D724 25004014 */  bnez       $v0, .L8007D7BC
    /* 6DF28 8007D728 00000000 */   nop
    /* 6DF2C 8007D72C 6949010C */  jal        func_800525A4
    /* 6DF30 8007D730 C00260A2 */   sb        $zero, (0x1F8002C0 & 0xFFFF)($s3)
    /* 6DF34 8007D734 05004010 */  beqz       $v0, .L8007D74C
    /* 6DF38 8007D738 00000000 */   nop
    /* 6DF3C 8007D73C 88AD020C */  jal        func_800AB620
    /* 6DF40 8007D740 11000424 */   addiu     $a0, $zero, 0x11
    /* 6DF44 8007D744 EDF50108 */  j          .L8007D7B4
    /* 6DF48 8007D748 03000424 */   addiu     $a0, $zero, 0x3
  .L8007D74C:
    /* 6DF4C 8007D74C 94026296 */  lhu        $v0, (0x1F800294 & 0xFFFF)($s3)
    /* 6DF50 8007D750 00000000 */  nop
    /* 6DF54 8007D754 7900422C */  sltiu      $v0, $v0, 0x79
    /* 6DF58 8007D758 18004014 */  bnez       $v0, .L8007D7BC
    /* 6DF5C 8007D75C 21280000 */   addu      $a1, $zero, $zero
    /* 6DF60 8007D760 AD026392 */  lbu        $v1, (0x1F8002AD & 0xFFFF)($s3)
    /* 6DF64 8007D764 00000000 */  nop
    /* 6DF68 8007D768 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6DF6C 8007D76C 19007000 */  multu      $v1, $s0
    /* 6DF70 8007D770 1A000624 */  addiu      $a2, $zero, 0x1A
    /* 6DF74 8007D774 940260A6 */  sh         $zero, (0x1F800294 & 0xFFFF)($s3)
    /* 6DF78 8007D778 10400000 */  mfhi       $t0
    /* 6DF7C 8007D77C 02210800 */  srl        $a0, $t0, 4
    /* 6DF80 8007D780 40100400 */  sll        $v0, $a0, 1
    /* 6DF84 8007D784 21104400 */  addu       $v0, $v0, $a0
    /* 6DF88 8007D788 C0100200 */  sll        $v0, $v0, 3
    /* 6DF8C 8007D78C 23186200 */  subu       $v1, $v1, $v0
    /* 6DF90 8007D790 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6DF94 8007D794 40210300 */  sll        $a0, $v1, 5
    /* 6DF98 8007D798 23208300 */  subu       $a0, $a0, $v1
    /* 6DF9C 8007D79C 80200400 */  sll        $a0, $a0, 2
    /* 6DFA0 8007D7A0 21208300 */  addu       $a0, $a0, $v1
    /* 6DFA4 8007D7A4 C0200400 */  sll        $a0, $a0, 3
    /* 6DFA8 8007D7A8 3472010C */  jal        func_8005C8D0
    /* 6DFAC 8007D7AC 21208402 */   addu      $a0, $s4, $a0
    /* 6DFB0 8007D7B0 02000424 */  addiu      $a0, $zero, 0x2
  .L8007D7B4:
    /* 6DFB4 8007D7B4 7F5C000C */  jal        func_800171FC
    /* 6DFB8 8007D7B8 00000000 */   nop
  .L8007D7BC:
    /* 6DFBC 8007D7BC 2400BF8F */  lw         $ra, 0x24($sp)
    /* 6DFC0 8007D7C0 2000B48F */  lw         $s4, 0x20($sp)
    /* 6DFC4 8007D7C4 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6DFC8 8007D7C8 1800B28F */  lw         $s2, 0x18($sp)
    /* 6DFCC 8007D7CC 1400B18F */  lw         $s1, 0x14($sp)
    /* 6DFD0 8007D7D0 1000B08F */  lw         $s0, 0x10($sp)
    /* 6DFD4 8007D7D4 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 6DFD8 8007D7D8 0800E003 */  jr         $ra
    /* 6DFDC 8007D7DC 00000000 */   nop
endlabel func_8007D5E8
