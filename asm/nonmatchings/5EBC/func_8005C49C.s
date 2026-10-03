nonmatching func_8005C49C, 0x304

glabel func_8005C49C
    /* 4CC9C 8005C49C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 4CCA0 8005C4A0 2400B3AF */  sw         $s3, 0x24($sp)
    /* 4CCA4 8005C4A4 21980000 */  addu       $s3, $zero, $zero
    /* 4CCA8 8005C4A8 3400B7AF */  sw         $s7, 0x34($sp)
    /* 4CCAC 8005C4AC 21B80000 */  addu       $s7, $zero, $zero
    /* 4CCB0 8005C4B0 1080083C */  lui        $t0, %hi(D_800FF748)
    /* 4CCB4 8005C4B4 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* 4CCB8 8005C4B8 C0FF0224 */  addiu      $v0, $zero, -0x40
    /* 4CCBC 8005C4BC 1180013C */  lui        $at, %hi(D_8010A370)
    /* 4CCC0 8005C4C0 70A322A4 */  sh         $v0, %lo(D_8010A370)($at)
    /* 4CCC4 8005C4C4 40000224 */  addiu      $v0, $zero, 0x40
    /* 4CCC8 8005C4C8 1180013C */  lui        $at, %hi(D_8010A372)
    /* 4CCCC 8005C4CC 72A322A4 */  sh         $v0, %lo(D_8010A372)($at)
    /* 4CCD0 8005C4D0 A0000224 */  addiu      $v0, $zero, 0xA0
    /* 4CCD4 8005C4D4 1180013C */  lui        $at, %hi(D_8010A37A)
    /* 4CCD8 8005C4D8 7AA322A4 */  sh         $v0, %lo(D_8010A37A)($at)
    /* 4CCDC 8005C4DC 1180013C */  lui        $at, %hi(D_8010A378)
    /* 4CCE0 8005C4E0 78A322A4 */  sh         $v0, %lo(D_8010A378)($at)
    /* 4CCE4 8005C4E4 D0FF0224 */  addiu      $v0, $zero, -0x30
    /* 4CCE8 8005C4E8 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 4CCEC 8005C4EC 3800BEAF */  sw         $fp, 0x38($sp)
    /* 4CCF0 8005C4F0 3000B6AF */  sw         $s6, 0x30($sp)
    /* 4CCF4 8005C4F4 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 4CCF8 8005C4F8 2800B4AF */  sw         $s4, 0x28($sp)
    /* 4CCFC 8005C4FC 2000B2AF */  sw         $s2, 0x20($sp)
    /* 4CD00 8005C500 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 4CD04 8005C504 1800B0AF */  sw         $s0, 0x18($sp)
    /* 4CD08 8005C508 1000A8AF */  sw         $t0, 0x10($sp)
    /* 4CD0C 8005C50C 1180013C */  lui        $at, %hi(D_8010A36C)
    /* 4CD10 8005C510 6CA320AC */  sw         $zero, %lo(D_8010A36C)($at)
    /* 4CD14 8005C514 1180013C */  lui        $at, %hi(D_8010A376)
    /* 4CD18 8005C518 76A320A4 */  sh         $zero, %lo(D_8010A376)($at)
    /* 4CD1C 8005C51C 1180013C */  lui        $at, %hi(D_8010A374)
    /* 4CD20 8005C520 74A320A4 */  sh         $zero, %lo(D_8010A374)($at)
    /* 4CD24 8005C524 1180013C */  lui        $at, %hi(D_8010A384)
    /* 4CD28 8005C528 84A322A4 */  sh         $v0, %lo(D_8010A384)($at)
    /* 4CD2C 8005C52C 1180013C */  lui        $at, %hi(D_8010A37C)
    /* 4CD30 8005C530 7CA322A4 */  sh         $v0, %lo(D_8010A37C)($at)
    /* 4CD34 8005C534 1180013C */  lui        $at, %hi(D_8010A386)
    /* 4CD38 8005C538 86A320A4 */  sh         $zero, %lo(D_8010A386)($at)
    /* 4CD3C 8005C53C 1180013C */  lui        $at, %hi(D_8010A37E)
    /* 4CD40 8005C540 7EA320A4 */  sh         $zero, %lo(D_8010A37E)($at)
    /* 4CD44 8005C544 1180013C */  lui        $at, %hi(D_8010A388)
    /* 4CD48 8005C548 88A320A4 */  sh         $zero, %lo(D_8010A388)($at)
    /* 4CD4C 8005C54C 1180013C */  lui        $at, %hi(D_8010A380)
    /* 4CD50 8005C550 80A320A4 */  sh         $zero, %lo(D_8010A380)($at)
  .L8005C554:
    /* 4CD54 8005C554 21A00000 */  addu       $s4, $zero, $zero
    /* 4CD58 8005C558 B0131524 */  addiu      $s5, $zero, 0x13B0
    /* 4CD5C 8005C55C 1080083C */  lui        $t0, %hi(D_800FF748)
    /* 4CD60 8005C560 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* 4CD64 8005C564 21101301 */  addu       $v0, $t0, $s3
    /* 4CD68 8005C568 01000324 */  addiu      $v1, $zero, 0x1
    /* 4CD6C 8005C56C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4CD70 8005C570 21084100 */  addu       $at, $v0, $at
    /* 4CD74 8005C574 20AC23A0 */  sb         $v1, -0x53E0($at)
    /* 4CD78 8005C578 1000A88F */  lw         $t0, 0x10($sp)
    /* 4CD7C 8005C57C 00100224 */  addiu      $v0, $zero, 0x1000
    /* 4CD80 8005C580 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4CD84 8005C584 21080101 */  addu       $at, $t0, $at
    /* 4CD88 8005C588 44AC22A4 */  sh         $v0, -0x53BC($at)
  .L8005C58C:
    /* 4CD8C 8005C58C 21880000 */  addu       $s1, $zero, $zero
    /* 4CD90 8005C590 21F0E002 */  addu       $fp, $s7, $zero
    /* 4CD94 8005C594 80B11400 */  sll        $s6, $s4, 6
    /* 4CD98 8005C598 21900000 */  addu       $s2, $zero, $zero
  .L8005C59C:
    /* 4CD9C 8005C59C 801F023C */  lui        $v0, (0x1F800190 >> 16)
    /* 4CDA0 8005C5A0 9001428C */  lw         $v0, (0x1F800190 & 0xFFFF)($v0)
    /* 4CDA4 8005C5A4 00000000 */  nop
    /* 4CDA8 8005C5A8 21105E00 */  addu       $v0, $v0, $fp
    /* 4CDAC 8005C5AC 21105500 */  addu       $v0, $v0, $s5
    /* 4CDB0 8005C5B0 21805200 */  addu       $s0, $v0, $s2
    /* 4CDB4 8005C5B4 65B7020C */  jal        func_800ADD94
    /* 4CDB8 8005C5B8 21200002 */   addu      $a0, $s0, $zero
    /* 4CDBC 8005C5BC 21200002 */  addu       $a0, $s0, $zero
    /* 4CDC0 8005C5C0 38B7020C */  jal        func_800ADCE0
    /* 4CDC4 8005C5C4 21280000 */   addu      $a1, $zero, $zero
    /* 4CDC8 8005C5C8 21200002 */  addu       $a0, $s0, $zero
    /* 4CDCC 8005C5CC 2EB7020C */  jal        func_800ADCB8
    /* 4CDD0 8005C5D0 21280000 */   addu      $a1, $zero, $zero
    /* 4CDD4 8005C5D4 21200000 */  addu       $a0, $zero, $zero
    /* 4CDD8 8005C5D8 21280000 */  addu       $a1, $zero, $zero
    /* 4CDDC 8005C5DC C0010624 */  addiu      $a2, $zero, 0x1C0
    /* 4CDE0 8005C5E0 B6B6020C */  jal        func_800ADAD8
    /* 4CDE4 8005C5E4 21380000 */   addu      $a3, $zero, $zero
    /* 4CDE8 8005C5E8 21182002 */  addu       $v1, $s1, $zero
    /* 4CDEC 8005C5EC 02002106 */  bgez       $s1, .L8005C5F8
    /* 4CDF0 8005C5F0 1A0002A6 */   sh        $v0, 0x1A($s0)
    /* 4CDF4 8005C5F4 07002326 */  addiu      $v1, $s1, 0x7
  .L8005C5F8:
    /* 4CDF8 8005C5F8 C3280300 */  sra        $a1, $v1, 3
    /* 4CDFC 8005C5FC C0300500 */  sll        $a2, $a1, 3
    /* 4CE00 8005C600 23182602 */  subu       $v1, $s1, $a2
    /* 4CE04 8005C604 07000224 */  addiu      $v0, $zero, 0x7
    /* 4CE08 8005C608 02006214 */  bne        $v1, $v0, .L8005C614
    /* 4CE0C 8005C60C 08000424 */   addiu     $a0, $zero, 0x8
    /* 4CE10 8005C610 07000424 */  addiu      $a0, $zero, 0x7
  .L8005C614:
    /* 4CE14 8005C614 04000224 */  addiu      $v0, $zero, 0x4
    /* 4CE18 8005C618 0200A214 */  bne        $a1, $v0, .L8005C624
    /* 4CE1C 8005C61C 08000724 */   addiu     $a3, $zero, 0x8
    /* 4CE20 8005C620 07000724 */  addiu      $a3, $zero, 0x7
  .L8005C624:
    /* 4CE24 8005C624 34005226 */  addiu      $s2, $s2, 0x34
    /* 4CE28 8005C628 01003126 */  addiu      $s1, $s1, 0x1
    /* 4CE2C 8005C62C C0180300 */  sll        $v1, $v1, 3
    /* 4CE30 8005C630 21187600 */  addu       $v1, $v1, $s6
    /* 4CE34 8005C634 B0FFC224 */  addiu      $v0, $a2, -0x50
    /* 4CE38 8005C638 21208300 */  addu       $a0, $a0, $v1
    /* 4CE3C 8005C63C 0D0002A2 */  sb         $v0, 0xD($s0)
    /* 4CE40 8005C640 190002A2 */  sb         $v0, 0x19($s0)
    /* 4CE44 8005C644 2110E200 */  addu       $v0, $a3, $v0
    /* 4CE48 8005C648 250002A2 */  sb         $v0, 0x25($s0)
    /* 4CE4C 8005C64C 310002A2 */  sb         $v0, 0x31($s0)
    /* 4CE50 8005C650 2800222A */  slti       $v0, $s1, 0x28
    /* 4CE54 8005C654 0C0003A2 */  sb         $v1, 0xC($s0)
    /* 4CE58 8005C658 180004A2 */  sb         $a0, 0x18($s0)
    /* 4CE5C 8005C65C 240003A2 */  sb         $v1, 0x24($s0)
    /* 4CE60 8005C660 CEFF4014 */  bnez       $v0, .L8005C59C
    /* 4CE64 8005C664 300004A2 */   sb        $a0, 0x30($s0)
    /* 4CE68 8005C668 01009426 */  addiu      $s4, $s4, 0x1
    /* 4CE6C 8005C66C 0200822A */  slti       $v0, $s4, 0x2
    /* 4CE70 8005C670 C6FF4014 */  bnez       $v0, .L8005C58C
    /* 4CE74 8005C674 2008B526 */   addiu     $s5, $s5, 0x820
    /* 4CE78 8005C678 C03AF726 */  addiu      $s7, $s7, 0x3AC0
    /* 4CE7C 8005C67C 01007326 */  addiu      $s3, $s3, 0x1
    /* 4CE80 8005C680 1000A88F */  lw         $t0, 0x10($sp)
    /* 4CE84 8005C684 0200622A */  slti       $v0, $s3, 0x2
    /* 4CE88 8005C688 02000825 */  addiu      $t0, $t0, 0x2
    /* 4CE8C 8005C68C B1FF4014 */  bnez       $v0, .L8005C554
    /* 4CE90 8005C690 1000A8AF */   sw        $t0, 0x10($sp)
    /* 4CE94 8005C694 21980000 */  addu       $s3, $zero, $zero
    /* 4CE98 8005C698 1080063C */  lui        $a2, %hi(D_800FF748)
    /* 4CE9C 8005C69C 48F7C624 */  addiu      $a2, $a2, %lo(D_800FF748)
  .L8005C6A0:
    /* 4CEA0 8005C6A0 02006106 */  bgez       $s3, .L8005C6AC
    /* 4CEA4 8005C6A4 21186002 */   addu      $v1, $s3, $zero
    /* 4CEA8 8005C6A8 07006326 */  addiu      $v1, $s3, 0x7
  .L8005C6AC:
    /* 4CEAC 8005C6AC C3180300 */  sra        $v1, $v1, 3
    /* 4CEB0 8005C6B0 C0180300 */  sll        $v1, $v1, 3
    /* 4CEB4 8005C6B4 23106302 */  subu       $v0, $s3, $v1
    /* 4CEB8 8005C6B8 C0100200 */  sll        $v0, $v0, 3
    /* 4CEBC 8005C6BC E0FF4524 */  addiu      $a1, $v0, -0x20
    /* 4CEC0 8005C6C0 E0FF6424 */  addiu      $a0, $v1, -0x20
    /* 4CEC4 8005C6C4 E8FF4224 */  addiu      $v0, $v0, -0x18
    /* 4CEC8 8005C6C8 E8FF6324 */  addiu      $v1, $v1, -0x18
    /* 4CECC 8005C6CC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4CED0 8005C6D0 2108C100 */  addu       $at, $a2, $at
    /* 4CED4 8005C6D4 A48325A4 */  sh         $a1, -0x7C5C($at)
    /* 4CED8 8005C6D8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4CEDC 8005C6DC 2108C100 */  addu       $at, $a2, $at
    /* 4CEE0 8005C6E0 A68324A4 */  sh         $a0, -0x7C5A($at)
    /* 4CEE4 8005C6E4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4CEE8 8005C6E8 2108C100 */  addu       $at, $a2, $at
    /* 4CEEC 8005C6EC A88320A4 */  sh         $zero, -0x7C58($at)
    /* 4CEF0 8005C6F0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4CEF4 8005C6F4 2108C100 */  addu       $at, $a2, $at
    /* 4CEF8 8005C6F8 AC8322A4 */  sh         $v0, -0x7C54($at)
    /* 4CEFC 8005C6FC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4CF00 8005C700 2108C100 */  addu       $at, $a2, $at
    /* 4CF04 8005C704 AE8324A4 */  sh         $a0, -0x7C52($at)
    /* 4CF08 8005C708 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4CF0C 8005C70C 2108C100 */  addu       $at, $a2, $at
    /* 4CF10 8005C710 B08320A4 */  sh         $zero, -0x7C50($at)
    /* 4CF14 8005C714 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4CF18 8005C718 2108C100 */  addu       $at, $a2, $at
    /* 4CF1C 8005C71C B48325A4 */  sh         $a1, -0x7C4C($at)
    /* 4CF20 8005C720 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4CF24 8005C724 2108C100 */  addu       $at, $a2, $at
    /* 4CF28 8005C728 B68323A4 */  sh         $v1, -0x7C4A($at)
    /* 4CF2C 8005C72C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4CF30 8005C730 2108C100 */  addu       $at, $a2, $at
    /* 4CF34 8005C734 B88320A4 */  sh         $zero, -0x7C48($at)
    /* 4CF38 8005C738 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4CF3C 8005C73C 2108C100 */  addu       $at, $a2, $at
    /* 4CF40 8005C740 BC8322A4 */  sh         $v0, -0x7C44($at)
    /* 4CF44 8005C744 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4CF48 8005C748 2108C100 */  addu       $at, $a2, $at
    /* 4CF4C 8005C74C BE8323A4 */  sh         $v1, -0x7C42($at)
    /* 4CF50 8005C750 0100013C */  lui        $at, (0x10000 >> 16)
    /* 4CF54 8005C754 2108C100 */  addu       $at, $a2, $at
    /* 4CF58 8005C758 C08320A4 */  sh         $zero, -0x7C40($at)
    /* 4CF5C 8005C75C 01007326 */  addiu      $s3, $s3, 0x1
    /* 4CF60 8005C760 2800622A */  slti       $v0, $s3, 0x28
    /* 4CF64 8005C764 CEFF4014 */  bnez       $v0, .L8005C6A0
    /* 4CF68 8005C768 2000C624 */   addiu     $a2, $a2, 0x20
    /* 4CF6C 8005C76C 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 4CF70 8005C770 3800BE8F */  lw         $fp, 0x38($sp)
    /* 4CF74 8005C774 3400B78F */  lw         $s7, 0x34($sp)
    /* 4CF78 8005C778 3000B68F */  lw         $s6, 0x30($sp)
    /* 4CF7C 8005C77C 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 4CF80 8005C780 2800B48F */  lw         $s4, 0x28($sp)
    /* 4CF84 8005C784 2400B38F */  lw         $s3, 0x24($sp)
    /* 4CF88 8005C788 2000B28F */  lw         $s2, 0x20($sp)
    /* 4CF8C 8005C78C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 4CF90 8005C790 1800B08F */  lw         $s0, 0x18($sp)
    /* 4CF94 8005C794 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 4CF98 8005C798 0800E003 */  jr         $ra
    /* 4CF9C 8005C79C 00000000 */   nop
endlabel func_8005C49C
