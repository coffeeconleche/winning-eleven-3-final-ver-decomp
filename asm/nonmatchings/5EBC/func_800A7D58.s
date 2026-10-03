nonmatching func_800A7D58, 0x1AC

glabel func_800A7D58
    /* 98558 800A7D58 801F043C */  lui        $a0, (0x1F8002F4 >> 16)
    /* 9855C 800A7D5C F402848C */  lw         $a0, (0x1F8002F4 & 0xFFFF)($a0)
    /* 98560 800A7D60 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 98564 800A7D64 1400BFAF */  sw         $ra, 0x14($sp)
    /* 98568 800A7D68 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9856C 800A7D6C A003838C */  lw         $v1, 0x3A0($a0)
    /* 98570 800A7D70 00000000 */  nop
    /* 98574 800A7D74 40100300 */  sll        $v0, $v1, 1
    /* 98578 800A7D78 21104300 */  addu       $v0, $v0, $v1
    /* 9857C 800A7D7C 40100200 */  sll        $v0, $v0, 1
    /* 98580 800A7D80 CCCC033C */  lui        $v1, (0xCCCCCCCD >> 16)
    /* 98584 800A7D84 CDCC6334 */  ori        $v1, $v1, (0xCCCCCCCD & 0xFFFF)
    /* 98588 800A7D88 19004300 */  multu      $v0, $v1
    /* 9858C 800A7D8C FE320524 */  addiu      $a1, $zero, 0x32FE
    /* 98590 800A7D90 10380000 */  mfhi       $a3
    /* 98594 800A7D94 C2100700 */  srl        $v0, $a3, 3
    /* 98598 800A7D98 00104224 */  addiu      $v0, $v0, 0x1000
    /* 9859C 800A7D9C A00382AC */  sw         $v0, 0x3A0($a0)
    /* 985A0 800A7DA0 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 985A4 800A7DA4 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 985A8 800A7DA8 05000224 */  addiu      $v0, $zero, 0x5
    /* 985AC 800A7DAC 0D80013C */  lui        $at, %hi(D_800CB690)
    /* 985B0 800A7DB0 90B622A0 */  sb         $v0, %lo(D_800CB690)($at)
    /* 985B4 800A7DB4 02006284 */  lh         $v0, 0x2($v1)
    /* 985B8 800A7DB8 00000000 */  nop
    /* 985BC 800A7DBC 02004104 */  bgez       $v0, .L800A7DC8
    /* 985C0 800A7DC0 801F103C */   lui       $s0, (0x1F8002A9 >> 16)
    /* 985C4 800A7DC4 02CD0524 */  addiu      $a1, $zero, -0x32FE
  .L800A7DC8:
    /* 985C8 800A7DC8 020065A4 */  sh         $a1, 0x2($v1)
    /* 985CC 800A7DCC 801F063C */  lui        $a2, (0x1F8002F4 >> 16)
    /* 985D0 800A7DD0 F402C68C */  lw         $a2, (0x1F8002F4 & 0xFFFF)($a2)
    /* 985D4 800A7DD4 00000000 */  nop
    /* 985D8 800A7DD8 A003C28C */  lw         $v0, 0x3A0($a2)
    /* 985DC 800A7DDC A403C390 */  lbu        $v1, 0x3A4($a2)
    /* 985E0 800A7DE0 C0290200 */  sll        $a1, $v0, 7
    /* 985E4 800A7DE4 80006224 */  addiu      $v0, $v1, 0x80
    /* 985E8 800A7DE8 21186200 */  addu       $v1, $v1, $v0
    /* 985EC 800A7DEC FF006430 */  andi       $a0, $v1, 0xFF
    /* 985F0 800A7DF0 8100822C */  sltiu      $v0, $a0, 0x81
    /* 985F4 800A7DF4 04004014 */  bnez       $v0, .L800A7E08
    /* 985F8 800A7DF8 23100300 */   negu      $v0, $v1
    /* 985FC 800A7DFC FF004230 */  andi       $v0, $v0, 0xFF
    /* 98600 800A7E00 839F0208 */  j          .L800A7E0C
    /* 98604 800A7E04 43100200 */   sra       $v0, $v0, 1
  .L800A7E08:
    /* 98608 800A7E08 42100400 */  srl        $v0, $a0, 1
  .L800A7E0C:
    /* 9860C 800A7E0C 80004224 */  addiu      $v0, $v0, 0x80
    /* 98610 800A7E10 1B00A200 */  divu       $zero, $a1, $v0
    /* 98614 800A7E14 02004014 */  bnez       $v0, .L800A7E20
    /* 98618 800A7E18 00000000 */   nop
    /* 9861C 800A7E1C 0D000700 */  break      7
  .L800A7E20:
    /* 98620 800A7E20 12100000 */  mflo       $v0
    /* 98624 800A7E24 00000000 */  nop
    /* 98628 800A7E28 E8034224 */  addiu      $v0, $v0, 0x3E8
    /* 9862C 800A7E2C A003C2AC */  sw         $v0, 0x3A0($a2)
    /* 98630 800A7E30 F402048E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 98634 800A7E34 00000000 */  nop
    /* 98638 800A7E38 A4038390 */  lbu        $v1, 0x3A4($a0)
    /* 9863C 800A7E3C 80000224 */  addiu      $v0, $zero, 0x80
    /* 98640 800A7E40 23104300 */  subu       $v0, $v0, $v1
    /* 98644 800A7E44 A40382A0 */  sb         $v0, 0x3A4($a0)
    /* 98648 800A7E48 88AD020C */  jal        func_800AB620
    /* 9864C 800A7E4C 15050424 */   addiu     $a0, $zero, 0x515
    /* 98650 800A7E50 A9020292 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($s0)
    /* 98654 800A7E54 00000000 */  nop
    /* 98658 800A7E58 05004014 */  bnez       $v0, .L800A7E70
    /* 9865C 800A7E5C 00000000 */   nop
    /* 98660 800A7E60 8668010C */  jal        func_8005A218
    /* 98664 800A7E64 00000000 */   nop
    /* 98668 800A7E68 B69F0208 */  j          .L800A7ED8
    /* 9866C 800A7E6C 0D000224 */   addiu     $v0, $zero, 0xD
  .L800A7E70:
    /* 98670 800A7E70 F402048E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 98674 800A7E74 00000000 */  nop
    /* 98678 800A7E78 02008284 */  lh         $v0, 0x2($a0)
    /* 9867C 800A7E7C 00000000 */  nop
    /* 98680 800A7E80 02004104 */  bgez       $v0, .L800A7E8C
    /* 98684 800A7E84 61330324 */   addiu     $v1, $zero, 0x3361
    /* 98688 800A7E88 9FCC0324 */  addiu      $v1, $zero, -0x3361
  .L800A7E8C:
    /* 9868C 800A7E8C 020083A4 */  sh         $v1, 0x2($a0)
    /* 98690 800A7E90 F402048E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 98694 800A7E94 00000000 */  nop
    /* 98698 800A7E98 06008284 */  lh         $v0, 0x6($a0)
    /* 9869C 800A7E9C 00000000 */  nop
    /* 986A0 800A7EA0 02004104 */  bgez       $v0, .L800A7EAC
    /* 986A4 800A7EA4 D2030324 */   addiu     $v1, $zero, 0x3D2
    /* 986A8 800A7EA8 2EFC0324 */  addiu      $v1, $zero, -0x3D2
  .L800A7EAC:
    /* 986AC 800A7EAC 060083A4 */  sh         $v1, 0x6($a0)
    /* 986B0 800A7EB0 F402038E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s0)
    /* 986B4 800A7EB4 00000000 */  nop
    /* 986B8 800A7EB8 02006284 */  lh         $v0, 0x2($v1)
    /* 986BC 800A7EBC 00000000 */  nop
    /* 986C0 800A7EC0 03004018 */  blez       $v0, .L800A7ED0
    /* 986C4 800A7EC4 80000224 */   addiu     $v0, $zero, 0x80
    /* 986C8 800A7EC8 B59F0208 */  j          .L800A7ED4
    /* 986CC 800A7ECC A40360A0 */   sb        $zero, 0x3A4($v1)
  .L800A7ED0:
    /* 986D0 800A7ED0 A40362A0 */  sb         $v0, 0x3A4($v1)
  .L800A7ED4:
    /* 986D4 800A7ED4 0D000224 */  addiu      $v0, $zero, 0xD
  .L800A7ED8:
    /* 986D8 800A7ED8 B00202AE */  sw         $v0, (0x1F8002B0 & 0xFFFF)($s0)
    /* 986DC 800A7EDC 08000224 */  addiu      $v0, $zero, 0x8
    /* 986E0 800A7EE0 1C0302A6 */  sh         $v0, (0x1F80031C & 0xFFFF)($s0)
    /* 986E4 800A7EE4 FF7F0224 */  addiu      $v0, $zero, 0x7FFF
    /* 986E8 800A7EE8 F20200A2 */  sb         $zero, (0x1F8002F2 & 0xFFFF)($s0)
    /* 986EC 800A7EEC B80202A6 */  sh         $v0, (0x1F8002B8 & 0xFFFF)($s0)
    /* 986F0 800A7EF0 1400BF8F */  lw         $ra, 0x14($sp)
    /* 986F4 800A7EF4 1000B08F */  lw         $s0, 0x10($sp)
    /* 986F8 800A7EF8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 986FC 800A7EFC 0800E003 */  jr         $ra
    /* 98700 800A7F00 00000000 */   nop
endlabel func_800A7D58
