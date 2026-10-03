nonmatching func_8009F690, 0x174

glabel func_8009F690
    /* 8FE90 8009F690 21288000 */  addu       $a1, $a0, $zero
    /* 8FE94 8009F694 9903A390 */  lbu        $v1, 0x399($a1)
    /* 8FE98 8009F698 00000000 */  nop
    /* 8FE9C 8009F69C 08006014 */  bnez       $v1, .L8009F6C0
    /* 8FEA0 8009F6A0 801F073C */   lui       $a3, (0x1F80030C >> 16)
    /* 8FEA4 8009F6A4 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 8FEA8 8009F6A8 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 8FEAC 8009F6AC 00000000 */  nop
    /* 8FEB0 8009F6B0 02004284 */  lh         $v0, 0x2($v0)
    /* 8FEB4 8009F6B4 00000000 */  nop
    /* 8FEB8 8009F6B8 5000401C */  bgtz       $v0, .L8009F7FC
    /* 8FEBC 8009F6BC 21100000 */   addu      $v0, $zero, $zero
  .L8009F6C0:
    /* 8FEC0 8009F6C0 01000224 */  addiu      $v0, $zero, 0x1
    /* 8FEC4 8009F6C4 08006214 */  bne        $v1, $v0, .L8009F6E8
    /* 8FEC8 8009F6C8 00000000 */   nop
    /* 8FECC 8009F6CC 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 8FED0 8009F6D0 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 8FED4 8009F6D4 00000000 */  nop
    /* 8FED8 8009F6D8 02004284 */  lh         $v0, 0x2($v0)
    /* 8FEDC 8009F6DC 00000000 */  nop
    /* 8FEE0 8009F6E0 46004004 */  bltz       $v0, .L8009F7FC
    /* 8FEE4 8009F6E4 21100000 */   addu      $v0, $zero, $zero
  .L8009F6E8:
    /* 8FEE8 8009F6E8 9903A290 */  lbu        $v0, 0x399($a1)
    /* 8FEEC 8009F6EC 00000000 */  nop
    /* 8FEF0 8009F6F0 02004014 */  bnez       $v0, .L8009F6FC
    /* 8FEF4 8009F6F4 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 8FEF8 8009F6F8 01000424 */  addiu      $a0, $zero, 0x1
  .L8009F6FC:
    /* 8FEFC 8009F6FC 9103A390 */  lbu        $v1, 0x391($a1)
    /* 8FF00 8009F700 00000000 */  nop
    /* 8FF04 8009F704 0E00622C */  sltiu      $v0, $v1, 0xE
    /* 8FF08 8009F708 0C004010 */  beqz       $v0, .L8009F73C
    /* 8FF0C 8009F70C F7FF6224 */   addiu     $v0, $v1, -0x9
    /* 8FF10 8009F710 0200422C */  sltiu      $v0, $v0, 0x2
    /* 8FF14 8009F714 0A004014 */  bnez       $v0, .L8009F740
    /* 8FF18 8009F718 00140400 */   sll       $v0, $a0, 16
    /* 8FF1C 8009F71C F5FF6224 */  addiu      $v0, $v1, -0xB
    /* 8FF20 8009F720 0200422C */  sltiu      $v0, $v0, 0x2
    /* 8FF24 8009F724 06004014 */  bnez       $v0, .L8009F740
    /* 8FF28 8009F728 00140400 */   sll       $v0, $a0, 16
    /* 8FF2C 8009F72C 8D03A390 */  lbu        $v1, 0x38D($a1)
    /* 8FF30 8009F730 0D000224 */  addiu      $v0, $zero, 0xD
    /* 8FF34 8009F734 31006214 */  bne        $v1, $v0, .L8009F7FC
    /* 8FF38 8009F738 21100000 */   addu      $v0, $zero, $zero
  .L8009F73C:
    /* 8FF3C 8009F73C 00140400 */  sll        $v0, $a0, 16
  .L8009F740:
    /* 8FF40 8009F740 03140200 */  sra        $v0, $v0, 16
    /* 8FF44 8009F744 40200200 */  sll        $a0, $v0, 1
    /* 8FF48 8009F748 9903A390 */  lbu        $v1, 0x399($a1)
    /* 8FF4C 8009F74C 21208200 */  addu       $a0, $a0, $v0
    /* 8FF50 8009F750 01006338 */  xori       $v1, $v1, 0x1
    /* 8FF54 8009F754 40180300 */  sll        $v1, $v1, 1
    /* 8FF58 8009F758 21186700 */  addu       $v1, $v1, $a3
    /* 8FF5C 8009F75C 0C036294 */  lhu        $v0, (0x1F80030C & 0xFFFF)($v1)
    /* 8FF60 8009F760 00220400 */  sll        $a0, $a0, 8
    /* 8FF64 8009F764 21104400 */  addu       $v0, $v0, $a0
    /* 8FF68 8009F768 BC03A2A4 */  sh         $v0, 0x3BC($a1)
    /* 8FF6C 8009F76C 0200A284 */  lh         $v0, 0x2($a1)
    /* 8FF70 8009F770 BC03A384 */  lh         $v1, 0x3BC($a1)
    /* 8FF74 8009F774 0600A494 */  lhu        $a0, 0x6($a1)
    /* 8FF78 8009F778 23104300 */  subu       $v0, $v0, $v1
    /* 8FF7C 8009F77C 02004104 */  bgez       $v0, .L8009F788
    /* 8FF80 8009F780 00000000 */   nop
    /* 8FF84 8009F784 23100200 */  negu       $v0, $v0
  .L8009F788:
    /* 8FF88 8009F788 01054228 */  slti       $v0, $v0, 0x501
    /* 8FF8C 8009F78C 1A004014 */  bnez       $v0, .L8009F7F8
    /* 8FF90 8009F790 BE03A4A4 */   sh        $a0, 0x3BE($a1)
    /* 8FF94 8009F794 9903A290 */  lbu        $v0, 0x399($a1)
    /* 8FF98 8009F798 AA03A690 */  lbu        $a2, 0x3AA($a1)
    /* 8FF9C 8009F79C C0210200 */  sll        $a0, $v0, 7
    /* 8FFA0 8009F7A0 23108600 */  subu       $v0, $a0, $a2
    /* 8FFA4 8009F7A4 FF004330 */  andi       $v1, $v0, 0xFF
    /* 8FFA8 8009F7A8 8100622C */  sltiu      $v0, $v1, 0x81
    /* 8FFAC 8009F7AC 08004014 */  bnez       $v0, .L8009F7D0
    /* 8FFB0 8009F7B0 20006228 */   slti      $v0, $v1, 0x20
    /* 8FFB4 8009F7B4 2310C400 */  subu       $v0, $a2, $a0
    /* 8FFB8 8009F7B8 FF004230 */  andi       $v0, $v0, 0xFF
    /* 8FFBC 8009F7BC 20004228 */  slti       $v0, $v0, 0x20
    /* 8FFC0 8009F7C0 05004014 */  bnez       $v0, .L8009F7D8
    /* 8FFC4 8009F7C4 00000000 */   nop
    /* 8FFC8 8009F7C8 FF7D0208 */  j          .L8009F7FC
    /* 8FFCC 8009F7CC 01000224 */   addiu     $v0, $zero, 0x1
  .L8009F7D0:
    /* 8FFD0 8009F7D0 09004010 */  beqz       $v0, .L8009F7F8
    /* 8FFD4 8009F7D4 00000000 */   nop
  .L8009F7D8:
    /* 8FFD8 8009F7D8 9803A290 */  lbu        $v0, 0x398($a1)
    /* 8FFDC 8009F7DC D403A394 */  lhu        $v1, 0x3D4($a1)
    /* 8FFE0 8009F7E0 40100200 */  sll        $v0, $v0, 1
    /* 8FFE4 8009F7E4 21104700 */  addu       $v0, $v0, $a3
    /* 8FFE8 8009F7E8 22004294 */  lhu        $v0, (0x1F800022 & 0xFFFF)($v0)
    /* 8FFEC 8009F7EC 00000000 */  nop
    /* 8FFF0 8009F7F0 25186200 */  or         $v1, $v1, $v0
    /* 8FFF4 8009F7F4 D403A3A4 */  sh         $v1, 0x3D4($a1)
  .L8009F7F8:
    /* 8FFF8 8009F7F8 01000224 */  addiu      $v0, $zero, 0x1
  .L8009F7FC:
    /* 8FFFC 8009F7FC 0800E003 */  jr         $ra
    /* 90000 8009F800 00000000 */   nop
endlabel func_8009F690
