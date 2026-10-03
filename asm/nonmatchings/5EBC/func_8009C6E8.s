nonmatching func_8009C6E8, 0x89C

glabel func_8009C6E8
    /* 8CEE8 8009C6E8 801F023C */  lui        $v0, (0x1F8001FC >> 16)
    /* 8CEEC 8009C6EC FC01428C */  lw         $v0, (0x1F8001FC & 0xFFFF)($v0)
    /* 8CEF0 8009C6F0 801F033C */  lui        $v1, (0x1F8001F0 >> 16)
    /* 8CEF4 8009C6F4 F001638C */  lw         $v1, (0x1F8001F0 & 0xFFFF)($v1)
    /* 8CEF8 8009C6F8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 8CEFC 8009C6FC 2400B3AF */  sw         $s3, 0x24($sp)
    /* 8CF00 8009C700 801F133C */  lui        $s3, (0x1F8002E3 >> 16)
    /* 8CF04 8009C704 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 8CF08 8009C708 2800B4AF */  sw         $s4, 0x28($sp)
    /* 8CF0C 8009C70C 2000B2AF */  sw         $s2, 0x20($sp)
    /* 8CF10 8009C710 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 8CF14 8009C714 2A104300 */  slt        $v0, $v0, $v1
    /* 8CF18 8009C718 76004010 */  beqz       $v0, .L8009C8F4
    /* 8CF1C 8009C71C 1800B0AF */   sw        $s0, 0x18($sp)
    /* 8CF20 8009C720 21300000 */  addu       $a2, $zero, $zero
    /* 8CF24 8009C724 801F033C */  lui        $v1, (0x1F8002E3 >> 16)
    /* 8CF28 8009C728 E3026390 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($v1)
    /* 8CF2C 8009C72C 21380000 */  addu       $a3, $zero, $zero
    /* 8CF30 8009C730 40100300 */  sll        $v0, $v1, 1
    /* 8CF34 8009C734 21104300 */  addu       $v0, $v0, $v1
    /* 8CF38 8009C738 40100200 */  sll        $v0, $v0, 1
    /* 8CF3C 8009C73C 0D80013C */  lui        $at, %hi(D_800CB62C)
    /* 8CF40 8009C740 21082200 */  addu       $at, $at, $v0
    /* 8CF44 8009C744 2CB62484 */  lh         $a0, %lo(D_800CB62C)($at)
    /* 8CF48 8009C748 0D80013C */  lui        $at, %hi(D_800CB62E)
    /* 8CF4C 8009C74C 21082200 */  addu       $at, $at, $v0
    /* 8CF50 8009C750 2EB62584 */  lh         $a1, %lo(D_800CB62E)($at)
    /* 8CF54 8009C754 0D80103C */  lui        $s0, %hi(D_800CAA78)
    /* 8CF58 8009C758 78AA1026 */  addiu      $s0, $s0, %lo(D_800CAA78)
    /* 8CF5C 8009C75C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8CF60 8009C760 956E020C */  jal        func_8009BA54
    /* 8CF64 8009C764 1400A0AF */   sw        $zero, 0x14($sp)
    /* 8CF68 8009C768 801F033C */  lui        $v1, (0x1F8002E3 >> 16)
    /* 8CF6C 8009C76C E3026390 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($v1)
    /* 8CF70 8009C770 21300000 */  addu       $a2, $zero, $zero
    /* 8CF74 8009C774 40100300 */  sll        $v0, $v1, 1
    /* 8CF78 8009C778 21104300 */  addu       $v0, $v0, $v1
    /* 8CF7C 8009C77C 40100200 */  sll        $v0, $v0, 1
    /* 8CF80 8009C780 0D80013C */  lui        $at, %hi(D_800CB62C)
    /* 8CF84 8009C784 21082200 */  addu       $at, $at, $v0
    /* 8CF88 8009C788 2CB62484 */  lh         $a0, %lo(D_800CB62C)($at)
    /* 8CF8C 8009C78C 0D80013C */  lui        $at, %hi(D_800CB62E)
    /* 8CF90 8009C790 21082200 */  addu       $at, $at, $v0
    /* 8CF94 8009C794 2EB62584 */  lh         $a1, %lo(D_800CB62E)($at)
    /* 8CF98 8009C798 21380000 */  addu       $a3, $zero, $zero
    /* 8CF9C 8009C79C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8CFA0 8009C7A0 DF6F020C */  jal        func_8009BF7C
    /* 8CFA4 8009C7A4 1400A0AF */   sw        $zero, 0x14($sp)
    /* 8CFA8 8009C7A8 21380000 */  addu       $a3, $zero, $zero
    /* 8CFAC 8009C7AC 801F033C */  lui        $v1, (0x1F8002E3 >> 16)
    /* 8CFB0 8009C7B0 E3026390 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($v1)
    /* 8CFB4 8009C7B4 0D80103C */  lui        $s0, %hi(D_800CAA78 + 0x1)
    /* 8CFB8 8009C7B8 79AA1026 */  addiu      $s0, $s0, %lo(D_800CAA78 + 0x1)
    /* 8CFBC 8009C7BC 40100300 */  sll        $v0, $v1, 1
    /* 8CFC0 8009C7C0 21104300 */  addu       $v0, $v0, $v1
    /* 8CFC4 8009C7C4 40100200 */  sll        $v0, $v0, 1
    /* 8CFC8 8009C7C8 0D80013C */  lui        $at, %hi(D_800CB62C)
    /* 8CFCC 8009C7CC 21082200 */  addu       $at, $at, $v0
    /* 8CFD0 8009C7D0 2CB62484 */  lh         $a0, %lo(D_800CB62C)($at)
    /* 8CFD4 8009C7D4 0D80013C */  lui        $at, %hi(D_800CB62E)
    /* 8CFD8 8009C7D8 21082200 */  addu       $at, $at, $v0
    /* 8CFDC 8009C7DC 2EB62584 */  lh         $a1, %lo(D_800CB62E)($at)
    /* 8CFE0 8009C7E0 0D80013C */  lui        $at, %hi(D_800CB630)
    /* 8CFE4 8009C7E4 21082200 */  addu       $at, $at, $v0
    /* 8CFE8 8009C7E8 30B62684 */  lh         $a2, %lo(D_800CB630)($at)
    /* 8CFEC 8009C7EC 05000224 */  addiu      $v0, $zero, 0x5
    /* 8CFF0 8009C7F0 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8CFF4 8009C7F4 956E020C */  jal        func_8009BA54
    /* 8CFF8 8009C7F8 1400A2AF */   sw        $v0, 0x14($sp)
    /* 8CFFC 8009C7FC 801F033C */  lui        $v1, (0x1F8002E3 >> 16)
    /* 8D000 8009C800 E3026390 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($v1)
    /* 8D004 8009C804 21380000 */  addu       $a3, $zero, $zero
    /* 8D008 8009C808 40100300 */  sll        $v0, $v1, 1
    /* 8D00C 8009C80C 21104300 */  addu       $v0, $v0, $v1
    /* 8D010 8009C810 40100200 */  sll        $v0, $v0, 1
    /* 8D014 8009C814 0D80013C */  lui        $at, %hi(D_800CB62C)
    /* 8D018 8009C818 21082200 */  addu       $at, $at, $v0
    /* 8D01C 8009C81C 2CB62484 */  lh         $a0, %lo(D_800CB62C)($at)
    /* 8D020 8009C820 0D80013C */  lui        $at, %hi(D_800CB62E)
    /* 8D024 8009C824 21082200 */  addu       $at, $at, $v0
    /* 8D028 8009C828 2EB62584 */  lh         $a1, %lo(D_800CB62E)($at)
    /* 8D02C 8009C82C 0D80013C */  lui        $at, %hi(D_800CB630)
    /* 8D030 8009C830 21082200 */  addu       $at, $at, $v0
    /* 8D034 8009C834 30B62684 */  lh         $a2, %lo(D_800CB630)($at)
    /* 8D038 8009C838 08000224 */  addiu      $v0, $zero, 0x8
    /* 8D03C 8009C83C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8D040 8009C840 DF6F020C */  jal        func_8009BF7C
    /* 8D044 8009C844 1400A2AF */   sw        $v0, 0x14($sp)
    /* 8D048 8009C848 21380000 */  addu       $a3, $zero, $zero
    /* 8D04C 8009C84C 801F033C */  lui        $v1, (0x1F8002E3 >> 16)
    /* 8D050 8009C850 E3026390 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($v1)
    /* 8D054 8009C854 0D80103C */  lui        $s0, %hi(D_800CAA78 + 0x2)
    /* 8D058 8009C858 7AAA1026 */  addiu      $s0, $s0, %lo(D_800CAA78 + 0x2)
    /* 8D05C 8009C85C 40100300 */  sll        $v0, $v1, 1
    /* 8D060 8009C860 21104300 */  addu       $v0, $v0, $v1
    /* 8D064 8009C864 40100200 */  sll        $v0, $v0, 1
    /* 8D068 8009C868 0D80013C */  lui        $at, %hi(D_800CB62C)
    /* 8D06C 8009C86C 21082200 */  addu       $at, $at, $v0
    /* 8D070 8009C870 2CB62484 */  lh         $a0, %lo(D_800CB62C)($at)
    /* 8D074 8009C874 0D80013C */  lui        $at, %hi(D_800CB62E)
    /* 8D078 8009C878 21082200 */  addu       $at, $at, $v0
    /* 8D07C 8009C87C 2EB62584 */  lh         $a1, %lo(D_800CB62E)($at)
    /* 8D080 8009C880 0D80013C */  lui        $at, %hi(D_800CB630)
    /* 8D084 8009C884 21082200 */  addu       $at, $at, $v0
    /* 8D088 8009C888 30B62694 */  lhu        $a2, %lo(D_800CB630)($at)
    /* 8D08C 8009C88C 0A000224 */  addiu      $v0, $zero, 0xA
    /* 8D090 8009C890 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8D094 8009C894 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8D098 8009C898 23300600 */  negu       $a2, $a2
    /* 8D09C 8009C89C 00340600 */  sll        $a2, $a2, 16
    /* 8D0A0 8009C8A0 956E020C */  jal        func_8009BA54
    /* 8D0A4 8009C8A4 03340600 */   sra       $a2, $a2, 16
    /* 8D0A8 8009C8A8 801F033C */  lui        $v1, (0x1F8002E3 >> 16)
    /* 8D0AC 8009C8AC E3026390 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($v1)
    /* 8D0B0 8009C8B0 21380000 */  addu       $a3, $zero, $zero
    /* 8D0B4 8009C8B4 40100300 */  sll        $v0, $v1, 1
    /* 8D0B8 8009C8B8 21104300 */  addu       $v0, $v0, $v1
    /* 8D0BC 8009C8BC 40100200 */  sll        $v0, $v0, 1
    /* 8D0C0 8009C8C0 0D80013C */  lui        $at, %hi(D_800CB62C)
    /* 8D0C4 8009C8C4 21082200 */  addu       $at, $at, $v0
    /* 8D0C8 8009C8C8 2CB62484 */  lh         $a0, %lo(D_800CB62C)($at)
    /* 8D0CC 8009C8CC 0D80013C */  lui        $at, %hi(D_800CB62E)
    /* 8D0D0 8009C8D0 21082200 */  addu       $at, $at, $v0
    /* 8D0D4 8009C8D4 2EB62584 */  lh         $a1, %lo(D_800CB62E)($at)
    /* 8D0D8 8009C8D8 0D80013C */  lui        $at, %hi(D_800CB630)
    /* 8D0DC 8009C8DC 21082200 */  addu       $at, $at, $v0
    /* 8D0E0 8009C8E0 30B62694 */  lhu        $a2, %lo(D_800CB630)($at)
    /* 8D0E4 8009C8E4 10000224 */  addiu      $v0, $zero, 0x10
    /* 8D0E8 8009C8E8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8D0EC 8009C8EC C5720208 */  j          .L8009CB14
    /* 8D0F0 8009C8F0 1400A2AF */   sw        $v0, 0x14($sp)
  .L8009C8F4:
    /* 8D0F4 8009C8F4 21300000 */  addu       $a2, $zero, $zero
    /* 8D0F8 8009C8F8 01000724 */  addiu      $a3, $zero, 0x1
    /* 8D0FC 8009C8FC 801F033C */  lui        $v1, (0x1F8002E3 >> 16)
    /* 8D100 8009C900 E3026390 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($v1)
    /* 8D104 8009C904 0D80103C */  lui        $s0, %hi(D_800CAA78)
    /* 8D108 8009C908 78AA1026 */  addiu      $s0, $s0, %lo(D_800CAA78)
    /* 8D10C 8009C90C 40100300 */  sll        $v0, $v1, 1
    /* 8D110 8009C910 21104300 */  addu       $v0, $v0, $v1
    /* 8D114 8009C914 40100200 */  sll        $v0, $v0, 1
    /* 8D118 8009C918 0D80013C */  lui        $at, %hi(D_800CB62C)
    /* 8D11C 8009C91C 21082200 */  addu       $at, $at, $v0
    /* 8D120 8009C920 2CB62494 */  lhu        $a0, %lo(D_800CB62C)($at)
    /* 8D124 8009C924 0D80013C */  lui        $at, %hi(D_800CB62E)
    /* 8D128 8009C928 21082200 */  addu       $at, $at, $v0
    /* 8D12C 8009C92C 2EB62584 */  lh         $a1, %lo(D_800CB62E)($at)
    /* 8D130 8009C930 0F000224 */  addiu      $v0, $zero, 0xF
    /* 8D134 8009C934 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8D138 8009C938 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8D13C 8009C93C 23200400 */  negu       $a0, $a0
    /* 8D140 8009C940 00240400 */  sll        $a0, $a0, 16
    /* 8D144 8009C944 956E020C */  jal        func_8009BA54
    /* 8D148 8009C948 03240400 */   sra       $a0, $a0, 16
    /* 8D14C 8009C94C 21300000 */  addu       $a2, $zero, $zero
    /* 8D150 8009C950 801F033C */  lui        $v1, (0x1F8002E3 >> 16)
    /* 8D154 8009C954 E3026390 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($v1)
    /* 8D158 8009C958 01000724 */  addiu      $a3, $zero, 0x1
    /* 8D15C 8009C95C 40100300 */  sll        $v0, $v1, 1
    /* 8D160 8009C960 21104300 */  addu       $v0, $v0, $v1
    /* 8D164 8009C964 40100200 */  sll        $v0, $v0, 1
    /* 8D168 8009C968 0D80013C */  lui        $at, %hi(D_800CB62C)
    /* 8D16C 8009C96C 21082200 */  addu       $at, $at, $v0
    /* 8D170 8009C970 2CB62494 */  lhu        $a0, %lo(D_800CB62C)($at)
    /* 8D174 8009C974 0D80013C */  lui        $at, %hi(D_800CB62E)
    /* 8D178 8009C978 21082200 */  addu       $at, $at, $v0
    /* 8D17C 8009C97C 2EB62584 */  lh         $a1, %lo(D_800CB62E)($at)
    /* 8D180 8009C980 18000224 */  addiu      $v0, $zero, 0x18
    /* 8D184 8009C984 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8D188 8009C988 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8D18C 8009C98C 23200400 */  negu       $a0, $a0
    /* 8D190 8009C990 00240400 */  sll        $a0, $a0, 16
    /* 8D194 8009C994 DF6F020C */  jal        func_8009BF7C
    /* 8D198 8009C998 03240400 */   sra       $a0, $a0, 16
    /* 8D19C 8009C99C 01000724 */  addiu      $a3, $zero, 0x1
    /* 8D1A0 8009C9A0 801F033C */  lui        $v1, (0x1F8002E3 >> 16)
    /* 8D1A4 8009C9A4 E3026390 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($v1)
    /* 8D1A8 8009C9A8 0D80103C */  lui        $s0, %hi(D_800CAA78 + 0x1)
    /* 8D1AC 8009C9AC 79AA1026 */  addiu      $s0, $s0, %lo(D_800CAA78 + 0x1)
    /* 8D1B0 8009C9B0 40100300 */  sll        $v0, $v1, 1
    /* 8D1B4 8009C9B4 21104300 */  addu       $v0, $v0, $v1
    /* 8D1B8 8009C9B8 40100200 */  sll        $v0, $v0, 1
    /* 8D1BC 8009C9BC 0D80013C */  lui        $at, %hi(D_800CB62C)
    /* 8D1C0 8009C9C0 21082200 */  addu       $at, $at, $v0
    /* 8D1C4 8009C9C4 2CB62494 */  lhu        $a0, %lo(D_800CB62C)($at)
    /* 8D1C8 8009C9C8 0D80013C */  lui        $at, %hi(D_800CB62E)
    /* 8D1CC 8009C9CC 21082200 */  addu       $at, $at, $v0
    /* 8D1D0 8009C9D0 2EB62584 */  lh         $a1, %lo(D_800CB62E)($at)
    /* 8D1D4 8009C9D4 0D80013C */  lui        $at, %hi(D_800CB630)
    /* 8D1D8 8009C9D8 21082200 */  addu       $at, $at, $v0
    /* 8D1DC 8009C9DC 30B62684 */  lh         $a2, %lo(D_800CB630)($at)
    /* 8D1E0 8009C9E0 14000224 */  addiu      $v0, $zero, 0x14
    /* 8D1E4 8009C9E4 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8D1E8 8009C9E8 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8D1EC 8009C9EC 23200400 */  negu       $a0, $a0
    /* 8D1F0 8009C9F0 00240400 */  sll        $a0, $a0, 16
    /* 8D1F4 8009C9F4 956E020C */  jal        func_8009BA54
    /* 8D1F8 8009C9F8 03240400 */   sra       $a0, $a0, 16
    /* 8D1FC 8009C9FC 801F033C */  lui        $v1, (0x1F8002E3 >> 16)
    /* 8D200 8009CA00 E3026390 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($v1)
    /* 8D204 8009CA04 01000724 */  addiu      $a3, $zero, 0x1
    /* 8D208 8009CA08 40100300 */  sll        $v0, $v1, 1
    /* 8D20C 8009CA0C 21104300 */  addu       $v0, $v0, $v1
    /* 8D210 8009CA10 40100200 */  sll        $v0, $v0, 1
    /* 8D214 8009CA14 0D80013C */  lui        $at, %hi(D_800CB62C)
    /* 8D218 8009CA18 21082200 */  addu       $at, $at, $v0
    /* 8D21C 8009CA1C 2CB62494 */  lhu        $a0, %lo(D_800CB62C)($at)
    /* 8D220 8009CA20 0D80013C */  lui        $at, %hi(D_800CB62E)
    /* 8D224 8009CA24 21082200 */  addu       $at, $at, $v0
    /* 8D228 8009CA28 2EB62584 */  lh         $a1, %lo(D_800CB62E)($at)
    /* 8D22C 8009CA2C 0D80013C */  lui        $at, %hi(D_800CB630)
    /* 8D230 8009CA30 21082200 */  addu       $at, $at, $v0
    /* 8D234 8009CA34 30B62684 */  lh         $a2, %lo(D_800CB630)($at)
    /* 8D238 8009CA38 20000224 */  addiu      $v0, $zero, 0x20
    /* 8D23C 8009CA3C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8D240 8009CA40 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8D244 8009CA44 23200400 */  negu       $a0, $a0
    /* 8D248 8009CA48 00240400 */  sll        $a0, $a0, 16
    /* 8D24C 8009CA4C DF6F020C */  jal        func_8009BF7C
    /* 8D250 8009CA50 03240400 */   sra       $a0, $a0, 16
    /* 8D254 8009CA54 01000724 */  addiu      $a3, $zero, 0x1
    /* 8D258 8009CA58 801F033C */  lui        $v1, (0x1F8002E3 >> 16)
    /* 8D25C 8009CA5C E3026390 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($v1)
    /* 8D260 8009CA60 0D80103C */  lui        $s0, %hi(D_800CAA78 + 0x2)
    /* 8D264 8009CA64 7AAA1026 */  addiu      $s0, $s0, %lo(D_800CAA78 + 0x2)
    /* 8D268 8009CA68 40100300 */  sll        $v0, $v1, 1
    /* 8D26C 8009CA6C 21104300 */  addu       $v0, $v0, $v1
    /* 8D270 8009CA70 40100200 */  sll        $v0, $v0, 1
    /* 8D274 8009CA74 0D80013C */  lui        $at, %hi(D_800CB62C)
    /* 8D278 8009CA78 21082200 */  addu       $at, $at, $v0
    /* 8D27C 8009CA7C 2CB62494 */  lhu        $a0, %lo(D_800CB62C)($at)
    /* 8D280 8009CA80 0D80013C */  lui        $at, %hi(D_800CB62E)
    /* 8D284 8009CA84 21082200 */  addu       $at, $at, $v0
    /* 8D288 8009CA88 2EB62584 */  lh         $a1, %lo(D_800CB62E)($at)
    /* 8D28C 8009CA8C 0D80013C */  lui        $at, %hi(D_800CB630)
    /* 8D290 8009CA90 21082200 */  addu       $at, $at, $v0
    /* 8D294 8009CA94 30B62694 */  lhu        $a2, %lo(D_800CB630)($at)
    /* 8D298 8009CA98 19000224 */  addiu      $v0, $zero, 0x19
    /* 8D29C 8009CA9C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8D2A0 8009CAA0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8D2A4 8009CAA4 23200400 */  negu       $a0, $a0
    /* 8D2A8 8009CAA8 00240400 */  sll        $a0, $a0, 16
    /* 8D2AC 8009CAAC 03240400 */  sra        $a0, $a0, 16
    /* 8D2B0 8009CAB0 23300600 */  negu       $a2, $a2
    /* 8D2B4 8009CAB4 00340600 */  sll        $a2, $a2, 16
    /* 8D2B8 8009CAB8 956E020C */  jal        func_8009BA54
    /* 8D2BC 8009CABC 03340600 */   sra       $a2, $a2, 16
    /* 8D2C0 8009CAC0 801F033C */  lui        $v1, (0x1F8002E3 >> 16)
    /* 8D2C4 8009CAC4 E3026390 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($v1)
    /* 8D2C8 8009CAC8 01000724 */  addiu      $a3, $zero, 0x1
    /* 8D2CC 8009CACC 40100300 */  sll        $v0, $v1, 1
    /* 8D2D0 8009CAD0 21104300 */  addu       $v0, $v0, $v1
    /* 8D2D4 8009CAD4 40100200 */  sll        $v0, $v0, 1
    /* 8D2D8 8009CAD8 0D80013C */  lui        $at, %hi(D_800CB62C)
    /* 8D2DC 8009CADC 21082200 */  addu       $at, $at, $v0
    /* 8D2E0 8009CAE0 2CB62494 */  lhu        $a0, %lo(D_800CB62C)($at)
    /* 8D2E4 8009CAE4 0D80013C */  lui        $at, %hi(D_800CB62E)
    /* 8D2E8 8009CAE8 21082200 */  addu       $at, $at, $v0
    /* 8D2EC 8009CAEC 2EB62584 */  lh         $a1, %lo(D_800CB62E)($at)
    /* 8D2F0 8009CAF0 0D80013C */  lui        $at, %hi(D_800CB630)
    /* 8D2F4 8009CAF4 21082200 */  addu       $at, $at, $v0
    /* 8D2F8 8009CAF8 30B62694 */  lhu        $a2, %lo(D_800CB630)($at)
    /* 8D2FC 8009CAFC 28000224 */  addiu      $v0, $zero, 0x28
    /* 8D300 8009CB00 1000B0AF */  sw         $s0, 0x10($sp)
    /* 8D304 8009CB04 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8D308 8009CB08 23200400 */  negu       $a0, $a0
    /* 8D30C 8009CB0C 00240400 */  sll        $a0, $a0, 16
    /* 8D310 8009CB10 03240400 */  sra        $a0, $a0, 16
  .L8009CB14:
    /* 8D314 8009CB14 23300600 */  negu       $a2, $a2
    /* 8D318 8009CB18 00340600 */  sll        $a2, $a2, 16
    /* 8D31C 8009CB1C DF6F020C */  jal        func_8009BF7C
    /* 8D320 8009CB20 03340600 */   sra       $a2, $a2, 16
    /* 8D324 8009CB24 0D80023C */  lui        $v0, %hi(D_800CAA78)
    /* 8D328 8009CB28 78AA4290 */  lbu        $v0, %lo(D_800CAA78)($v0)
    /* 8D32C 8009CB2C 0D80033C */  lui        $v1, %hi(D_800CAA78 + 0x1)
    /* 8D330 8009CB30 79AA6390 */  lbu        $v1, %lo(D_800CAA78 + 0x1)($v1)
    /* 8D334 8009CB34 0D80043C */  lui        $a0, %hi(D_800CAA78 + 0x2)
    /* 8D338 8009CB38 7AAA8490 */  lbu        $a0, %lo(D_800CAA78 + 0x2)($a0)
    /* 8D33C 8009CB3C 01004224 */  addiu      $v0, $v0, 0x1
    /* 8D340 8009CB40 01006324 */  addiu      $v1, $v1, 0x1
    /* 8D344 8009CB44 01008424 */  addiu      $a0, $a0, 0x1
    /* 8D348 8009CB48 0D80013C */  lui        $at, %hi(D_800CAA78)
    /* 8D34C 8009CB4C 78AA22A0 */  sb         $v0, %lo(D_800CAA78)($at)
    /* 8D350 8009CB50 FF004230 */  andi       $v0, $v0, 0xFF
    /* 8D354 8009CB54 6D00422C */  sltiu      $v0, $v0, 0x6D
    /* 8D358 8009CB58 0D80013C */  lui        $at, %hi(D_800CAA78 + 0x1)
    /* 8D35C 8009CB5C 79AA23A0 */  sb         $v1, %lo(D_800CAA78 + 0x1)($at)
    /* 8D360 8009CB60 0D80013C */  lui        $at, %hi(D_800CAA78 + 0x2)
    /* 8D364 8009CB64 7AAA24A0 */  sb         $a0, %lo(D_800CAA78 + 0x2)($at)
    /* 8D368 8009CB68 03004014 */  bnez       $v0, .L8009CB78
    /* 8D36C 8009CB6C FF006230 */   andi      $v0, $v1, 0xFF
    /* 8D370 8009CB70 0D80013C */  lui        $at, %hi(D_800CAA78)
    /* 8D374 8009CB74 78AA20A0 */  sb         $zero, %lo(D_800CAA78)($at)
  .L8009CB78:
    /* 8D378 8009CB78 6D00422C */  sltiu      $v0, $v0, 0x6D
    /* 8D37C 8009CB7C 03004014 */  bnez       $v0, .L8009CB8C
    /* 8D380 8009CB80 FF008230 */   andi      $v0, $a0, 0xFF
    /* 8D384 8009CB84 0D80013C */  lui        $at, %hi(D_800CAA78 + 0x1)
    /* 8D388 8009CB88 79AA20A0 */  sb         $zero, %lo(D_800CAA78 + 0x1)($at)
  .L8009CB8C:
    /* 8D38C 8009CB8C 6D00422C */  sltiu      $v0, $v0, 0x6D
    /* 8D390 8009CB90 03004014 */  bnez       $v0, .L8009CBA0
    /* 8D394 8009CB94 00000000 */   nop
    /* 8D398 8009CB98 0D80013C */  lui        $at, %hi(D_800CAA78 + 0x2)
    /* 8D39C 8009CB9C 7AAA20A0 */  sb         $zero, %lo(D_800CAA78 + 0x2)($at)
  .L8009CBA0:
    /* 8D3A0 8009CBA0 0D80023C */  lui        $v0, %hi(D_800CAA7B)
    /* 8D3A4 8009CBA4 7BAA4290 */  lbu        $v0, %lo(D_800CAA7B)($v0)
    /* 8D3A8 8009CBA8 00000000 */  nop
    /* 8D3AC 8009CBAC 3900422C */  sltiu      $v0, $v0, 0x39
    /* 8D3B0 8009CBB0 03004014 */  bnez       $v0, .L8009CBC0
    /* 8D3B4 8009CBB4 01000224 */   addiu     $v0, $zero, 0x1
    /* 8D3B8 8009CBB8 0D80013C */  lui        $at, %hi(D_800CAA7B)
    /* 8D3BC 8009CBBC 7BAA22A0 */  sb         $v0, %lo(D_800CAA7B)($at)
  .L8009CBC0:
    /* 8D3C0 8009CBC0 0D80023C */  lui        $v0, %hi(D_800CAA7C)
    /* 8D3C4 8009CBC4 7CAA4290 */  lbu        $v0, %lo(D_800CAA7C)($v0)
    /* 8D3C8 8009CBC8 00000000 */  nop
    /* 8D3CC 8009CBCC 3900422C */  sltiu      $v0, $v0, 0x39
    /* 8D3D0 8009CBD0 03004014 */  bnez       $v0, .L8009CBE0
    /* 8D3D4 8009CBD4 01000224 */   addiu     $v0, $zero, 0x1
    /* 8D3D8 8009CBD8 0D80013C */  lui        $at, %hi(D_800CAA7C)
    /* 8D3DC 8009CBDC 7CAA22A0 */  sb         $v0, %lo(D_800CAA7C)($at)
  .L8009CBE0:
    /* 8D3E0 8009CBE0 0D80023C */  lui        $v0, %hi(D_800CAA7C + 0x1)
    /* 8D3E4 8009CBE4 7DAA4290 */  lbu        $v0, %lo(D_800CAA7C + 0x1)($v0)
    /* 8D3E8 8009CBE8 00000000 */  nop
    /* 8D3EC 8009CBEC 3900422C */  sltiu      $v0, $v0, 0x39
    /* 8D3F0 8009CBF0 03004014 */  bnez       $v0, .L8009CC00
    /* 8D3F4 8009CBF4 01000224 */   addiu     $v0, $zero, 0x1
    /* 8D3F8 8009CBF8 0D80013C */  lui        $at, %hi(D_800CAA7C + 0x1)
    /* 8D3FC 8009CBFC 7DAA22A0 */  sb         $v0, %lo(D_800CAA7C + 0x1)($at)
  .L8009CC00:
    /* 8D400 8009CC00 0D80023C */  lui        $v0, %hi(D_800CAA7C + 0x2)
    /* 8D404 8009CC04 7EAA4290 */  lbu        $v0, %lo(D_800CAA7C + 0x2)($v0)
    /* 8D408 8009CC08 00000000 */  nop
    /* 8D40C 8009CC0C 3900422C */  sltiu      $v0, $v0, 0x39
    /* 8D410 8009CC10 03004014 */  bnez       $v0, .L8009CC20
    /* 8D414 8009CC14 01000224 */   addiu     $v0, $zero, 0x1
    /* 8D418 8009CC18 0D80013C */  lui        $at, %hi(D_800CAA7C + 0x2)
    /* 8D41C 8009CC1C 7EAA22A0 */  sb         $v0, %lo(D_800CAA7C + 0x2)($at)
  .L8009CC20:
    /* 8D420 8009CC20 FC01628E */  lw         $v0, (0x1F8001FC & 0xFFFF)($s3)
    /* 8D424 8009CC24 F001638E */  lw         $v1, (0x1F8001F0 & 0xFFFF)($s3)
    /* 8D428 8009CC28 00000000 */  nop
    /* 8D42C 8009CC2C 2A104300 */  slt        $v0, $v0, $v1
    /* 8D430 8009CC30 02004010 */  beqz       $v0, .L8009CC3C
    /* 8D434 8009CC34 FFFF0624 */   addiu     $a2, $zero, -0x1
    /* 8D438 8009CC38 01000624 */  addiu      $a2, $zero, 0x1
  .L8009CC3C:
    /* 8D43C 8009CC3C 0402628E */  lw         $v0, (0x1F800204 & 0xFFFF)($s3)
    /* 8D440 8009CC40 F801638E */  lw         $v1, (0x1F8001F8 & 0xFFFF)($s3)
    /* 8D444 8009CC44 00000000 */  nop
    /* 8D448 8009CC48 2A104300 */  slt        $v0, $v0, $v1
    /* 8D44C 8009CC4C 02004010 */  beqz       $v0, .L8009CC58
    /* 8D450 8009CC50 01001224 */   addiu     $s2, $zero, 0x1
    /* 8D454 8009CC54 FFFF1224 */  addiu      $s2, $zero, -0x1
  .L8009CC58:
    /* 8D458 8009CC58 01001024 */  addiu      $s0, $zero, 0x1
    /* 8D45C 8009CC5C 01000724 */  addiu      $a3, $zero, 0x1
    /* 8D460 8009CC60 FF000532 */  andi       $a1, $s0, 0xFF
  .L8009CC64:
    /* 8D464 8009CC64 0700A22C */  sltiu      $v0, $a1, 0x7
    /* 8D468 8009CC68 1A004010 */  beqz       $v0, .L8009CCD4
    /* 8D46C 8009CC6C 40200500 */   sll       $a0, $a1, 1
    /* 8D470 8009CC70 21208500 */  addu       $a0, $a0, $a1
    /* 8D474 8009CC74 E3026392 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($s3)
    /* 8D478 8009CC78 40200400 */  sll        $a0, $a0, 1
    /* 8D47C 8009CC7C FF006330 */  andi       $v1, $v1, 0xFF
    /* 8D480 8009CC80 80100300 */  sll        $v0, $v1, 2
    /* 8D484 8009CC84 21104300 */  addu       $v0, $v0, $v1
    /* 8D488 8009CC88 80100200 */  sll        $v0, $v0, 2
    /* 8D48C 8009CC8C 21104300 */  addu       $v0, $v0, $v1
    /* 8D490 8009CC90 80100200 */  sll        $v0, $v0, 2
    /* 8D494 8009CC94 21208200 */  addu       $a0, $a0, $v0
    /* 8D498 8009CC98 0D80013C */  lui        $at, %hi(D_800CB434)
    /* 8D49C 8009CC9C 21082400 */  addu       $at, $at, $a0
    /* 8D4A0 8009CCA0 34B42294 */  lhu        $v0, %lo(D_800CB434)($at)
    /* 8D4A4 8009CCA4 00000000 */  nop
    /* 8D4A8 8009CCA8 18004600 */  mult       $v0, $a2
    /* 8D4AC 8009CCAC 00210500 */  sll        $a0, $a1, 4
    /* 8D4B0 8009CCB0 12100000 */  mflo       $v0
    /* 8D4B4 8009CCB4 0E80013C */  lui        $at, %hi(D_800E6E20)
    /* 8D4B8 8009CCB8 21082400 */  addu       $at, $at, $a0
    /* 8D4BC 8009CCBC 206E22A4 */  sh         $v0, %lo(D_800E6E20)($at)
    /* 8D4C0 8009CCC0 00140200 */  sll        $v0, $v0, 16
    /* 8D4C4 8009CCC4 1C004004 */  bltz       $v0, .L8009CD38
    /* 8D4C8 8009CCC8 00000000 */   nop
    /* 8D4CC 8009CCCC 53730208 */  j          .L8009CD4C
    /* 8D4D0 8009CCD0 00000000 */   nop
  .L8009CCD4:
    /* 8D4D4 8009CCD4 F9FFA224 */  addiu      $v0, $a1, -0x7
    /* 8D4D8 8009CCD8 40200200 */  sll        $a0, $v0, 1
    /* 8D4DC 8009CCDC 21208200 */  addu       $a0, $a0, $v0
    /* 8D4E0 8009CCE0 E3026392 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($s3)
    /* 8D4E4 8009CCE4 40200400 */  sll        $a0, $a0, 1
    /* 8D4E8 8009CCE8 FF006330 */  andi       $v1, $v1, 0xFF
    /* 8D4EC 8009CCEC 80100300 */  sll        $v0, $v1, 2
    /* 8D4F0 8009CCF0 21104300 */  addu       $v0, $v0, $v1
    /* 8D4F4 8009CCF4 80100200 */  sll        $v0, $v0, 2
    /* 8D4F8 8009CCF8 21104300 */  addu       $v0, $v0, $v1
    /* 8D4FC 8009CCFC 80100200 */  sll        $v0, $v0, 2
    /* 8D500 8009CD00 21208200 */  addu       $a0, $a0, $v0
    /* 8D504 8009CD04 0D80013C */  lui        $at, %hi(D_800CB434)
    /* 8D508 8009CD08 21082400 */  addu       $at, $at, $a0
    /* 8D50C 8009CD0C 34B42294 */  lhu        $v0, %lo(D_800CB434)($at)
    /* 8D510 8009CD10 00000000 */  nop
    /* 8D514 8009CD14 18004600 */  mult       $v0, $a2
    /* 8D518 8009CD18 00210500 */  sll        $a0, $a1, 4
    /* 8D51C 8009CD1C 12100000 */  mflo       $v0
    /* 8D520 8009CD20 0E80013C */  lui        $at, %hi(D_800E6E20)
    /* 8D524 8009CD24 21082400 */  addu       $at, $at, $a0
    /* 8D528 8009CD28 206E22A4 */  sh         $v0, %lo(D_800E6E20)($at)
    /* 8D52C 8009CD2C 00140200 */  sll        $v0, $v0, 16
    /* 8D530 8009CD30 06004104 */  bgez       $v0, .L8009CD4C
    /* 8D534 8009CD34 00000000 */   nop
  .L8009CD38:
    /* 8D538 8009CD38 0E80013C */  lui        $at, %hi(D_800E6E2C)
    /* 8D53C 8009CD3C 21082400 */  addu       $at, $at, $a0
    /* 8D540 8009CD40 2C6E20A0 */  sb         $zero, %lo(D_800E6E2C)($at)
    /* 8D544 8009CD44 57730208 */  j          .L8009CD5C
    /* 8D548 8009CD48 01001026 */   addiu     $s0, $s0, 0x1
  .L8009CD4C:
    /* 8D54C 8009CD4C 0E80013C */  lui        $at, %hi(D_800E6E2C)
    /* 8D550 8009CD50 21082400 */  addu       $at, $at, $a0
    /* 8D554 8009CD54 2C6E27A0 */  sb         $a3, %lo(D_800E6E2C)($at)
    /* 8D558 8009CD58 01001026 */  addiu      $s0, $s0, 0x1
  .L8009CD5C:
    /* 8D55C 8009CD5C FF000232 */  andi       $v0, $s0, 0xFF
    /* 8D560 8009CD60 0E00422C */  sltiu      $v0, $v0, 0xE
    /* 8D564 8009CD64 BFFF4014 */  bnez       $v0, .L8009CC64
    /* 8D568 8009CD68 FF000532 */   andi      $a1, $s0, 0xFF
    /* 8D56C 8009CD6C 21800000 */  addu       $s0, $zero, $zero
  .L8009CD70:
    /* 8D570 8009CD70 9D026392 */  lbu        $v1, (0x1F80029D & 0xFFFF)($s3)
    /* 8D574 8009CD74 9001648E */  lw         $a0, (0x1F800190 & 0xFFFF)($s3)
    /* 8D578 8009CD78 FF006330 */  andi       $v1, $v1, 0xFF
    /* 8D57C 8009CD7C 00110300 */  sll        $v0, $v1, 4
    /* 8D580 8009CD80 23104300 */  subu       $v0, $v0, $v1
    /* 8D584 8009CD84 80100200 */  sll        $v0, $v0, 2
    /* 8D588 8009CD88 23104300 */  subu       $v0, $v0, $v1
    /* 8D58C 8009CD8C 80100200 */  sll        $v0, $v0, 2
    /* 8D590 8009CD90 23104300 */  subu       $v0, $v0, $v1
    /* 8D594 8009CD94 80110200 */  sll        $v0, $v0, 6
    /* 8D598 8009CD98 21208200 */  addu       $a0, $a0, $v0
    /* 8D59C 8009CD9C FF000332 */  andi       $v1, $s0, 0xFF
    /* 8D5A0 8009CDA0 80100300 */  sll        $v0, $v1, 2
    /* 8D5A4 8009CDA4 21104300 */  addu       $v0, $v0, $v1
    /* 8D5A8 8009CDA8 C0100200 */  sll        $v0, $v0, 3
    /* 8D5AC 8009CDAC 60364224 */  addiu      $v0, $v0, 0x3660
    /* 8D5B0 8009CDB0 00190300 */  sll        $v1, $v1, 4
    /* 8D5B4 8009CDB4 0E80013C */  lui        $at, %hi(D_800E6E2C)
    /* 8D5B8 8009CDB8 21082300 */  addu       $at, $at, $v1
    /* 8D5BC 8009CDBC 2C6E2390 */  lbu        $v1, %lo(D_800E6E2C)($at)
    /* 8D5C0 8009CDC0 00000000 */  nop
    /* 8D5C4 8009CDC4 04006010 */  beqz       $v1, .L8009CDD8
    /* 8D5C8 8009CDC8 21888200 */   addu      $s1, $a0, $v0
    /* 8D5CC 8009CDCC 21200000 */  addu       $a0, $zero, $zero
    /* 8D5D0 8009CDD0 78730208 */  j          .L8009CDE0
    /* 8D5D4 8009CDD4 FB010524 */   addiu     $a1, $zero, 0x1FB
  .L8009CDD8:
    /* 8D5D8 8009CDD8 21200000 */  addu       $a0, $zero, $zero
    /* 8D5DC 8009CDDC FA010524 */  addiu      $a1, $zero, 0x1FA
  .L8009CDE0:
    /* 8D5E0 8009CDE0 C5B6020C */  jal        func_800ADB14
    /* 8D5E4 8009CDE4 01001026 */   addiu     $s0, $s0, 0x1
    /* 8D5E8 8009CDE8 0E0022A6 */  sh         $v0, 0xE($s1)
    /* 8D5EC 8009CDEC FF000232 */  andi       $v0, $s0, 0xFF
    /* 8D5F0 8009CDF0 0E00422C */  sltiu      $v0, $v0, 0xE
    /* 8D5F4 8009CDF4 DEFF4014 */  bnez       $v0, .L8009CD70
    /* 8D5F8 8009CDF8 00141200 */   sll       $v0, $s2, 16
    /* 8D5FC 8009CDFC 02004104 */  bgez       $v0, .L8009CE08
    /* 8D600 8009CE00 01000324 */   addiu     $v1, $zero, 0x1
    /* 8D604 8009CE04 FFFF0324 */  addiu      $v1, $zero, -0x1
  .L8009CE08:
    /* 8D608 8009CE08 0E80023C */  lui        $v0, %hi(D_800E6F04)
    /* 8D60C 8009CE0C 046F4284 */  lh         $v0, %lo(D_800E6F04)($v0)
    /* 8D610 8009CE10 00000000 */  nop
    /* 8D614 8009CE14 06004104 */  bgez       $v0, .L8009CE30
    /* 8D618 8009CE18 01000224 */   addiu     $v0, $zero, 0x1
    /* 8D61C 8009CE1C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 8D620 8009CE20 05006214 */  bne        $v1, $v0, .L8009CE38
    /* 8D624 8009CE24 0E001024 */   addiu     $s0, $zero, 0xE
    /* 8D628 8009CE28 AE730208 */  j          .L8009CEB8
    /* 8D62C 8009CE2C 21800000 */   addu      $s0, $zero, $zero
  .L8009CE30:
    /* 8D630 8009CE30 20006210 */  beq        $v1, $v0, .L8009CEB4
    /* 8D634 8009CE34 0E001024 */   addiu     $s0, $zero, 0xE
  .L8009CE38:
    /* 8D638 8009CE38 FF000532 */  andi       $a1, $s0, 0xFF
  .L8009CE3C:
    /* 8D63C 8009CE3C 1500A22C */  sltiu      $v0, $a1, 0x15
    /* 8D640 8009CE40 02004014 */  bnez       $v0, .L8009CE4C
    /* 8D644 8009CE44 F9FFA224 */   addiu     $v0, $a1, -0x7
    /* 8D648 8009CE48 F2FFA224 */  addiu      $v0, $a1, -0xE
  .L8009CE4C:
    /* 8D64C 8009CE4C 40200200 */  sll        $a0, $v0, 1
    /* 8D650 8009CE50 21208200 */  addu       $a0, $a0, $v0
    /* 8D654 8009CE54 E3026392 */  lbu        $v1, (0x1F8002E3 & 0xFFFF)($s3)
    /* 8D658 8009CE58 40200400 */  sll        $a0, $a0, 1
    /* 8D65C 8009CE5C FF006330 */  andi       $v1, $v1, 0xFF
    /* 8D660 8009CE60 80100300 */  sll        $v0, $v1, 2
    /* 8D664 8009CE64 21104300 */  addu       $v0, $v0, $v1
    /* 8D668 8009CE68 80100200 */  sll        $v0, $v0, 2
    /* 8D66C 8009CE6C 21104300 */  addu       $v0, $v0, $v1
    /* 8D670 8009CE70 80100200 */  sll        $v0, $v0, 2
    /* 8D674 8009CE74 21208200 */  addu       $a0, $a0, $v0
    /* 8D678 8009CE78 0D80013C */  lui        $at, %hi(D_800CB438)
    /* 8D67C 8009CE7C 21082400 */  addu       $at, $at, $a0
    /* 8D680 8009CE80 38B42294 */  lhu        $v0, %lo(D_800CB438)($at)
    /* 8D684 8009CE84 00000000 */  nop
    /* 8D688 8009CE88 18005200 */  mult       $v0, $s2
    /* 8D68C 8009CE8C 00110500 */  sll        $v0, $a1, 4
    /* 8D690 8009CE90 12400000 */  mflo       $t0
    /* 8D694 8009CE94 0E80013C */  lui        $at, %hi(D_800E6E24)
    /* 8D698 8009CE98 21082200 */  addu       $at, $at, $v0
    /* 8D69C 8009CE9C 246E28A4 */  sh         $t0, %lo(D_800E6E24)($at)
    /* 8D6A0 8009CEA0 01001026 */  addiu      $s0, $s0, 0x1
    /* 8D6A4 8009CEA4 FF000232 */  andi       $v0, $s0, 0xFF
    /* 8D6A8 8009CEA8 1C00422C */  sltiu      $v0, $v0, 0x1C
    /* 8D6AC 8009CEAC E3FF4014 */  bnez       $v0, .L8009CE3C
    /* 8D6B0 8009CEB0 FF000532 */   andi      $a1, $s0, 0xFF
  .L8009CEB4:
    /* 8D6B4 8009CEB4 21800000 */  addu       $s0, $zero, $zero
  .L8009CEB8:
    /* 8D6B8 8009CEB8 0E80113C */  lui        $s1, %hi(D_800E6E20)
    /* 8D6BC 8009CEBC 206E3126 */  addiu      $s1, $s1, %lo(D_800E6E20)
    /* 8D6C0 8009CEC0 02003426 */  addiu      $s4, $s1, 0x2
    /* 8D6C4 8009CEC4 04003326 */  addiu      $s3, $s1, 0x4
    /* 8D6C8 8009CEC8 0C003226 */  addiu      $s2, $s1, 0xC
    /* 8D6CC 8009CECC FF000732 */  andi       $a3, $s0, 0xFF
  .L8009CED0:
    /* 8D6D0 8009CED0 00110700 */  sll        $v0, $a3, 4
    /* 8D6D4 8009CED4 21205100 */  addu       $a0, $v0, $s1
    /* 8D6D8 8009CED8 21285400 */  addu       $a1, $v0, $s4
    /* 8D6DC 8009CEDC 21305300 */  addu       $a2, $v0, $s3
    /* 8D6E0 8009CEE0 01001026 */  addiu      $s0, $s0, 0x1
    /* 8D6E4 8009CEE4 0E80013C */  lui        $at, %hi(D_800E6E28)
    /* 8D6E8 8009CEE8 21082200 */  addu       $at, $at, $v0
    /* 8D6EC 8009CEEC 286E238C */  lw         $v1, %lo(D_800E6E28)($at)
    /* 8D6F0 8009CEF0 21105200 */  addu       $v0, $v0, $s2
    /* 8D6F4 8009CEF4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 8D6F8 8009CEF8 3E6D020C */  jal        func_8009B4F8
    /* 8D6FC 8009CEFC 1000A3AF */   sw        $v1, 0x10($sp)
    /* 8D700 8009CF00 FF000232 */  andi       $v0, $s0, 0xFF
    /* 8D704 8009CF04 1C00422C */  sltiu      $v0, $v0, 0x1C
    /* 8D708 8009CF08 F1FF4014 */  bnez       $v0, .L8009CED0
    /* 8D70C 8009CF0C FF000732 */   andi      $a3, $s0, 0xFF
    /* 8D710 8009CF10 0D80043C */  lui        $a0, %hi(D_800CAA7B)
    /* 8D714 8009CF14 7BAA8490 */  lbu        $a0, %lo(D_800CAA7B)($a0)
    /* 8D718 8009CF18 0D80053C */  lui        $a1, %hi(D_800CAA7C)
    /* 8D71C 8009CF1C 7CAAA590 */  lbu        $a1, %lo(D_800CAA7C)($a1)
    /* 8D720 8009CF20 0D80023C */  lui        $v0, %hi(D_800CAA7C + 0x1)
    /* 8D724 8009CF24 7DAA4290 */  lbu        $v0, %lo(D_800CAA7C + 0x1)($v0)
    /* 8D728 8009CF28 0D80033C */  lui        $v1, %hi(D_800CAA7C + 0x2)
    /* 8D72C 8009CF2C 7EAA6390 */  lbu        $v1, %lo(D_800CAA7C + 0x2)($v1)
    /* 8D730 8009CF30 01008424 */  addiu      $a0, $a0, 0x1
    /* 8D734 8009CF34 0100A524 */  addiu      $a1, $a1, 0x1
    /* 8D738 8009CF38 01004224 */  addiu      $v0, $v0, 0x1
    /* 8D73C 8009CF3C 02006324 */  addiu      $v1, $v1, 0x2
    /* 8D740 8009CF40 0D80013C */  lui        $at, %hi(D_800CAA7B)
    /* 8D744 8009CF44 7BAA24A0 */  sb         $a0, %lo(D_800CAA7B)($at)
    /* 8D748 8009CF48 0D80013C */  lui        $at, %hi(D_800CAA7C)
    /* 8D74C 8009CF4C 7CAA25A0 */  sb         $a1, %lo(D_800CAA7C)($at)
    /* 8D750 8009CF50 0D80013C */  lui        $at, %hi(D_800CAA7C + 0x1)
    /* 8D754 8009CF54 7DAA22A0 */  sb         $v0, %lo(D_800CAA7C + 0x1)($at)
    /* 8D758 8009CF58 0D80013C */  lui        $at, %hi(D_800CAA7C + 0x2)
    /* 8D75C 8009CF5C 7EAA23A0 */  sb         $v1, %lo(D_800CAA7C + 0x2)($at)
    /* 8D760 8009CF60 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 8D764 8009CF64 2800B48F */  lw         $s4, 0x28($sp)
    /* 8D768 8009CF68 2400B38F */  lw         $s3, 0x24($sp)
    /* 8D76C 8009CF6C 2000B28F */  lw         $s2, 0x20($sp)
    /* 8D770 8009CF70 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 8D774 8009CF74 1800B08F */  lw         $s0, 0x18($sp)
    /* 8D778 8009CF78 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 8D77C 8009CF7C 0800E003 */  jr         $ra
    /* 8D780 8009CF80 00000000 */   nop
endlabel func_8009C6E8
