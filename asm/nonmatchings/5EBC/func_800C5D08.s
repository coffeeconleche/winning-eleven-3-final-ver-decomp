nonmatching func_800C5D08, 0x350

glabel func_800C5D08
    /* B6508 800C5D08 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* B650C 800C5D0C 9000B0AF */  sw         $s0, 0x90($sp)
    /* B6510 800C5D10 21808000 */  addu       $s0, $a0, $zero
    /* B6514 800C5D14 A000B4AF */  sw         $s4, 0xA0($sp)
    /* B6518 800C5D18 21A0A000 */  addu       $s4, $a1, $zero
    /* B651C 800C5D1C 9C00B3AF */  sw         $s3, 0x9C($sp)
    /* B6520 800C5D20 2198C000 */  addu       $s3, $a2, $zero
    /* B6524 800C5D24 9400B1AF */  sw         $s1, 0x94($sp)
    /* B6528 800C5D28 21880000 */  addu       $s1, $zero, $zero
    /* B652C 800C5D2C 21186002 */  addu       $v1, $s3, $zero
    /* B6530 800C5D30 21280000 */  addu       $a1, $zero, $zero
    /* B6534 800C5D34 7E000424 */  addiu      $a0, $zero, 0x7E
    /* B6538 800C5D38 A800BFAF */  sw         $ra, 0xA8($sp)
    /* B653C 800C5D3C A400B5AF */  sw         $s5, 0xA4($sp)
    /* B6540 800C5D40 9800B2AF */  sw         $s2, 0x98($sp)
  .L800C5D44:
    /* B6544 800C5D44 00006290 */  lbu        $v0, 0x0($v1)
    /* B6548 800C5D48 01006324 */  addiu      $v1, $v1, 0x1
    /* B654C 800C5D4C FFFF8424 */  addiu      $a0, $a0, -0x1
    /* B6550 800C5D50 2610A200 */  xor        $v0, $a1, $v0
    /* B6554 800C5D54 FBFF8104 */  bgez       $a0, .L800C5D44
    /* B6558 800C5D58 21284000 */   addu      $a1, $v0, $zero
    /* B655C 800C5D5C 000062A0 */  sb         $v0, 0x0($v1)
    /* B6560 800C5D60 01001524 */  addiu      $s5, $zero, 0x1
    /* B6564 800C5D64 1000B227 */  addiu      $s2, $sp, 0x10
  .L800C5D68:
    /* B6568 800C5D68 0800222A */  slti       $v0, $s1, 0x8
    /* B656C 800C5D6C 2E004010 */  beqz       $v0, .L800C5E28
    /* B6570 800C5D70 21100000 */   addu      $v0, $zero, $zero
    /* B6574 800C5D74 6A16030C */  jal        func_800C59A8
    /* B6578 800C5D78 00000000 */   nop
    /* B657C 800C5D7C 21200002 */  addu       $a0, $s0, $zero
    /* B6580 800C5D80 21288002 */  addu       $a1, $s4, $zero
    /* B6584 800C5D84 6616030C */  jal        func_800C5998
    /* B6588 800C5D88 21306002 */   addu      $a2, $s3, $zero
    /* B658C 800C5D8C 26005514 */  bne        $v0, $s5, .L800C5E28
    /* B6590 800C5D90 21100000 */   addu      $v0, $zero, $zero
  .L800C5D94:
    /* B6594 800C5D94 1A18030C */  jal        func_800C6068
    /* B6598 800C5D98 03211000 */   sra       $a0, $s0, 4
    /* B659C 800C5D9C 01004230 */  andi       $v0, $v0, 0x1
    /* B65A0 800C5DA0 FCFF4010 */  beqz       $v0, .L800C5D94
    /* B65A4 800C5DA4 21204002 */   addu      $a0, $s2, $zero
    /* B65A8 800C5DA8 96B5020C */  jal        func_800AD658
    /* B65AC 800C5DAC 80000524 */   addiu     $a1, $zero, 0x80
    /* B65B0 800C5DB0 6A16030C */  jal        func_800C59A8
    /* B65B4 800C5DB4 00000000 */   nop
    /* B65B8 800C5DB8 21200002 */  addu       $a0, $s0, $zero
    /* B65BC 800C5DBC 21288002 */  addu       $a1, $s4, $zero
    /* B65C0 800C5DC0 1618030C */  jal        func_800C6058
    /* B65C4 800C5DC4 21304002 */   addu      $a2, $s2, $zero
    /* B65C8 800C5DC8 06005510 */  beq        $v0, $s5, .L800C5DE4
    /* B65CC 800C5DCC 00000000 */   nop
    /* B65D0 800C5DD0 0180043C */  lui        $a0, %hi(D_8001569C)
    /* B65D4 800C5DD4 A6B5020C */  jal        func_800AD698
    /* B65D8 800C5DD8 9C568424 */   addiu     $a0, $a0, %lo(D_8001569C)
    /* B65DC 800C5DDC 7E170308 */  j          .L800C5DF8
    /* B65E0 800C5DE0 1000A427 */   addiu     $a0, $sp, 0x10
  .L800C5DE4:
    /* B65E4 800C5DE4 1A18030C */  jal        func_800C6068
    /* B65E8 800C5DE8 03211000 */   sra       $a0, $s0, 4
    /* B65EC 800C5DEC 01004230 */  andi       $v0, $v0, 0x1
    /* B65F0 800C5DF0 FCFF4010 */  beqz       $v0, .L800C5DE4
    /* B65F4 800C5DF4 1000A427 */   addiu     $a0, $sp, 0x10
  .L800C5DF8:
    /* B65F8 800C5DF8 21280000 */  addu       $a1, $zero, $zero
    /* B65FC 800C5DFC 7E000324 */  addiu      $v1, $zero, 0x7E
  .L800C5E00:
    /* B6600 800C5E00 00008290 */  lbu        $v0, 0x0($a0)
    /* B6604 800C5E04 01008424 */  addiu      $a0, $a0, 0x1
    /* B6608 800C5E08 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* B660C 800C5E0C FCFF6104 */  bgez       $v1, .L800C5E00
    /* B6610 800C5E10 2628A200 */   xor       $a1, $a1, $v0
    /* B6614 800C5E14 7F006392 */  lbu        $v1, 0x7F($s3)
    /* B6618 800C5E18 FF00A230 */  andi       $v0, $a1, 0xFF
    /* B661C 800C5E1C D2FF6214 */  bne        $v1, $v0, .L800C5D68
    /* B6620 800C5E20 01003126 */   addiu     $s1, $s1, 0x1
    /* B6624 800C5E24 01000224 */  addiu      $v0, $zero, 0x1
  .L800C5E28:
    /* B6628 800C5E28 A800BF8F */  lw         $ra, 0xA8($sp)
    /* B662C 800C5E2C A400B58F */  lw         $s5, 0xA4($sp)
    /* B6630 800C5E30 A000B48F */  lw         $s4, 0xA0($sp)
    /* B6634 800C5E34 9C00B38F */  lw         $s3, 0x9C($sp)
    /* B6638 800C5E38 9800B28F */  lw         $s2, 0x98($sp)
    /* B663C 800C5E3C 9400B18F */  lw         $s1, 0x94($sp)
    /* B6640 800C5E40 9000B08F */  lw         $s0, 0x90($sp)
    /* B6644 800C5E44 0800E003 */  jr         $ra
    /* B6648 800C5E48 B000BD27 */   addiu     $sp, $sp, 0xB0
    /* B664C 800C5E4C C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* B6650 800C5E50 2000B4AF */  sw         $s4, 0x20($sp)
    /* B6654 800C5E54 21A08000 */  addu       $s4, $a0, $zero
    /* B6658 800C5E58 1800B2AF */  sw         $s2, 0x18($sp)
    /* B665C 800C5E5C 21900000 */  addu       $s2, $zero, $zero
    /* B6660 800C5E60 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* B6664 800C5E64 0E80133C */  lui        $s3, %hi(D_800E7578)
    /* B6668 800C5E68 78757326 */  addiu      $s3, $s3, %lo(D_800E7578)
    /* B666C 800C5E6C 3000BEAF */  sw         $fp, 0x30($sp)
    /* B6670 800C5E70 0E801E3C */  lui        $fp, %hi(D_800E7348)
    /* B6674 800C5E74 4873DE27 */  addiu      $fp, $fp, %lo(D_800E7348)
    /* B6678 800C5E78 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* B667C 800C5E7C A0001724 */  addiu      $s7, $zero, 0xA0
    /* B6680 800C5E80 2800B6AF */  sw         $s6, 0x28($sp)
    /* B6684 800C5E84 FFFF1634 */  ori        $s6, $zero, 0xFFFF
    /* B6688 800C5E88 2400B5AF */  sw         $s5, 0x24($sp)
    /* B668C 800C5E8C 01001524 */  addiu      $s5, $zero, 0x1
    /* B6690 800C5E90 3400BFAF */  sw         $ra, 0x34($sp)
    /* B6694 800C5E94 1400B1AF */  sw         $s1, 0x14($sp)
    /* B6698 800C5E98 1000B0AF */  sw         $s0, 0x10($sp)
    /* B669C 800C5E9C 21206002 */  addu       $a0, $s3, $zero
  .L800C5EA0:
    /* B66A0 800C5EA0 96B5020C */  jal        func_800AD658
    /* B66A4 800C5EA4 80000524 */   addiu     $a1, $zero, 0x80
    /* B66A8 800C5EA8 40811200 */  sll        $s0, $s2, 5
    /* B66AC 800C5EAC 21881E02 */  addu       $s1, $s0, $fp
    /* B66B0 800C5EB0 21202002 */  addu       $a0, $s1, $zero
    /* B66B4 800C5EB4 96B5020C */  jal        func_800AD658
    /* B66B8 800C5EB8 20000524 */   addiu     $a1, $zero, 0x20
    /* B66BC 800C5EBC 0E80013C */  lui        $at, %hi(D_800E7348)
    /* B66C0 800C5EC0 21083000 */  addu       $at, $at, $s0
    /* B66C4 800C5EC4 487337AC */  sw         $s7, %lo(D_800E7348)($at)
    /* B66C8 800C5EC8 0E80013C */  lui        $at, %hi(D_800E734C)
    /* B66CC 800C5ECC 21083000 */  addu       $at, $at, $s0
    /* B66D0 800C5ED0 4C7320AC */  sw         $zero, %lo(D_800E734C)($at)
    /* B66D4 800C5ED4 0E80013C */  lui        $at, %hi(D_800E7350)
    /* B66D8 800C5ED8 21083000 */  addu       $at, $at, $s0
    /* B66DC 800C5EDC 507336A4 */  sh         $s6, %lo(D_800E7350)($at)
    /* B66E0 800C5EE0 0300228A */  lwl        $v0, 0x3($s1)
    /* B66E4 800C5EE4 0000229A */  lwr        $v0, 0x0($s1)
    /* B66E8 800C5EE8 0700238A */  lwl        $v1, 0x7($s1)
    /* B66EC 800C5EEC 0400239A */  lwr        $v1, 0x4($s1)
    /* B66F0 800C5EF0 0B00248A */  lwl        $a0, 0xB($s1)
    /* B66F4 800C5EF4 0800249A */  lwr        $a0, 0x8($s1)
    /* B66F8 800C5EF8 0F00258A */  lwl        $a1, 0xF($s1)
    /* B66FC 800C5EFC 0C00259A */  lwr        $a1, 0xC($s1)
    /* B6700 800C5F00 030062AA */  swl        $v0, 0x3($s3)
    /* B6704 800C5F04 000062BA */  swr        $v0, 0x0($s3)
    /* B6708 800C5F08 070063AA */  swl        $v1, 0x7($s3)
    /* B670C 800C5F0C 040063BA */  swr        $v1, 0x4($s3)
    /* B6710 800C5F10 0B0064AA */  swl        $a0, 0xB($s3)
    /* B6714 800C5F14 080064BA */  swr        $a0, 0x8($s3)
    /* B6718 800C5F18 0F0065AA */  swl        $a1, 0xF($s3)
    /* B671C 800C5F1C 0C0065BA */  swr        $a1, 0xC($s3)
    /* B6720 800C5F20 1300228A */  lwl        $v0, 0x13($s1)
    /* B6724 800C5F24 1000229A */  lwr        $v0, 0x10($s1)
    /* B6728 800C5F28 1700238A */  lwl        $v1, 0x17($s1)
    /* B672C 800C5F2C 1400239A */  lwr        $v1, 0x14($s1)
    /* B6730 800C5F30 1B00248A */  lwl        $a0, 0x1B($s1)
    /* B6734 800C5F34 1800249A */  lwr        $a0, 0x18($s1)
    /* B6738 800C5F38 1F00258A */  lwl        $a1, 0x1F($s1)
    /* B673C 800C5F3C 1C00259A */  lwr        $a1, 0x1C($s1)
    /* B6740 800C5F40 130062AA */  swl        $v0, 0x13($s3)
    /* B6744 800C5F44 100062BA */  swr        $v0, 0x10($s3)
    /* B6748 800C5F48 170063AA */  swl        $v1, 0x17($s3)
    /* B674C 800C5F4C 140063BA */  swr        $v1, 0x14($s3)
    /* B6750 800C5F50 1B0064AA */  swl        $a0, 0x1B($s3)
    /* B6754 800C5F54 180064BA */  swr        $a0, 0x18($s3)
    /* B6758 800C5F58 1F0065AA */  swl        $a1, 0x1F($s3)
    /* B675C 800C5F5C 1C0065BA */  swr        $a1, 0x1C($s3)
    /* B6760 800C5F60 21208002 */  addu       $a0, $s4, $zero
    /* B6764 800C5F64 01005026 */  addiu      $s0, $s2, 0x1
    /* B6768 800C5F68 21280002 */  addu       $a1, $s0, $zero
    /* B676C 800C5F6C 4217030C */  jal        func_800C5D08
    /* B6770 800C5F70 21306002 */   addu      $a2, $s3, $zero
    /* B6774 800C5F74 2C005514 */  bne        $v0, $s5, .L800C6028
    /* B6778 800C5F78 21100000 */   addu      $v0, $zero, $zero
    /* B677C 800C5F7C 21900002 */  addu       $s2, $s0, $zero
    /* B6780 800C5F80 0F00422A */  slti       $v0, $s2, 0xF
    /* B6784 800C5F84 C6FF4014 */  bnez       $v0, .L800C5EA0
    /* B6788 800C5F88 21206002 */   addu      $a0, $s3, $zero
    /* B678C 800C5F8C 21900000 */  addu       $s2, $zero, $zero
    /* B6790 800C5F90 FFFF1524 */  addiu      $s5, $zero, -0x1
    /* B6794 800C5F94 21886002 */  addu       $s1, $s3, $zero
    /* B6798 800C5F98 01001324 */  addiu      $s3, $zero, 0x1
    /* B679C 800C5F9C 0E80103C */  lui        $s0, %hi(D_800E7528)
    /* B67A0 800C5FA0 28751026 */  addiu      $s0, $s0, %lo(D_800E7528)
  .L800C5FA4:
    /* B67A4 800C5FA4 000015AE */  sw         $s5, 0x0($s0)
    /* B67A8 800C5FA8 21202002 */  addu       $a0, $s1, $zero
    /* B67AC 800C5FAC 96B5020C */  jal        func_800AD658
    /* B67B0 800C5FB0 80000524 */   addiu     $a1, $zero, 0x80
    /* B67B4 800C5FB4 0300028A */  lwl        $v0, 0x3($s0)
    /* B67B8 800C5FB8 0000029A */  lwr        $v0, 0x0($s0)
    /* B67BC 800C5FBC 00000000 */  nop
    /* B67C0 800C5FC0 030022AA */  swl        $v0, 0x3($s1)
    /* B67C4 800C5FC4 000022BA */  swr        $v0, 0x0($s1)
    /* B67C8 800C5FC8 21208002 */  addu       $a0, $s4, $zero
    /* B67CC 800C5FCC 10004526 */  addiu      $a1, $s2, 0x10
    /* B67D0 800C5FD0 4217030C */  jal        func_800C5D08
    /* B67D4 800C5FD4 21302002 */   addu      $a2, $s1, $zero
    /* B67D8 800C5FD8 03005310 */  beq        $v0, $s3, .L800C5FE8
    /* B67DC 800C5FDC 01005226 */   addiu     $s2, $s2, 0x1
    /* B67E0 800C5FE0 0A180308 */  j          .L800C6028
    /* B67E4 800C5FE4 21100000 */   addu      $v0, $zero, $zero
  .L800C5FE8:
    /* B67E8 800C5FE8 1400422A */  slti       $v0, $s2, 0x14
    /* B67EC 800C5FEC EDFF4014 */  bnez       $v0, .L800C5FA4
    /* B67F0 800C5FF0 04001026 */   addiu     $s0, $s0, 0x4
    /* B67F4 800C5FF4 21202002 */  addu       $a0, $s1, $zero
    /* B67F8 800C5FF8 96B5020C */  jal        func_800AD658
    /* B67FC 800C5FFC 80000524 */   addiu     $a1, $zero, 0x80
    /* B6800 800C6000 21208002 */  addu       $a0, $s4, $zero
    /* B6804 800C6004 21280000 */  addu       $a1, $zero, $zero
    /* B6808 800C6008 21302002 */  addu       $a2, $s1, $zero
    /* B680C 800C600C 4D000224 */  addiu      $v0, $zero, 0x4D
    /* B6810 800C6010 0000C2A0 */  sb         $v0, 0x0($a2)
    /* B6814 800C6014 43000224 */  addiu      $v0, $zero, 0x43
    /* B6818 800C6018 4217030C */  jal        func_800C5D08
    /* B681C 800C601C 0100C2A0 */   sb        $v0, 0x1($a2)
    /* B6820 800C6020 01004238 */  xori       $v0, $v0, 0x1
    /* B6824 800C6024 0100422C */  sltiu      $v0, $v0, 0x1
  .L800C6028:
    /* B6828 800C6028 3400BF8F */  lw         $ra, 0x34($sp)
    /* B682C 800C602C 3000BE8F */  lw         $fp, 0x30($sp)
    /* B6830 800C6030 2C00B78F */  lw         $s7, 0x2C($sp)
    /* B6834 800C6034 2800B68F */  lw         $s6, 0x28($sp)
    /* B6838 800C6038 2400B58F */  lw         $s5, 0x24($sp)
    /* B683C 800C603C 2000B48F */  lw         $s4, 0x20($sp)
    /* B6840 800C6040 1C00B38F */  lw         $s3, 0x1C($sp)
    /* B6844 800C6044 1800B28F */  lw         $s2, 0x18($sp)
    /* B6848 800C6048 1400B18F */  lw         $s1, 0x14($sp)
    /* B684C 800C604C 1000B08F */  lw         $s0, 0x10($sp)
    /* B6850 800C6050 0800E003 */  jr         $ra
    /* B6854 800C6054 3800BD27 */   addiu     $sp, $sp, 0x38
endlabel func_800C5D08
