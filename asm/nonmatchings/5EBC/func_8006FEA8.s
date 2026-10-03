nonmatching func_8006FEA8, 0xA0

glabel func_8006FEA8
    /* 606A8 8006FEA8 1080053C */  lui        $a1, %hi(D_800FF748)
    /* 606AC 8006FEAC 48F7A524 */  addiu      $a1, $a1, %lo(D_800FF748)
    /* 606B0 8006FEB0 2120A000 */  addu       $a0, $a1, $zero
    /* 606B4 8006FEB4 21180000 */  addu       $v1, $zero, $zero
  .L8006FEB8:
    /* 606B8 8006FEB8 FF006230 */  andi       $v0, $v1, 0xFF
    /* 606BC 8006FEBC 0E80013C */  lui        $at, %hi(D_800E6D00)
    /* 606C0 8006FEC0 21082200 */  addu       $at, $at, $v0
    /* 606C4 8006FEC4 006D2290 */  lbu        $v0, %lo(D_800E6D00)($at)
    /* 606C8 8006FEC8 01006324 */  addiu      $v1, $v1, 0x1
    /* 606CC 8006FECC 000082A0 */  sb         $v0, 0x0($a0)
    /* 606D0 8006FED0 FF006230 */  andi       $v0, $v1, 0xFF
    /* 606D4 8006FED4 1800422C */  sltiu      $v0, $v0, 0x18
    /* 606D8 8006FED8 F7FF4014 */  bnez       $v0, .L8006FEB8
    /* 606DC 8006FEDC E8038424 */   addiu     $a0, $a0, 0x3E8
    /* 606E0 8006FEE0 D066A424 */  addiu      $a0, $a1, 0x66D0
    /* 606E4 8006FEE4 21180000 */  addu       $v1, $zero, $zero
  .L8006FEE8:
    /* 606E8 8006FEE8 FF006230 */  andi       $v0, $v1, 0xFF
    /* 606EC 8006FEEC 0E80013C */  lui        $at, %hi(D_800E6D40)
    /* 606F0 8006FEF0 21082200 */  addu       $at, $at, $v0
    /* 606F4 8006FEF4 406D2290 */  lbu        $v0, %lo(D_800E6D40)($at)
    /* 606F8 8006FEF8 01006324 */  addiu      $v1, $v1, 0x1
    /* 606FC 8006FEFC 000082A0 */  sb         $v0, 0x0($a0)
    /* 60700 8006FF00 FF006230 */  andi       $v0, $v1, 0xFF
    /* 60704 8006FF04 1200422C */  sltiu      $v0, $v0, 0x12
    /* 60708 8006FF08 F7FF4014 */  bnez       $v0, .L8006FEE8
    /* 6070C 8006FF0C 90008424 */   addiu     $a0, $a0, 0x90
    /* 60710 8006FF10 0064A424 */  addiu      $a0, $a1, 0x6400
    /* 60714 8006FF14 28000324 */  addiu      $v1, $zero, 0x28
  .L8006FF18:
    /* 60718 8006FF18 FF006230 */  andi       $v0, $v1, 0xFF
    /* 6071C 8006FF1C 0E80013C */  lui        $at, %hi(D_800E6CF8)
    /* 60720 8006FF20 21082200 */  addu       $at, $at, $v0
    /* 60724 8006FF24 F86C2290 */  lbu        $v0, %lo(D_800E6CF8)($at)
    /* 60728 8006FF28 01006324 */  addiu      $v1, $v1, 0x1
    /* 6072C 8006FF2C 040082A0 */  sb         $v0, 0x4($a0)
    /* 60730 8006FF30 FF006230 */  andi       $v0, $v1, 0xFF
    /* 60734 8006FF34 3A00422C */  sltiu      $v0, $v0, 0x3A
    /* 60738 8006FF38 F7FF4014 */  bnez       $v0, .L8006FF18
    /* 6073C 8006FF3C 28008424 */   addiu     $a0, $a0, 0x28
    /* 60740 8006FF40 0800E003 */  jr         $ra
    /* 60744 8006FF44 00000000 */   nop
endlabel func_8006FEA8
