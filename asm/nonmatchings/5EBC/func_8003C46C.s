nonmatching func_8003C46C, 0xA78

glabel func_8003C46C
    /* 2CC6C 8003C46C C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 2CC70 8003C470 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2CC74 8003C474 21888000 */  addu       $s1, $a0, $zero
    /* 2CC78 8003C478 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 2CC7C 8003C47C 3800BEAF */  sw         $fp, 0x38($sp)
    /* 2CC80 8003C480 3400B7AF */  sw         $s7, 0x34($sp)
    /* 2CC84 8003C484 3000B6AF */  sw         $s6, 0x30($sp)
    /* 2CC88 8003C488 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 2CC8C 8003C48C 2800B4AF */  sw         $s4, 0x28($sp)
    /* 2CC90 8003C490 2400B3AF */  sw         $s3, 0x24($sp)
    /* 2CC94 8003C494 2000B2AF */  sw         $s2, 0x20($sp)
    /* 2CC98 8003C498 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2CC9C 8003C49C 97032392 */  lbu        $v1, 0x397($s1)
    /* 2CCA0 8003C4A0 00000000 */  nop
    /* 2CCA4 8003C4A4 0500622C */  sltiu      $v0, $v1, 0x5
    /* 2CCA8 8003C4A8 7F024010 */  beqz       $v0, .L8003CEA8
    /* 2CCAC 8003C4AC 801F153C */   lui       $s5, (0x1F8002F4 >> 16)
    /* 2CCB0 8003C4B0 80100300 */  sll        $v0, $v1, 2
    /* 2CCB4 8003C4B4 0180013C */  lui        $at, %hi(jtbl_800110F4)
    /* 2CCB8 8003C4B8 21082200 */  addu       $at, $at, $v0
    /* 2CCBC 8003C4BC F410228C */  lw         $v0, %lo(jtbl_800110F4)($at)
    /* 2CCC0 8003C4C0 00000000 */  nop
    /* 2CCC4 8003C4C4 08004000 */  jr         $v0
    /* 2CCC8 8003C4C8 00000000 */   nop
  jlabel .L8003C4CC
    /* 2CCCC 8003C4CC 476F010C */  jal        func_8005BD1C
    /* 2CCD0 8003C4D0 21202002 */   addu      $a0, $s1, $zero
    /* 2CCD4 8003C4D4 21202002 */  addu       $a0, $s1, $zero
    /* 2CCD8 8003C4D8 53000524 */  addiu      $a1, $zero, 0x53
    /* 2CCDC 8003C4DC 21300000 */  addu       $a2, $zero, $zero
    /* 2CCE0 8003C4E0 AA032792 */  lbu        $a3, 0x3AA($s1)
    /* 2CCE4 8003C4E4 AC032292 */  lbu        $v0, 0x3AC($s1)
    /* 2CCE8 8003C4E8 01001224 */  addiu      $s2, $zero, 0x1
    /* 2CCEC 8003C4EC D10332A2 */  sb         $s2, 0x3D1($s1)
    /* 2CCF0 8003C4F0 AB70010C */  jal        func_8005C2AC
    /* 2CCF4 8003C4F4 1000A2AF */   sw        $v0, 0x10($sp)
    /* 2CCF8 8003C4F8 F200A396 */  lhu        $v1, (0x1F8000F2 & 0xFFFF)($s5)
    /* 2CCFC 8003C4FC 1C03A296 */  lhu        $v0, (0x1F80031C & 0xFFFF)($s5)
    /* 2CD00 8003C500 80FF6424 */  addiu      $a0, $v1, -0x80
    /* 2CD04 8003C504 00140200 */  sll        $v0, $v0, 16
    /* 2CD08 8003C508 03140200 */  sra        $v0, $v0, 16
    /* 2CD0C 8003C50C 01000324 */  addiu      $v1, $zero, 0x1
    /* 2CD10 8003C510 07004314 */  bne        $v0, $v1, .L8003C530
    /* 2CD14 8003C514 F200A4A6 */   sh        $a0, (0x1F8000F2 & 0xFFFF)($s5)
    /* 2CD18 8003C518 21202002 */  addu       $a0, $s1, $zero
    /* 2CD1C 8003C51C 960332A2 */  sb         $s2, 0x396($s1)
    /* 2CD20 8003C520 426E010C */  jal        func_8005B908
    /* 2CD24 8003C524 970320A2 */   sb        $zero, 0x397($s1)
    /* 2CD28 8003C528 AAF30008 */  j          .L8003CEA8
    /* 2CD2C 8003C52C 00000000 */   nop
  .L8003C530:
    /* 2CD30 8003C530 5800A296 */  lhu        $v0, (0x1F800058 & 0xFFFF)($s5)
    /* 2CD34 8003C534 001C0400 */  sll        $v1, $a0, 16
    /* 2CD38 8003C538 031C0300 */  sra        $v1, $v1, 16
    /* 2CD3C 8003C53C 00140200 */  sll        $v0, $v0, 16
    /* 2CD40 8003C540 03140200 */  sra        $v0, $v0, 16
    /* 2CD44 8003C544 2A104300 */  slt        $v0, $v0, $v1
    /* 2CD48 8003C548 2D004010 */  beqz       $v0, .L8003C600
    /* 2CD4C 8003C54C 00000000 */   nop
    /* 2CD50 8003C550 F402A28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 2CD54 8003C554 00000000 */  nop
    /* 2CD58 8003C558 A4034490 */  lbu        $a0, 0x3A4($v0)
    /* 2CD5C 8003C55C A579000C */  jal        func_8001E694
    /* 2CD60 8003C560 C0000524 */   addiu     $a1, $zero, 0xC0
    /* 2CD64 8003C564 C0000524 */  addiu      $a1, $zero, 0xC0
    /* 2CD68 8003C568 F402A38E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s5)
    /* 2CD6C 8003C56C 00840200 */  sll        $s0, $v0, 16
    /* 2CD70 8003C570 A4036490 */  lbu        $a0, 0x3A4($v1)
    /* 2CD74 8003C574 6979000C */  jal        func_8001E5A4
    /* 2CD78 8003C578 03841000 */   sra       $s0, $s0, 16
    /* 2CD7C 8003C57C 21202002 */  addu       $a0, $s1, $zero
    /* 2CD80 8003C580 21280002 */  addu       $a1, $s0, $zero
    /* 2CD84 8003C584 00140200 */  sll        $v0, $v0, 16
    /* 2CD88 8003C588 03340200 */  sra        $a2, $v0, 16
    /* 2CD8C 8003C58C C6E3000C */  jal        func_80038F18
    /* 2CD90 8003C590 01000724 */   addiu     $a3, $zero, 0x1
    /* 2CD94 8003C594 426E010C */  jal        func_8005B908
    /* 2CD98 8003C598 21202002 */   addu      $a0, $s1, $zero
    /* 2CD9C 8003C59C 02002486 */  lh         $a0, 0x2($s1)
    /* 2CDA0 8003C5A0 F402A28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 2CDA4 8003C5A4 06002586 */  lh         $a1, 0x6($s1)
    /* 2CDA8 8003C5A8 02004684 */  lh         $a2, 0x2($v0)
    /* 2CDAC 8003C5AC 06004784 */  lh         $a3, 0x6($v0)
    /* 2CDB0 8003C5B0 DB6C010C */  jal        func_8005B36C
    /* 2CDB4 8003C5B4 00000000 */   nop
    /* 2CDB8 8003C5B8 21202002 */  addu       $a0, $s1, $zero
    /* 2CDBC 8003C5BC 350D010C */  jal        func_800434D4
    /* 2CDC0 8003C5C0 FF004530 */   andi      $a1, $v0, 0xFF
    /* 2CDC4 8003C5C4 38024014 */  bnez       $v0, .L8003CEA8
    /* 2CDC8 8003C5C8 00000000 */   nop
    /* 2CDCC 8003C5CC AE4F010C */  jal        func_80053EB8
    /* 2CDD0 8003C5D0 21202002 */   addu      $a0, $s1, $zero
    /* 2CDD4 8003C5D4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2CDD8 8003C5D8 07004010 */  beqz       $v0, .L8003C5F8
    /* 2CDDC 8003C5DC 00000000 */   nop
    /* 2CDE0 8003C5E0 F402A28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 2CDE4 8003C5E4 00000000 */  nop
    /* 2CDE8 8003C5E8 DC034284 */  lh         $v0, 0x3DC($v0)
    /* 2CDEC 8003C5EC 00000000 */  nop
    /* 2CDF0 8003C5F0 2D024010 */  beqz       $v0, .L8003CEA8
    /* 2CDF4 8003C5F4 00000000 */   nop
  .L8003C5F8:
    /* 2CDF8 8003C5F8 A9F30008 */  j          .L8003CEA4
    /* 2CDFC 8003C5FC 960332A2 */   sb        $s2, 0x396($s1)
  jlabel .L8003C600
    /* 2CE00 8003C600 02002486 */  lh         $a0, 0x2($s1)
    /* 2CE04 8003C604 4000A696 */  lhu        $a2, (0x1F800040 & 0xFFFF)($s5)
    /* 2CE08 8003C608 06002586 */  lh         $a1, 0x6($s1)
    /* 2CE0C 8003C60C 7000A796 */  lhu        $a3, (0x1F800070 & 0xFFFF)($s5)
    /* 2CE10 8003C610 00340600 */  sll        $a2, $a2, 16
    /* 2CE14 8003C614 03340600 */  sra        $a2, $a2, 16
    /* 2CE18 8003C618 003C0700 */  sll        $a3, $a3, 16
    /* 2CE1C 8003C61C DB6C010C */  jal        func_8005B36C
    /* 2CE20 8003C620 033C0700 */   sra       $a3, $a3, 16
    /* 2CE24 8003C624 02002486 */  lh         $a0, 0x2($s1)
    /* 2CE28 8003C628 F402A38E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s5)
    /* 2CE2C 8003C62C 06002586 */  lh         $a1, 0x6($s1)
    /* 2CE30 8003C630 02006684 */  lh         $a2, 0x2($v1)
    /* 2CE34 8003C634 06006784 */  lh         $a3, 0x6($v1)
    /* 2CE38 8003C638 DB6C010C */  jal        func_8005B36C
    /* 2CE3C 8003C63C 21A04000 */   addu      $s4, $v0, $zero
    /* 2CE40 8003C640 21804000 */  addu       $s0, $v0, $zero
    /* 2CE44 8003C644 4000A296 */  lhu        $v0, (0x1F800040 & 0xFFFF)($s5)
    /* 2CE48 8003C648 99032392 */  lbu        $v1, 0x399($s1)
    /* 2CE4C 8003C64C 00140200 */  sll        $v0, $v0, 16
    /* 2CE50 8003C650 07006010 */  beqz       $v1, .L8003C670
    /* 2CE54 8003C654 03140200 */   sra       $v0, $v0, 16
    /* 2CE58 8003C658 23100200 */  negu       $v0, $v0
    /* 2CE5C 8003C65C 21334228 */  slti       $v0, $v0, 0x3321
    /* 2CE60 8003C660 06004010 */  beqz       $v0, .L8003C67C
    /* 2CE64 8003C664 00000000 */   nop
    /* 2CE68 8003C668 AEF10008 */  j          .L8003C6B8
    /* 2CE6C 8003C66C 00000000 */   nop
  .L8003C670:
    /* 2CE70 8003C670 21334228 */  slti       $v0, $v0, 0x3321
    /* 2CE74 8003C674 10004014 */  bnez       $v0, .L8003C6B8
    /* 2CE78 8003C678 00000000 */   nop
  .L8003C67C:
    /* 2CE7C 8003C67C F402A28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 2CE80 8003C680 00000000 */  nop
    /* 2CE84 8003C684 A4034490 */  lbu        $a0, 0x3A4($v0)
    /* 2CE88 8003C688 00000000 */  nop
    /* 2CE8C 8003C68C 23109000 */  subu       $v0, $a0, $s0
    /* 2CE90 8003C690 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2CE94 8003C694 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2CE98 8003C698 04004014 */  bnez       $v0, .L8003C6AC
    /* 2CE9C 8003C69C 23100402 */   subu      $v0, $s0, $a0
    /* 2CEA0 8003C6A0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2CEA4 8003C6A4 ACF10008 */  j          .L8003C6B0
    /* 2CEA8 8003C6A8 60004228 */   slti      $v0, $v0, 0x60
  .L8003C6AC:
    /* 2CEAC 8003C6AC 60006228 */  slti       $v0, $v1, 0x60
  .L8003C6B0:
    /* 2CEB0 8003C6B0 1B004010 */  beqz       $v0, .L8003C720
    /* 2CEB4 8003C6B4 00000000 */   nop
  .L8003C6B8:
    /* 2CEB8 8003C6B8 AA032492 */  lbu        $a0, 0x3AA($s1)
    /* 2CEBC 8003C6BC 00000000 */  nop
    /* 2CEC0 8003C6C0 23108402 */  subu       $v0, $s4, $a0
    /* 2CEC4 8003C6C4 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2CEC8 8003C6C8 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2CECC 8003C6CC 04004014 */  bnez       $v0, .L8003C6E0
    /* 2CED0 8003C6D0 23109400 */   subu      $v0, $a0, $s4
    /* 2CED4 8003C6D4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2CED8 8003C6D8 B9F10008 */  j          .L8003C6E4
    /* 2CEDC 8003C6DC 31004228 */   slti      $v0, $v0, 0x31
  .L8003C6E0:
    /* 2CEE0 8003C6E0 31006228 */  slti       $v0, $v1, 0x31
  .L8003C6E4:
    /* 2CEE4 8003C6E4 0E004010 */  beqz       $v0, .L8003C720
    /* 2CEE8 8003C6E8 23101402 */   subu      $v0, $s0, $s4
    /* 2CEEC 8003C6EC FF004330 */  andi       $v1, $v0, 0xFF
    /* 2CEF0 8003C6F0 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2CEF4 8003C6F4 08004014 */  bnez       $v0, .L8003C718
    /* 2CEF8 8003C6F8 50006228 */   slti      $v0, $v1, 0x50
    /* 2CEFC 8003C6FC 23109002 */  subu       $v0, $s4, $s0
    /* 2CF00 8003C700 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2CF04 8003C704 50004228 */  slti       $v0, $v0, 0x50
    /* 2CF08 8003C708 05004010 */  beqz       $v0, .L8003C720
    /* 2CF0C 8003C70C 00000000 */   nop
    /* 2CF10 8003C710 F3F10008 */  j          .L8003C7CC
    /* 2CF14 8003C714 00000000 */   nop
  .L8003C718:
    /* 2CF18 8003C718 2C004014 */  bnez       $v0, .L8003C7CC
    /* 2CF1C 8003C71C 00000000 */   nop
  .L8003C720:
    /* 2CF20 8003C720 99032292 */  lbu        $v0, 0x399($s1)
    /* 2CF24 8003C724 8D032392 */  lbu        $v1, 0x38D($s1)
    /* 2CF28 8003C728 40100200 */  sll        $v0, $v0, 1
    /* 2CF2C 8003C72C 2110A202 */  addu       $v0, $s5, $v0
    /* 2CF30 8003C730 1E034290 */  lbu        $v0, (0x1F80031E & 0xFFFF)($v0)
    /* 2CF34 8003C734 00000000 */  nop
    /* 2CF38 8003C738 20006214 */  bne        $v1, $v0, .L8003C7BC
    /* 2CF3C 8003C73C 0E000224 */   addiu     $v0, $zero, 0xE
    /* 2CF40 8003C740 0BB6053C */  lui        $a1, (0xB60B60B7 >> 16)
    /* 2CF44 8003C744 92032292 */  lbu        $v0, 0x392($s1)
    /* 2CF48 8003C748 98032492 */  lbu        $a0, 0x398($s1)
    /* 2CF4C 8003C74C 40180200 */  sll        $v1, $v0, 1
    /* 2CF50 8003C750 21186200 */  addu       $v1, $v1, $v0
    /* 2CF54 8003C754 80180300 */  sll        $v1, $v1, 2
    /* 2CF58 8003C758 40110400 */  sll        $v0, $a0, 5
    /* 2CF5C 8003C75C 21104400 */  addu       $v0, $v0, $a0
    /* 2CF60 8003C760 C0100200 */  sll        $v0, $v0, 3
    /* 2CF64 8003C764 21186200 */  addu       $v1, $v1, $v0
    /* 2CF68 8003C768 1180013C */  lui        $at, %hi(D_8010C330)
    /* 2CF6C 8003C76C 21082300 */  addu       $at, $at, $v1
    /* 2CF70 8003C770 30C3228C */  lw         $v0, %lo(D_8010C330)($at)
    /* 2CF74 8003C774 B760A534 */  ori        $a1, $a1, (0xB60B60B7 & 0xFFFF)
    /* 2CF78 8003C778 C2120200 */  srl        $v0, $v0, 11
    /* 2CF7C 8003C77C 7F004230 */  andi       $v0, $v0, 0x7F
    /* 2CF80 8003C780 64004224 */  addiu      $v0, $v0, 0x64
    /* 2CF84 8003C784 00120200 */  sll        $v0, $v0, 8
    /* 2CF88 8003C788 23100200 */  negu       $v0, $v0
    /* 2CF8C 8003C78C 18004500 */  mult       $v0, $a1
    /* 2CF90 8003C790 21300000 */  addu       $a2, $zero, $zero
    /* 2CF94 8003C794 21380000 */  addu       $a3, $zero, $zero
    /* 2CF98 8003C798 21202002 */  addu       $a0, $s1, $zero
    /* 2CF9C 8003C79C 21280000 */  addu       $a1, $zero, $zero
    /* 2CFA0 8003C7A0 10400000 */  mfhi       $t0
    /* 2CFA4 8003C7A4 21180201 */  addu       $v1, $t0, $v0
    /* 2CFA8 8003C7A8 C3190300 */  sra        $v1, $v1, 7
    /* 2CFAC 8003C7AC C3170200 */  sra        $v0, $v0, 31
    /* 2CFB0 8003C7B0 23186200 */  subu       $v1, $v1, $v0
    /* 2CFB4 8003C7B4 D5F20008 */  j          .L8003CB54
    /* 2CFB8 8003C7B8 F200A3A6 */   sh        $v1, (0x1F8000F2 & 0xFFFF)($s5)
  .L8003C7BC:
    /* 2CFBC 8003C7BC 960322A2 */  sb         $v0, 0x396($s1)
    /* 2CFC0 8003C7C0 50000224 */  addiu      $v0, $zero, 0x50
    /* 2CFC4 8003C7C4 D7F20008 */  j          .L8003CB5C
    /* 2CFC8 8003C7C8 970322A2 */   sb        $v0, 0x397($s1)
  .L8003C7CC:
    /* 2CFCC 8003C7CC 99032292 */  lbu        $v0, 0x399($s1)
    /* 2CFD0 8003C7D0 02002386 */  lh         $v1, 0x2($s1)
    /* 2CFD4 8003C7D4 06004010 */  beqz       $v0, .L8003C7F0
    /* 2CFD8 8003C7D8 23100300 */   negu      $v0, $v1
    /* 2CFDC 8003C7DC 01104228 */  slti       $v0, $v0, 0x1001
    /* 2CFE0 8003C7E0 06004010 */  beqz       $v0, .L8003C7FC
    /* 2CFE4 8003C7E4 00000000 */   nop
    /* 2CFE8 8003C7E8 09F20008 */  j          .L8003C824
    /* 2CFEC 8003C7EC 00000000 */   nop
  .L8003C7F0:
    /* 2CFF0 8003C7F0 01106228 */  slti       $v0, $v1, 0x1001
    /* 2CFF4 8003C7F4 0B004014 */  bnez       $v0, .L8003C824
    /* 2CFF8 8003C7F8 00000000 */   nop
  .L8003C7FC:
    /* 2CFFC 8003C7FC 02002486 */  lh         $a0, 0x2($s1)
    /* 2D000 8003C800 99032292 */  lbu        $v0, 0x399($s1)
    /* 2D004 8003C804 06002586 */  lh         $a1, 0x6($s1)
    /* 2D008 8003C808 02004014 */  bnez       $v0, .L8003C814
    /* 2D00C 8003C80C E0CC0624 */   addiu     $a2, $zero, -0x3320
    /* 2D010 8003C810 20330624 */  addiu      $a2, $zero, 0x3320
  .L8003C814:
    /* 2D014 8003C814 DB6C010C */  jal        func_8005B36C
    /* 2D018 8003C818 21380000 */   addu      $a3, $zero, $zero
    /* 2D01C 8003C81C 0CF20008 */  j          .L8003C830
    /* 2D020 8003C820 21A04000 */   addu      $s4, $v0, $zero
  .L8003C824:
    /* 2D024 8003C824 E2CE000C */  jal        func_80033B88
    /* 2D028 8003C828 21202002 */   addu      $a0, $s1, $zero
    /* 2D02C 8003C82C 21A04000 */  addu       $s4, $v0, $zero
  .L8003C830:
    /* 2D030 8003C830 AA032492 */  lbu        $a0, 0x3AA($s1)
    /* 2D034 8003C834 00000000 */  nop
    /* 2D038 8003C838 23108402 */  subu       $v0, $s4, $a0
    /* 2D03C 8003C83C FF004330 */  andi       $v1, $v0, 0xFF
    /* 2D040 8003C840 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2D044 8003C844 08004014 */  bnez       $v0, .L8003C868
    /* 2D048 8003C848 11006228 */   slti      $v0, $v1, 0x11
    /* 2D04C 8003C84C 23109400 */  subu       $v0, $a0, $s4
    /* 2D050 8003C850 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2D054 8003C854 11004228 */  slti       $v0, $v0, 0x11
    /* 2D058 8003C858 15004010 */  beqz       $v0, .L8003C8B0
    /* 2D05C 8003C85C 00000000 */   nop
    /* 2D060 8003C860 1CF20008 */  j          .L8003C870
    /* 2D064 8003C864 00000000 */   nop
  .L8003C868:
    /* 2D068 8003C868 11004010 */  beqz       $v0, .L8003C8B0
    /* 2D06C 8003C86C 00000000 */   nop
  .L8003C870:
    /* 2D070 8003C870 92032292 */  lbu        $v0, 0x392($s1)
    /* 2D074 8003C874 98032492 */  lbu        $a0, 0x398($s1)
    /* 2D078 8003C878 40180200 */  sll        $v1, $v0, 1
    /* 2D07C 8003C87C 21186200 */  addu       $v1, $v1, $v0
    /* 2D080 8003C880 80180300 */  sll        $v1, $v1, 2
    /* 2D084 8003C884 40110400 */  sll        $v0, $a0, 5
    /* 2D088 8003C888 21104400 */  addu       $v0, $v0, $a0
    /* 2D08C 8003C88C C0100200 */  sll        $v0, $v0, 3
    /* 2D090 8003C890 21186200 */  addu       $v1, $v1, $v0
    /* 2D094 8003C894 1180013C */  lui        $at, %hi(D_8010C330)
    /* 2D098 8003C898 21082300 */  addu       $at, $at, $v1
    /* 2D09C 8003C89C 30C3228C */  lw         $v0, %lo(D_8010C330)($at)
    /* 2D0A0 8003C8A0 00000000 */  nop
    /* 2D0A4 8003C8A4 02110200 */  srl        $v0, $v0, 4
    /* 2D0A8 8003C8A8 34F20008 */  j          .L8003C8D0
    /* 2D0AC 8003C8AC 01005730 */   andi      $s7, $v0, 0x1
  .L8003C8B0:
    /* 2D0B0 8003C8B0 F402A28E */  lw         $v0, (0x1F8002F4 & 0xFFFF)($s5)
    /* 2D0B4 8003C8B4 00000000 */  nop
    /* 2D0B8 8003C8B8 A4034290 */  lbu        $v0, 0x3A4($v0)
    /* 2D0BC 8003C8BC 00000000 */  nop
    /* 2D0C0 8003C8C0 23108202 */  subu       $v0, $s4, $v0
    /* 2D0C4 8003C8C4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2D0C8 8003C8C8 8100422C */  sltiu      $v0, $v0, 0x81
    /* 2D0CC 8003C8CC 21B84000 */  addu       $s7, $v0, $zero
  .L8003C8D0:
    /* 2D0D0 8003C8D0 FF008432 */  andi       $a0, $s4, 0xFF
    /* 2D0D4 8003C8D4 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2D0D8 8003C8D8 F36D010C */  jal        func_8005B7CC
    /* 2D0DC 8003C8DC 10000624 */   addiu     $a2, $zero, 0x10
    /* 2D0E0 8003C8E0 21A04000 */  addu       $s4, $v0, $zero
    /* 2D0E4 8003C8E4 21202002 */  addu       $a0, $s1, $zero
    /* 2D0E8 8003C8E8 53000524 */  addiu      $a1, $zero, 0x53
    /* 2D0EC 8003C8EC 21300000 */  addu       $a2, $zero, $zero
    /* 2D0F0 8003C8F0 FF009E32 */  andi       $fp, $s4, 0xFF
    /* 2D0F4 8003C8F4 2138C003 */  addu       $a3, $fp, $zero
    /* 2D0F8 8003C8F8 AB70010C */  jal        func_8005C2AC
    /* 2D0FC 8003C8FC 1000B7AF */   sw        $s7, 0x10($sp)
    /* 2D100 8003C900 05001624 */  addiu      $s6, $zero, 0x5
    /* 2D104 8003C904 40801600 */  sll        $s0, $s6, 1
    /* 2D108 8003C908 21801502 */  addu       $s0, $s0, $s5
    /* 2D10C 8003C90C 36000686 */  lh         $a2, (0x1F800036 & 0xFFFF)($s0)
    /* 2D110 8003C910 F000A496 */  lhu        $a0, (0x1F8000F0 & 0xFFFF)($s5)
    /* 2D114 8003C914 66000786 */  lh         $a3, (0x1F800066 & 0xFFFF)($s0)
    /* 2D118 8003C918 F400A596 */  lhu        $a1, (0x1F8000F4 & 0xFFFF)($s5)
    /* 2D11C 8003C91C 00240400 */  sll        $a0, $a0, 16
    /* 2D120 8003C920 03240400 */  sra        $a0, $a0, 16
    /* 2D124 8003C924 002C0500 */  sll        $a1, $a1, 16
    /* 2D128 8003C928 DB6C010C */  jal        func_8005B36C
    /* 2D12C 8003C92C 032C0500 */   sra       $a1, $a1, 16
    /* 2D130 8003C930 F000A396 */  lhu        $v1, (0x1F8000F0 & 0xFFFF)($s5)
    /* 2D134 8003C934 36000486 */  lh         $a0, (0x1F800036 & 0xFFFF)($s0)
    /* 2D138 8003C938 001C0300 */  sll        $v1, $v1, 16
    /* 2D13C 8003C93C 031C0300 */  sra        $v1, $v1, 16
    /* 2D140 8003C940 23186400 */  subu       $v1, $v1, $a0
    /* 2D144 8003C944 18006300 */  mult       $v1, $v1
    /* 2D148 8003C948 F400A396 */  lhu        $v1, (0x1F8000F4 & 0xFFFF)($s5)
    /* 2D14C 8003C94C 66000486 */  lh         $a0, (0x1F800066 & 0xFFFF)($s0)
    /* 2D150 8003C950 001C0300 */  sll        $v1, $v1, 16
    /* 2D154 8003C954 12280000 */  mflo       $a1
    /* 2D158 8003C958 031C0300 */  sra        $v1, $v1, 16
    /* 2D15C 8003C95C 23186400 */  subu       $v1, $v1, $a0
    /* 2D160 8003C960 18006300 */  mult       $v1, $v1
    /* 2D164 8003C964 21804000 */  addu       $s0, $v0, $zero
    /* 2D168 8003C968 12180000 */  mflo       $v1
    /* 2D16C 8003C96C 4AC4020C */  jal        func_800B1128
    /* 2D170 8003C970 2120A300 */   addu      $a0, $a1, $v1
    /* 2D174 8003C974 0100D326 */  addiu      $s3, $s6, 0x1
    /* 2D178 8003C978 1B005300 */  divu       $zero, $v0, $s3
    /* 2D17C 8003C97C 02006016 */  bnez       $s3, .L8003C988
    /* 2D180 8003C980 00000000 */   nop
    /* 2D184 8003C984 0D000700 */  break      7
  .L8003C988:
    /* 2D188 8003C988 12900000 */  mflo       $s2
    /* 2D18C 8003C98C B4032392 */  lbu        $v1, 0x3B4($s1)
    /* 2D190 8003C990 00000000 */  nop
    /* 2D194 8003C994 2B107200 */  sltu       $v0, $v1, $s2
    /* 2D198 8003C998 02004010 */  beqz       $v0, .L8003C9A4
    /* 2D19C 8003C99C 00000000 */   nop
    /* 2D1A0 8003C9A0 21906000 */  addu       $s2, $v1, $zero
  .L8003C9A4:
    /* 2D1A4 8003C9A4 FF001032 */  andi       $s0, $s0, 0xFF
    /* 2D1A8 8003C9A8 21200002 */  addu       $a0, $s0, $zero
    /* 2D1AC 8003C9AC A579000C */  jal        func_8001E694
    /* 2D1B0 8003C9B0 21284002 */   addu      $a1, $s2, $zero
    /* 2D1B4 8003C9B4 21200002 */  addu       $a0, $s0, $zero
    /* 2D1B8 8003C9B8 21284002 */  addu       $a1, $s2, $zero
    /* 2D1BC 8003C9BC 6979000C */  jal        func_8001E5A4
    /* 2D1C0 8003C9C0 CA0322A6 */   sh        $v0, 0x3CA($s1)
    /* 2D1C4 8003C9C4 CA032386 */  lh         $v1, 0x3CA($s1)
    /* 2D1C8 8003C9C8 00000000 */  nop
    /* 2D1CC 8003C9CC 18007300 */  mult       $v1, $s3
    /* 2D1D0 8003C9D0 CE0322A6 */  sh         $v0, 0x3CE($s1)
    /* 2D1D4 8003C9D4 F000A296 */  lhu        $v0, (0x1F8000F0 & 0xFFFF)($s5)
    /* 2D1D8 8003C9D8 12400000 */  mflo       $t0
    /* 2D1DC 8003C9DC 21104800 */  addu       $v0, $v0, $t0
    /* 2D1E0 8003C9E0 F000A2A6 */  sh         $v0, (0x1F8000F0 & 0xFFFF)($s5)
    /* 2D1E4 8003C9E4 CE032286 */  lh         $v0, 0x3CE($s1)
    /* 2D1E8 8003C9E8 00000000 */  nop
    /* 2D1EC 8003C9EC 18005300 */  mult       $v0, $s3
    /* 2D1F0 8003C9F0 21202002 */  addu       $a0, $s1, $zero
    /* 2D1F4 8003C9F4 2128C002 */  addu       $a1, $s6, $zero
    /* 2D1F8 8003C9F8 0200063C */  lui        $a2, (0x24000 >> 16)
    /* 2D1FC 8003C9FC 0040C634 */  ori        $a2, $a2, (0x24000 & 0xFFFF)
    /* 2D200 8003CA00 F400A296 */  lhu        $v0, (0x1F8000F4 & 0xFFFF)($s5)
    /* 2D204 8003CA04 12400000 */  mflo       $t0
    /* 2D208 8003CA08 21104800 */  addu       $v0, $v0, $t0
    /* 2D20C 8003CA0C 9A4A010C */  jal        func_80052A68
    /* 2D210 8003CA10 F400A2A6 */   sh        $v0, (0x1F8000F4 & 0xFFFF)($s5)
    /* 2D214 8003CA14 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2D218 8003CA18 2C004014 */  bnez       $v0, .L8003CACC
    /* 2D21C 8003CA1C 00900234 */   ori       $v0, $zero, 0x9000
    /* 2D220 8003CA20 1000A2AF */  sw         $v0, 0x10($sp)
    /* 2D224 8003CA24 21202002 */  addu       $a0, $s1, $zero
    /* 2D228 8003CA28 2128C002 */  addu       $a1, $s6, $zero
    /* 2D22C 8003CA2C 01000624 */  addiu      $a2, $zero, 0x1
    /* 2D230 8003CA30 B9F3000C */  jal        func_8003CEE4
    /* 2D234 8003CA34 21380000 */   addu      $a3, $zero, $zero
    /* 2D238 8003CA38 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2D23C 8003CA3C 23004010 */  beqz       $v0, .L8003CACC
    /* 2D240 8003CA40 21202002 */   addu      $a0, $s1, $zero
    /* 2D244 8003CA44 53000524 */  addiu      $a1, $zero, 0x53
    /* 2D248 8003CA48 8C6E010C */  jal        func_8005BA30
    /* 2D24C 8003CA4C 21300000 */   addu      $a2, $zero, $zero
    /* 2D250 8003CA50 2120C003 */  addu       $a0, $fp, $zero
    /* 2D254 8003CA54 0C000624 */  addiu      $a2, $zero, 0xC
    /* 2D258 8003CA58 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2D25C 8003CA5C 03000224 */  addiu      $v0, $zero, 0x3
    /* 2D260 8003CA60 D10322A2 */  sb         $v0, 0x3D1($s1)
    /* 2D264 8003CA64 F36D010C */  jal        func_8005B7CC
    /* 2D268 8003CA68 AC0337A2 */   sb        $s7, 0x3AC($s1)
    /* 2D26C 8003CA6C FF004430 */  andi       $a0, $v0, 0xFF
    /* 2D270 8003CA70 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 2D274 8003CA74 23186400 */  subu       $v1, $v1, $a0
    /* 2D278 8003CA78 21206000 */  addu       $a0, $v1, $zero
    /* 2D27C 8003CA7C 02006104 */  bgez       $v1, .L8003CA88
    /* 2D280 8003CA80 AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 2D284 8003CA84 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8003CA88:
    /* 2D288 8003CA88 03120400 */  sra        $v0, $a0, 8
    /* 2D28C 8003CA8C 00120200 */  sll        $v0, $v0, 8
    /* 2D290 8003CA90 23106200 */  subu       $v0, $v1, $v0
    /* 2D294 8003CA94 00110200 */  sll        $v0, $v0, 4
    /* 2D298 8003CA98 260022A6 */  sh         $v0, 0x26($s1)
    /* 2D29C 8003CA9C 02000224 */  addiu      $v0, $zero, 0x2
    /* 2D2A0 8003CAA0 970322A2 */  sb         $v0, 0x397($s1)
    /* 2D2A4 8003CAA4 02002296 */  lhu        $v0, 0x2($s1)
    /* 2D2A8 8003CAA8 CA032496 */  lhu        $a0, 0x3CA($s1)
    /* 2D2AC 8003CAAC 06002396 */  lhu        $v1, 0x6($s1)
    /* 2D2B0 8003CAB0 CE032596 */  lhu        $a1, 0x3CE($s1)
    /* 2D2B4 8003CAB4 AB0334A2 */  sb         $s4, 0x3AB($s1)
    /* 2D2B8 8003CAB8 21104400 */  addu       $v0, $v0, $a0
    /* 2D2BC 8003CABC 21186500 */  addu       $v1, $v1, $a1
    /* 2D2C0 8003CAC0 020022A6 */  sh         $v0, 0x2($s1)
    /* 2D2C4 8003CAC4 AAF30008 */  j          .L8003CEA8
    /* 2D2C8 8003CAC8 060023A6 */   sh        $v1, 0x6($s1)
  .L8003CACC:
    /* 2D2CC 8003CACC F402A38E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s5)
    /* 2D2D0 8003CAD0 00000000 */  nop
    /* 2D2D4 8003CAD4 0C00628C */  lw         $v0, 0xC($v1)
    /* 2D2D8 8003CAD8 00000000 */  nop
    /* 2D2DC 8003CADC 02004104 */  bgez       $v0, .L8003CAE8
    /* 2D2E0 8003CAE0 00000000 */   nop
    /* 2D2E4 8003CAE4 23100200 */  negu       $v0, $v0
  .L8003CAE8:
    /* 2D2E8 8003CAE8 0D004228 */  slti       $v0, $v0, 0xD
    /* 2D2EC 8003CAEC 33FF4014 */  bnez       $v0, .L8003C7BC
    /* 2D2F0 8003CAF0 0E000224 */   addiu     $v0, $zero, 0xE
    /* 2D2F4 8003CAF4 4600A296 */  lhu        $v0, (0x1F800046 & 0xFFFF)($s5)
    /* 2D2F8 8003CAF8 00000000 */  nop
    /* 2D2FC 8003CAFC 00140200 */  sll        $v0, $v0, 16
    /* 2D300 8003CB00 03140200 */  sra        $v0, $v0, 16
    /* 2D304 8003CB04 02004104 */  bgez       $v0, .L8003CB10
    /* 2D308 8003CB08 00000000 */   nop
    /* 2D30C 8003CB0C 23100200 */  negu       $v0, $v0
  .L8003CB10:
    /* 2D310 8003CB10 01334228 */  slti       $v0, $v0, 0x3301
    /* 2D314 8003CB14 29FF4010 */  beqz       $v0, .L8003C7BC
    /* 2D318 8003CB18 0E000224 */   addiu     $v0, $zero, 0xE
    /* 2D31C 8003CB1C A4036490 */  lbu        $a0, 0x3A4($v1)
    /* 2D320 8003CB20 A579000C */  jal        func_8001E694
    /* 2D324 8003CB24 C0000524 */   addiu     $a1, $zero, 0xC0
    /* 2D328 8003CB28 C0000524 */  addiu      $a1, $zero, 0xC0
    /* 2D32C 8003CB2C F402A38E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s5)
    /* 2D330 8003CB30 00840200 */  sll        $s0, $v0, 16
    /* 2D334 8003CB34 A4036490 */  lbu        $a0, 0x3A4($v1)
    /* 2D338 8003CB38 6979000C */  jal        func_8001E5A4
    /* 2D33C 8003CB3C 03841000 */   sra       $s0, $s0, 16
    /* 2D340 8003CB40 21202002 */  addu       $a0, $s1, $zero
    /* 2D344 8003CB44 21280002 */  addu       $a1, $s0, $zero
    /* 2D348 8003CB48 00140200 */  sll        $v0, $v0, 16
    /* 2D34C 8003CB4C 03340200 */  sra        $a2, $v0, 16
    /* 2D350 8003CB50 01000724 */  addiu      $a3, $zero, 0x1
  .L8003CB54:
    /* 2D354 8003CB54 C6E3000C */  jal        func_80038F18
    /* 2D358 8003CB58 00000000 */   nop
  .L8003CB5C:
    /* 2D35C 8003CB5C 426E010C */  jal        func_8005B908
    /* 2D360 8003CB60 21202002 */   addu      $a0, $s1, $zero
    /* 2D364 8003CB64 AAF30008 */  j          .L8003CEA8
    /* 2D368 8003CB68 00000000 */   nop
  jlabel .L8003CB6C
    /* 2D36C 8003CB6C 476F010C */  jal        func_8005BD1C
    /* 2D370 8003CB70 21202002 */   addu      $a0, $s1, $zero
    /* 2D374 8003CB74 AB032492 */  lbu        $a0, 0x3AB($s1)
    /* 2D378 8003CB78 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2D37C 8003CB7C F36D010C */  jal        func_8005B7CC
    /* 2D380 8003CB80 0C000624 */   addiu     $a2, $zero, 0xC
    /* 2D384 8003CB84 FF004430 */  andi       $a0, $v0, 0xFF
    /* 2D388 8003CB88 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 2D38C 8003CB8C 23186400 */  subu       $v1, $v1, $a0
    /* 2D390 8003CB90 21206000 */  addu       $a0, $v1, $zero
    /* 2D394 8003CB94 02006104 */  bgez       $v1, .L8003CBA0
    /* 2D398 8003CB98 AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 2D39C 8003CB9C FF006424 */  addiu      $a0, $v1, 0xFF
  .L8003CBA0:
    /* 2D3A0 8003CBA0 03120400 */  sra        $v0, $a0, 8
    /* 2D3A4 8003CBA4 00120200 */  sll        $v0, $v0, 8
    /* 2D3A8 8003CBA8 23106200 */  subu       $v0, $v1, $v0
    /* 2D3AC 8003CBAC 02002396 */  lhu        $v1, 0x2($s1)
    /* 2D3B0 8003CBB0 CA032496 */  lhu        $a0, 0x3CA($s1)
    /* 2D3B4 8003CBB4 00110200 */  sll        $v0, $v0, 4
    /* 2D3B8 8003CBB8 260022A6 */  sh         $v0, 0x26($s1)
    /* 2D3BC 8003CBBC 06002296 */  lhu        $v0, 0x6($s1)
    /* 2D3C0 8003CBC0 21186400 */  addu       $v1, $v1, $a0
    /* 2D3C4 8003CBC4 CE032496 */  lhu        $a0, 0x3CE($s1)
    /* 2D3C8 8003CBC8 020023A6 */  sh         $v1, 0x2($s1)
    /* 2D3CC 8003CBCC 90032392 */  lbu        $v1, 0x390($s1)
    /* 2D3D0 8003CBD0 21104400 */  addu       $v0, $v0, $a0
    /* 2D3D4 8003CBD4 0500632C */  sltiu      $v1, $v1, 0x5
    /* 2D3D8 8003CBD8 B3006014 */  bnez       $v1, .L8003CEA8
    /* 2D3DC 8003CBDC 060022A6 */   sh        $v0, 0x6($s1)
    /* 2D3E0 8003CBE0 21202002 */  addu       $a0, $s1, $zero
    /* 2D3E4 8003CBE4 01000524 */  addiu      $a1, $zero, 0x1
    /* 2D3E8 8003CBE8 97032292 */  lbu        $v0, 0x397($s1)
    /* 2D3EC 8003CBEC 01000624 */  addiu      $a2, $zero, 0x1
    /* 2D3F0 8003CBF0 01004224 */  addiu      $v0, $v0, 0x1
    /* 2D3F4 8003CBF4 9DF4000C */  jal        func_8003D274
    /* 2D3F8 8003CBF8 970322A2 */   sb        $v0, 0x397($s1)
    /* 2D3FC 8003CBFC FF004230 */  andi       $v0, $v0, 0xFF
    /* 2D400 8003CC00 A9004010 */  beqz       $v0, .L8003CEA8
    /* 2D404 8003CC04 00000000 */   nop
    /* 2D408 8003CC08 02002486 */  lh         $a0, 0x2($s1)
    /* 2D40C 8003CC0C 99032292 */  lbu        $v0, 0x399($s1)
    /* 2D410 8003CC10 06002586 */  lh         $a1, 0x6($s1)
    /* 2D414 8003CC14 02004014 */  bnez       $v0, .L8003CC20
    /* 2D418 8003CC18 E0CC0624 */   addiu     $a2, $zero, -0x3320
    /* 2D41C 8003CC1C 20330624 */  addiu      $a2, $zero, 0x3320
  .L8003CC20:
    /* 2D420 8003CC20 DB6C010C */  jal        func_8005B36C
    /* 2D424 8003CC24 21380000 */   addu      $a3, $zero, $zero
    /* 2D428 8003CC28 21A04000 */  addu       $s4, $v0, $zero
    /* 2D42C 8003CC2C 99032292 */  lbu        $v0, 0x399($s1)
    /* 2D430 8003CC30 02002386 */  lh         $v1, 0x2($s1)
    /* 2D434 8003CC34 06004010 */  beqz       $v0, .L8003CC50
    /* 2D438 8003CC38 23100300 */   negu      $v0, $v1
    /* 2D43C 8003CC3C 01104228 */  slti       $v0, $v0, 0x1001
    /* 2D440 8003CC40 06004010 */  beqz       $v0, .L8003CC5C
    /* 2D444 8003CC44 00000000 */   nop
    /* 2D448 8003CC48 38F30008 */  j          .L8003CCE0
    /* 2D44C 8003CC4C 00000000 */   nop
  .L8003CC50:
    /* 2D450 8003CC50 01106228 */  slti       $v0, $v1, 0x1001
    /* 2D454 8003CC54 22004014 */  bnez       $v0, .L8003CCE0
    /* 2D458 8003CC58 00000000 */   nop
  .L8003CC5C:
    /* 2D45C 8003CC5C AA032492 */  lbu        $a0, 0x3AA($s1)
    /* 2D460 8003CC60 00000000 */  nop
    /* 2D464 8003CC64 23108402 */  subu       $v0, $s4, $a0
    /* 2D468 8003CC68 FF004330 */  andi       $v1, $v0, 0xFF
    /* 2D46C 8003CC6C 8100622C */  sltiu      $v0, $v1, 0x81
    /* 2D470 8003CC70 08004014 */  bnez       $v0, .L8003CC94
    /* 2D474 8003CC74 41006228 */   slti      $v0, $v1, 0x41
    /* 2D478 8003CC78 23109400 */  subu       $v0, $a0, $s4
    /* 2D47C 8003CC7C FF004230 */  andi       $v0, $v0, 0xFF
    /* 2D480 8003CC80 41004228 */  slti       $v0, $v0, 0x41
    /* 2D484 8003CC84 16004010 */  beqz       $v0, .L8003CCE0
    /* 2D488 8003CC88 00000000 */   nop
    /* 2D48C 8003CC8C 27F30008 */  j          .L8003CC9C
    /* 2D490 8003CC90 00000000 */   nop
  .L8003CC94:
    /* 2D494 8003CC94 12004010 */  beqz       $v0, .L8003CCE0
    /* 2D498 8003CC98 00000000 */   nop
  .L8003CC9C:
    /* 2D49C 8003CC9C CDD1000C */  jal        func_80034734
    /* 2D4A0 8003CCA0 21202002 */   addu      $a0, $s1, $zero
    /* 2D4A4 8003CCA4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2D4A8 8003CCA8 C20322A6 */  sh         $v0, 0x3C2($s1)
    /* 2D4AC 8003CCAC AE79000C */  jal        func_8001E6B8
    /* 2D4B0 8003CCB0 04000424 */   addiu     $a0, $zero, 0x4
    /* 2D4B4 8003CCB4 03004010 */  beqz       $v0, .L8003CCC4
    /* 2D4B8 8003CCB8 01000224 */   addiu     $v0, $zero, 0x1
    /* 2D4BC 8003CCBC 32F30008 */  j          .L8003CCC8
    /* 2D4C0 8003CCC0 C40320A6 */   sh        $zero, 0x3C4($s1)
  .L8003CCC4:
    /* 2D4C4 8003CCC4 C40322A6 */  sh         $v0, 0x3C4($s1)
  .L8003CCC8:
    /* 2D4C8 8003CCC8 21202002 */  addu       $a0, $s1, $zero
    /* 2D4CC 8003CCCC C60320A6 */  sh         $zero, 0x3C6($s1)
    /* 2D4D0 8003CCD0 B3D2000C */  jal        func_80034ACC
    /* 2D4D4 8003CCD4 B10320A2 */   sb        $zero, 0x3B1($s1)
    /* 2D4D8 8003CCD8 4DF30008 */  j          .L8003CD34
    /* 2D4DC 8003CCDC 00000000 */   nop
  .L8003CCE0:
    /* 2D4E0 8003CCE0 E2CE000C */  jal        func_80033B88
    /* 2D4E4 8003CCE4 21202002 */   addu      $a0, $s1, $zero
    /* 2D4E8 8003CCE8 FF004430 */  andi       $a0, $v0, 0xFF
    /* 2D4EC 8003CCEC AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2D4F0 8003CCF0 F36D010C */  jal        func_8005B7CC
    /* 2D4F4 8003CCF4 34000624 */   addiu     $a2, $zero, 0x34
    /* 2D4F8 8003CCF8 21A04000 */  addu       $s4, $v0, $zero
    /* 2D4FC 8003CCFC E871010C */  jal        func_8005C7A0
    /* 2D500 8003CD00 08000424 */   addiu     $a0, $zero, 0x8
    /* 2D504 8003CD04 04000424 */  addiu      $a0, $zero, 0x4
    /* 2D508 8003CD08 00840200 */  sll        $s0, $v0, 16
    /* 2D50C 8003CD0C 03841000 */  sra        $s0, $s0, 16
    /* 2D510 8003CD10 E871010C */  jal        func_8005C7A0
    /* 2D514 8003CD14 70001026 */   addiu     $s0, $s0, 0x70
    /* 2D518 8003CD18 21202002 */  addu       $a0, $s1, $zero
    /* 2D51C 8003CD1C FF008532 */  andi       $a1, $s4, 0xFF
    /* 2D520 8003CD20 21300002 */  addu       $a2, $s0, $zero
    /* 2D524 8003CD24 00140200 */  sll        $v0, $v0, 16
    /* 2D528 8003CD28 03140200 */  sra        $v0, $v0, 16
    /* 2D52C 8003CD2C 3C2C010C */  jal        func_8004B0F0
    /* 2D530 8003CD30 1C004724 */   addiu     $a3, $v0, 0x1C
  .L8003CD34:
    /* 2D534 8003CD34 AA032292 */  lbu        $v0, 0x3AA($s1)
    /* 2D538 8003CD38 F402A38E */  lw         $v1, 0x2F4($s5)
    /* 2D53C 8003CD3C 23108202 */  subu       $v0, $s4, $v0
    /* 2D540 8003CD40 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2D544 8003CD44 8100422C */  sltiu      $v0, $v0, 0x81
    /* 2D548 8003CD48 CA0362A4 */  sh         $v0, 0x3CA($v1)
    /* 2D54C 8003CD4C F402B08E */  lw         $s0, 0x2F4($s5)
    /* 2D550 8003CD50 AE79000C */  jal        func_8001E6B8
    /* 2D554 8003CD54 03000424 */   addiu     $a0, $zero, 0x3
    /* 2D558 8003CD58 09000324 */  addiu      $v1, $zero, 0x9
    /* 2D55C 8003CD5C AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2D560 8003CD60 23186200 */  subu       $v1, $v1, $v0
    /* 2D564 8003CD64 2310B400 */  subu       $v0, $a1, $s4
    /* 2D568 8003CD68 FF004430 */  andi       $a0, $v0, 0xFF
    /* 2D56C 8003CD6C 8100822C */  sltiu      $v0, $a0, 0x81
    /* 2D570 8003CD70 04004014 */  bnez       $v0, .L8003CD84
    /* 2D574 8003CD74 23108502 */   subu      $v0, $s4, $a1
    /* 2D578 8003CD78 FF004230 */  andi       $v0, $v0, 0xFF
    /* 2D57C 8003CD7C 62F30008 */  j          .L8003CD88
    /* 2D580 8003CD80 83110200 */   sra       $v0, $v0, 6
  .L8003CD84:
    /* 2D584 8003CD84 83110400 */  sra        $v0, $a0, 6
  .L8003CD88:
    /* 2D588 8003CD88 23106200 */  subu       $v0, $v1, $v0
    /* 2D58C 8003CD8C 07050424 */  addiu      $a0, $zero, 0x507
    /* 2D590 8003CD90 C80302A6 */  sh         $v0, 0x3C8($s0)
    /* 2D594 8003CD94 AB0334A2 */  sb         $s4, 0x3AB($s1)
    /* 2D598 8003CD98 F402A38E */  lw         $v1, 0x2F4($s5)
    /* 2D59C 8003CD9C 04000224 */  addiu      $v0, $zero, 0x4
    /* 2D5A0 8003CDA0 960362A0 */  sb         $v0, 0x396($v1)
    /* 2D5A4 8003CDA4 F402A38E */  lw         $v1, 0x2F4($s5)
    /* 2D5A8 8003CDA8 01000224 */  addiu      $v0, $zero, 0x1
    /* 2D5AC 8003CDAC BC0362A4 */  sh         $v0, 0x3BC($v1)
    /* 2D5B0 8003CDB0 F402A38E */  lw         $v1, 0x2F4($s5)
    /* 2D5B4 8003CDB4 08000224 */  addiu      $v0, $zero, 0x8
    /* 2D5B8 8003CDB8 88AD020C */  jal        func_800AB620
    /* 2D5BC 8003CDBC B20362A0 */   sb        $v0, 0x3B2($v1)
    /* 2D5C0 8003CDC0 9E2C010C */  jal        func_8004B278
    /* 2D5C4 8003CDC4 00000000 */   nop
    /* 2D5C8 8003CDC8 21202002 */  addu       $a0, $s1, $zero
    /* 2D5CC 8003CDCC 01000524 */  addiu      $a1, $zero, 0x1
    /* 2D5D0 8003CDD0 01000624 */  addiu      $a2, $zero, 0x1
    /* 2D5D4 8003CDD4 B402A796 */  lhu        $a3, 0x2B4($s5)
    /* 2D5D8 8003CDD8 99032292 */  lbu        $v0, 0x399($s1)
    /* 2D5DC 8003CDDC B602A396 */  lhu        $v1, 0x2B6($s5)
    /* 2D5E0 8003CDE0 003C0700 */  sll        $a3, $a3, 16
    /* 2D5E4 8003CDE4 033C0700 */  sra        $a3, $a3, 16
    /* 2D5E8 8003CDE8 01004238 */  xori       $v0, $v0, 0x1
    /* 2D5EC 8003CDEC FF004230 */  andi       $v0, $v0, 0xFF
    /* 2D5F0 8003CDF0 001C0300 */  sll        $v1, $v1, 16
    /* 2D5F4 8003CDF4 031C0300 */  sra        $v1, $v1, 16
    /* 2D5F8 8003CDF8 1C03A2A6 */  sh         $v0, 0x31C($s5)
    /* 2D5FC 8003CDFC A526010C */  jal        func_80049A94
    /* 2D600 8003CE00 1000A3AF */   sw        $v1, 0x10($sp)
    /* 2D604 8003CE04 A65A010C */  jal        func_80056A98
    /* 2D608 8003CE08 21202002 */   addu      $a0, $s1, $zero
    /* 2D60C 8003CE0C AAF30008 */  j          .L8003CEA8
    /* 2D610 8003CE10 00000000 */   nop
  jlabel .L8003CE14
    /* 2D614 8003CE14 476F010C */  jal        func_8005BD1C
    /* 2D618 8003CE18 21202002 */   addu      $a0, $s1, $zero
    /* 2D61C 8003CE1C AB032492 */  lbu        $a0, 0x3AB($s1)
    /* 2D620 8003CE20 AA032592 */  lbu        $a1, 0x3AA($s1)
    /* 2D624 8003CE24 F36D010C */  jal        func_8005B7CC
    /* 2D628 8003CE28 04000624 */   addiu     $a2, $zero, 0x4
    /* 2D62C 8003CE2C FF004430 */  andi       $a0, $v0, 0xFF
    /* 2D630 8003CE30 C0010324 */  addiu      $v1, $zero, 0x1C0
    /* 2D634 8003CE34 23186400 */  subu       $v1, $v1, $a0
    /* 2D638 8003CE38 21206000 */  addu       $a0, $v1, $zero
    /* 2D63C 8003CE3C 02006104 */  bgez       $v1, .L8003CE48
    /* 2D640 8003CE40 AA0322A2 */   sb        $v0, 0x3AA($s1)
    /* 2D644 8003CE44 FF006424 */  addiu      $a0, $v1, 0xFF
  .L8003CE48:
    /* 2D648 8003CE48 03120400 */  sra        $v0, $a0, 8
    /* 2D64C 8003CE4C 00120200 */  sll        $v0, $v0, 8
    /* 2D650 8003CE50 23106200 */  subu       $v0, $v1, $v0
    /* 2D654 8003CE54 90032392 */  lbu        $v1, 0x390($s1)
    /* 2D658 8003CE58 00110200 */  sll        $v0, $v0, 4
    /* 2D65C 8003CE5C 12006014 */  bnez       $v1, .L8003CEA8
    /* 2D660 8003CE60 260022A6 */   sh        $v0, 0x26($s1)
    /* 2D664 8003CE64 21202002 */  addu       $a0, $s1, $zero
    /* 2D668 8003CE68 0F000524 */  addiu      $a1, $zero, 0xF
    /* 2D66C 8003CE6C 8C6E010C */  jal        func_8005BA30
    /* 2D670 8003CE70 27000624 */   addiu     $a2, $zero, 0x27
    /* 2D674 8003CE74 97032292 */  lbu        $v0, 0x397($s1)
    /* 2D678 8003CE78 00000000 */  nop
    /* 2D67C 8003CE7C 01004224 */  addiu      $v0, $v0, 0x1
    /* 2D680 8003CE80 AAF30008 */  j          .L8003CEA8
    /* 2D684 8003CE84 970322A2 */   sb        $v0, 0x397($s1)
  jlabel .L8003CE88
    /* 2D688 8003CE88 476F010C */  jal        func_8005BD1C
    /* 2D68C 8003CE8C 21202002 */   addu      $a0, $s1, $zero
    /* 2D690 8003CE90 90032392 */  lbu        $v1, 0x390($s1)
    /* 2D694 8003CE94 2B000224 */  addiu      $v0, $zero, 0x2B
    /* 2D698 8003CE98 03006214 */  bne        $v1, $v0, .L8003CEA8
    /* 2D69C 8003CE9C 00000000 */   nop
    /* 2D6A0 8003CEA0 960320A2 */  sb         $zero, 0x396($s1)
  .L8003CEA4:
    /* 2D6A4 8003CEA4 970320A2 */  sb         $zero, 0x397($s1)
  .L8003CEA8:
    /* 2D6A8 8003CEA8 2B26010C */  jal        func_800498AC
    /* 2D6AC 8003CEAC 21202002 */   addu      $a0, $s1, $zero
    /* 2D6B0 8003CEB0 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 2D6B4 8003CEB4 3800BE8F */  lw         $fp, 0x38($sp)
    /* 2D6B8 8003CEB8 3400B78F */  lw         $s7, 0x34($sp)
    /* 2D6BC 8003CEBC 3000B68F */  lw         $s6, 0x30($sp)
    /* 2D6C0 8003CEC0 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 2D6C4 8003CEC4 2800B48F */  lw         $s4, 0x28($sp)
    /* 2D6C8 8003CEC8 2400B38F */  lw         $s3, 0x24($sp)
    /* 2D6CC 8003CECC 2000B28F */  lw         $s2, 0x20($sp)
    /* 2D6D0 8003CED0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2D6D4 8003CED4 1800B08F */  lw         $s0, 0x18($sp)
    /* 2D6D8 8003CED8 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 2D6DC 8003CEDC 0800E003 */  jr         $ra
    /* 2D6E0 8003CEE0 00000000 */   nop
endlabel func_8003C46C
