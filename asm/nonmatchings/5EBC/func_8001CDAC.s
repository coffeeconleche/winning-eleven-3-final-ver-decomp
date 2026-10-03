nonmatching func_8001CDAC, 0x134

glabel func_8001CDAC
    /* D5AC 8001CDAC A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* D5B0 8001CDB0 3800B2AF */  sw         $s2, 0x38($sp)
    /* D5B4 8001CDB4 6800B297 */  lhu        $s2, 0x68($sp)
    /* D5B8 8001CDB8 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* D5BC 8001CDBC 6C00B393 */  lbu        $s3, 0x6C($sp)
    /* D5C0 8001CDC0 FF008430 */  andi       $a0, $a0, 0xFF
    /* D5C4 8001CDC4 3000B0AF */  sw         $s0, 0x30($sp)
    /* D5C8 8001CDC8 80800400 */  sll        $s0, $a0, 2
    /* D5CC 8001CDCC 4000B4AF */  sw         $s4, 0x40($sp)
    /* D5D0 8001CDD0 7000B493 */  lbu        $s4, 0x70($sp)
    /* D5D4 8001CDD4 21800402 */  addu       $s0, $s0, $a0
    /* D5D8 8001CDD8 4400B5AF */  sw         $s5, 0x44($sp)
    /* D5DC 8001CDDC 7400B597 */  lhu        $s5, 0x74($sp)
    /* D5E0 8001CDE0 C0801000 */  sll        $s0, $s0, 3
    /* D5E4 8001CDE4 4800B6AF */  sw         $s6, 0x48($sp)
    /* D5E8 8001CDE8 7800B697 */  lhu        $s6, 0x78($sp)
    /* D5EC 8001CDEC 1080023C */  lui        $v0, %hi(D_80105508)
    /* D5F0 8001CDF0 08554224 */  addiu      $v0, $v0, %lo(D_80105508)
    /* D5F4 8001CDF4 4C00B7AF */  sw         $s7, 0x4C($sp)
    /* D5F8 8001CDF8 7C00B797 */  lhu        $s7, 0x7C($sp)
    /* D5FC 8001CDFC 21800202 */  addu       $s0, $s0, $v0
    /* D600 8001CE00 5000BEAF */  sw         $fp, 0x50($sp)
    /* D604 8001CE04 8000BE97 */  lhu        $fp, 0x80($sp)
    /* D608 8001CE08 8400A893 */  lbu        $t0, 0x84($sp)
    /* D60C 8001CE0C 9400A397 */  lhu        $v1, 0x94($sp)
    /* D610 8001CE10 04000224 */  addiu      $v0, $zero, 0x4
    /* D614 8001CE14 3400B1AF */  sw         $s1, 0x34($sp)
    /* D618 8001CE18 1800A8A3 */  sb         $t0, 0x18($sp)
    /* D61C 8001CE1C 8800A893 */  lbu        $t0, 0x88($sp)
    /* D620 8001CE20 2188E000 */  addu       $s1, $a3, $zero
    /* D624 8001CE24 2000A8A3 */  sb         $t0, 0x20($sp)
    /* D628 8001CE28 8C00A893 */  lbu        $t0, 0x8C($sp)
    /* D62C 8001CE2C FFFFA430 */  andi       $a0, $a1, 0xFFFF
    /* D630 8001CE30 5400BFAF */  sw         $ra, 0x54($sp)
    /* D634 8001CE34 1000A6AF */  sw         $a2, 0x10($sp)
    /* D638 8001CE38 2800A8A3 */  sb         $t0, 0x28($sp)
    /* D63C 8001CE3C 060002A6 */  sh         $v0, 0x6($s0)
    /* D640 8001CE40 0174000C */  jal        func_8001D004
    /* D644 8001CE44 040003A2 */   sb        $v1, 0x4($s0)
    /* D648 8001CE48 0C0002AE */  sw         $v0, 0xC($s0)
    /* D64C 8001CE4C 1000A88F */  lw         $t0, 0x10($sp)
    /* D650 8001CE50 00000000 */  nop
    /* D654 8001CE54 080008AE */  sw         $t0, 0x8($s0)
    /* D658 8001CE58 100011A6 */  sh         $s1, 0x10($s0)
    /* D65C 8001CE5C 120012A6 */  sh         $s2, 0x12($s0)
    /* D660 8001CE60 140013A2 */  sb         $s3, 0x14($s0)
    /* D664 8001CE64 150014A2 */  sb         $s4, 0x15($s0)
    /* D668 8001CE68 000000AE */  sw         $zero, 0x0($s0)
    /* D66C 8001CE6C 1E0015A6 */  sh         $s5, 0x1E($s0)
    /* D670 8001CE70 200016A6 */  sh         $s6, 0x20($s0)
    /* D674 8001CE74 1A0017A6 */  sh         $s7, 0x1A($s0)
    /* D678 8001CE78 1C001EA6 */  sh         $fp, 0x1C($s0)
    /* D67C 8001CE7C 1800A893 */  lbu        $t0, 0x18($sp)
    /* D680 8001CE80 00000000 */  nop
    /* D684 8001CE84 160008A2 */  sb         $t0, 0x16($s0)
    /* D688 8001CE88 2000A893 */  lbu        $t0, 0x20($sp)
    /* D68C 8001CE8C 00000000 */  nop
    /* D690 8001CE90 170008A2 */  sb         $t0, 0x17($s0)
    /* D694 8001CE94 2800A893 */  lbu        $t0, 0x28($sp)
    /* D698 8001CE98 00000000 */  nop
    /* D69C 8001CE9C 180008A2 */  sb         $t0, 0x18($s0)
    /* D6A0 8001CEA0 9000A88F */  lw         $t0, 0x90($sp)
    /* D6A4 8001CEA4 00000000 */  nop
    /* D6A8 8001CEA8 240008AE */  sw         $t0, 0x24($s0)
    /* D6AC 8001CEAC 5400BF8F */  lw         $ra, 0x54($sp)
    /* D6B0 8001CEB0 5000BE8F */  lw         $fp, 0x50($sp)
    /* D6B4 8001CEB4 4C00B78F */  lw         $s7, 0x4C($sp)
    /* D6B8 8001CEB8 4800B68F */  lw         $s6, 0x48($sp)
    /* D6BC 8001CEBC 4400B58F */  lw         $s5, 0x44($sp)
    /* D6C0 8001CEC0 4000B48F */  lw         $s4, 0x40($sp)
    /* D6C4 8001CEC4 3C00B38F */  lw         $s3, 0x3C($sp)
    /* D6C8 8001CEC8 3800B28F */  lw         $s2, 0x38($sp)
    /* D6CC 8001CECC 3400B18F */  lw         $s1, 0x34($sp)
    /* D6D0 8001CED0 3000B08F */  lw         $s0, 0x30($sp)
    /* D6D4 8001CED4 5800BD27 */  addiu      $sp, $sp, 0x58
    /* D6D8 8001CED8 0800E003 */  jr         $ra
    /* D6DC 8001CEDC 00000000 */   nop
endlabel func_8001CDAC
