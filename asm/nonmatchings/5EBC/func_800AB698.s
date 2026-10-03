nonmatching func_800AB698, 0x4FC

glabel func_800AB698
    /* 9BE98 800AB698 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 9BE9C 800AB69C EA008297 */  lhu        $v0, %gp_rel(D_800E6B76)($gp)
    /* 9BEA0 800AB6A0 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 9BEA4 800AB6A4 3000BFAF */  sw         $ra, 0x30($sp)
    /* 9BEA8 800AB6A8 00FF4224 */  addiu      $v0, $v0, -0x100
    /* 9BEAC 800AB6AC F60082A7 */  sh         $v0, %gp_rel(D_800E6B82)($gp)
    /* 9BEB0 800AB6B0 1100822C */  sltiu      $v0, $a0, 0x11
    /* 9BEB4 800AB6B4 33014010 */  beqz       $v0, .L800ABB84
    /* 9BEB8 800AB6B8 00000000 */   nop
    /* 9BEBC 800AB6BC 80100400 */  sll        $v0, $a0, 2
    /* 9BEC0 800AB6C0 0180013C */  lui        $at, %hi(jtbl_80014B70)
    /* 9BEC4 800AB6C4 704B2124 */  addiu      $at, $at, %lo(jtbl_80014B70)
    /* 9BEC8 800AB6C8 21082200 */  addu       $at, $at, $v0
    /* 9BECC 800AB6CC 0000228C */  lw         $v0, 0x0($at)
    /* 9BED0 800AB6D0 00000000 */  nop
    /* 9BED4 800AB6D4 08004000 */  jr         $v0
    /* 9BED8 800AB6D8 00000000 */   nop
  jlabel .L800AB6DC
    /* 9BEDC 800AB6DC 4C018293 */  lbu        $v0, %gp_rel(D_800E6BD8)($gp)
    /* 9BEE0 800AB6E0 00000000 */  nop
    /* 9BEE4 800AB6E4 4D004014 */  bnez       $v0, .L800AB81C
    /* 9BEE8 800AB6E8 01000234 */   ori       $v0, $zero, 0x1
    /* 9BEEC 800AB6EC 4C0182A3 */  sb         $v0, %gp_rel(D_800E6BD8)($gp)
    /* 9BEF0 800AB6F0 12AB020C */  jal        func_800AAC48
    /* 9BEF4 800AB6F4 00000000 */   nop
    /* 9BEF8 800AB6F8 16000434 */  ori        $a0, $zero, 0x16
    /* 9BEFC 800AB6FC 21280000 */  addu       $a1, $zero, $zero
    /* 9BF00 800AB700 E9F7020C */  jal        func_800BDFA4
    /* 9BF04 800AB704 21300000 */   addu      $a2, $zero, $zero
    /* 9BF08 800AB708 0F80023C */  lui        $v0, %hi(D_800EF89E)
    /* 9BF0C 800AB70C 9EF84284 */  lh         $v0, %lo(D_800EF89E)($v0)
    /* 9BF10 800AB710 00000000 */  nop
    /* 9BF14 800AB714 C0100200 */  sll        $v0, $v0, 3
    /* 9BF18 800AB718 0D80013C */  lui        $at, %hi(D_800CE868)
    /* 9BF1C 800AB71C 68E82124 */  addiu      $at, $at, %lo(D_800CE868)
    /* 9BF20 800AB720 21082200 */  addu       $at, $at, $v0
    /* 9BF24 800AB724 00002484 */  lh         $a0, 0x0($at)
    /* 9BF28 800AB728 0D80013C */  lui        $at, %hi(D_800CE86A)
    /* 9BF2C 800AB72C 6AE82124 */  addiu      $at, $at, %lo(D_800CE86A)
    /* 9BF30 800AB730 21082200 */  addu       $at, $at, $v0
    /* 9BF34 800AB734 00002584 */  lh         $a1, 0x0($at)
    /* 9BF38 800AB738 AEF3020C */  jal        func_800BCEB8
    /* 9BF3C 800AB73C 00000000 */   nop
    /* 9BF40 800AB740 0F80023C */  lui        $v0, %hi(D_800EF89C)
    /* 9BF44 800AB744 9CF84284 */  lh         $v0, %lo(D_800EF89C)($v0)
    /* 9BF48 800AB748 00000000 */  nop
    /* 9BF4C 800AB74C C0100200 */  sll        $v0, $v0, 3
    /* 9BF50 800AB750 0D80013C */  lui        $at, %hi(D_800CE868)
    /* 9BF54 800AB754 68E82124 */  addiu      $at, $at, %lo(D_800CE868)
    /* 9BF58 800AB758 21082200 */  addu       $at, $at, $v0
    /* 9BF5C 800AB75C 00002484 */  lh         $a0, 0x0($at)
    /* 9BF60 800AB760 0D80013C */  lui        $at, %hi(D_800CE86A)
    /* 9BF64 800AB764 6AE82124 */  addiu      $at, $at, %lo(D_800CE86A)
    /* 9BF68 800AB768 21082200 */  addu       $at, $at, $v0
    /* 9BF6C 800AB76C 00002584 */  lh         $a1, 0x0($at)
    /* 9BF70 800AB770 AEF3020C */  jal        func_800BCEB8
    /* 9BF74 800AB774 00000000 */   nop
    /* 9BF78 800AB778 5F000634 */  ori        $a2, $zero, 0x5F
    /* 9BF7C 800AB77C 0D80043C */  lui        $a0, %hi(D_800CE868)
    /* 9BF80 800AB780 68E88484 */  lh         $a0, %lo(D_800CE868)($a0)
    /* 9BF84 800AB784 0D80053C */  lui        $a1, %hi(D_800CE86A)
    /* 9BF88 800AB788 6AE8A584 */  lh         $a1, %lo(D_800CE86A)($a1)
    /* 9BF8C 800AB78C BEF3020C */  jal        func_800BCEF8
    /* 9BF90 800AB790 5F000734 */   ori       $a3, $zero, 0x5F
    /* 9BF94 800AB794 EA008397 */  lhu        $v1, %gp_rel(D_800E6B76)($gp)
    /* 9BF98 800AB798 00000000 */  nop
    /* 9BF9C 800AB79C 0002622C */  sltiu      $v0, $v1, 0x200
    /* 9BFA0 800AB7A0 0E004010 */  beqz       $v0, .L800AB7DC
    /* 9BFA4 800AB7A4 00000000 */   nop
    /* 9BFA8 800AB7A8 18006010 */  beqz       $v1, .L800AB80C
    /* 9BFAC 800AB7AC 21200000 */   addu      $a0, $zero, $zero
    /* 9BFB0 800AB7B0 F6008297 */  lhu        $v0, %gp_rel(D_800E6B82)($gp)
    /* 9BFB4 800AB7B4 32000634 */  ori        $a2, $zero, 0x32
    /* 9BFB8 800AB7B8 40110200 */  sll        $v0, $v0, 5
    /* 9BFBC 800AB7BC 0D80013C */  lui        $at, %hi(D_800CE845)
    /* 9BFC0 800AB7C0 45E82124 */  addiu      $at, $at, %lo(D_800CE845)
    /* 9BFC4 800AB7C4 21082200 */  addu       $at, $at, $v0
    /* 9BFC8 800AB7C8 00002590 */  lbu        $a1, 0x0($at)
    /* 9BFCC 800AB7CC 10F4020C */  jal        func_800BD040
    /* 9BFD0 800AB7D0 32000734 */   ori       $a3, $zero, 0x32
    /* 9BFD4 800AB7D4 03AE0208 */  j          .L800AB80C
    /* 9BFD8 800AB7D8 00000000 */   nop
  .L800AB7DC:
    /* 9BFDC 800AB7DC C0008397 */  lhu        $v1, %gp_rel(D_800E6B4C)($gp)
    /* 9BFE0 800AB7E0 00000000 */  nop
    /* 9BFE4 800AB7E4 FDFF6224 */  addiu      $v0, $v1, -0x3
    /* 9BFE8 800AB7E8 0200422C */  sltiu      $v0, $v0, 0x2
    /* 9BFEC 800AB7EC 07004010 */  beqz       $v0, .L800AB80C
    /* 9BFF0 800AB7F0 00140300 */   sll       $v0, $v1, 16
    /* 9BFF4 800AB7F4 03140200 */  sra        $v0, $v0, 16
    /* 9BFF8 800AB7F8 03000334 */  ori        $v1, $zero, 0x3
    /* 9BFFC 800AB7FC 02004314 */  bne        $v0, $v1, .L800AB808
    /* 9C000 800AB800 44000234 */   ori       $v0, $zero, 0x44
    /* 9C004 800AB804 3C000234 */  ori        $v0, $zero, 0x3C
  .L800AB808:
    /* 9C008 800AB808 C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
  .L800AB80C:
    /* 9C00C 800AB80C 88AD020C */  jal        func_800AB620
    /* 9C010 800AB810 13050434 */   ori       $a0, $zero, 0x513
    /* 9C014 800AB814 E1AE0208 */  j          .L800ABB84
    /* 9C018 800AB818 00000000 */   nop
  .L800AB81C:
    /* 9C01C 800AB81C 0E80043C */  lui        $a0, %hi(D_800E6AA0)
    /* 9C020 800AB820 A06A8484 */  lh         $a0, %lo(D_800E6AA0)($a0)
    /* 9C024 800AB824 E8A5020C */  jal        func_800A97A0
    /* 9C028 800AB828 00000000 */   nop
    /* 9C02C 800AB82C 0D80043C */  lui        $a0, %hi(D_800CE868)
    /* 9C030 800AB830 68E88484 */  lh         $a0, %lo(D_800CE868)($a0)
    /* 9C034 800AB834 0D80053C */  lui        $a1, %hi(D_800CE86A)
    /* 9C038 800AB838 6AE8A584 */  lh         $a1, %lo(D_800CE86A)($a1)
    /* 9C03C 800AB83C AEF3020C */  jal        func_800BCEB8
    /* 9C040 800AB840 00000000 */   nop
    /* 9C044 800AB844 0F80023C */  lui        $v0, %hi(D_800EF89E)
    /* 9C048 800AB848 9EF84284 */  lh         $v0, %lo(D_800EF89E)($v0)
    /* 9C04C 800AB84C 00000000 */  nop
    /* 9C050 800AB850 C0100200 */  sll        $v0, $v0, 3
    /* 9C054 800AB854 0D80013C */  lui        $at, %hi(D_800CE868)
    /* 9C058 800AB858 68E82124 */  addiu      $at, $at, %lo(D_800CE868)
    /* 9C05C 800AB85C 21082200 */  addu       $at, $at, $v0
    /* 9C060 800AB860 00002484 */  lh         $a0, 0x0($at)
    /* 9C064 800AB864 0D80013C */  lui        $at, %hi(D_800CE86A)
    /* 9C068 800AB868 6AE82124 */  addiu      $at, $at, %lo(D_800CE86A)
    /* 9C06C 800AB86C 21082200 */  addu       $at, $at, $v0
    /* 9C070 800AB870 00002584 */  lh         $a1, 0x0($at)
    /* 9C074 800AB874 0D80013C */  lui        $at, %hi(D_800CE86C)
    /* 9C078 800AB878 6CE82124 */  addiu      $at, $at, %lo(D_800CE86C)
    /* 9C07C 800AB87C 21082200 */  addu       $at, $at, $v0
    /* 9C080 800AB880 00002690 */  lbu        $a2, 0x0($at)
    /* 9C084 800AB884 0D80013C */  lui        $at, %hi(D_800CE86C + 0x1)
    /* 9C088 800AB888 6DE82124 */  addiu      $at, $at, %lo(D_800CE86C + 0x1)
    /* 9C08C 800AB88C 21082200 */  addu       $at, $at, $v0
    /* 9C090 800AB890 00002790 */  lbu        $a3, 0x0($at)
    /* 9C094 800AB894 BEF3020C */  jal        func_800BCEF8
    /* 9C098 800AB898 00000000 */   nop
    /* 9C09C 800AB89C EA008397 */  lhu        $v1, %gp_rel(D_800E6B76)($gp)
    /* 9C0A0 800AB8A0 00000000 */  nop
    /* 9C0A4 800AB8A4 0002622C */  sltiu      $v0, $v1, 0x200
    /* 9C0A8 800AB8A8 16004010 */  beqz       $v0, .L800AB904
    /* 9C0AC 800AB8AC 00000000 */   nop
    /* 9C0B0 800AB8B0 2D006010 */  beqz       $v1, .L800AB968
    /* 9C0B4 800AB8B4 00000000 */   nop
    /* 9C0B8 800AB8B8 F6008297 */  lhu        $v0, %gp_rel(D_800E6B82)($gp)
    /* 9C0BC 800AB8BC 00000000 */  nop
    /* 9C0C0 800AB8C0 40110200 */  sll        $v0, $v0, 5
    /* 9C0C4 800AB8C4 0D80013C */  lui        $at, %hi(D_800CE845)
    /* 9C0C8 800AB8C8 45E82124 */  addiu      $at, $at, %lo(D_800CE845)
    /* 9C0CC 800AB8CC 21082200 */  addu       $at, $at, $v0
    /* 9C0D0 800AB8D0 00002590 */  lbu        $a1, 0x0($at)
    /* 9C0D4 800AB8D4 0D80013C */  lui        $at, %hi(D_800CE846)
    /* 9C0D8 800AB8D8 46E82124 */  addiu      $at, $at, %lo(D_800CE846)
    /* 9C0DC 800AB8DC 21082200 */  addu       $at, $at, $v0
    /* 9C0E0 800AB8E0 00002690 */  lbu        $a2, 0x0($at)
    /* 9C0E4 800AB8E4 0D80013C */  lui        $at, %hi(D_800CE846 + 0x1)
    /* 9C0E8 800AB8E8 47E82124 */  addiu      $at, $at, %lo(D_800CE846 + 0x1)
    /* 9C0EC 800AB8EC 21082200 */  addu       $at, $at, $v0
    /* 9C0F0 800AB8F0 00002790 */  lbu        $a3, 0x0($at)
    /* 9C0F4 800AB8F4 10F4020C */  jal        func_800BD040
    /* 9C0F8 800AB8F8 21200000 */   addu      $a0, $zero, $zero
    /* 9C0FC 800AB8FC 5AAE0208 */  j          .L800AB968
    /* 9C100 800AB900 00000000 */   nop
  .L800AB904:
    /* 9C104 800AB904 C0008297 */  lhu        $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9C108 800AB908 00000000 */  nop
    /* 9C10C 800AB90C C4FF4224 */  addiu      $v0, $v0, -0x3C
    /* 9C110 800AB910 0200422C */  sltiu      $v0, $v0, 0x2
    /* 9C114 800AB914 05004010 */  beqz       $v0, .L800AB92C
    /* 9C118 800AB918 00000000 */   nop
    /* 9C11C 800AB91C E5A4020C */  jal        func_800A9394
    /* 9C120 800AB920 01000434 */   ori       $a0, $zero, 0x1
    /* 9C124 800AB924 3E000234 */  ori        $v0, $zero, 0x3E
    /* 9C128 800AB928 C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
  .L800AB92C:
    /* 9C12C 800AB92C C0008387 */  lh         $v1, %gp_rel(D_800E6B4C)($gp)
    /* 9C130 800AB930 44000234 */  ori        $v0, $zero, 0x44
    /* 9C134 800AB934 03006210 */  beq        $v1, $v0, .L800AB944
    /* 9C138 800AB938 47000234 */   ori       $v0, $zero, 0x47
    /* 9C13C 800AB93C 0A006214 */  bne        $v1, $v0, .L800AB968
    /* 9C140 800AB940 00000000 */   nop
  .L800AB944:
    /* 9C144 800AB944 E2008287 */  lh         $v0, %gp_rel(D_800E6B6E)($gp)
    /* 9C148 800AB948 00000000 */  nop
    /* 9C14C 800AB94C 02004010 */  beqz       $v0, .L800AB958
    /* 9C150 800AB950 FFFF0424 */   addiu     $a0, $zero, -0x1
    /* 9C154 800AB954 EA008497 */  lhu        $a0, %gp_rel(D_800E6B76)($gp)
  .L800AB958:
    /* 9C158 800AB958 83A4020C */  jal        func_800A920C
    /* 9C15C 800AB95C 00000000 */   nop
    /* 9C160 800AB960 46000234 */  ori        $v0, $zero, 0x46
    /* 9C164 800AB964 C00082A7 */  sh         $v0, %gp_rel(D_800E6B4C)($gp)
  .L800AB968:
    /* 9C168 800AB968 4C0180A3 */  sb         $zero, %gp_rel(D_800E6BD8)($gp)
    /* 9C16C 800AB96C 1DB0020C */  jal        func_800AC074
    /* 9C170 800AB970 00000000 */   nop
    /* 9C174 800AB974 E1AE0208 */  j          .L800ABB84
    /* 9C178 800AB978 00000000 */   nop
  jlabel .L800AB97C
    /* 9C17C 800AB97C 01000234 */  ori        $v0, $zero, 0x1
    /* 9C180 800AB980 890082A3 */  sb         $v0, %gp_rel(D_800E6B15)($gp)
    /* 9C184 800AB984 E1AE0208 */  j          .L800ABB84
    /* 9C188 800AB988 00000000 */   nop
  jlabel .L800AB98C
    /* 9C18C 800AB98C 01000234 */  ori        $v0, $zero, 0x1
    /* 9C190 800AB990 880082A3 */  sb         $v0, %gp_rel(D_800E6B14)($gp)
    /* 9C194 800AB994 890080A3 */  sb         $zero, %gp_rel(D_800E6B15)($gp)
    /* 9C198 800AB998 4A0180A7 */  sh         $zero, %gp_rel(D_800E6BD6)($gp)
    /* 9C19C 800AB99C DE02030C */  jal        func_800C0B78
    /* 9C1A0 800AB9A0 00000000 */   nop
    /* 9C1A4 800AB9A4 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9C1A8 800AB9A8 50000234 */  ori        $v0, $zero, 0x50
    /* 9C1AC 800AB9AC 2800A2A3 */  sb         $v0, 0x28($sp)
    /* 9C1B0 800AB9B0 2900A2A3 */  sb         $v0, 0x29($sp)
    /* 9C1B4 800AB9B4 2A00A2A3 */  sb         $v0, 0x2A($sp)
    /* 9C1B8 800AB9B8 FCDC020C */  jal        func_800B73F0
    /* 9C1BC 800AB9BC 2B00A2A3 */   sb        $v0, 0x2B($sp)
    /* 9C1C0 800AB9C0 E1AE0208 */  j          .L800ABB84
    /* 9C1C4 800AB9C4 00000000 */   nop
  jlabel .L800AB9C8
    /* 9C1C8 800AB9C8 04000234 */  ori        $v0, $zero, 0x4
    /* 9C1CC 800AB9CC 880080A3 */  sb         $zero, %gp_rel(D_800E6B14)($gp)
    /* 9C1D0 800AB9D0 890080A3 */  sb         $zero, %gp_rel(D_800E6B15)($gp)
    /* 9C1D4 800AB9D4 4A0182A7 */  sh         $v0, %gp_rel(D_800E6BD6)($gp)
    /* 9C1D8 800AB9D8 E202030C */  jal        func_800C0B88
    /* 9C1DC 800AB9DC 00000000 */   nop
    /* 9C1E0 800AB9E0 2800A427 */  addiu      $a0, $sp, 0x28
    /* 9C1E4 800AB9E4 7F000234 */  ori        $v0, $zero, 0x7F
    /* 9C1E8 800AB9E8 2800A2A3 */  sb         $v0, 0x28($sp)
    /* 9C1EC 800AB9EC 2900A0A3 */  sb         $zero, 0x29($sp)
    /* 9C1F0 800AB9F0 2A00A2A3 */  sb         $v0, 0x2A($sp)
    /* 9C1F4 800AB9F4 FCDC020C */  jal        func_800B73F0
    /* 9C1F8 800AB9F8 2B00A0A3 */   sb        $zero, 0x2B($sp)
    /* 9C1FC 800AB9FC E1AE0208 */  j          .L800ABB84
    /* 9C200 800ABA00 00000000 */   nop
  jlabel .L800ABA04
    /* 9C204 800ABA04 C0008297 */  lhu        $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9C208 800ABA08 00000000 */  nop
    /* 9C20C 800ABA0C FDFF4224 */  addiu      $v0, $v0, -0x3
    /* 9C210 800ABA10 0200422C */  sltiu      $v0, $v0, 0x2
    /* 9C214 800ABA14 5B004010 */  beqz       $v0, .L800ABB84
    /* 9C218 800ABA18 00000000 */   nop
    /* 9C21C 800ABA1C 01000234 */  ori        $v0, $zero, 0x1
    /* 9C220 800ABA20 8A0082A7 */  sh         $v0, %gp_rel(D_800E6B16)($gp)
    /* 9C224 800ABA24 E1AE0208 */  j          .L800ABB84
    /* 9C228 800ABA28 00000000 */   nop
  jlabel .L800ABA2C
    /* 9C22C 800ABA2C C0008297 */  lhu        $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9C230 800ABA30 00000000 */  nop
    /* 9C234 800ABA34 FDFF4224 */  addiu      $v0, $v0, -0x3
    /* 9C238 800ABA38 0200422C */  sltiu      $v0, $v0, 0x2
    /* 9C23C 800ABA3C 51004010 */  beqz       $v0, .L800ABB84
    /* 9C240 800ABA40 00000000 */   nop
    /* 9C244 800ABA44 02000234 */  ori        $v0, $zero, 0x2
    /* 9C248 800ABA48 8A0082A7 */  sh         $v0, %gp_rel(D_800E6B16)($gp)
    /* 9C24C 800ABA4C E1AE0208 */  j          .L800ABB84
    /* 9C250 800ABA50 00000000 */   nop
  jlabel .L800ABA54
    /* 9C254 800ABA54 C0008297 */  lhu        $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9C258 800ABA58 00000000 */  nop
    /* 9C25C 800ABA5C FDFF4224 */  addiu      $v0, $v0, -0x3
    /* 9C260 800ABA60 0200422C */  sltiu      $v0, $v0, 0x2
    /* 9C264 800ABA64 47004010 */  beqz       $v0, .L800ABB84
    /* 9C268 800ABA68 00000000 */   nop
    /* 9C26C 800ABA6C 03000234 */  ori        $v0, $zero, 0x3
    /* 9C270 800ABA70 8A0082A7 */  sh         $v0, %gp_rel(D_800E6B16)($gp)
    /* 9C274 800ABA74 E1AE0208 */  j          .L800ABB84
    /* 9C278 800ABA78 00000000 */   nop
  jlabel .L800ABA7C
    /* 9C27C 800ABA7C C0008297 */  lhu        $v0, %gp_rel(D_800E6B4C)($gp)
    /* 9C280 800ABA80 00000000 */  nop
    /* 9C284 800ABA84 FDFF4224 */  addiu      $v0, $v0, -0x3
    /* 9C288 800ABA88 0200422C */  sltiu      $v0, $v0, 0x2
    /* 9C28C 800ABA8C 3D004010 */  beqz       $v0, .L800ABB84
    /* 9C290 800ABA90 00000000 */   nop
    /* 9C294 800ABA94 08000234 */  ori        $v0, $zero, 0x8
    /* 9C298 800ABA98 8A0082A7 */  sh         $v0, %gp_rel(D_800E6B16)($gp)
    /* 9C29C 800ABA9C E1AE0208 */  j          .L800ABB84
    /* 9C2A0 800ABAA0 00000000 */   nop
  jlabel .L800ABAA4
    /* 9C2A4 800ABAA4 E5AE020C */  jal        func_800ABB94
    /* 9C2A8 800ABAA8 00000000 */   nop
    /* 9C2AC 800ABAAC E1AE0208 */  j          .L800ABB84
    /* 9C2B0 800ABAB0 00000000 */   nop
  jlabel .L800ABAB4
    /* 9C2B4 800ABAB4 0E80013C */  lui        $at, %hi(D_800E6B84)
    /* 9C2B8 800ABAB8 846B20A4 */  sh         $zero, %lo(D_800E6B84)($at)
    /* 9C2BC 800ABABC 12AB020C */  jal        func_800AAC48
    /* 9C2C0 800ABAC0 00000000 */   nop
    /* 9C2C4 800ABAC4 CAF4020C */  jal        func_800BD328
    /* 9C2C8 800ABAC8 21200000 */   addu      $a0, $zero, $zero
  jlabel .L800ABACC
    /* 9C2CC 800ABACC E5AE020C */  jal        func_800ABB94
    /* 9C2D0 800ABAD0 00000000 */   nop
    /* 9C2D4 800ABAD4 EA0080A7 */  sh         $zero, %gp_rel(D_800E6B76)($gp)
    /* 9C2D8 800ABAD8 24AB020C */  jal        func_800AAC90
    /* 9C2DC 800ABADC 00000000 */   nop
    /* 9C2E0 800ABAE0 4C0180A3 */  sb         $zero, %gp_rel(D_800E6BD8)($gp)
    /* 9C2E4 800ABAE4 3C0080A3 */  sb         $zero, %gp_rel(D_800E6AC8)($gp)
    /* 9C2E8 800ABAE8 E1AE0208 */  j          .L800ABB84
    /* 9C2EC 800ABAEC 00000000 */   nop
  jlabel .L800ABAF0
    /* 9C2F0 800ABAF0 24AB020C */  jal        func_800AAC90
    /* 9C2F4 800ABAF4 00000000 */   nop
    /* 9C2F8 800ABAF8 12AB020C */  jal        func_800AAC48
    /* 9C2FC 800ABAFC 00000000 */   nop
    /* 9C300 800ABB00 4C0180A3 */  sb         $zero, %gp_rel(D_800E6BD8)($gp)
    /* 9C304 800ABB04 EA0080A7 */  sh         $zero, %gp_rel(D_800E6B76)($gp)
    /* 9C308 800ABB08 E1AE0208 */  j          .L800ABB84
    /* 9C30C 800ABB0C 00000000 */   nop
  jlabel .L800ABB10
    /* 9C310 800ABB10 01000234 */  ori        $v0, $zero, 0x1
    /* 9C314 800ABB14 E80082A3 */  sb         $v0, %gp_rel(D_800E6B74)($gp)
    /* 9C318 800ABB18 E1AE0208 */  j          .L800ABB84
    /* 9C31C 800ABB1C 00000000 */   nop
  jlabel .L800ABB20
    /* 9C320 800ABB20 E80080A3 */  sb         $zero, %gp_rel(D_800E6B74)($gp)
    /* 9C324 800ABB24 E1AE0208 */  j          .L800ABB84
    /* 9C328 800ABB28 00000000 */   nop
  jlabel .L800ABB2C
    /* 9C32C 800ABB2C B60F030C */  jal        func_800C3ED8
    /* 9C330 800ABB30 21200000 */   addu      $a0, $zero, $zero
    /* 9C334 800ABB34 12AB020C */  jal        func_800AAC48
    /* 9C338 800ABB38 00000000 */   nop
  jlabel .L800ABB3C
    /* 9C33C 800ABB3C 1F000334 */  ori        $v1, $zero, 0x1F
    /* 9C340 800ABB40 0D80023C */  lui        $v0, %hi(D_800CE7F6)
    /* 9C344 800ABB44 F6E74224 */  addiu      $v0, $v0, %lo(D_800CE7F6)
  .L800ABB48:
    /* 9C348 800ABB48 000040A4 */  sh         $zero, 0x0($v0)
    /* 9C34C 800ABB4C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 9C350 800ABB50 FDFF6104 */  bgez       $v1, .L800ABB48
    /* 9C354 800ABB54 FEFF4224 */   addiu     $v0, $v0, -0x2
    /* 9C358 800ABB58 0E80023C */  lui        $v0, %hi(D_800E6BCC)
    /* 9C35C 800ABB5C CC6B428C */  lw         $v0, %lo(D_800E6BCC)($v0)
    /* 9C360 800ABB60 0E80013C */  lui        $at, %hi(D_800E6A98)
    /* 9C364 800ABB64 986A20A4 */  sh         $zero, %lo(D_800E6A98)($at)
    /* 9C368 800ABB68 0E80013C */  lui        $at, %hi(D_800E6A9A)
    /* 9C36C 800ABB6C 9A6A20A4 */  sh         $zero, %lo(D_800E6A9A)($at)
    /* 9C370 800ABB70 D0074228 */  slti       $v0, $v0, 0x7D0
    /* 9C374 800ABB74 03004010 */  beqz       $v0, .L800ABB84
    /* 9C378 800ABB78 00000000 */   nop
    /* 9C37C 800ABB7C 0E80013C */  lui        $at, %hi(D_800E6B84)
    /* 9C380 800ABB80 846B20A4 */  sh         $zero, %lo(D_800E6B84)($at)
  jlabel .L800ABB84
    /* 9C384 800ABB84 3000BF8F */  lw         $ra, 0x30($sp)
    /* 9C388 800ABB88 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 9C38C 800ABB8C 0800E003 */  jr         $ra
    /* 9C390 800ABB90 00000000 */   nop
endlabel func_800AB698
