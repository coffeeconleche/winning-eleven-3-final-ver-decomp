nonmatching func_8001DF74, 0x180

glabel func_8001DF74
    /* E774 8001DF74 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* E778 8001DF78 2000B0AF */  sw         $s0, 0x20($sp)
    /* E77C 8001DF7C 21808000 */  addu       $s0, $a0, $zero
    /* E780 8001DF80 2800B2AF */  sw         $s2, 0x28($sp)
    /* E784 8001DF84 1080123C */  lui        $s2, %hi(D_800FF748)
    /* E788 8001DF88 48F75226 */  addiu      $s2, $s2, %lo(D_800FF748)
    /* E78C 8001DF8C 2400B1AF */  sw         $s1, 0x24($sp)
    /* E790 8001DF90 FFFFB130 */  andi       $s1, $a1, 0xFFFF
    /* E794 8001DF94 E0010224 */  addiu      $v0, $zero, 0x1E0
    /* E798 8001DF98 1E002212 */  beq        $s1, $v0, .L8001E014
    /* E79C 8001DF9C 2C00BFAF */   sw        $ra, 0x2C($sp)
    /* E7A0 8001DFA0 1800A427 */  addiu      $a0, $sp, 0x18
    /* E7A4 8001DFA4 21280000 */  addu       $a1, $zero, $zero
    /* E7A8 8001DFA8 21300000 */  addu       $a2, $zero, $zero
    /* E7AC 8001DFAC 21380000 */  addu       $a3, $zero, $zero
    /* E7B0 8001DFB0 FFFF1032 */  andi       $s0, $s0, 0xFFFF
    /* E7B4 8001DFB4 82101000 */  srl        $v0, $s0, 2
    /* E7B8 8001DFB8 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* E7BC 8001DFBC E0010224 */  addiu      $v0, $zero, 0x1E0
    /* E7C0 8001DFC0 1800A0A7 */  sh         $zero, 0x18($sp)
    /* E7C4 8001DFC4 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* E7C8 8001DFC8 AEB9020C */  jal        func_800AE6B8
    /* E7CC 8001DFCC 1E00A2A7 */   sh        $v0, 0x1E($sp)
    /* E7D0 8001DFD0 4DB9020C */  jal        func_800AE534
    /* E7D4 8001DFD4 21200000 */   addu      $a0, $zero, $zero
    /* E7D8 8001DFD8 21200002 */  addu       $a0, $s0, $zero
    /* E7DC 8001DFDC 21282002 */  addu       $a1, $s1, $zero
    /* E7E0 8001DFE0 04000624 */  addiu      $a2, $zero, 0x4
    /* E7E4 8001DFE4 21380000 */  addu       $a3, $zero, $zero
    /* E7E8 8001DFE8 B2D0020C */  jal        func_800B42C8
    /* E7EC 8001DFEC 1000A0AF */   sw        $zero, 0x10($sp)
    /* E7F0 8001DFF0 21200000 */  addu       $a0, $zero, $zero
    /* E7F4 8001DFF4 21280000 */  addu       $a1, $zero, $zero
    /* E7F8 8001DFF8 21300000 */  addu       $a2, $zero, $zero
    /* E7FC 8001DFFC CAD7020C */  jal        func_800B5F28
    /* E800 8001E000 F0000724 */   addiu     $a3, $zero, 0xF0
    /* E804 8001E004 801F013C */  lui        $at, (0x1F800198 >> 16)
    /* E808 8001E008 980120AC */  sw         $zero, (0x1F800198 & 0xFFFF)($at)
    /* E80C 8001E00C 21780008 */  j          .L8001E084
    /* E810 8001E010 00000000 */   nop
  .L8001E014:
    /* E814 8001E014 1800A427 */  addiu      $a0, $sp, 0x18
    /* E818 8001E018 21280000 */  addu       $a1, $zero, $zero
    /* E81C 8001E01C 21300000 */  addu       $a2, $zero, $zero
    /* E820 8001E020 21380000 */  addu       $a3, $zero, $zero
    /* E824 8001E024 FFFF1032 */  andi       $s0, $s0, 0xFFFF
    /* E828 8001E028 82101000 */  srl        $v0, $s0, 2
    /* E82C 8001E02C 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* E830 8001E030 E0010224 */  addiu      $v0, $zero, 0x1E0
    /* E834 8001E034 1800A0A7 */  sh         $zero, 0x18($sp)
    /* E838 8001E038 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* E83C 8001E03C AEB9020C */  jal        func_800AE6B8
    /* E840 8001E040 1E00A2A7 */   sh        $v0, 0x1E($sp)
    /* E844 8001E044 4DB9020C */  jal        func_800AE534
    /* E848 8001E048 21200000 */   addu      $a0, $zero, $zero
    /* E84C 8001E04C 21200002 */  addu       $a0, $s0, $zero
    /* E850 8001E050 E0010524 */  addiu      $a1, $zero, 0x1E0
    /* E854 8001E054 05000624 */  addiu      $a2, $zero, 0x5
    /* E858 8001E058 21380000 */  addu       $a3, $zero, $zero
    /* E85C 8001E05C B2D0020C */  jal        func_800B42C8
    /* E860 8001E060 1000A0AF */   sw        $zero, 0x10($sp)
    /* E864 8001E064 21200000 */  addu       $a0, $zero, $zero
    /* E868 8001E068 21280000 */  addu       $a1, $zero, $zero
    /* E86C 8001E06C 21300000 */  addu       $a2, $zero, $zero
    /* E870 8001E070 CAD7020C */  jal        func_800B5F28
    /* E874 8001E074 21380000 */   addu      $a3, $zero, $zero
    /* E878 8001E078 02000224 */  addiu      $v0, $zero, 0x2
    /* E87C 8001E07C 801F013C */  lui        $at, (0x1F800198 >> 16)
    /* E880 8001E080 980122AC */  sw         $v0, (0x1F800198 & 0xFFFF)($at)
  .L8001E084:
    /* E884 8001E084 801F033C */  lui        $v1, (0x1F800198 >> 16)
    /* E888 8001E088 9801638C */  lw         $v1, (0x1F800198 & 0xFFFF)($v1)
    /* E88C 8001E08C 02000224 */  addiu      $v0, $zero, 0x2
    /* E890 8001E090 09006214 */  bne        $v1, $v0, .L8001E0B8
    /* E894 8001E094 00000000 */   nop
    /* E898 8001E098 0100013C */  lui        $at, (0x10000 >> 16)
    /* E89C 8001E09C 21084102 */  addu       $at, $s2, $at
    /* E8A0 8001E0A0 1AAC2584 */  lh         $a1, -0x53E6($at)
    /* E8A4 8001E0A4 0100013C */  lui        $at, (0x10000 >> 16)
    /* E8A8 8001E0A8 21084102 */  addu       $at, $s2, $at
    /* E8AC 8001E0AC 18AC2484 */  lh         $a0, -0x53E8($at)
    /* E8B0 8001E0B0 34780008 */  j          .L8001E0D0
    /* E8B4 8001E0B4 40280500 */   sll       $a1, $a1, 1
  .L8001E0B8:
    /* E8B8 8001E0B8 0100013C */  lui        $at, (0x10000 >> 16)
    /* E8BC 8001E0BC 21084102 */  addu       $at, $s2, $at
    /* E8C0 8001E0C0 18AC2484 */  lh         $a0, -0x53E8($at)
    /* E8C4 8001E0C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* E8C8 8001E0C8 21084102 */  addu       $at, $s2, $at
    /* E8CC 8001E0CC 1AAC2584 */  lh         $a1, -0x53E6($at)
  .L8001E0D0:
    /* E8D0 8001E0D0 56D2020C */  jal        func_800B4958
    /* E8D4 8001E0D4 00000000 */   nop
    /* E8D8 8001E0D8 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* E8DC 8001E0DC 2800B28F */  lw         $s2, 0x28($sp)
    /* E8E0 8001E0E0 2400B18F */  lw         $s1, 0x24($sp)
    /* E8E4 8001E0E4 2000B08F */  lw         $s0, 0x20($sp)
    /* E8E8 8001E0E8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* E8EC 8001E0EC 0800E003 */  jr         $ra
    /* E8F0 8001E0F0 00000000 */   nop
endlabel func_8001DF74
