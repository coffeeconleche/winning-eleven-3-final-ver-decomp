nonmatching func_8009FE1C, 0xC0

glabel func_8009FE1C
    /* 9061C 8009FE1C 1080093C */  lui        $t1, %hi(D_800FF748)
    /* 90620 8009FE20 48F72925 */  addiu      $t1, $t1, %lo(D_800FF748)
    /* 90624 8009FE24 21300000 */  addu       $a2, $zero, $zero
    /* 90628 8009FE28 21280000 */  addu       $a1, $zero, $zero
    /* 9062C 8009FE2C 801F033C */  lui        $v1, (0x1F80031E >> 16)
    /* 90630 8009FE30 1E036334 */  ori        $v1, $v1, (0x1F80031E & 0xFFFF)
    /* 90634 8009FE34 99038290 */  lbu        $v0, 0x399($a0)
    /* 90638 8009FE38 AAAA083C */  lui        $t0, (0xAAAAAAAB >> 16)
    /* 9063C 8009FE3C ABAA0835 */  ori        $t0, $t0, (0xAAAAAAAB & 0xFFFF)
    /* 90640 8009FE40 40100200 */  sll        $v0, $v0, 1
    /* 90644 8009FE44 21384300 */  addu       $a3, $v0, $v1
  .L8009FE48:
    /* 90648 8009FE48 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 9064C 8009FE4C 2110E200 */  addu       $v0, $a3, $v0
    /* 90650 8009FE50 00004390 */  lbu        $v1, 0x0($v0)
    /* 90654 8009FE54 00000000 */  nop
    /* 90658 8009FE58 19006800 */  multu      $v1, $t0
    /* 9065C 8009FE5C 10500000 */  mfhi       $t2
    /* 90660 8009FE60 02210A00 */  srl        $a0, $t2, 4
    /* 90664 8009FE64 40100400 */  sll        $v0, $a0, 1
    /* 90668 8009FE68 21104400 */  addu       $v0, $v0, $a0
    /* 9066C 8009FE6C C0100200 */  sll        $v0, $v0, 3
    /* 90670 8009FE70 23186200 */  subu       $v1, $v1, $v0
    /* 90674 8009FE74 FF006330 */  andi       $v1, $v1, 0xFF
    /* 90678 8009FE78 40110300 */  sll        $v0, $v1, 5
    /* 9067C 8009FE7C 23104300 */  subu       $v0, $v0, $v1
    /* 90680 8009FE80 80100200 */  sll        $v0, $v0, 2
    /* 90684 8009FE84 21104300 */  addu       $v0, $v0, $v1
    /* 90688 8009FE88 C0100200 */  sll        $v0, $v0, 3
    /* 9068C 8009FE8C 21102201 */  addu       $v0, $t1, $v0
    /* 90690 8009FE90 8D034390 */  lbu        $v1, 0x38D($v0)
    /* 90694 8009FE94 00000000 */  nop
    /* 90698 8009FE98 11006228 */  slti       $v0, $v1, 0x11
    /* 9069C 8009FE9C 08004014 */  bnez       $v0, .L8009FEC0
    /* 906A0 8009FEA0 13006228 */   slti      $v0, $v1, 0x13
    /* 906A4 8009FEA4 05004014 */  bnez       $v0, .L8009FEBC
    /* 906A8 8009FEA8 1A006228 */   slti      $v0, $v1, 0x1A
    /* 906AC 8009FEAC 04004010 */  beqz       $v0, .L8009FEC0
    /* 906B0 8009FEB0 15006228 */   slti      $v0, $v1, 0x15
    /* 906B4 8009FEB4 02004014 */  bnez       $v0, .L8009FEC0
    /* 906B8 8009FEB8 00000000 */   nop
  .L8009FEBC:
    /* 906BC 8009FEBC 01000624 */  addiu      $a2, $zero, 0x1
  .L8009FEC0:
    /* 906C0 8009FEC0 0100A524 */  addiu      $a1, $a1, 0x1
    /* 906C4 8009FEC4 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 906C8 8009FEC8 0200422C */  sltiu      $v0, $v0, 0x2
    /* 906CC 8009FECC DEFF4014 */  bnez       $v0, .L8009FE48
    /* 906D0 8009FED0 00000000 */   nop
    /* 906D4 8009FED4 0800E003 */  jr         $ra
    /* 906D8 8009FED8 2110C000 */   addu      $v0, $a2, $zero
endlabel func_8009FE1C
