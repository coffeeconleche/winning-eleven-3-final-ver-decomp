nonmatching func_801BF478, 0x6AC

glabel func_801BF478
    /* 36500 801BF478 88FFBD27 */  addiu      $sp, $sp, -0x78
    /* 36504 801BF47C 21200000 */  addu       $a0, $zero, $zero
    /* 36508 801BF480 A6FF0524 */  addiu      $a1, $zero, -0x5A
    /* 3650C 801BF484 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* 36510 801BF488 12000724 */  addiu      $a3, $zero, 0x12
    /* 36514 801BF48C 62010224 */  addiu      $v0, $zero, 0x162
    /* 36518 801BF490 5000B0AF */  sw         $s0, 0x50($sp)
    /* 3651C 801BF494 20001024 */  addiu      $s0, $zero, 0x20
    /* 36520 801BF498 1000A2AF */  sw         $v0, 0x10($sp)
    /* 36524 801BF49C 01000224 */  addiu      $v0, $zero, 0x1
    /* 36528 801BF4A0 7400BFAF */  sw         $ra, 0x74($sp)
    /* 3652C 801BF4A4 7000BEAF */  sw         $fp, 0x70($sp)
    /* 36530 801BF4A8 6C00B7AF */  sw         $s7, 0x6C($sp)
    /* 36534 801BF4AC 6800B6AF */  sw         $s6, 0x68($sp)
    /* 36538 801BF4B0 6400B5AF */  sw         $s5, 0x64($sp)
    /* 3653C 801BF4B4 6000B4AF */  sw         $s4, 0x60($sp)
    /* 36540 801BF4B8 5C00B3AF */  sw         $s3, 0x5C($sp)
    /* 36544 801BF4BC 5800B2AF */  sw         $s2, 0x58($sp)
    /* 36548 801BF4C0 5400B1AF */  sw         $s1, 0x54($sp)
    /* 3654C 801BF4C4 1400A0AF */  sw         $zero, 0x14($sp)
    /* 36550 801BF4C8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 36554 801BF4CC 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 36558 801BF4D0 005A060C */  jal        func_80196800
    /* 3655C 801BF4D4 2000A2AF */   sw        $v0, 0x20($sp)
    /* 36560 801BF4D8 21200000 */  addu       $a0, $zero, $zero
    /* 36564 801BF4DC BCFF0534 */  ori        $a1, $zero, 0xFFBC
    /* 36568 801BF4E0 43FF0634 */  ori        $a2, $zero, 0xFF43
    /* 3656C 801BF4E4 F4000724 */  addiu      $a3, $zero, 0xF4
    /* 36570 801BF4E8 14000224 */  addiu      $v0, $zero, 0x14
    /* 36574 801BF4EC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 36578 801BF4F0 03000224 */  addiu      $v0, $zero, 0x3
    /* 3657C 801BF4F4 1400A0AF */  sw         $zero, 0x14($sp)
    /* 36580 801BF4F8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 36584 801BF4FC 1C00B0AF */  sw         $s0, 0x1C($sp)
    /* 36588 801BF500 005A060C */  jal        func_80196800
    /* 3658C 801BF504 2000A2AF */   sw        $v0, 0x20($sp)
    /* 36590 801BF508 10001724 */  addiu      $s7, $zero, 0x10
    /* 36594 801BF50C 18001624 */  addiu      $s6, $zero, 0x18
    /* 36598 801BF510 1D001524 */  addiu      $s5, $zero, 0x1D
    /* 3659C 801BF514 2800A0AF */  sw         $zero, 0x28($sp)
    /* 365A0 801BF518 4000A0AF */  sw         $zero, 0x40($sp)
    /* 365A4 801BF51C 4800A0AF */  sw         $zero, 0x48($sp)
  .L801BF520:
    /* 365A8 801BF520 0174000C */  jal        func_8001D004
    /* 365AC 801BF524 0B310424 */   addiu     $a0, $zero, 0x310B
    /* 365B0 801BF528 1E80033C */  lui        $v1, %hi(D_801DA2F0)
    /* 365B4 801BF52C F0A26390 */  lbu        $v1, %lo(D_801DA2F0)($v1)
    /* 365B8 801BF530 00000000 */  nop
    /* 365BC 801BF534 14006010 */  beqz       $v1, .L801BF588
    /* 365C0 801BF538 21204000 */   addu      $a0, $v0, $zero
    /* 365C4 801BF53C 1180023C */  lui        $v0, %hi(D_80108669)
    /* 365C8 801BF540 69864290 */  lbu        $v0, %lo(D_80108669)($v0)
    /* 365CC 801BF544 2800A88F */  lw         $t0, 0x28($sp)
    /* 365D0 801BF548 00000000 */  nop
    /* 365D4 801BF54C 10000215 */  bne        $t0, $v0, .L801BF590
    /* 365D8 801BF550 21F00000 */   addu      $fp, $zero, $zero
    /* 365DC 801BF554 801F023C */  lui        $v0, (0x1F800290 >> 16)
    /* 365E0 801BF558 9002428C */  lw         $v0, (0x1F800290 & 0xFFFF)($v0)
    /* 365E4 801BF55C 00000000 */  nop
    /* 365E8 801BF560 20004230 */  andi       $v0, $v0, 0x20
    /* 365EC 801BF564 04004010 */  beqz       $v0, .L801BF578
    /* 365F0 801BF568 95000224 */   addiu     $v0, $zero, 0x95
    /* 365F4 801BF56C 4800A88F */  lw         $t0, 0x48($sp)
    /* 365F8 801BF570 61FD0608 */  j          .L801BF584
    /* 365FC 801BF574 21180401 */   addu      $v1, $t0, $a0
  .L801BF578:
    /* 36600 801BF578 4800A88F */  lw         $t0, 0x48($sp)
    /* 36604 801BF57C 5B000224 */  addiu      $v0, $zero, 0x5B
    /* 36608 801BF580 21180401 */  addu       $v1, $t0, $a0
  .L801BF584:
    /* 3660C 801BF584 0A0062A0 */  sb         $v0, 0xA($v1)
  .L801BF588:
    /* 36610 801BF588 21F00000 */  addu       $fp, $zero, $zero
    /* 36614 801BF58C 2800A88F */  lw         $t0, 0x28($sp)
  .L801BF590:
    /* 36618 801BF590 91001424 */  addiu      $s4, $zero, 0x91
    /* 3661C 801BF594 00410800 */  sll        $t0, $t0, 4
    /* 36620 801BF598 3000A8AF */  sw         $t0, 0x30($sp)
    /* 36624 801BF59C 4000A88F */  lw         $t0, 0x40($sp)
    /* 36628 801BF5A0 03001324 */  addiu      $s3, $zero, 0x3
    /* 3662C 801BF5A4 3800A8AF */  sw         $t0, 0x38($sp)
    /* 36630 801BF5A8 00191E00 */  sll        $v1, $fp, 4
  .L801BF5AC:
    /* 36634 801BF5AC 80101E00 */  sll        $v0, $fp, 2
    /* 36638 801BF5B0 BDFF4224 */  addiu      $v0, $v0, -0x43
    /* 3663C 801BF5B4 2800A88F */  lw         $t0, 0x28($sp)
    /* 36640 801BF5B8 21886200 */  addu       $s1, $v1, $v0
    /* 36644 801BF5BC 80100800 */  sll        $v0, $t0, 2
    /* 36648 801BF5C0 3000A88F */  lw         $t0, 0x30($sp)
    /* 3664C 801BF5C4 64FF4224 */  addiu      $v0, $v0, -0x9C
    /* 36650 801BF5C8 21100201 */  addu       $v0, $t0, $v0
    /* 36654 801BF5CC 3800A88F */  lw         $t0, 0x38($sp)
    /* 36658 801BF5D0 1E80033C */  lui        $v1, %hi(D_801DA5D0)
    /* 3665C 801BF5D4 D0A56384 */  lh         $v1, %lo(D_801DA5D0)($v1)
    /* 36660 801BF5D8 21904800 */  addu       $s2, $v0, $t0
    /* 36664 801BF5DC 2800A88F */  lw         $t0, 0x28($sp)
    /* 36668 801BF5E0 21287E00 */  addu       $a1, $v1, $fp
    /* 3666C 801BF5E4 06010511 */  beq        $t0, $a1, .L801BFA00
    /* 36670 801BF5E8 00000000 */   nop
    /* 36674 801BF5EC 1180023C */  lui        $v0, %hi(D_80108667)
    /* 36678 801BF5F0 67864290 */  lbu        $v0, %lo(D_80108667)($v0)
    /* 3667C 801BF5F4 00000000 */  nop
    /* 36680 801BF5F8 82110200 */  srl        $v0, $v0, 6
    /* 36684 801BF5FC 01004230 */  andi       $v0, $v0, 0x1
    /* 36688 801BF600 E3004010 */  beqz       $v0, .L801BF990
    /* 3668C 801BF604 00000000 */   nop
    /* 36690 801BF608 3000A88F */  lw         $t0, 0x30($sp)
    /* 36694 801BF60C 1E80023C */  lui        $v0, %hi(D_801D8C70)
    /* 36698 801BF610 708C4224 */  addiu      $v0, $v0, %lo(D_801D8C70)
    /* 3669C 801BF614 21100201 */  addu       $v0, $t0, $v0
    /* 366A0 801BF618 21104500 */  addu       $v0, $v0, $a1
    /* 366A4 801BF61C 00004290 */  lbu        $v0, 0x0($v0)
    /* 366A8 801BF620 00000000 */  nop
    /* 366AC 801BF624 F0FF4324 */  addiu      $v1, $v0, -0x10
    /* 366B0 801BF628 2400622C */  sltiu      $v0, $v1, 0x24
    /* 366B4 801BF62C F4004010 */  beqz       $v0, .L801BFA00
    /* 366B8 801BF630 80100300 */   sll       $v0, $v1, 2
    /* 366BC 801BF634 1980013C */  lui        $at, %hi(jtbl_8018B874)
    /* 366C0 801BF638 21082200 */  addu       $at, $at, $v0
    /* 366C4 801BF63C 74B8228C */  lw         $v0, %lo(jtbl_8018B874)($at)
    /* 366C8 801BF640 00000000 */  nop
    /* 366CC 801BF644 08004000 */  jr         $v0
    /* 366D0 801BF648 00000000 */   nop
  jlabel .L801BF64C
    /* 366D4 801BF64C 21200000 */  addu       $a0, $zero, $zero
    /* 366D8 801BF650 21282002 */  addu       $a1, $s1, $zero
    /* 366DC 801BF654 21304002 */  addu       $a2, $s2, $zero
    /* 366E0 801BF658 08000724 */  addiu      $a3, $zero, 0x8
    /* 366E4 801BF65C D8000824 */  addiu      $t0, $zero, 0xD8
    /* 366E8 801BF660 1000B7AF */  sw         $s7, 0x10($sp)
    /* 366EC 801BF664 5DFE0608 */  j          .L801BF974
    /* 366F0 801BF668 1400A8AF */   sw        $t0, 0x14($sp)
  jlabel .L801BF66C
    /* 366F4 801BF66C 21200000 */  addu       $a0, $zero, $zero
    /* 366F8 801BF670 21282002 */  addu       $a1, $s1, $zero
    /* 366FC 801BF674 21304002 */  addu       $a2, $s2, $zero
    /* 36700 801BF678 08000724 */  addiu      $a3, $zero, 0x8
    /* 36704 801BF67C E0000824 */  addiu      $t0, $zero, 0xE0
    /* 36708 801BF680 1000B7AF */  sw         $s7, 0x10($sp)
    /* 3670C 801BF684 5DFE0608 */  j          .L801BF974
    /* 36710 801BF688 1400A8AF */   sw        $t0, 0x14($sp)
  jlabel .L801BF68C
    /* 36714 801BF68C 21200000 */  addu       $a0, $zero, $zero
    /* 36718 801BF690 21282002 */  addu       $a1, $s1, $zero
    /* 3671C 801BF694 21304002 */  addu       $a2, $s2, $zero
    /* 36720 801BF698 08000724 */  addiu      $a3, $zero, 0x8
    /* 36724 801BF69C E8000224 */  addiu      $v0, $zero, 0xE8
    /* 36728 801BF6A0 1000B7AF */  sw         $s7, 0x10($sp)
    /* 3672C 801BF6A4 5DFE0608 */  j          .L801BF974
    /* 36730 801BF6A8 1400A2AF */   sw        $v0, 0x14($sp)
  jlabel .L801BF6AC
    /* 36734 801BF6AC 21200000 */  addu       $a0, $zero, $zero
    /* 36738 801BF6B0 21282002 */  addu       $a1, $s1, $zero
    /* 3673C 801BF6B4 21304002 */  addu       $a2, $s2, $zero
    /* 36740 801BF6B8 08000724 */  addiu      $a3, $zero, 0x8
    /* 36744 801BF6BC D8000824 */  addiu      $t0, $zero, 0xD8
    /* 36748 801BF6C0 1000B7AF */  sw         $s7, 0x10($sp)
    /* 3674C 801BF6C4 1400A8AF */  sw         $t0, 0x14($sp)
    /* 36750 801BF6C8 1800B6AF */  sw         $s6, 0x18($sp)
    /* 36754 801BF6CC 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 36758 801BF6D0 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3675C 801BF6D4 DE58060C */  jal        func_80196378
    /* 36760 801BF6D8 2400B3AF */   sw        $s3, 0x24($sp)
    /* 36764 801BF6DC 21200000 */  addu       $a0, $zero, $zero
    /* 36768 801BF6E0 09002526 */  addiu      $a1, $s1, 0x9
    /* 3676C 801BF6E4 21304002 */  addu       $a2, $s2, $zero
    /* 36770 801BF6E8 08000724 */  addiu      $a3, $zero, 0x8
    /* 36774 801BF6EC D8000824 */  addiu      $t0, $zero, 0xD8
    /* 36778 801BF6F0 1000B7AF */  sw         $s7, 0x10($sp)
    /* 3677C 801BF6F4 5DFE0608 */  j          .L801BF974
    /* 36780 801BF6F8 1400A8AF */   sw        $t0, 0x14($sp)
  jlabel .L801BF6FC
    /* 36784 801BF6FC 21200000 */  addu       $a0, $zero, $zero
    /* 36788 801BF700 21282002 */  addu       $a1, $s1, $zero
    /* 3678C 801BF704 21304002 */  addu       $a2, $s2, $zero
    /* 36790 801BF708 08000724 */  addiu      $a3, $zero, 0x8
    /* 36794 801BF70C D8000824 */  addiu      $t0, $zero, 0xD8
    /* 36798 801BF710 1000B7AF */  sw         $s7, 0x10($sp)
    /* 3679C 801BF714 1400A8AF */  sw         $t0, 0x14($sp)
    /* 367A0 801BF718 1800B6AF */  sw         $s6, 0x18($sp)
    /* 367A4 801BF71C 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 367A8 801BF720 2000B4AF */  sw         $s4, 0x20($sp)
    /* 367AC 801BF724 DE58060C */  jal        func_80196378
    /* 367B0 801BF728 2400B3AF */   sw        $s3, 0x24($sp)
    /* 367B4 801BF72C 21200000 */  addu       $a0, $zero, $zero
    /* 367B8 801BF730 09002526 */  addiu      $a1, $s1, 0x9
    /* 367BC 801BF734 21304002 */  addu       $a2, $s2, $zero
    /* 367C0 801BF738 08000724 */  addiu      $a3, $zero, 0x8
    /* 367C4 801BF73C E0000824 */  addiu      $t0, $zero, 0xE0
    /* 367C8 801BF740 1000B7AF */  sw         $s7, 0x10($sp)
    /* 367CC 801BF744 5DFE0608 */  j          .L801BF974
    /* 367D0 801BF748 1400A8AF */   sw        $t0, 0x14($sp)
  jlabel .L801BF74C
    /* 367D4 801BF74C 21200000 */  addu       $a0, $zero, $zero
    /* 367D8 801BF750 21282002 */  addu       $a1, $s1, $zero
    /* 367DC 801BF754 21304002 */  addu       $a2, $s2, $zero
    /* 367E0 801BF758 08000724 */  addiu      $a3, $zero, 0x8
    /* 367E4 801BF75C D8000824 */  addiu      $t0, $zero, 0xD8
    /* 367E8 801BF760 1000B7AF */  sw         $s7, 0x10($sp)
    /* 367EC 801BF764 1400A8AF */  sw         $t0, 0x14($sp)
    /* 367F0 801BF768 1800B6AF */  sw         $s6, 0x18($sp)
    /* 367F4 801BF76C 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 367F8 801BF770 2000B4AF */  sw         $s4, 0x20($sp)
    /* 367FC 801BF774 DE58060C */  jal        func_80196378
    /* 36800 801BF778 2400B3AF */   sw        $s3, 0x24($sp)
    /* 36804 801BF77C 21200000 */  addu       $a0, $zero, $zero
    /* 36808 801BF780 09002526 */  addiu      $a1, $s1, 0x9
    /* 3680C 801BF784 21304002 */  addu       $a2, $s2, $zero
    /* 36810 801BF788 08000724 */  addiu      $a3, $zero, 0x8
    /* 36814 801BF78C E8000224 */  addiu      $v0, $zero, 0xE8
    /* 36818 801BF790 1000B7AF */  sw         $s7, 0x10($sp)
    /* 3681C 801BF794 5DFE0608 */  j          .L801BF974
    /* 36820 801BF798 1400A2AF */   sw        $v0, 0x14($sp)
  jlabel .L801BF79C
    /* 36824 801BF79C 21200000 */  addu       $a0, $zero, $zero
    /* 36828 801BF7A0 21282002 */  addu       $a1, $s1, $zero
    /* 3682C 801BF7A4 21304002 */  addu       $a2, $s2, $zero
    /* 36830 801BF7A8 08000724 */  addiu      $a3, $zero, 0x8
    /* 36834 801BF7AC E0000824 */  addiu      $t0, $zero, 0xE0
    /* 36838 801BF7B0 1000B7AF */  sw         $s7, 0x10($sp)
    /* 3683C 801BF7B4 1400A8AF */  sw         $t0, 0x14($sp)
    /* 36840 801BF7B8 1800B6AF */  sw         $s6, 0x18($sp)
    /* 36844 801BF7BC 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 36848 801BF7C0 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3684C 801BF7C4 DE58060C */  jal        func_80196378
    /* 36850 801BF7C8 2400B3AF */   sw        $s3, 0x24($sp)
    /* 36854 801BF7CC 21200000 */  addu       $a0, $zero, $zero
    /* 36858 801BF7D0 09002526 */  addiu      $a1, $s1, 0x9
    /* 3685C 801BF7D4 21304002 */  addu       $a2, $s2, $zero
    /* 36860 801BF7D8 08000724 */  addiu      $a3, $zero, 0x8
    /* 36864 801BF7DC D8000824 */  addiu      $t0, $zero, 0xD8
    /* 36868 801BF7E0 1000B7AF */  sw         $s7, 0x10($sp)
    /* 3686C 801BF7E4 5DFE0608 */  j          .L801BF974
    /* 36870 801BF7E8 1400A8AF */   sw        $t0, 0x14($sp)
  jlabel .L801BF7EC
    /* 36874 801BF7EC 21200000 */  addu       $a0, $zero, $zero
    /* 36878 801BF7F0 21282002 */  addu       $a1, $s1, $zero
    /* 3687C 801BF7F4 21304002 */  addu       $a2, $s2, $zero
    /* 36880 801BF7F8 08000724 */  addiu      $a3, $zero, 0x8
    /* 36884 801BF7FC E0000824 */  addiu      $t0, $zero, 0xE0
    /* 36888 801BF800 1000B7AF */  sw         $s7, 0x10($sp)
    /* 3688C 801BF804 1400A8AF */  sw         $t0, 0x14($sp)
    /* 36890 801BF808 1800B6AF */  sw         $s6, 0x18($sp)
    /* 36894 801BF80C 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 36898 801BF810 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3689C 801BF814 DE58060C */  jal        func_80196378
    /* 368A0 801BF818 2400B3AF */   sw        $s3, 0x24($sp)
    /* 368A4 801BF81C 21200000 */  addu       $a0, $zero, $zero
    /* 368A8 801BF820 09002526 */  addiu      $a1, $s1, 0x9
    /* 368AC 801BF824 21304002 */  addu       $a2, $s2, $zero
    /* 368B0 801BF828 08000724 */  addiu      $a3, $zero, 0x8
    /* 368B4 801BF82C E0000824 */  addiu      $t0, $zero, 0xE0
    /* 368B8 801BF830 1000B7AF */  sw         $s7, 0x10($sp)
    /* 368BC 801BF834 5DFE0608 */  j          .L801BF974
    /* 368C0 801BF838 1400A8AF */   sw        $t0, 0x14($sp)
  jlabel .L801BF83C
    /* 368C4 801BF83C 21200000 */  addu       $a0, $zero, $zero
    /* 368C8 801BF840 21282002 */  addu       $a1, $s1, $zero
    /* 368CC 801BF844 21304002 */  addu       $a2, $s2, $zero
    /* 368D0 801BF848 08000724 */  addiu      $a3, $zero, 0x8
    /* 368D4 801BF84C E0000824 */  addiu      $t0, $zero, 0xE0
    /* 368D8 801BF850 1000B7AF */  sw         $s7, 0x10($sp)
    /* 368DC 801BF854 1400A8AF */  sw         $t0, 0x14($sp)
    /* 368E0 801BF858 1800B6AF */  sw         $s6, 0x18($sp)
    /* 368E4 801BF85C 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 368E8 801BF860 2000B4AF */  sw         $s4, 0x20($sp)
    /* 368EC 801BF864 DE58060C */  jal        func_80196378
    /* 368F0 801BF868 2400B3AF */   sw        $s3, 0x24($sp)
    /* 368F4 801BF86C 21200000 */  addu       $a0, $zero, $zero
    /* 368F8 801BF870 09002526 */  addiu      $a1, $s1, 0x9
    /* 368FC 801BF874 21304002 */  addu       $a2, $s2, $zero
    /* 36900 801BF878 08000724 */  addiu      $a3, $zero, 0x8
    /* 36904 801BF87C E8000224 */  addiu      $v0, $zero, 0xE8
    /* 36908 801BF880 1000B7AF */  sw         $s7, 0x10($sp)
    /* 3690C 801BF884 5DFE0608 */  j          .L801BF974
    /* 36910 801BF888 1400A2AF */   sw        $v0, 0x14($sp)
  jlabel .L801BF88C
    /* 36914 801BF88C 21200000 */  addu       $a0, $zero, $zero
    /* 36918 801BF890 21282002 */  addu       $a1, $s1, $zero
    /* 3691C 801BF894 21304002 */  addu       $a2, $s2, $zero
    /* 36920 801BF898 08000724 */  addiu      $a3, $zero, 0x8
    /* 36924 801BF89C E8000224 */  addiu      $v0, $zero, 0xE8
    /* 36928 801BF8A0 1000B7AF */  sw         $s7, 0x10($sp)
    /* 3692C 801BF8A4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 36930 801BF8A8 1800B6AF */  sw         $s6, 0x18($sp)
    /* 36934 801BF8AC 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 36938 801BF8B0 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3693C 801BF8B4 DE58060C */  jal        func_80196378
    /* 36940 801BF8B8 2400B3AF */   sw        $s3, 0x24($sp)
    /* 36944 801BF8BC 21200000 */  addu       $a0, $zero, $zero
    /* 36948 801BF8C0 09002526 */  addiu      $a1, $s1, 0x9
    /* 3694C 801BF8C4 21304002 */  addu       $a2, $s2, $zero
    /* 36950 801BF8C8 08000724 */  addiu      $a3, $zero, 0x8
    /* 36954 801BF8CC D8000824 */  addiu      $t0, $zero, 0xD8
    /* 36958 801BF8D0 1000B7AF */  sw         $s7, 0x10($sp)
    /* 3695C 801BF8D4 5DFE0608 */  j          .L801BF974
    /* 36960 801BF8D8 1400A8AF */   sw        $t0, 0x14($sp)
  jlabel .L801BF8DC
    /* 36964 801BF8DC 21200000 */  addu       $a0, $zero, $zero
    /* 36968 801BF8E0 21282002 */  addu       $a1, $s1, $zero
    /* 3696C 801BF8E4 21304002 */  addu       $a2, $s2, $zero
    /* 36970 801BF8E8 08000724 */  addiu      $a3, $zero, 0x8
    /* 36974 801BF8EC E8000224 */  addiu      $v0, $zero, 0xE8
    /* 36978 801BF8F0 1000B7AF */  sw         $s7, 0x10($sp)
    /* 3697C 801BF8F4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 36980 801BF8F8 1800B6AF */  sw         $s6, 0x18($sp)
    /* 36984 801BF8FC 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 36988 801BF900 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3698C 801BF904 DE58060C */  jal        func_80196378
    /* 36990 801BF908 2400B3AF */   sw        $s3, 0x24($sp)
    /* 36994 801BF90C 21200000 */  addu       $a0, $zero, $zero
    /* 36998 801BF910 09002526 */  addiu      $a1, $s1, 0x9
    /* 3699C 801BF914 21304002 */  addu       $a2, $s2, $zero
    /* 369A0 801BF918 08000724 */  addiu      $a3, $zero, 0x8
    /* 369A4 801BF91C E0000824 */  addiu      $t0, $zero, 0xE0
    /* 369A8 801BF920 1000B7AF */  sw         $s7, 0x10($sp)
    /* 369AC 801BF924 5DFE0608 */  j          .L801BF974
    /* 369B0 801BF928 1400A8AF */   sw        $t0, 0x14($sp)
  jlabel .L801BF92C
    /* 369B4 801BF92C 21200000 */  addu       $a0, $zero, $zero
    /* 369B8 801BF930 21282002 */  addu       $a1, $s1, $zero
    /* 369BC 801BF934 21304002 */  addu       $a2, $s2, $zero
    /* 369C0 801BF938 08000724 */  addiu      $a3, $zero, 0x8
    /* 369C4 801BF93C E8001024 */  addiu      $s0, $zero, 0xE8
    /* 369C8 801BF940 1000B7AF */  sw         $s7, 0x10($sp)
    /* 369CC 801BF944 1400B0AF */  sw         $s0, 0x14($sp)
    /* 369D0 801BF948 1800B6AF */  sw         $s6, 0x18($sp)
    /* 369D4 801BF94C 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 369D8 801BF950 2000B4AF */  sw         $s4, 0x20($sp)
    /* 369DC 801BF954 DE58060C */  jal        func_80196378
    /* 369E0 801BF958 2400B3AF */   sw        $s3, 0x24($sp)
    /* 369E4 801BF95C 21200000 */  addu       $a0, $zero, $zero
    /* 369E8 801BF960 09002526 */  addiu      $a1, $s1, 0x9
    /* 369EC 801BF964 21304002 */  addu       $a2, $s2, $zero
    /* 369F0 801BF968 08000724 */  addiu      $a3, $zero, 0x8
    /* 369F4 801BF96C 1000B7AF */  sw         $s7, 0x10($sp)
    /* 369F8 801BF970 1400B0AF */  sw         $s0, 0x14($sp)
  .L801BF974:
    /* 369FC 801BF974 1800B6AF */  sw         $s6, 0x18($sp)
    /* 36A00 801BF978 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 36A04 801BF97C 2000B4AF */  sw         $s4, 0x20($sp)
    /* 36A08 801BF980 DE58060C */  jal        func_80196378
    /* 36A0C 801BF984 2400B3AF */   sw        $s3, 0x24($sp)
    /* 36A10 801BF988 81FE0608 */  j          .L801BFA04
    /* 36A14 801BF98C 0100DE27 */   addiu     $fp, $fp, 0x1
  .L801BF990:
    /* 36A18 801BF990 2800A48F */  lw         $a0, 0x28($sp)
    /* 36A1C 801BF994 DEA9060C */  jal        func_801AA778
    /* 36A20 801BF998 05003126 */   addiu     $s1, $s1, 0x5
    /* 36A24 801BF99C 21184000 */  addu       $v1, $v0, $zero
    /* 36A28 801BF9A0 02000224 */  addiu      $v0, $zero, 0x2
    /* 36A2C 801BF9A4 0E006210 */  beq        $v1, $v0, .L801BF9E0
    /* 36A30 801BF9A8 03006228 */   slti      $v0, $v1, 0x3
    /* 36A34 801BF9AC 05004010 */  beqz       $v0, .L801BF9C4
    /* 36A38 801BF9B0 01000224 */   addiu     $v0, $zero, 0x1
    /* 36A3C 801BF9B4 07006210 */  beq        $v1, $v0, .L801BF9D4
    /* 36A40 801BF9B8 21202002 */   addu      $a0, $s1, $zero
    /* 36A44 801BF9BC 81FE0608 */  j          .L801BFA04
    /* 36A48 801BF9C0 0100DE27 */   addiu     $fp, $fp, 0x1
  .L801BF9C4:
    /* 36A4C 801BF9C4 0A007310 */  beq        $v1, $s3, .L801BF9F0
    /* 36A50 801BF9C8 21202002 */   addu      $a0, $s1, $zero
    /* 36A54 801BF9CC 81FE0608 */  j          .L801BFA04
    /* 36A58 801BF9D0 0100DE27 */   addiu     $fp, $fp, 0x1
  .L801BF9D4:
    /* 36A5C 801BF9D4 21284002 */  addu       $a1, $s2, $zero
    /* 36A60 801BF9D8 7EFE0608 */  j          .L801BF9F8
    /* 36A64 801BF9DC 01000624 */   addiu     $a2, $zero, 0x1
  .L801BF9E0:
    /* 36A68 801BF9E0 21202002 */  addu       $a0, $s1, $zero
    /* 36A6C 801BF9E4 21284002 */  addu       $a1, $s2, $zero
    /* 36A70 801BF9E8 7EFE0608 */  j          .L801BF9F8
    /* 36A74 801BF9EC 02000624 */   addiu     $a2, $zero, 0x2
  .L801BF9F0:
    /* 36A78 801BF9F0 21284002 */  addu       $a1, $s2, $zero
    /* 36A7C 801BF9F4 03000624 */  addiu      $a2, $zero, 0x3
  .L801BF9F8:
    /* 36A80 801BF9F8 50A1060C */  jal        func_801A8540
    /* 36A84 801BF9FC 03000724 */   addiu     $a3, $zero, 0x3
  jlabel .L801BFA00
    /* 36A88 801BFA00 0100DE27 */  addiu      $fp, $fp, 0x1
  .L801BFA04:
    /* 36A8C 801BFA04 0C00C22B */  slti       $v0, $fp, 0xC
    /* 36A90 801BFA08 E8FE4014 */  bnez       $v0, .L801BF5AC
    /* 36A94 801BFA0C 00191E00 */   sll       $v1, $fp, 4
    /* 36A98 801BFA10 4000A88F */  lw         $t0, 0x40($sp)
    /* 36A9C 801BFA14 00000000 */  nop
    /* 36AA0 801BFA18 02000825 */  addiu      $t0, $t0, 0x2
    /* 36AA4 801BFA1C 4000A8AF */  sw         $t0, 0x40($sp)
    /* 36AA8 801BFA20 4800A88F */  lw         $t0, 0x48($sp)
    /* 36AAC 801BFA24 00000000 */  nop
    /* 36AB0 801BFA28 0C000825 */  addiu      $t0, $t0, 0xC
    /* 36AB4 801BFA2C 4800A8AF */  sw         $t0, 0x48($sp)
    /* 36AB8 801BFA30 2800A88F */  lw         $t0, 0x28($sp)
    /* 36ABC 801BFA34 00000000 */  nop
    /* 36AC0 801BFA38 01000825 */  addiu      $t0, $t0, 0x1
    /* 36AC4 801BFA3C 10000229 */  slti       $v0, $t0, 0x10
    /* 36AC8 801BFA40 B7FE4014 */  bnez       $v0, .L801BF520
    /* 36ACC 801BFA44 2800A8AF */   sw        $t0, 0x28($sp)
    /* 36AD0 801BFA48 0050043C */  lui        $a0, (0x50000000 >> 16)
    /* 36AD4 801BFA4C 55FF0524 */  addiu      $a1, $zero, -0xAB
    /* 36AD8 801BFA50 4E000724 */  addiu      $a3, $zero, 0x4E
    /* 36ADC 801BFA54 14001224 */  addiu      $s2, $zero, 0x14
    /* 36AE0 801BFA58 A0000224 */  addiu      $v0, $zero, 0xA0
    /* 36AE4 801BFA5C 30001024 */  addiu      $s0, $zero, 0x30
    /* 36AE8 801BFA60 1400A2AF */  sw         $v0, 0x14($sp)
    /* 36AEC 801BFA64 01000224 */  addiu      $v0, $zero, 0x1
    /* 36AF0 801BFA68 1E80113C */  lui        $s1, %hi(D_801DA5D2)
    /* 36AF4 801BFA6C D2A53126 */  addiu      $s1, $s1, %lo(D_801DA5D2)
    /* 36AF8 801BFA70 1000B2AF */  sw         $s2, 0x10($sp)
    /* 36AFC 801BFA74 1800B0AF */  sw         $s0, 0x18($sp)
    /* 36B00 801BFA78 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 36B04 801BFA7C 2000A2AF */  sw         $v0, 0x20($sp)
    /* 36B08 801BFA80 00002386 */  lh         $v1, 0x0($s1)
    /* 36B0C 801BFA84 04000224 */  addiu      $v0, $zero, 0x4
    /* 36B10 801BFA88 2400A2AF */  sw         $v0, 0x24($sp)
    /* 36B14 801BFA8C 40300300 */  sll        $a2, $v1, 1
    /* 36B18 801BFA90 2130C300 */  addu       $a2, $a2, $v1
    /* 36B1C 801BFA94 80300600 */  sll        $a2, $a2, 2
    /* 36B20 801BFA98 2330C300 */  subu       $a2, $a2, $v1
    /* 36B24 801BFA9C 40300600 */  sll        $a2, $a2, 1
    /* 36B28 801BFAA0 005A060C */  jal        func_80196800
    /* 36B2C 801BFAA4 60FFC624 */   addiu     $a2, $a2, -0xA0
    /* 36B30 801BFAA8 0060043C */  lui        $a0, (0x60000000 >> 16)
    /* 36B34 801BFAAC BBFF0524 */  addiu      $a1, $zero, -0x45
    /* 36B38 801BFAB0 F1000724 */  addiu      $a3, $zero, 0xF1
    /* 36B3C 801BFAB4 60000224 */  addiu      $v0, $zero, 0x60
    /* 36B40 801BFAB8 1000B2AF */  sw         $s2, 0x10($sp)
    /* 36B44 801BFABC 1400B0AF */  sw         $s0, 0x14($sp)
    /* 36B48 801BFAC0 1800B0AF */  sw         $s0, 0x18($sp)
    /* 36B4C 801BFAC4 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 36B50 801BFAC8 00002386 */  lh         $v1, 0x0($s1)
    /* 36B54 801BFACC 03000224 */  addiu      $v0, $zero, 0x3
    /* 36B58 801BFAD0 2000A2AF */  sw         $v0, 0x20($sp)
    /* 36B5C 801BFAD4 40300300 */  sll        $a2, $v1, 1
    /* 36B60 801BFAD8 2130C300 */  addu       $a2, $a2, $v1
    /* 36B64 801BFADC 80300600 */  sll        $a2, $a2, 2
    /* 36B68 801BFAE0 2330C300 */  subu       $a2, $a2, $v1
    /* 36B6C 801BFAE4 40300600 */  sll        $a2, $a2, 1
    /* 36B70 801BFAE8 005A060C */  jal        func_80196800
    /* 36B74 801BFAEC 60FFC624 */   addiu     $a2, $a2, -0xA0
    /* 36B78 801BFAF0 7400BF8F */  lw         $ra, 0x74($sp)
    /* 36B7C 801BFAF4 7000BE8F */  lw         $fp, 0x70($sp)
    /* 36B80 801BFAF8 6C00B78F */  lw         $s7, 0x6C($sp)
    /* 36B84 801BFAFC 6800B68F */  lw         $s6, 0x68($sp)
    /* 36B88 801BFB00 6400B58F */  lw         $s5, 0x64($sp)
    /* 36B8C 801BFB04 6000B48F */  lw         $s4, 0x60($sp)
    /* 36B90 801BFB08 5C00B38F */  lw         $s3, 0x5C($sp)
    /* 36B94 801BFB0C 5800B28F */  lw         $s2, 0x58($sp)
    /* 36B98 801BFB10 5400B18F */  lw         $s1, 0x54($sp)
    /* 36B9C 801BFB14 5000B08F */  lw         $s0, 0x50($sp)
    /* 36BA0 801BFB18 7800BD27 */  addiu      $sp, $sp, 0x78
    /* 36BA4 801BFB1C 0800E003 */  jr         $ra
    /* 36BA8 801BFB20 00000000 */   nop
endlabel func_801BF478
