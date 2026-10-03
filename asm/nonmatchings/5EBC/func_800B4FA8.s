/* Handwritten function */
nonmatching func_800B4FA8, 0xA4

glabel func_800B4FA8
    /* A57A8 800B4FA8 0D800E3C */  lui        $t6, %hi(D_800D2D80)
    /* A57AC 800B4FAC 802DCE8D */  lw         $t6, %lo(D_800D2D80)($t6)
    /* A57B0 800B4FB0 00000000 */  nop
    /* A57B4 800B4FB4 8002C129 */  slti       $at, $t6, 0x280
    /* A57B8 800B4FB8 0B002014 */  bnez       $at, .L800B4FE8
    /* A57BC 800B4FBC 00000000 */   nop
    /* A57C0 800B4FC0 0D80013C */  lui        $at, %hi(D_800D2D74)
    /* A57C4 800B4FC4 742D3FAC */  sw         $ra, %lo(D_800D2D74)($at)
    /* A57C8 800B4FC8 0D80043C */  lui        $a0, %hi(D_800D3004)
    /* A57CC 800B4FCC A6B5020C */  jal        func_800AD698
    /* A57D0 800B4FD0 04308424 */   addiu     $a0, $a0, %lo(D_800D3004)
    /* A57D4 800B4FD4 0D801F3C */  lui        $ra, %hi(D_800D2D74)
    /* A57D8 800B4FD8 742DFF8F */  lw         $ra, %lo(D_800D2D74)($ra)
    /* A57DC 800B4FDC 00000000 */  nop
    /* A57E0 800B4FE0 0800E003 */  jr         $ra
    /* A57E4 800B4FE4 00000000 */   nop
  .L800B4FE8:
    /* A57E8 800B4FE8 0D800F3C */  lui        $t7, %hi(D_800D2D84)
    /* A57EC 800B4FEC 842DEF25 */  addiu      $t7, $t7, %lo(D_800D2D84)
    /* A57F0 800B4FF0 2178EE01 */  addu       $t7, $t7, $t6
    /* A57F4 800B4FF4 00004848 */  cfc2       $t0, $0 /* handwritten instruction */
    /* A57F8 800B4FF8 00084948 */  cfc2       $t1, $1 /* handwritten instruction */
    /* A57FC 800B4FFC 0000E8AD */  sw         $t0, 0x0($t7)
    /* A5800 800B5000 0400E9AD */  sw         $t1, 0x4($t7)
    /* A5804 800B5004 00104848 */  cfc2       $t0, $2 /* handwritten instruction */
    /* A5808 800B5008 00184948 */  cfc2       $t1, $3 /* handwritten instruction */
    /* A580C 800B500C 0800E8AD */  sw         $t0, 0x8($t7)
    /* A5810 800B5010 0C00E9AD */  sw         $t1, 0xC($t7)
    /* A5814 800B5014 00204848 */  cfc2       $t0, $4 /* handwritten instruction */
    /* A5818 800B5018 00000000 */  nop
    /* A581C 800B501C 1000E8AD */  sw         $t0, 0x10($t7)
    /* A5820 800B5020 00284848 */  cfc2       $t0, $5 /* handwritten instruction */
    /* A5824 800B5024 00304948 */  cfc2       $t1, $6 /* handwritten instruction */
    /* A5828 800B5028 00384A48 */  cfc2       $t2, $7 /* handwritten instruction */
    /* A582C 800B502C 1400E8AD */  sw         $t0, 0x14($t7)
    /* A5830 800B5030 1800E9AD */  sw         $t1, 0x18($t7)
    /* A5834 800B5034 1C00EAAD */  sw         $t2, 0x1C($t7)
    /* A5838 800B5038 2000CE21 */  addi       $t6, $t6, 0x20 /* handwritten instruction */
    /* A583C 800B503C 0D80013C */  lui        $at, %hi(D_800D2D80)
    /* A5840 800B5040 802D2EAC */  sw         $t6, %lo(D_800D2D80)($at)
    /* A5844 800B5044 0800E003 */  jr         $ra
    /* A5848 800B5048 00000000 */   nop
endlabel func_800B4FA8
