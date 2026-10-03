nonmatching func_800B0594, 0x260

glabel func_800B0594
    /* A0D94 800B0594 0D80023C */  lui        $v0, %hi(D_800CEBA8)
    /* A0D98 800B0598 A8EB428C */  lw         $v0, %lo(D_800CEBA8)($v0)
    /* A0D9C 800B059C E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* A0DA0 800B05A0 1800BFAF */  sw         $ra, 0x18($sp)
    /* A0DA4 800B05A4 1400B1AF */  sw         $s1, 0x14($sp)
    /* A0DA8 800B05A8 1000B0AF */  sw         $s0, 0x10($sp)
    /* A0DAC 800B05AC 0000428C */  lw         $v0, 0x0($v0)
    /* A0DB0 800B05B0 0001103C */  lui        $s0, (0x1000000 >> 16)
    /* A0DB4 800B05B4 24105000 */  and        $v0, $v0, $s0
    /* A0DB8 800B05B8 89004014 */  bnez       $v0, .L800B07E0
    /* A0DBC 800B05BC 01000224 */   addiu     $v0, $zero, 0x1
    /* A0DC0 800B05C0 2DEA020C */  jal        func_800BA8B4
    /* A0DC4 800B05C4 21200000 */   addu      $a0, $zero, $zero
    /* A0DC8 800B05C8 0D80043C */  lui        $a0, %hi(D_800CEBBC)
    /* A0DCC 800B05CC BCEB848C */  lw         $a0, %lo(D_800CEBBC)($a0)
    /* A0DD0 800B05D0 0D80033C */  lui        $v1, %hi(D_800CEBC0)
    /* A0DD4 800B05D4 C0EB638C */  lw         $v1, %lo(D_800CEBC0)($v1)
    /* A0DD8 800B05D8 0D80013C */  lui        $at, %hi(D_800CEBC8)
    /* A0DDC 800B05DC 59008310 */  beq        $a0, $v1, .L800B0744
    /* A0DE0 800B05E0 C8EB22AC */   sw        $v0, %lo(D_800CEBC8)($at)
    /* A0DE4 800B05E4 0D80023C */  lui        $v0, %hi(D_800CEBA8)
    /* A0DE8 800B05E8 A8EB428C */  lw         $v0, %lo(D_800CEBA8)($v0)
    /* A0DEC 800B05EC 00000000 */  nop
    /* A0DF0 800B05F0 0000428C */  lw         $v0, 0x0($v0)
    /* A0DF4 800B05F4 00000000 */  nop
    /* A0DF8 800B05F8 24105000 */  and        $v0, $v0, $s0
    /* A0DFC 800B05FC 51004014 */  bnez       $v0, .L800B0744
    /* A0E00 800B0600 00000000 */   nop
    /* A0E04 800B0604 0004113C */  lui        $s1, (0x4000000 >> 16)
    /* A0E08 800B0608 0001103C */  lui        $s0, (0x1000000 >> 16)
  .L800B060C:
    /* A0E0C 800B060C 0D80023C */  lui        $v0, %hi(D_800CEBC0)
    /* A0E10 800B0610 C0EB428C */  lw         $v0, %lo(D_800CEBC0)($v0)
    /* A0E14 800B0614 0D80033C */  lui        $v1, %hi(D_800CEBBC)
    /* A0E18 800B0618 BCEB638C */  lw         $v1, %lo(D_800CEBBC)($v1)
    /* A0E1C 800B061C 01004224 */  addiu      $v0, $v0, 0x1
    /* A0E20 800B0620 3F004230 */  andi       $v0, $v0, 0x3F
    /* A0E24 800B0624 08004314 */  bne        $v0, $v1, .L800B0648
    /* A0E28 800B0628 00000000 */   nop
    /* A0E2C 800B062C 0D80023C */  lui        $v0, %hi(D_800CEAD0)
    /* A0E30 800B0630 D0EA428C */  lw         $v0, %lo(D_800CEAD0)($v0)
    /* A0E34 800B0634 00000000 */  nop
    /* A0E38 800B0638 03004014 */  bnez       $v0, .L800B0648
    /* A0E3C 800B063C 02000424 */   addiu     $a0, $zero, 0x2
    /* A0E40 800B0640 E6E9020C */  jal        func_800BA798
    /* A0E44 800B0644 21280000 */   addu      $a1, $zero, $zero
  .L800B0648:
    /* A0E48 800B0648 0D80033C */  lui        $v1, %hi(D_800CEB9C)
    /* A0E4C 800B064C 9CEB638C */  lw         $v1, %lo(D_800CEB9C)($v1)
    /* A0E50 800B0650 00000000 */  nop
    /* A0E54 800B0654 0000628C */  lw         $v0, 0x0($v1)
    /* A0E58 800B0658 00000000 */  nop
    /* A0E5C 800B065C 24105100 */  and        $v0, $v0, $s1
    /* A0E60 800B0660 06004014 */  bnez       $v0, .L800B067C
    /* A0E64 800B0664 0004043C */   lui       $a0, (0x4000000 >> 16)
  .L800B0668:
    /* A0E68 800B0668 0000628C */  lw         $v0, 0x0($v1)
    /* A0E6C 800B066C 00000000 */  nop
    /* A0E70 800B0670 24104400 */  and        $v0, $v0, $a0
    /* A0E74 800B0674 FCFF4010 */  beqz       $v0, .L800B0668
    /* A0E78 800B0678 00000000 */   nop
  .L800B067C:
    /* A0E7C 800B067C 0D80053C */  lui        $a1, %hi(D_800CEBC0)
    /* A0E80 800B0680 C0EBA58C */  lw         $a1, %lo(D_800CEBC0)($a1)
    /* A0E84 800B0684 0D80033C */  lui        $v1, %hi(D_800CEBC0)
    /* A0E88 800B0688 C0EB638C */  lw         $v1, %lo(D_800CEBC0)($v1)
    /* A0E8C 800B068C 00000000 */  nop
    /* A0E90 800B0690 40100300 */  sll        $v0, $v1, 1
    /* A0E94 800B0694 21104300 */  addu       $v0, $v0, $v1
    /* A0E98 800B0698 40110200 */  sll        $v0, $v0, 5
    /* A0E9C 800B069C 40180500 */  sll        $v1, $a1, 1
    /* A0EA0 800B06A0 21186500 */  addu       $v1, $v1, $a1
    /* A0EA4 800B06A4 1180043C */  lui        $a0, %hi(D_8010A9BC)
    /* A0EA8 800B06A8 21208200 */  addu       $a0, $a0, $v0
    /* A0EAC 800B06AC BCA9848C */  lw         $a0, %lo(D_8010A9BC)($a0)
    /* A0EB0 800B06B0 0D80053C */  lui        $a1, %hi(D_800CEBC0)
    /* A0EB4 800B06B4 C0EBA58C */  lw         $a1, %lo(D_800CEBC0)($a1)
    /* A0EB8 800B06B8 40190300 */  sll        $v1, $v1, 5
    /* A0EBC 800B06BC 40100500 */  sll        $v0, $a1, 1
    /* A0EC0 800B06C0 21104500 */  addu       $v0, $v0, $a1
    /* A0EC4 800B06C4 40110200 */  sll        $v0, $v0, 5
    /* A0EC8 800B06C8 1180053C */  lui        $a1, %hi(D_8010A9C0)
    /* A0ECC 800B06CC 2128A200 */  addu       $a1, $a1, $v0
    /* A0ED0 800B06D0 C0A9A58C */  lw         $a1, %lo(D_8010A9C0)($a1)
    /* A0ED4 800B06D4 1180023C */  lui        $v0, %hi(D_8010A9B8)
    /* A0ED8 800B06D8 21104300 */  addu       $v0, $v0, $v1
    /* A0EDC 800B06DC B8A9428C */  lw         $v0, %lo(D_8010A9B8)($v0)
    /* A0EE0 800B06E0 00000000 */  nop
    /* A0EE4 800B06E4 09F84000 */  jalr       $v0
    /* A0EE8 800B06E8 00000000 */   nop
    /* A0EEC 800B06EC 0D80023C */  lui        $v0, %hi(D_800CEBC0)
    /* A0EF0 800B06F0 C0EB428C */  lw         $v0, %lo(D_800CEBC0)($v0)
    /* A0EF4 800B06F4 00000000 */  nop
    /* A0EF8 800B06F8 01004224 */  addiu      $v0, $v0, 0x1
    /* A0EFC 800B06FC 3F004230 */  andi       $v0, $v0, 0x3F
    /* A0F00 800B0700 0D80013C */  lui        $at, %hi(D_800CEBC0)
    /* A0F04 800B0704 C0EB22AC */  sw         $v0, %lo(D_800CEBC0)($at)
    /* A0F08 800B0708 0D80033C */  lui        $v1, %hi(D_800CEBBC)
    /* A0F0C 800B070C BCEB638C */  lw         $v1, %lo(D_800CEBBC)($v1)
    /* A0F10 800B0710 0D80023C */  lui        $v0, %hi(D_800CEBC0)
    /* A0F14 800B0714 C0EB428C */  lw         $v0, %lo(D_800CEBC0)($v0)
    /* A0F18 800B0718 00000000 */  nop
    /* A0F1C 800B071C 09006210 */  beq        $v1, $v0, .L800B0744
    /* A0F20 800B0720 00000000 */   nop
    /* A0F24 800B0724 0D80023C */  lui        $v0, %hi(D_800CEBA8)
    /* A0F28 800B0728 A8EB428C */  lw         $v0, %lo(D_800CEBA8)($v0)
    /* A0F2C 800B072C 00000000 */  nop
    /* A0F30 800B0730 0000428C */  lw         $v0, 0x0($v0)
    /* A0F34 800B0734 00000000 */  nop
    /* A0F38 800B0738 24105000 */  and        $v0, $v0, $s0
    /* A0F3C 800B073C B3FF4010 */  beqz       $v0, .L800B060C
    /* A0F40 800B0740 00000000 */   nop
  .L800B0744:
    /* A0F44 800B0744 0D80043C */  lui        $a0, %hi(D_800CEBC8)
    /* A0F48 800B0748 C8EB848C */  lw         $a0, %lo(D_800CEBC8)($a0)
    /* A0F4C 800B074C 2DEA020C */  jal        func_800BA8B4
    /* A0F50 800B0750 00000000 */   nop
    /* A0F54 800B0754 0D80033C */  lui        $v1, %hi(D_800CEBBC)
    /* A0F58 800B0758 BCEB638C */  lw         $v1, %lo(D_800CEBBC)($v1)
    /* A0F5C 800B075C 0D80023C */  lui        $v0, %hi(D_800CEBC0)
    /* A0F60 800B0760 C0EB428C */  lw         $v0, %lo(D_800CEBC0)($v0)
    /* A0F64 800B0764 00000000 */  nop
    /* A0F68 800B0768 16006214 */  bne        $v1, $v0, .L800B07C4
    /* A0F6C 800B076C 00000000 */   nop
    /* A0F70 800B0770 0D80023C */  lui        $v0, %hi(D_800CEBA8)
    /* A0F74 800B0774 A8EB428C */  lw         $v0, %lo(D_800CEBA8)($v0)
    /* A0F78 800B0778 00000000 */  nop
    /* A0F7C 800B077C 0000428C */  lw         $v0, 0x0($v0)
    /* A0F80 800B0780 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* A0F84 800B0784 24104300 */  and        $v0, $v0, $v1
    /* A0F88 800B0788 0E004014 */  bnez       $v0, .L800B07C4
    /* A0F8C 800B078C 00000000 */   nop
    /* A0F90 800B0790 0D80033C */  lui        $v1, %hi(D_800CEACC)
    /* A0F94 800B0794 CCEA6324 */  addiu      $v1, $v1, %lo(D_800CEACC)
    /* A0F98 800B0798 0000628C */  lw         $v0, 0x0($v1)
    /* A0F9C 800B079C 00000000 */  nop
    /* A0FA0 800B07A0 08004010 */  beqz       $v0, .L800B07C4
    /* A0FA4 800B07A4 00000000 */   nop
    /* A0FA8 800B07A8 0400648C */  lw         $a0, 0x4($v1)
    /* A0FAC 800B07AC 00000000 */  nop
    /* A0FB0 800B07B0 04008010 */  beqz       $a0, .L800B07C4
    /* A0FB4 800B07B4 F8FF6224 */   addiu     $v0, $v1, -0x8
    /* A0FB8 800B07B8 080040AC */  sw         $zero, 0x8($v0)
    /* A0FBC 800B07BC 09F88000 */  jalr       $a0
    /* A0FC0 800B07C0 00000000 */   nop
  .L800B07C4:
    /* A0FC4 800B07C4 0D80023C */  lui        $v0, %hi(D_800CEBBC)
    /* A0FC8 800B07C8 BCEB428C */  lw         $v0, %lo(D_800CEBBC)($v0)
    /* A0FCC 800B07CC 0D80033C */  lui        $v1, %hi(D_800CEBC0)
    /* A0FD0 800B07D0 C0EB638C */  lw         $v1, %lo(D_800CEBC0)($v1)
    /* A0FD4 800B07D4 00000000 */  nop
    /* A0FD8 800B07D8 23104300 */  subu       $v0, $v0, $v1
    /* A0FDC 800B07DC 3F004230 */  andi       $v0, $v0, 0x3F
  .L800B07E0:
    /* A0FE0 800B07E0 1800BF8F */  lw         $ra, 0x18($sp)
    /* A0FE4 800B07E4 1400B18F */  lw         $s1, 0x14($sp)
    /* A0FE8 800B07E8 1000B08F */  lw         $s0, 0x10($sp)
    /* A0FEC 800B07EC 0800E003 */  jr         $ra
    /* A0FF0 800B07F0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800B0594
