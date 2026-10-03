nonmatching func_8001E5A4, 0xF0

glabel func_8001E5A4
    /* EDA4 8001E5A4 FF008330 */  andi       $v1, $a0, 0xFF
    /* EDA8 8001E5A8 40000224 */  addiu      $v0, $zero, 0x40
    /* EDAC 8001E5AC 10006210 */  beq        $v1, $v0, .L8001E5F0
    /* EDB0 8001E5B0 41006228 */   slti      $v0, $v1, 0x41
    /* EDB4 8001E5B4 05004010 */  beqz       $v0, .L8001E5CC
    /* EDB8 8001E5B8 00000000 */   nop
    /* EDBC 8001E5BC 33006010 */  beqz       $v1, .L8001E68C
    /* EDC0 8001E5C0 21100000 */   addu      $v0, $zero, $zero
    /* EDC4 8001E5C4 7E790008 */  j          .L8001E5F8
    /* EDC8 8001E5C8 FF008430 */   andi      $a0, $a0, 0xFF
  .L8001E5CC:
    /* EDCC 8001E5CC 80000224 */  addiu      $v0, $zero, 0x80
    /* EDD0 8001E5D0 05006210 */  beq        $v1, $v0, .L8001E5E8
    /* EDD4 8001E5D4 C0000224 */   addiu     $v0, $zero, 0xC0
    /* EDD8 8001E5D8 2C006210 */  beq        $v1, $v0, .L8001E68C
    /* EDDC 8001E5DC 23100500 */   negu      $v0, $a1
    /* EDE0 8001E5E0 7E790008 */  j          .L8001E5F8
    /* EDE4 8001E5E4 FF008430 */   andi      $a0, $a0, 0xFF
  .L8001E5E8:
    /* EDE8 8001E5E8 A3790008 */  j          .L8001E68C
    /* EDEC 8001E5EC 21100000 */   addu      $v0, $zero, $zero
  .L8001E5F0:
    /* EDF0 8001E5F0 A3790008 */  j          .L8001E68C
    /* EDF4 8001E5F4 2110A000 */   addu      $v0, $a1, $zero
  .L8001E5F8:
    /* EDF8 8001E5F8 8000822C */  sltiu      $v0, $a0, 0x80
    /* EDFC 8001E5FC 10004010 */  beqz       $v0, .L8001E640
    /* EE00 8001E600 4000822C */   sltiu     $v0, $a0, 0x40
    /* EE04 8001E604 03004010 */  beqz       $v0, .L8001E614
    /* EE08 8001E608 00000000 */   nop
    /* EE0C 8001E60C 88790008 */  j          .L8001E620
    /* EE10 8001E610 40100400 */   sll       $v0, $a0, 1
  .L8001E614:
    /* EE14 8001E614 80000224 */  addiu      $v0, $zero, 0x80
    /* EE18 8001E618 23104400 */  subu       $v0, $v0, $a0
    /* EE1C 8001E61C 40100200 */  sll        $v0, $v0, 1
  .L8001E620:
    /* EE20 8001E620 0C80013C */  lui        $at, %hi(D_800C6A58)
    /* EE24 8001E624 21082200 */  addu       $at, $at, $v0
    /* EE28 8001E628 586A2284 */  lh         $v0, %lo(D_800C6A58)($at)
    /* EE2C 8001E62C 00000000 */  nop
    /* EE30 8001E630 18004500 */  mult       $v0, $a1
    /* EE34 8001E634 12300000 */  mflo       $a2
    /* EE38 8001E638 A3790008 */  j          .L8001E68C
    /* EE3C 8001E63C 03130600 */   sra       $v0, $a2, 12
  .L8001E640:
    /* EE40 8001E640 C000822C */  sltiu      $v0, $a0, 0xC0
    /* EE44 8001E644 09004014 */  bnez       $v0, .L8001E66C
    /* EE48 8001E648 40100400 */   sll       $v0, $a0, 1
    /* EE4C 8001E64C 00010224 */  addiu      $v0, $zero, 0x100
    /* EE50 8001E650 23104400 */  subu       $v0, $v0, $a0
    /* EE54 8001E654 40100200 */  sll        $v0, $v0, 1
    /* EE58 8001E658 0C80013C */  lui        $at, %hi(D_800C6A58)
    /* EE5C 8001E65C 21082200 */  addu       $at, $at, $v0
    /* EE60 8001E660 586A2284 */  lh         $v0, %lo(D_800C6A58)($at)
    /* EE64 8001E664 A0790008 */  j          .L8001E680
    /* EE68 8001E668 18004500 */   mult      $v0, $a1
  .L8001E66C:
    /* EE6C 8001E66C 0C80013C */  lui        $at, %hi(D_800C6958)
    /* EE70 8001E670 21082200 */  addu       $at, $at, $v0
    /* EE74 8001E674 58692284 */  lh         $v0, %lo(D_800C6958)($at)
    /* EE78 8001E678 00000000 */  nop
    /* EE7C 8001E67C 18004500 */  mult       $v0, $a1
  .L8001E680:
    /* EE80 8001E680 12300000 */  mflo       $a2
    /* EE84 8001E684 23100600 */  negu       $v0, $a2
    /* EE88 8001E688 03130200 */  sra        $v0, $v0, 12
  .L8001E68C:
    /* EE8C 8001E68C 0800E003 */  jr         $ra
    /* EE90 8001E690 00000000 */   nop
endlabel func_8001E5A4
