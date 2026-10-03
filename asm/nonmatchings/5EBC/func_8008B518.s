nonmatching func_8008B518, 0x1E8

glabel func_8008B518
    /* 7BD18 8008B518 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 7BD1C 8008B51C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 7BD20 8008B520 21888000 */  addu       $s1, $a0, $zero
    /* 7BD24 8008B524 1080053C */  lui        $a1, %hi(D_800FF748)
    /* 7BD28 8008B528 48F7A524 */  addiu      $a1, $a1, %lo(D_800FF748)
    /* 7BD2C 8008B52C 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 7BD30 8008B530 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 7BD34 8008B534 01000224 */  addiu      $v0, $zero, 0x1
    /* 7BD38 8008B538 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 7BD3C 8008B53C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 7BD40 8008B540 68006214 */  bne        $v1, $v0, .L8008B6E4
    /* 7BD44 8008B544 1000B0AF */   sw        $s0, 0x10($sp)
    /* 7BD48 8008B548 99032292 */  lbu        $v0, 0x399($s1)
    /* 7BD4C 8008B54C 00000000 */  nop
    /* 7BD50 8008B550 01004238 */  xori       $v0, $v0, 0x1
    /* 7BD54 8008B554 40100200 */  sll        $v0, $v0, 1
    /* 7BD58 8008B558 801F013C */  lui        $at, (0x1F80031E >> 16)
    /* 7BD5C 8008B55C 21084100 */  addu       $at, $v0, $at
    /* 7BD60 8008B560 1E032390 */  lbu        $v1, (0x1F80031E & 0xFFFF)($at)
    /* 7BD64 8008B564 AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 7BD68 8008B568 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 7BD6C 8008B56C 19006200 */  multu      $v1, $v0
    /* 7BD70 8008B570 10480000 */  mfhi       $t1
    /* 7BD74 8008B574 02210900 */  srl        $a0, $t1, 4
    /* 7BD78 8008B578 40100400 */  sll        $v0, $a0, 1
    /* 7BD7C 8008B57C 21104400 */  addu       $v0, $v0, $a0
    /* 7BD80 8008B580 C0100200 */  sll        $v0, $v0, 3
    /* 7BD84 8008B584 23186200 */  subu       $v1, $v1, $v0
    /* 7BD88 8008B588 FF006330 */  andi       $v1, $v1, 0xFF
    /* 7BD8C 8008B58C 40110300 */  sll        $v0, $v1, 5
    /* 7BD90 8008B590 23104300 */  subu       $v0, $v0, $v1
    /* 7BD94 8008B594 80100200 */  sll        $v0, $v0, 2
    /* 7BD98 8008B598 21104300 */  addu       $v0, $v0, $v1
    /* 7BD9C 8008B59C C0100200 */  sll        $v0, $v0, 3
    /* 7BDA0 8008B5A0 21804500 */  addu       $s0, $v0, $a1
    /* 7BDA4 8008B5A4 644B010C */  jal        func_80052D90
    /* 7BDA8 8008B5A8 21200002 */   addu      $a0, $s0, $zero
    /* 7BDAC 8008B5AC FF004230 */  andi       $v0, $v0, 0xFF
    /* 7BDB0 8008B5B0 4C004014 */  bnez       $v0, .L8008B6E4
    /* 7BDB4 8008B5B4 00000000 */   nop
    /* 7BDB8 8008B5B8 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 7BDBC 8008B5BC F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 7BDC0 8008B5C0 02000486 */  lh         $a0, 0x2($s0)
    /* 7BDC4 8008B5C4 02006684 */  lh         $a2, 0x2($v1)
    /* 7BDC8 8008B5C8 00000000 */  nop
    /* 7BDCC 8008B5CC 23108600 */  subu       $v0, $a0, $a2
    /* 7BDD0 8008B5D0 18004200 */  mult       $v0, $v0
    /* 7BDD4 8008B5D4 06000886 */  lh         $t0, 0x6($s0)
    /* 7BDD8 8008B5D8 06006784 */  lh         $a3, 0x6($v1)
    /* 7BDDC 8008B5DC 12280000 */  mflo       $a1
    /* 7BDE0 8008B5E0 23100701 */  subu       $v0, $t0, $a3
    /* 7BDE4 8008B5E4 00000000 */  nop
    /* 7BDE8 8008B5E8 18004200 */  mult       $v0, $v0
    /* 7BDEC 8008B5EC FFFF0234 */  ori        $v0, $zero, 0xFFFF
    /* 7BDF0 8008B5F0 12180000 */  mflo       $v1
    /* 7BDF4 8008B5F4 2190A300 */  addu       $s2, $a1, $v1
    /* 7BDF8 8008B5F8 2B105200 */  sltu       $v0, $v0, $s2
    /* 7BDFC 8008B5FC 07004014 */  bnez       $v0, .L8008B61C
    /* 7BE00 8008B600 00000000 */   nop
    /* 7BE04 8008B604 AE79000C */  jal        func_8001E6B8
    /* 7BE08 8008B608 03000424 */   addiu     $a0, $zero, 0x3
    /* 7BE0C 8008B60C 2B004014 */  bnez       $v0, .L8008B6BC
    /* 7BE10 8008B610 14000224 */   addiu     $v0, $zero, 0x14
    /* 7BE14 8008B614 B72D0208 */  j          .L8008B6DC
    /* 7BE18 8008B618 D10300A2 */   sb        $zero, 0x3D1($s0)
  .L8008B61C:
    /* 7BE1C 8008B61C DB6C010C */  jal        func_8005B36C
    /* 7BE20 8008B620 21280001 */   addu      $a1, $t0, $zero
    /* 7BE24 8008B624 AA030592 */  lbu        $a1, 0x3AA($s0)
    /* 7BE28 8008B628 21204000 */  addu       $a0, $v0, $zero
    /* 7BE2C 8008B62C 2310A400 */  subu       $v0, $a1, $a0
    /* 7BE30 8008B630 FF004330 */  andi       $v1, $v0, 0xFF
    /* 7BE34 8008B634 8100622C */  sltiu      $v0, $v1, 0x81
    /* 7BE38 8008B638 08004014 */  bnez       $v0, .L8008B65C
    /* 7BE3C 8008B63C 40006228 */   slti      $v0, $v1, 0x40
    /* 7BE40 8008B640 23108500 */  subu       $v0, $a0, $a1
    /* 7BE44 8008B644 FF004230 */  andi       $v0, $v0, 0xFF
    /* 7BE48 8008B648 40004228 */  slti       $v0, $v0, 0x40
    /* 7BE4C 8008B64C 05004014 */  bnez       $v0, .L8008B664
    /* 7BE50 8008B650 0600023C */   lui       $v0, (0x63FFF >> 16)
    /* 7BE54 8008B654 B92D0208 */  j          .L8008B6E4
    /* 7BE58 8008B658 00000000 */   nop
  .L8008B65C:
    /* 7BE5C 8008B65C 21004010 */  beqz       $v0, .L8008B6E4
    /* 7BE60 8008B660 0600023C */   lui       $v0, (0x63FFF >> 16)
  .L8008B664:
    /* 7BE64 8008B664 FF3F4234 */  ori        $v0, $v0, (0x63FFF & 0xFFFF)
    /* 7BE68 8008B668 2B105200 */  sltu       $v0, $v0, $s2
    /* 7BE6C 8008B66C 13004010 */  beqz       $v0, .L8008B6BC
    /* 7BE70 8008B670 00000000 */   nop
    /* 7BE74 8008B674 02002286 */  lh         $v0, 0x2($s1)
    /* 7BE78 8008B678 02000386 */  lh         $v1, 0x2($s0)
    /* 7BE7C 8008B67C 00000000 */  nop
    /* 7BE80 8008B680 23104300 */  subu       $v0, $v0, $v1
    /* 7BE84 8008B684 18004200 */  mult       $v0, $v0
    /* 7BE88 8008B688 06002286 */  lh         $v0, 0x6($s1)
    /* 7BE8C 8008B68C 06000386 */  lh         $v1, 0x6($s0)
    /* 7BE90 8008B690 12200000 */  mflo       $a0
    /* 7BE94 8008B694 23104300 */  subu       $v0, $v0, $v1
    /* 7BE98 8008B698 00000000 */  nop
    /* 7BE9C 8008B69C 18004200 */  mult       $v0, $v0
    /* 7BEA0 8008B6A0 0300023C */  lui        $v0, (0x3FFFF >> 16)
    /* 7BEA4 8008B6A4 FFFF4234 */  ori        $v0, $v0, (0x3FFFF & 0xFFFF)
    /* 7BEA8 8008B6A8 12180000 */  mflo       $v1
    /* 7BEAC 8008B6AC 21188300 */  addu       $v1, $a0, $v1
    /* 7BEB0 8008B6B0 2A104300 */  slt        $v0, $v0, $v1
    /* 7BEB4 8008B6B4 0B004014 */  bnez       $v0, .L8008B6E4
    /* 7BEB8 8008B6B8 00000000 */   nop
  .L8008B6BC:
    /* 7BEBC 8008B6BC 02002486 */  lh         $a0, 0x2($s1)
    /* 7BEC0 8008B6C0 06002586 */  lh         $a1, 0x6($s1)
    /* 7BEC4 8008B6C4 02000686 */  lh         $a2, 0x2($s0)
    /* 7BEC8 8008B6C8 06000786 */  lh         $a3, 0x6($s0)
    /* 7BECC 8008B6CC DB6C010C */  jal        func_8005B36C
    /* 7BED0 8008B6D0 00000000 */   nop
    /* 7BED4 8008B6D4 AB0302A2 */  sb         $v0, 0x3AB($s0)
    /* 7BED8 8008B6D8 12000224 */  addiu      $v0, $zero, 0x12
  .L8008B6DC:
    /* 7BEDC 8008B6DC 960302A2 */  sb         $v0, 0x396($s0)
    /* 7BEE0 8008B6E0 970300A2 */  sb         $zero, 0x397($s0)
  .L8008B6E4:
    /* 7BEE4 8008B6E4 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 7BEE8 8008B6E8 1800B28F */  lw         $s2, 0x18($sp)
    /* 7BEEC 8008B6EC 1400B18F */  lw         $s1, 0x14($sp)
    /* 7BEF0 8008B6F0 1000B08F */  lw         $s0, 0x10($sp)
    /* 7BEF4 8008B6F4 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 7BEF8 8008B6F8 0800E003 */  jr         $ra
    /* 7BEFC 8008B6FC 00000000 */   nop
endlabel func_8008B518
