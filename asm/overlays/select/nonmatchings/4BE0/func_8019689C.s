nonmatching func_8019689C, 0x1C4

glabel func_8019689C
    /* D924 8019689C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* D928 801968A0 1800B2AF */  sw         $s2, 0x18($sp)
    /* D92C 801968A4 21908000 */  addu       $s2, $a0, $zero
    /* D930 801968A8 1000B0AF */  sw         $s0, 0x10($sp)
    /* D934 801968AC 2180A000 */  addu       $s0, $a1, $zero
    /* D938 801968B0 1400B1AF */  sw         $s1, 0x14($sp)
    /* D93C 801968B4 1D80113C */  lui        $s1, %hi(D_801D7F98)
    /* D940 801968B8 987F3126 */  addiu      $s1, $s1, %lo(D_801D7F98)
    /* D944 801968BC 21202002 */  addu       $a0, $s1, $zero
    /* D948 801968C0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* D94C 801968C4 2000BFAF */  sw         $ra, 0x20($sp)
    /* D950 801968C8 56B7020C */  jal        func_800ADD58
    /* D954 801968CC 2198C000 */   addu      $s3, $a2, $zero
    /* D958 801968D0 03004012 */  beqz       $s2, .L801968E0
    /* D95C 801968D4 21202002 */   addu      $a0, $s1, $zero
    /* D960 801968D8 395A0608 */  j          .L801968E4
    /* D964 801968DC 01000524 */   addiu     $a1, $zero, 0x1
  .L801968E0:
    /* D968 801968E0 21280000 */  addu       $a1, $zero, $zero
  .L801968E4:
    /* D96C 801968E4 2EB7020C */  jal        func_800ADCB8
    /* D970 801968E8 00000000 */   nop
    /* D974 801968EC 00000296 */  lhu        $v0, 0x0($s0)
    /* D978 801968F0 1D80043C */  lui        $a0, %hi(D_801D7FA0)
    /* D97C 801968F4 A07F8424 */  addiu      $a0, $a0, %lo(D_801D7FA0)
    /* D980 801968F8 000082A4 */  sh         $v0, 0x0($a0)
    /* D984 801968FC 02000296 */  lhu        $v0, 0x2($s0)
    /* D988 80196900 1D80013C */  lui        $at, %hi(D_801D7FA2)
    /* D98C 80196904 A27F22A4 */  sh         $v0, %lo(D_801D7FA2)($at)
    /* D990 80196908 00000296 */  lhu        $v0, 0x0($s0)
    /* D994 8019690C 04000396 */  lhu        $v1, 0x4($s0)
    /* D998 80196910 00000000 */  nop
    /* D99C 80196914 21104300 */  addu       $v0, $v0, $v1
    /* D9A0 80196918 1D80013C */  lui        $at, %hi(D_801D7FA4)
    /* D9A4 8019691C A47F22A4 */  sh         $v0, %lo(D_801D7FA4)($at)
    /* D9A8 80196920 02000296 */  lhu        $v0, 0x2($s0)
    /* D9AC 80196924 1D80013C */  lui        $at, %hi(D_801D7FA6)
    /* D9B0 80196928 A67F22A4 */  sh         $v0, %lo(D_801D7FA6)($at)
    /* D9B4 8019692C 00000296 */  lhu        $v0, 0x0($s0)
    /* D9B8 80196930 1D80013C */  lui        $at, %hi(D_801D7FA8)
    /* D9BC 80196934 A87F22A4 */  sh         $v0, %lo(D_801D7FA8)($at)
    /* D9C0 80196938 02000296 */  lhu        $v0, 0x2($s0)
    /* D9C4 8019693C 06000396 */  lhu        $v1, 0x6($s0)
    /* D9C8 80196940 00000000 */  nop
    /* D9CC 80196944 21104300 */  addu       $v0, $v0, $v1
    /* D9D0 80196948 1D80013C */  lui        $at, %hi(D_801D7FAA)
    /* D9D4 8019694C AA7F22A4 */  sh         $v0, %lo(D_801D7FAA)($at)
    /* D9D8 80196950 00000296 */  lhu        $v0, 0x0($s0)
    /* D9DC 80196954 04000396 */  lhu        $v1, 0x4($s0)
    /* D9E0 80196958 FFFF6632 */  andi       $a2, $s3, 0xFFFF
    /* D9E4 8019695C 21104300 */  addu       $v0, $v0, $v1
    /* D9E8 80196960 1D80013C */  lui        $at, %hi(D_801D7FAC)
    /* D9EC 80196964 AC7F22A4 */  sh         $v0, %lo(D_801D7FAC)($at)
    /* D9F0 80196968 02000296 */  lhu        $v0, 0x2($s0)
    /* D9F4 8019696C 06000396 */  lhu        $v1, 0x6($s0)
    /* D9F8 80196970 0F80113C */  lui        $s1, %hi(D_800F1018)
    /* D9FC 80196974 18103126 */  addiu      $s1, $s1, %lo(D_800F1018)
    /* DA00 80196978 21104300 */  addu       $v0, $v0, $v1
    /* DA04 8019697C 1D80013C */  lui        $at, %hi(D_801D7FAE)
    /* DA08 80196980 AE7F22A4 */  sh         $v0, %lo(D_801D7FAE)($at)
    /* DA0C 80196984 08000292 */  lbu        $v0, 0x8($s0)
    /* DA10 80196988 F8FF8424 */  addiu      $a0, $a0, -0x8
    /* DA14 8019698C 1D80013C */  lui        $at, %hi(D_801D7F9C)
    /* DA18 80196990 9C7F22A0 */  sb         $v0, %lo(D_801D7F9C)($at)
    /* DA1C 80196994 801F023C */  lui        $v0, (0x1F80029D >> 16)
    /* DA20 80196998 9D024290 */  lbu        $v0, (0x1F80029D & 0xFFFF)($v0)
    /* DA24 8019699C 09000392 */  lbu        $v1, 0x9($s0)
    /* DA28 801969A0 80280200 */  sll        $a1, $v0, 2
    /* DA2C 801969A4 2128A200 */  addu       $a1, $a1, $v0
    /* DA30 801969A8 80280500 */  sll        $a1, $a1, 2
    /* DA34 801969AC 1D80013C */  lui        $at, %hi(D_801D7F9D)
    /* DA38 801969B0 9D7F23A0 */  sb         $v1, %lo(D_801D7F9D)($at)
    /* DA3C 801969B4 0A000292 */  lbu        $v0, 0xA($s0)
    /* DA40 801969B8 1D80013C */  lui        $at, %hi(D_801D7F9E)
    /* DA44 801969BC 9E7F22A0 */  sb         $v0, %lo(D_801D7F9E)($at)
    /* DA48 801969C0 02CE020C */  jal        func_800B3808
    /* DA4C 801969C4 2128B100 */   addu      $a1, $a1, $s1
    /* DA50 801969C8 1D004012 */  beqz       $s2, .L80196A40
    /* DA54 801969CC 801F043C */   lui       $a0, (0x1F800180 >> 16)
    /* DA58 801969D0 80018434 */  ori        $a0, $a0, (0x1F800180 & 0xFFFF)
    /* DA5C 801969D4 FF006632 */  andi       $a2, $s3, 0xFF
    /* DA60 801969D8 80FE0224 */  addiu      $v0, $zero, -0x180
    /* DA64 801969DC 801F073C */  lui        $a3, (0x1F80029D >> 16)
    /* DA68 801969E0 9D02E790 */  lbu        $a3, (0x1F80029D & 0xFFFF)($a3)
    /* DA6C 801969E4 88FF0324 */  addiu      $v1, $zero, -0x78
    /* DA70 801969E8 801F013C */  lui        $at, (0x1F800184 >> 16)
    /* DA74 801969EC 840122A4 */  sh         $v0, (0x1F800184 & 0xFFFF)($at)
    /* DA78 801969F0 81FE0224 */  addiu      $v0, $zero, -0x17F
    /* DA7C 801969F4 801F013C */  lui        $at, (0x1F800186 >> 16)
    /* DA80 801969F8 860123A4 */  sh         $v1, (0x1F800186 & 0xFFFF)($at)
    /* DA84 801969FC 801F013C */  lui        $at, (0x1F800188 >> 16)
    /* DA88 80196A00 880122A4 */  sh         $v0, (0x1F800188 & 0xFFFF)($at)
    /* DA8C 80196A04 801F013C */  lui        $at, (0x1F80018A >> 16)
    /* DA90 80196A08 8A0123A4 */  sh         $v1, (0x1F80018A & 0xFFFF)($at)
    /* DA94 80196A0C 801F013C */  lui        $at, (0x1F800180 >> 16)
    /* DA98 80196A10 800132AC */  sw         $s2, (0x1F800180 & 0xFFFF)($at)
    /* DA9C 80196A14 801F013C */  lui        $at, (0x1F80018C >> 16)
    /* DAA0 80196A18 8C0120A0 */  sb         $zero, (0x1F80018C & 0xFFFF)($at)
    /* DAA4 80196A1C 801F013C */  lui        $at, (0x1F80018D >> 16)
    /* DAA8 80196A20 8D0120A0 */  sb         $zero, (0x1F80018D & 0xFFFF)($at)
    /* DAAC 80196A24 801F013C */  lui        $at, (0x1F80018E >> 16)
    /* DAB0 80196A28 8E0120A0 */  sb         $zero, (0x1F80018E & 0xFFFF)($at)
    /* DAB4 80196A2C 80280700 */  sll        $a1, $a3, 2
    /* DAB8 80196A30 2128A700 */  addu       $a1, $a1, $a3
    /* DABC 80196A34 80280500 */  sll        $a1, $a1, 2
    /* DAC0 80196A38 26CD020C */  jal        func_800B3498
    /* DAC4 80196A3C 2128B100 */   addu      $a1, $a1, $s1
  .L80196A40:
    /* DAC8 80196A40 2000BF8F */  lw         $ra, 0x20($sp)
    /* DACC 80196A44 1C00B38F */  lw         $s3, 0x1C($sp)
    /* DAD0 80196A48 1800B28F */  lw         $s2, 0x18($sp)
    /* DAD4 80196A4C 1400B18F */  lw         $s1, 0x14($sp)
    /* DAD8 80196A50 1000B08F */  lw         $s0, 0x10($sp)
    /* DADC 80196A54 2800BD27 */  addiu      $sp, $sp, 0x28
    /* DAE0 80196A58 0800E003 */  jr         $ra
    /* DAE4 80196A5C 00000000 */   nop
endlabel func_8019689C
