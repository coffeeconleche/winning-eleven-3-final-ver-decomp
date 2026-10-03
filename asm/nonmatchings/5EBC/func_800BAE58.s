nonmatching func_800BAE58, 0xF0

glabel func_800BAE58
    /* AB658 800BAE58 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AB65C 800BAE5C 0D80043C */  lui        $a0, %hi(D_800D4E94)
    /* AB660 800BAE60 944E8424 */  addiu      $a0, $a0, %lo(D_800D4E94)
    /* AB664 800BAE64 0D80033C */  lui        $v1, %hi(D_800D4EB8)
    /* AB668 800BAE68 B84E638C */  lw         $v1, %lo(D_800D4EB8)($v1)
    /* AB66C 800BAE6C 07010224 */  addiu      $v0, $zero, 0x107
    /* AB670 800BAE70 1000BFAF */  sw         $ra, 0x10($sp)
    /* AB674 800BAE74 000062AC */  sw         $v0, 0x0($v1)
    /* AB678 800BAE78 0D80013C */  lui        $at, %hi(D_800D4EB4)
    /* AB67C 800BAE7C B44E20AC */  sw         $zero, %lo(D_800D4EB4)($at)
    /* AB680 800BAE80 D2EB020C */  jal        func_800BAF48
    /* AB684 800BAE84 08000524 */   addiu     $a1, $zero, 0x8
    /* AB688 800BAE88 0C80053C */  lui        $a1, %hi(D_800BAEB0)
    /* AB68C 800BAE8C B0AEA524 */  addiu      $a1, $a1, %lo(D_800BAEB0)
    /* AB690 800BAE90 DAE9020C */  jal        func_800BA768
    /* AB694 800BAE94 21200000 */   addu      $a0, $zero, $zero
    /* AB698 800BAE98 0C80023C */  lui        $v0, %hi(D_800BAF1C)
    /* AB69C 800BAE9C 1CAF4224 */  addiu      $v0, $v0, %lo(D_800BAF1C)
    /* AB6A0 800BAEA0 1000BF8F */  lw         $ra, 0x10($sp)
    /* AB6A4 800BAEA4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* AB6A8 800BAEA8 0800E003 */  jr         $ra
    /* AB6AC 800BAEAC 00000000 */   nop
  alabel D_800BAEB0
    /* AB6B0 800BAEB0 0D80023C */  lui        $v0, %hi(D_800D4EB4)
    /* AB6B4 800BAEB4 B44E428C */  lw         $v0, %lo(D_800D4EB4)($v0)
    /* AB6B8 800BAEB8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* AB6BC 800BAEBC 1400B1AF */  sw         $s1, 0x14($sp)
    /* AB6C0 800BAEC0 21880000 */  addu       $s1, $zero, $zero
    /* AB6C4 800BAEC4 1000B0AF */  sw         $s0, 0x10($sp)
    /* AB6C8 800BAEC8 0D80103C */  lui        $s0, %hi(D_800D4E94)
    /* AB6CC 800BAECC 944E1026 */  addiu      $s0, $s0, %lo(D_800D4E94)
    /* AB6D0 800BAED0 1800BFAF */  sw         $ra, 0x18($sp)
    /* AB6D4 800BAED4 01004224 */  addiu      $v0, $v0, 0x1
    /* AB6D8 800BAED8 0D80013C */  lui        $at, %hi(D_800D4EB4)
    /* AB6DC 800BAEDC B44E22AC */  sw         $v0, %lo(D_800D4EB4)($at)
  .L800BAEE0:
    /* AB6E0 800BAEE0 0000028E */  lw         $v0, 0x0($s0)
    /* AB6E4 800BAEE4 00000000 */  nop
    /* AB6E8 800BAEE8 03004010 */  beqz       $v0, .L800BAEF8
    /* AB6EC 800BAEEC 00000000 */   nop
    /* AB6F0 800BAEF0 09F84000 */  jalr       $v0
    /* AB6F4 800BAEF4 00000000 */   nop
  .L800BAEF8:
    /* AB6F8 800BAEF8 01003126 */  addiu      $s1, $s1, 0x1
    /* AB6FC 800BAEFC 0800222A */  slti       $v0, $s1, 0x8
    /* AB700 800BAF00 F7FF4014 */  bnez       $v0, .L800BAEE0
    /* AB704 800BAF04 04001026 */   addiu     $s0, $s0, 0x4
    /* AB708 800BAF08 1800BF8F */  lw         $ra, 0x18($sp)
    /* AB70C 800BAF0C 1400B18F */  lw         $s1, 0x14($sp)
    /* AB710 800BAF10 1000B08F */  lw         $s0, 0x10($sp)
    /* AB714 800BAF14 0800E003 */  jr         $ra
    /* AB718 800BAF18 2000BD27 */   addiu     $sp, $sp, 0x20
  alabel D_800BAF1C
    /* AB71C 800BAF1C 0D80023C */  lui        $v0, %hi(D_800D4E94)
    /* AB720 800BAF20 944E4224 */  addiu      $v0, $v0, %lo(D_800D4E94)
    /* AB724 800BAF24 80200400 */  sll        $a0, $a0, 2
    /* AB728 800BAF28 21208200 */  addu       $a0, $a0, $v0
    /* AB72C 800BAF2C 0000828C */  lw         $v0, 0x0($a0)
    /* AB730 800BAF30 00000000 */  nop
    /* AB734 800BAF34 0200A210 */  beq        $a1, $v0, .L800BAF40
    /* AB738 800BAF38 00000000 */   nop
    /* AB73C 800BAF3C 000085AC */  sw         $a1, 0x0($a0)
  .L800BAF40:
    /* AB740 800BAF40 0800E003 */  jr         $ra
    /* AB744 800BAF44 00000000 */   nop
endlabel func_800BAE58
