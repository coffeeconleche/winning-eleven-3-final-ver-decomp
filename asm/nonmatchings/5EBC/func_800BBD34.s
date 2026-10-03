nonmatching func_800BBD34, 0x244

glabel func_800BBD34
    /* AC534 800BBD34 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* AC538 800BBD38 00140400 */  sll        $v0, $a0, 16
    /* AC53C 800BBD3C 1180033C */  lui        $v1, %hi(D_8010C2A8)
    /* AC540 800BBD40 A8C26324 */  addiu      $v1, $v1, %lo(D_8010C2A8)
    /* AC544 800BBD44 83130200 */  sra        $v0, $v0, 14
    /* AC548 800BBD48 21384300 */  addu       $a3, $v0, $v1
    /* AC54C 800BBD4C 001C0500 */  sll        $v1, $a1, 16
    /* AC550 800BBD50 031C0300 */  sra        $v1, $v1, 16
    /* AC554 800BBD54 40100300 */  sll        $v0, $v1, 1
    /* AC558 800BBD58 21104300 */  addu       $v0, $v0, $v1
    /* AC55C 800BBD5C 80100200 */  sll        $v0, $v0, 2
    /* AC560 800BBD60 23104300 */  subu       $v0, $v0, $v1
    /* AC564 800BBD64 00310200 */  sll        $a2, $v0, 4
    /* AC568 800BBD68 1800B2AF */  sw         $s2, 0x18($sp)
    /* AC56C 800BBD6C 21908000 */  addu       $s2, $a0, $zero
    /* AC570 800BBD70 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* AC574 800BBD74 1400B1AF */  sw         $s1, 0x14($sp)
    /* AC578 800BBD78 1000B0AF */  sw         $s0, 0x10($sp)
    /* AC57C 800BBD7C 0000E38C */  lw         $v1, 0x0($a3)
    /* AC580 800BBD80 2188A000 */  addu       $s1, $a1, $zero
    /* AC584 800BBD84 21806600 */  addu       $s0, $v1, $a2
    /* AC588 800BBD88 21000292 */  lbu        $v0, 0x21($s0)
    /* AC58C 800BBD8C 20000382 */  lb         $v1, 0x20($s0)
    /* AC590 800BBD90 01004224 */  addiu      $v0, $v0, 0x1
    /* AC594 800BBD94 12006014 */  bnez       $v1, .L800BBDE0
    /* AC598 800BBD98 210002A2 */   sb        $v0, 0x21($s0)
    /* AC59C 800BBD9C 880000AE */  sw         $zero, 0x88($s0)
    /* AC5A0 800BBDA0 1C0000A2 */  sb         $zero, 0x1C($s0)
    /* AC5A4 800BBDA4 900000AE */  sw         $zero, 0x90($s0)
    /* AC5A8 800BBDA8 0000E28C */  lw         $v0, 0x0($a3)
    /* AC5AC 800BBDAC 00000000 */  nop
    /* AC5B0 800BBDB0 2110C200 */  addu       $v0, $a2, $v0
    /* AC5B4 800BBDB4 9800428C */  lw         $v0, 0x98($v0)
    /* AC5B8 800BBDB8 00000000 */  nop
    /* AC5BC 800BBDBC 00044230 */  andi       $v0, $v0, 0x400
    /* AC5C0 800BBDC0 04004010 */  beqz       $v0, .L800BBDD4
    /* AC5C4 800BBDC4 00000000 */   nop
    /* AC5C8 800BBDC8 0C00028E */  lw         $v0, 0xC($s0)
    /* AC5CC 800BBDCC D8EF0208 */  j          .L800BBF60
    /* AC5D0 800BBDD0 000002AE */   sw        $v0, 0x0($s0)
  .L800BBDD4:
    /* AC5D4 800BBDD4 0400028E */  lw         $v0, 0x4($s0)
    /* AC5D8 800BBDD8 D8EF0208 */  j          .L800BBF60
    /* AC5DC 800BBDDC 000002AE */   sw        $v0, 0x0($s0)
  .L800BBDE0:
    /* AC5E0 800BBDE0 00160200 */  sll        $v0, $v0, 24
    /* AC5E4 800BBDE4 03160200 */  sra        $v0, $v0, 24
    /* AC5E8 800BBDE8 2A104300 */  slt        $v0, $v0, $v1
    /* AC5EC 800BBDEC 15004010 */  beqz       $v0, .L800BBE44
    /* AC5F0 800BBDF0 FEFF0424 */   addiu     $a0, $zero, -0x2
    /* AC5F4 800BBDF4 880000AE */  sw         $zero, 0x88($s0)
    /* AC5F8 800BBDF8 1C0000A2 */  sb         $zero, 0x1C($s0)
    /* AC5FC 800BBDFC 900000AE */  sw         $zero, 0x90($s0)
    /* AC600 800BBE00 0000E28C */  lw         $v0, 0x0($a3)
    /* AC604 800BBE04 00000000 */  nop
    /* AC608 800BBE08 2110C200 */  addu       $v0, $a2, $v0
    /* AC60C 800BBE0C 9800428C */  lw         $v0, 0x98($v0)
    /* AC610 800BBE10 00000000 */  nop
    /* AC614 800BBE14 00044230 */  andi       $v0, $v0, 0x400
    /* AC618 800BBE18 05004010 */  beqz       $v0, .L800BBE30
    /* AC61C 800BBE1C 00000000 */   nop
    /* AC620 800BBE20 0C00028E */  lw         $v0, 0xC($s0)
    /* AC624 800BBE24 0C00038E */  lw         $v1, 0xC($s0)
    /* AC628 800BBE28 8FEF0208 */  j          .L800BBE3C
    /* AC62C 800BBE2C 000002AE */   sw        $v0, 0x0($s0)
  .L800BBE30:
    /* AC630 800BBE30 0400028E */  lw         $v0, 0x4($s0)
    /* AC634 800BBE34 0400038E */  lw         $v1, 0x4($s0)
    /* AC638 800BBE38 000002AE */  sw         $v0, 0x0($s0)
  .L800BBE3C:
    /* AC63C 800BBE3C D8EF0208 */  j          .L800BBF60
    /* AC640 800BBE40 080003AE */   sw        $v1, 0x8($s0)
  .L800BBE44:
    /* AC644 800BBE44 0000E38C */  lw         $v1, 0x0($a3)
    /* AC648 800BBE48 00000000 */  nop
    /* AC64C 800BBE4C 2118C300 */  addu       $v1, $a2, $v1
    /* AC650 800BBE50 9800628C */  lw         $v0, 0x98($v1)
    /* AC654 800BBE54 00000000 */  nop
    /* AC658 800BBE58 24104400 */  and        $v0, $v0, $a0
    /* AC65C 800BBE5C 980062AC */  sw         $v0, 0x98($v1)
    /* AC660 800BBE60 0000E38C */  lw         $v1, 0x0($a3)
    /* AC664 800BBE64 00000000 */  nop
    /* AC668 800BBE68 2118C300 */  addu       $v1, $a2, $v1
    /* AC66C 800BBE6C 9800628C */  lw         $v0, 0x98($v1)
    /* AC670 800BBE70 F7FF0424 */  addiu      $a0, $zero, -0x9
    /* AC674 800BBE74 24104400 */  and        $v0, $v0, $a0
    /* AC678 800BBE78 980062AC */  sw         $v0, 0x98($v1)
    /* AC67C 800BBE7C 0000E38C */  lw         $v1, 0x0($a3)
    /* AC680 800BBE80 00000000 */  nop
    /* AC684 800BBE84 2118C300 */  addu       $v1, $a2, $v1
    /* AC688 800BBE88 9800628C */  lw         $v0, 0x98($v1)
    /* AC68C 800BBE8C FDFF0424 */  addiu      $a0, $zero, -0x3
    /* AC690 800BBE90 24104400 */  and        $v0, $v0, $a0
    /* AC694 800BBE94 980062AC */  sw         $v0, 0x98($v1)
    /* AC698 800BBE98 0000E38C */  lw         $v1, 0x0($a3)
    /* AC69C 800BBE9C 00000000 */  nop
    /* AC6A0 800BBEA0 2118C300 */  addu       $v1, $a2, $v1
    /* AC6A4 800BBEA4 9800628C */  lw         $v0, 0x98($v1)
    /* AC6A8 800BBEA8 00000000 */  nop
    /* AC6AC 800BBEAC 00024234 */  ori        $v0, $v0, 0x200
    /* AC6B0 800BBEB0 980062AC */  sw         $v0, 0x98($v1)
    /* AC6B4 800BBEB4 0000E38C */  lw         $v1, 0x0($a3)
    /* AC6B8 800BBEB8 00000000 */  nop
    /* AC6BC 800BBEBC 2118C300 */  addu       $v1, $a2, $v1
    /* AC6C0 800BBEC0 9800628C */  lw         $v0, 0x98($v1)
    /* AC6C4 800BBEC4 00000000 */  nop
    /* AC6C8 800BBEC8 04004234 */  ori        $v0, $v0, 0x4
    /* AC6CC 800BBECC 980062AC */  sw         $v0, 0x98($v1)
    /* AC6D0 800BBED0 140000A2 */  sb         $zero, 0x14($s0)
    /* AC6D4 800BBED4 0000E28C */  lw         $v0, 0x0($a3)
    /* AC6D8 800BBED8 00000000 */  nop
    /* AC6DC 800BBEDC 2110C200 */  addu       $v0, $a2, $v0
    /* AC6E0 800BBEE0 9800428C */  lw         $v0, 0x98($v0)
    /* AC6E4 800BBEE4 00000000 */  nop
    /* AC6E8 800BBEE8 00044230 */  andi       $v0, $v0, 0x400
    /* AC6EC 800BBEEC 04004010 */  beqz       $v0, .L800BBF00
    /* AC6F0 800BBEF0 00000000 */   nop
    /* AC6F4 800BBEF4 0C00028E */  lw         $v0, 0xC($s0)
    /* AC6F8 800BBEF8 C3EF0208 */  j          .L800BBF0C
    /* AC6FC 800BBEFC 080002AE */   sw        $v0, 0x8($s0)
  .L800BBF00:
    /* AC700 800BBF00 0400028E */  lw         $v0, 0x4($s0)
    /* AC704 800BBF04 00000000 */  nop
    /* AC708 800BBF08 080002AE */  sw         $v0, 0x8($s0)
  .L800BBF0C:
    /* AC70C 800BBF0C 22000382 */  lb         $v1, 0x22($s0)
    /* AC710 800BBF10 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* AC714 800BBF14 0A006210 */  beq        $v1, $v0, .L800BBF40
    /* AC718 800BBF18 00000000 */   nop
    /* AC71C 800BBF1C 22000482 */  lb         $a0, 0x22($s0)
    /* AC720 800BBF20 23000582 */  lb         $a1, 0x23($s0)
    /* AC724 800BBF24 F6F0020C */  jal        func_800BC3D8
    /* AC728 800BBF28 140000A2 */   sb        $zero, 0x14($s0)
    /* AC72C 800BBF2C 00221100 */  sll        $a0, $s1, 8
    /* AC730 800BBF30 25204402 */  or         $a0, $s2, $a0
    /* AC734 800BBF34 00240400 */  sll        $a0, $a0, 16
    /* AC738 800BBF38 4C02030C */  jal        func_800C0930
    /* AC73C 800BBF3C 03240400 */   sra       $a0, $a0, 16
  .L800BBF40:
    /* AC740 800BBF40 00221100 */  sll        $a0, $s1, 8
    /* AC744 800BBF44 25204402 */  or         $a0, $s2, $a0
    /* AC748 800BBF48 00240400 */  sll        $a0, $a0, 16
    /* AC74C 800BBF4C 4C02030C */  jal        func_800C0930
    /* AC750 800BBF50 03240400 */   sra       $a0, $a0, 16
    /* AC754 800BBF54 54000286 */  lh         $v0, 0x54($s0)
    /* AC758 800BBF58 00000000 */  nop
    /* AC75C 800BBF5C 900002AE */  sw         $v0, 0x90($s0)
  .L800BBF60:
    /* AC760 800BBF60 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* AC764 800BBF64 1800B28F */  lw         $s2, 0x18($sp)
    /* AC768 800BBF68 1400B18F */  lw         $s1, 0x14($sp)
    /* AC76C 800BBF6C 1000B08F */  lw         $s0, 0x10($sp)
    /* AC770 800BBF70 0800E003 */  jr         $ra
    /* AC774 800BBF74 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800BBD34
