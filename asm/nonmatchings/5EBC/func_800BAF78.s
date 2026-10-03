nonmatching func_800BAF78, 0x278

glabel func_800BAF78
    /* AB778 800BAF78 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AB77C 800BAF7C 0D80043C */  lui        $a0, %hi(D_800D4EC8)
    /* AB780 800BAF80 C84E8424 */  addiu      $a0, $a0, %lo(D_800D4EC8)
    /* AB784 800BAF84 1000BFAF */  sw         $ra, 0x10($sp)
    /* AB788 800BAF88 7CEC020C */  jal        func_800BB1F0
    /* AB78C 800BAF8C 08000524 */   addiu     $a1, $zero, 0x8
    /* AB790 800BAF90 03000424 */  addiu      $a0, $zero, 0x3
    /* AB794 800BAF94 0D80023C */  lui        $v0, %hi(D_800D4EC4)
    /* AB798 800BAF98 C44E428C */  lw         $v0, %lo(D_800D4EC4)($v0)
    /* AB79C 800BAF9C 0C80053C */  lui        $a1, %hi(D_800BAFC4)
    /* AB7A0 800BAFA0 C4AFA524 */  addiu      $a1, $a1, %lo(D_800BAFC4)
    /* AB7A4 800BAFA4 DAE9020C */  jal        func_800BA768
    /* AB7A8 800BAFA8 000040AC */   sw        $zero, 0x0($v0)
    /* AB7AC 800BAFAC 0C80023C */  lui        $v0, %hi(D_800BB144)
    /* AB7B0 800BAFB0 44B14224 */  addiu      $v0, $v0, %lo(D_800BB144)
    /* AB7B4 800BAFB4 1000BF8F */  lw         $ra, 0x10($sp)
    /* AB7B8 800BAFB8 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AB7BC 800BAFBC 0800E003 */  jr         $ra
    /* AB7C0 800BAFC0 00000000 */   nop
  alabel D_800BAFC4
    /* AB7C4 800BAFC4 0D80023C */  lui        $v0, %hi(D_800D4EC4)
    /* AB7C8 800BAFC8 C44E428C */  lw         $v0, %lo(D_800D4EC4)($v0)
    /* AB7CC 800BAFCC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* AB7D0 800BAFD0 2800BFAF */  sw         $ra, 0x28($sp)
    /* AB7D4 800BAFD4 2400B5AF */  sw         $s5, 0x24($sp)
    /* AB7D8 800BAFD8 2000B4AF */  sw         $s4, 0x20($sp)
    /* AB7DC 800BAFDC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* AB7E0 800BAFE0 1800B2AF */  sw         $s2, 0x18($sp)
    /* AB7E4 800BAFE4 1400B1AF */  sw         $s1, 0x14($sp)
    /* AB7E8 800BAFE8 1000B0AF */  sw         $s0, 0x10($sp)
    /* AB7EC 800BAFEC 0000428C */  lw         $v0, 0x0($v0)
    /* AB7F0 800BAFF0 00000000 */  nop
    /* AB7F4 800BAFF4 02160200 */  srl        $v0, $v0, 24
    /* AB7F8 800BAFF8 7F005130 */  andi       $s1, $v0, 0x7F
    /* AB7FC 800BAFFC 28002012 */  beqz       $s1, .L800BB0A0
    /* AB800 800BB000 00000000 */   nop
    /* AB804 800BB004 01001424 */  addiu      $s4, $zero, 0x1
    /* AB808 800BB008 FF00133C */  lui        $s3, (0xFFFFFF >> 16)
    /* AB80C 800BB00C FFFF7336 */  ori        $s3, $s3, (0xFFFFFF & 0xFFFF)
    /* AB810 800BB010 0D80153C */  lui        $s5, %hi(D_800D4EC8)
    /* AB814 800BB014 C84EB526 */  addiu      $s5, $s5, %lo(D_800D4EC8)
  .L800BB018:
    /* AB818 800BB018 18002012 */  beqz       $s1, .L800BB07C
    /* AB81C 800BB01C 21800000 */   addu      $s0, $zero, $zero
    /* AB820 800BB020 2190A002 */  addu       $s2, $s5, $zero
  .L800BB024:
    /* AB824 800BB024 0700022A */  slti       $v0, $s0, 0x7
    /* AB828 800BB028 14004010 */  beqz       $v0, .L800BB07C
    /* AB82C 800BB02C 01002232 */   andi      $v0, $s1, 0x1
    /* AB830 800BB030 0E004010 */  beqz       $v0, .L800BB06C
    /* AB834 800BB034 18000226 */   addiu     $v0, $s0, 0x18
    /* AB838 800BB038 0D80043C */  lui        $a0, %hi(D_800D4EC4)
    /* AB83C 800BB03C C44E848C */  lw         $a0, %lo(D_800D4EC4)($a0)
    /* AB840 800BB040 04105400 */  sllv       $v0, $s4, $v0
    /* AB844 800BB044 0000838C */  lw         $v1, 0x0($a0)
    /* AB848 800BB048 25105300 */  or         $v0, $v0, $s3
    /* AB84C 800BB04C 24186200 */  and        $v1, $v1, $v0
    /* AB850 800BB050 000083AC */  sw         $v1, 0x0($a0)
    /* AB854 800BB054 0000428E */  lw         $v0, 0x0($s2)
    /* AB858 800BB058 00000000 */  nop
    /* AB85C 800BB05C 03004010 */  beqz       $v0, .L800BB06C
    /* AB860 800BB060 00000000 */   nop
    /* AB864 800BB064 09F84000 */  jalr       $v0
    /* AB868 800BB068 00000000 */   nop
  .L800BB06C:
    /* AB86C 800BB06C 04005226 */  addiu      $s2, $s2, 0x4
    /* AB870 800BB070 42881100 */  srl        $s1, $s1, 1
    /* AB874 800BB074 EBFF2016 */  bnez       $s1, .L800BB024
    /* AB878 800BB078 01001026 */   addiu     $s0, $s0, 0x1
  .L800BB07C:
    /* AB87C 800BB07C 0D80023C */  lui        $v0, %hi(D_800D4EC4)
    /* AB880 800BB080 C44E428C */  lw         $v0, %lo(D_800D4EC4)($v0)
    /* AB884 800BB084 00000000 */  nop
    /* AB888 800BB088 0000428C */  lw         $v0, 0x0($v0)
    /* AB88C 800BB08C 00000000 */  nop
    /* AB890 800BB090 02160200 */  srl        $v0, $v0, 24
    /* AB894 800BB094 7F005130 */  andi       $s1, $v0, 0x7F
    /* AB898 800BB098 DFFF2016 */  bnez       $s1, .L800BB018
    /* AB89C 800BB09C 00000000 */   nop
  .L800BB0A0:
    /* AB8A0 800BB0A0 0D80053C */  lui        $a1, %hi(D_800D4EC4)
    /* AB8A4 800BB0A4 C44EA58C */  lw         $a1, %lo(D_800D4EC4)($a1)
    /* AB8A8 800BB0A8 00000000 */  nop
    /* AB8AC 800BB0AC 0000A28C */  lw         $v0, 0x0($a1)
    /* AB8B0 800BB0B0 00FF033C */  lui        $v1, (0xFF000000 >> 16)
    /* AB8B4 800BB0B4 24104300 */  and        $v0, $v0, $v1
    /* AB8B8 800BB0B8 0080033C */  lui        $v1, (0x80000000 >> 16)
    /* AB8BC 800BB0BC 06004310 */  beq        $v0, $v1, .L800BB0D8
    /* AB8C0 800BB0C0 00000000 */   nop
    /* AB8C4 800BB0C4 0000A28C */  lw         $v0, 0x0($a1)
    /* AB8C8 800BB0C8 00000000 */  nop
    /* AB8CC 800BB0CC 00804230 */  andi       $v0, $v0, 0x8000
    /* AB8D0 800BB0D0 13004010 */  beqz       $v0, .L800BB120
    /* AB8D4 800BB0D4 00000000 */   nop
  .L800BB0D8:
    /* AB8D8 800BB0D8 0180043C */  lui        $a0, %hi(D_800154CC)
    /* AB8DC 800BB0DC CC548424 */  addiu      $a0, $a0, %lo(D_800154CC)
    /* AB8E0 800BB0E0 0000A58C */  lw         $a1, 0x0($a1)
    /* AB8E4 800BB0E4 A6B5020C */  jal        func_800AD698
    /* AB8E8 800BB0E8 21800000 */   addu      $s0, $zero, $zero
  .L800BB0EC:
    /* AB8EC 800BB0EC 0180043C */  lui        $a0, %hi(D_800154E8)
    /* AB8F0 800BB0F0 E8548424 */  addiu      $a0, $a0, %lo(D_800154E8)
    /* AB8F4 800BB0F4 21280002 */  addu       $a1, $s0, $zero
    /* AB8F8 800BB0F8 0D80023C */  lui        $v0, %hi(D_800D4EE8)
    /* AB8FC 800BB0FC E84E428C */  lw         $v0, %lo(D_800D4EE8)($v0)
    /* AB900 800BB100 00191000 */  sll        $v1, $s0, 4
    /* AB904 800BB104 21186200 */  addu       $v1, $v1, $v0
    /* AB908 800BB108 0000668C */  lw         $a2, 0x0($v1)
    /* AB90C 800BB10C A6B5020C */  jal        func_800AD698
    /* AB910 800BB110 01001026 */   addiu     $s0, $s0, 0x1
    /* AB914 800BB114 0700022A */  slti       $v0, $s0, 0x7
    /* AB918 800BB118 F4FF4014 */  bnez       $v0, .L800BB0EC
    /* AB91C 800BB11C 00000000 */   nop
  .L800BB120:
    /* AB920 800BB120 2800BF8F */  lw         $ra, 0x28($sp)
    /* AB924 800BB124 2400B58F */  lw         $s5, 0x24($sp)
    /* AB928 800BB128 2000B48F */  lw         $s4, 0x20($sp)
    /* AB92C 800BB12C 1C00B38F */  lw         $s3, 0x1C($sp)
    /* AB930 800BB130 1800B28F */  lw         $s2, 0x18($sp)
    /* AB934 800BB134 1400B18F */  lw         $s1, 0x14($sp)
    /* AB938 800BB138 1000B08F */  lw         $s0, 0x10($sp)
    /* AB93C 800BB13C 0800E003 */  jr         $ra
    /* AB940 800BB140 3000BD27 */   addiu     $sp, $sp, 0x30
  alabel D_800BB144
    /* AB944 800BB144 21308000 */  addu       $a2, $a0, $zero
    /* AB948 800BB148 0D80033C */  lui        $v1, %hi(D_800D4EC8)
    /* AB94C 800BB14C C84E6324 */  addiu      $v1, $v1, %lo(D_800D4EC8)
    /* AB950 800BB150 80100600 */  sll        $v0, $a2, 2
    /* AB954 800BB154 21184300 */  addu       $v1, $v0, $v1
    /* AB958 800BB158 0000678C */  lw         $a3, 0x0($v1)
    /* AB95C 800BB15C 2120A000 */  addu       $a0, $a1, $zero
    /* AB960 800BB160 21008710 */  beq        $a0, $a3, .L800BB1E8
    /* AB964 800BB164 2110E000 */   addu      $v0, $a3, $zero
    /* AB968 800BB168 10008010 */  beqz       $a0, .L800BB1AC
    /* AB96C 800BB16C FF00023C */   lui       $v0, (0xFFFFFF >> 16)
    /* AB970 800BB170 0D80053C */  lui        $a1, %hi(D_800D4EC4)
    /* AB974 800BB174 C44EA58C */  lw         $a1, %lo(D_800D4EC4)($a1)
    /* AB978 800BB178 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* AB97C 800BB17C 000064AC */  sw         $a0, 0x0($v1)
    /* AB980 800BB180 0000A48C */  lw         $a0, 0x0($a1)
    /* AB984 800BB184 1000C324 */  addiu      $v1, $a2, 0x10
    /* AB988 800BB188 24208200 */  and        $a0, $a0, $v0
    /* AB98C 800BB18C 01000224 */  addiu      $v0, $zero, 0x1
    /* AB990 800BB190 04106200 */  sllv       $v0, $v0, $v1
    /* AB994 800BB194 8000033C */  lui        $v1, (0x800000 >> 16)
    /* AB998 800BB198 25104300 */  or         $v0, $v0, $v1
    /* AB99C 800BB19C 25208200 */  or         $a0, $a0, $v0
    /* AB9A0 800BB1A0 0000A4AC */  sw         $a0, 0x0($a1)
    /* AB9A4 800BB1A4 7AEC0208 */  j          .L800BB1E8
    /* AB9A8 800BB1A8 2110E000 */   addu      $v0, $a3, $zero
  .L800BB1AC:
    /* AB9AC 800BB1AC 0D80053C */  lui        $a1, %hi(D_800D4EC4)
    /* AB9B0 800BB1B0 C44EA58C */  lw         $a1, %lo(D_800D4EC4)($a1)
    /* AB9B4 800BB1B4 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* AB9B8 800BB1B8 000060AC */  sw         $zero, 0x0($v1)
    /* AB9BC 800BB1BC 0000A38C */  lw         $v1, 0x0($a1)
    /* AB9C0 800BB1C0 1000C424 */  addiu      $a0, $a2, 0x10
    /* AB9C4 800BB1C4 24186200 */  and        $v1, $v1, $v0
    /* AB9C8 800BB1C8 8000023C */  lui        $v0, (0x800000 >> 16)
    /* AB9CC 800BB1CC 25186200 */  or         $v1, $v1, $v0
    /* AB9D0 800BB1D0 01000224 */  addiu      $v0, $zero, 0x1
    /* AB9D4 800BB1D4 04108200 */  sllv       $v0, $v0, $a0
    /* AB9D8 800BB1D8 27100200 */  nor        $v0, $zero, $v0
    /* AB9DC 800BB1DC 24186200 */  and        $v1, $v1, $v0
    /* AB9E0 800BB1E0 0000A3AC */  sw         $v1, 0x0($a1)
    /* AB9E4 800BB1E4 2110E000 */  addu       $v0, $a3, $zero
  .L800BB1E8:
    /* AB9E8 800BB1E8 0800E003 */  jr         $ra
    /* AB9EC 800BB1EC 00000000 */   nop
endlabel func_800BAF78
