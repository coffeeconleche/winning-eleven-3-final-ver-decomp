nonmatching func_801ACE2C, 0x9C0

glabel func_801ACE2C
    /* 23EB4 801ACE2C 1180033C */  lui        $v1, %hi(D_8010A320)
    /* 23EB8 801ACE30 20A36390 */  lbu        $v1, %lo(D_8010A320)($v1)
    /* 23EBC 801ACE34 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 23EC0 801ACE38 5000B2AF */  sw         $s2, 0x50($sp)
    /* 23EC4 801ACE3C 21908000 */  addu       $s2, $a0, $zero
    /* 23EC8 801ACE40 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 23ECC 801ACE44 01001124 */  addiu      $s1, $zero, 0x1
    /* 23ED0 801ACE48 5800B4AF */  sw         $s4, 0x58($sp)
    /* 23ED4 801ACE4C 1080143C */  lui        $s4, %hi(D_800FF748)
    /* 23ED8 801ACE50 48F79426 */  addiu      $s4, $s4, %lo(D_800FF748)
    /* 23EDC 801ACE54 5C00BFAF */  sw         $ra, 0x5C($sp)
    /* 23EE0 801ACE58 5400B3AF */  sw         $s3, 0x54($sp)
    /* 23EE4 801ACE5C 3500622C */  sltiu      $v0, $v1, 0x35
    /* 23EE8 801ACE60 58024010 */  beqz       $v0, .L801AD7C4
    /* 23EEC 801ACE64 4800B0AF */   sw        $s0, 0x48($sp)
    /* 23EF0 801ACE68 80100300 */  sll        $v0, $v1, 2
    /* 23EF4 801ACE6C 1980013C */  lui        $at, %hi(jtbl_8018A370)
    /* 23EF8 801ACE70 21082200 */  addu       $at, $at, $v0
    /* 23EFC 801ACE74 70A3228C */  lw         $v0, %lo(jtbl_8018A370)($at)
    /* 23F00 801ACE78 00000000 */  nop
    /* 23F04 801ACE7C 08004000 */  jr         $v0
    /* 23F08 801ACE80 00000000 */   nop
  jlabel .L801ACE84
    /* 23F0C 801ACE84 1FBC010C */  jal        func_8006F07C
    /* 23F10 801ACE88 10000424 */   addiu     $a0, $zero, 0x10
    /* 23F14 801ACE8C 4E024010 */  beqz       $v0, .L801AD7C8
    /* 23F18 801ACE90 21100000 */   addu      $v0, $zero, $zero
    /* 23F1C 801ACE94 0100013C */  lui        $at, (0x10000 >> 16)
    /* 23F20 801ACE98 21088102 */  addu       $at, $s4, $at
    /* 23F24 801ACE9C D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 23F28 801ACEA0 1E80013C */  lui        $at, %hi(D_801D86BE)
    /* 23F2C 801ACEA4 BE8620A0 */  sb         $zero, %lo(D_801D86BE)($at)
    /* 23F30 801ACEA8 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 23F34 801ACEAC 38D620A4 */  sh         $zero, %lo(D_800AD638)($at)
    /* 23F38 801ACEB0 EAB50608 */  j          .L801AD7A8
    /* 23F3C 801ACEB4 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801ACEB8
    /* 23F40 801ACEB8 1E80033C */  lui        $v1, %hi(D_801D86BE)
    /* 23F44 801ACEBC BE866390 */  lbu        $v1, %lo(D_801D86BE)($v1)
    /* 23F48 801ACEC0 00000000 */  nop
    /* 23F4C 801ACEC4 0C00622C */  sltiu      $v0, $v1, 0xC
    /* 23F50 801ACEC8 1A004010 */  beqz       $v0, .L801ACF34
    /* 23F54 801ACECC 02000424 */   addiu     $a0, $zero, 0x2
    /* 23F58 801ACED0 0070053C */  lui        $a1, (0x70000000 >> 16)
    /* 23F5C 801ACED4 1E80063C */  lui        $a2, %hi(D_801D8D78)
    /* 23F60 801ACED8 788DC624 */  addiu      $a2, $a2, %lo(D_801D8D78)
    /* 23F64 801ACEDC 80180300 */  sll        $v1, $v1, 2
    /* 23F68 801ACEE0 0000C0A4 */  sh         $zero, 0x0($a2)
    /* 23F6C 801ACEE4 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 23F70 801ACEE8 7A8D20A4 */  sh         $zero, %lo(D_801D8D7A)($at)
    /* 23F74 801ACEEC 1D80013C */  lui        $at, %hi(D_801D273C)
    /* 23F78 801ACEF0 21082300 */  addu       $at, $at, $v1
    /* 23F7C 801ACEF4 3C272294 */  lhu        $v0, %lo(D_801D273C)($at)
    /* 23F80 801ACEF8 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 23F84 801ACEFC 7C8D22A4 */  sh         $v0, %lo(D_801D8D7C)($at)
    /* 23F88 801ACF00 1D80013C */  lui        $at, %hi(D_801D273E)
    /* 23F8C 801ACF04 21082300 */  addu       $at, $at, $v1
    /* 23F90 801ACF08 3E272394 */  lhu        $v1, %lo(D_801D273E)($at)
    /* 23F94 801ACF0C 20000224 */  addiu      $v0, $zero, 0x20
    /* 23F98 801ACF10 1E80013C */  lui        $at, %hi(D_801D8D80)
    /* 23F9C 801ACF14 808D22A0 */  sb         $v0, %lo(D_801D8D80)($at)
    /* 23FA0 801ACF18 1E80013C */  lui        $at, %hi(D_801D8D81)
    /* 23FA4 801ACF1C 818D22A0 */  sb         $v0, %lo(D_801D8D81)($at)
    /* 23FA8 801ACF20 60000224 */  addiu      $v0, $zero, 0x60
    /* 23FAC 801ACF24 1E80013C */  lui        $at, %hi(D_801D8D82)
    /* 23FB0 801ACF28 828D22A0 */  sb         $v0, %lo(D_801D8D82)($at)
    /* 23FB4 801ACF2C D5B50608 */  j          .L801AD754
    /* 23FB8 801ACF30 21380000 */   addu      $a3, $zero, $zero
  .L801ACF34:
    /* 23FBC 801ACF34 0100013C */  lui        $at, (0x10000 >> 16)
    /* 23FC0 801ACF38 21088102 */  addu       $at, $s4, $at
    /* 23FC4 801ACF3C D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 23FC8 801ACF40 EAB50608 */  j          .L801AD7A8
    /* 23FCC 801ACF44 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801ACF48
    /* 23FD0 801ACF48 03000424 */  addiu      $a0, $zero, 0x3
    /* 23FD4 801ACF4C 21300524 */  addiu      $a1, $zero, 0x3021
    /* 23FD8 801ACF50 21300000 */  addu       $a2, $zero, $zero
    /* 23FDC 801ACF54 21380000 */  addu       $a3, $zero, $zero
    /* 23FE0 801ACF58 40801200 */  sll        $s0, $s2, 1
    /* 23FE4 801ACF5C 21801202 */  addu       $s0, $s0, $s2
    /* 23FE8 801ACF60 40801000 */  sll        $s0, $s0, 1
    /* 23FEC 801ACF64 1D80013C */  lui        $at, %hi(D_801D276E)
    /* 23FF0 801ACF68 21083000 */  addu       $at, $at, $s0
    /* 23FF4 801ACF6C 6E272884 */  lh         $t0, %lo(D_801D276E)($at)
    /* 23FF8 801ACF70 1D80013C */  lui        $at, %hi(D_801D2770)
    /* 23FFC 801ACF74 21083000 */  addu       $at, $at, $s0
    /* 24000 801ACF78 70272984 */  lh         $t1, %lo(D_801D2770)($at)
    /* 24004 801ACF7C 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 24008 801ACF80 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 2400C 801ACF84 18000224 */  addiu      $v0, $zero, 0x18
    /* 24010 801ACF88 1400A2AF */  sw         $v0, 0x14($sp)
    /* 24014 801ACF8C 00100224 */  addiu      $v0, $zero, 0x1000
    /* 24018 801ACF90 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 2401C 801ACF94 2000A2AF */  sw         $v0, 0x20($sp)
    /* 24020 801ACF98 18006900 */  mult       $v1, $t1
    /* 24024 801ACF9C 80000224 */  addiu      $v0, $zero, 0x80
    /* 24028 801ACFA0 01001124 */  addiu      $s1, $zero, 0x1
    /* 2402C 801ACFA4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 24030 801ACFA8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 24034 801ACFAC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 24038 801ACFB0 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 2403C 801ACFB4 3000A2AF */  sw         $v0, 0x30($sp)
    /* 24040 801ACFB8 3400A2AF */  sw         $v0, 0x34($sp)
    /* 24044 801ACFBC 3800A0AF */  sw         $zero, 0x38($sp)
    /* 24048 801ACFC0 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 2404C 801ACFC4 4000B1AF */  sw         $s1, 0x40($sp)
    /* 24050 801ACFC8 12500000 */  mflo       $t2
    /* 24054 801ACFCC 21400A01 */  addu       $t0, $t0, $t2
    /* 24058 801ACFD0 ED4F060C */  jal        func_80193FB4
    /* 2405C 801ACFD4 1000A8AF */   sw        $t0, 0x10($sp)
    /* 24060 801ACFD8 21200000 */  addu       $a0, $zero, $zero
    /* 24064 801ACFDC 1D80013C */  lui        $at, %hi(D_801D2784)
    /* 24068 801ACFE0 21083200 */  addu       $at, $at, $s2
    /* 2406C 801ACFE4 84272390 */  lbu        $v1, %lo(D_801D2784)($at)
    /* 24070 801ACFE8 1D80013C */  lui        $at, %hi(D_801D276C)
    /* 24074 801ACFEC 21083000 */  addu       $at, $at, $s0
    /* 24078 801ACFF0 6C272784 */  lh         $a3, %lo(D_801D276C)($at)
    /* 2407C 801ACFF4 C8000224 */  addiu      $v0, $zero, 0xC8
    /* 24080 801ACFF8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 24084 801ACFFC 03000224 */  addiu      $v0, $zero, 0x3
    /* 24088 801AD000 1400A2AF */  sw         $v0, 0x14($sp)
    /* 2408C 801AD004 1800B1AF */  sw         $s1, 0x18($sp)
    /* 24090 801AD008 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 24094 801AD00C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 24098 801AD010 2400A2AF */  sw         $v0, 0x24($sp)
    /* 2409C 801AD014 2800B1AF */  sw         $s1, 0x28($sp)
    /* 240A0 801AD018 2C00B1AF */  sw         $s1, 0x2C($sp)
    /* 240A4 801AD01C 80180300 */  sll        $v1, $v1, 2
    /* 240A8 801AD020 1280013C */  lui        $at, %hi(D_8011D5F4)
    /* 240AC 801AD024 21082300 */  addu       $at, $at, $v1
    /* 240B0 801AD028 F4D5258C */  lw         $a1, %lo(D_8011D5F4)($at)
    /* 240B4 801AD02C B850060C */  jal        func_801942E0
    /* 240B8 801AD030 9CFF0624 */   addiu     $a2, $zero, -0x64
    /* 240BC 801AD034 0100013C */  lui        $at, (0x10000 >> 16)
    /* 240C0 801AD038 21088102 */  addu       $at, $s4, $at
    /* 240C4 801AD03C D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 240C8 801AD040 EAB50608 */  j          .L801AD7A8
    /* 240CC 801AD044 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801AD048
    /* 240D0 801AD048 3FBF010C */  jal        func_8006FCFC
    /* 240D4 801AD04C 36000424 */   addiu     $a0, $zero, 0x36
    /* 240D8 801AD050 20BB010C */  jal        func_8006EC80
    /* 240DC 801AD054 21200000 */   addu      $a0, $zero, $zero
    /* 240E0 801AD058 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 240E4 801AD05C A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 240E8 801AD060 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 240EC 801AD064 00100224 */  addiu      $v0, $zero, 0x1000
    /* 240F0 801AD068 03006210 */  beq        $v1, $v0, .L801AD078
    /* 240F4 801AD06C 00400224 */   addiu     $v0, $zero, 0x4000
    /* 240F8 801AD070 1D006214 */  bne        $v1, $v0, .L801AD0E8
    /* 240FC 801AD074 20000224 */   addiu     $v0, $zero, 0x20
  .L801AD078:
    /* 24100 801AD078 21280000 */  addu       $a1, $zero, $zero
    /* 24104 801AD07C 1D80013C */  lui        $at, %hi(D_801D2788)
    /* 24108 801AD080 21083200 */  addu       $at, $at, $s2
    /* 2410C 801AD084 88272690 */  lbu        $a2, %lo(D_801D2788)($at)
    /* 24110 801AD088 0B80043C */  lui        $a0, %hi(D_800AD638)
    /* 24114 801AD08C 38D68494 */  lhu        $a0, %lo(D_800AD638)($a0)
    /* 24118 801AD090 7B39060C */  jal        func_8018E5EC
    /* 2411C 801AD094 FFFFC624 */   addiu     $a2, $a2, -0x1
    /* 24120 801AD098 40181200 */  sll        $v1, $s2, 1
    /* 24124 801AD09C 21187200 */  addu       $v1, $v1, $s2
    /* 24128 801AD0A0 40180300 */  sll        $v1, $v1, 1
    /* 2412C 801AD0A4 1D80013C */  lui        $at, %hi(D_801D2770)
    /* 24130 801AD0A8 21082300 */  addu       $at, $at, $v1
    /* 24134 801AD0AC 70272584 */  lh         $a1, %lo(D_801D2770)($at)
    /* 24138 801AD0B0 FFFF4430 */  andi       $a0, $v0, 0xFFFF
    /* 2413C 801AD0B4 18008500 */  mult       $a0, $a1
    /* 24140 801AD0B8 1D80013C */  lui        $at, %hi(D_801D276E)
    /* 24144 801AD0BC 21082300 */  addu       $at, $at, $v1
    /* 24148 801AD0C0 6E272394 */  lhu        $v1, %lo(D_801D276E)($at)
    /* 2414C 801AD0C4 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 24150 801AD0C8 38D622A4 */  sh         $v0, %lo(D_800AD638)($at)
    /* 24154 801AD0CC 0D050424 */  addiu      $a0, $zero, 0x50D
    /* 24158 801AD0D0 12500000 */  mflo       $t2
    /* 2415C 801AD0D4 21186A00 */  addu       $v1, $v1, $t2
    /* 24160 801AD0D8 88AD020C */  jal        func_800AB620
    /* 24164 801AD0DC 4A5E83A6 */   sh        $v1, 0x5E4A($s4)
    /* 24168 801AD0E0 F2B50608 */  j          .L801AD7C8
    /* 2416C 801AD0E4 21100000 */   addu      $v0, $zero, $zero
  .L801AD0E8:
    /* 24170 801AD0E8 38006214 */  bne        $v1, $v0, .L801AD1CC
    /* 24174 801AD0EC 40000224 */   addiu     $v0, $zero, 0x40
    /* 24178 801AD0F0 88AD020C */  jal        func_800AB620
    /* 2417C 801AD0F4 28050424 */   addiu     $a0, $zero, 0x528
    /* 24180 801AD0F8 0200422E */  sltiu      $v0, $s2, 0x2
    /* 24184 801AD0FC 11004010 */  beqz       $v0, .L801AD144
    /* 24188 801AD100 01000224 */   addiu     $v0, $zero, 0x1
    /* 2418C 801AD104 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 24190 801AD108 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 24194 801AD10C 00000000 */  nop
    /* 24198 801AD110 23006210 */  beq        $v1, $v0, .L801AD1A0
    /* 2419C 801AD114 02006228 */   slti      $v0, $v1, 0x2
    /* 241A0 801AD118 05004010 */  beqz       $v0, .L801AD130
    /* 241A4 801AD11C 00000000 */   nop
    /* 241A8 801AD120 11006010 */  beqz       $v1, .L801AD168
    /* 241AC 801AD124 14000224 */   addiu     $v0, $zero, 0x14
    /* 241B0 801AD128 F2B50608 */  j          .L801AD7C8
    /* 241B4 801AD12C 21100000 */   addu      $v0, $zero, $zero
  .L801AD130:
    /* 241B8 801AD130 02000224 */  addiu      $v0, $zero, 0x2
    /* 241BC 801AD134 A4016214 */  bne        $v1, $v0, .L801AD7C8
    /* 241C0 801AD138 21100000 */   addu      $v0, $zero, $zero
    /* 241C4 801AD13C 6EB40608 */  j          .L801AD1B8
    /* 241C8 801AD140 28000224 */   addiu     $v0, $zero, 0x28
  .L801AD144:
    /* 241CC 801AD144 03000224 */  addiu      $v0, $zero, 0x3
    /* 241D0 801AD148 0C004216 */  bne        $s2, $v0, .L801AD17C
    /* 241D4 801AD14C 00000000 */   nop
    /* 241D8 801AD150 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 241DC 801AD154 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 241E0 801AD158 00000000 */  nop
    /* 241E4 801AD15C 0C006014 */  bnez       $v1, .L801AD190
    /* 241E8 801AD160 01000224 */   addiu     $v0, $zero, 0x1
    /* 241EC 801AD164 14000224 */  addiu      $v0, $zero, 0x14
  .L801AD168:
    /* 241F0 801AD168 0100013C */  lui        $at, (0x10000 >> 16)
    /* 241F4 801AD16C 21088102 */  addu       $at, $s4, $at
    /* 241F8 801AD170 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 241FC 801AD174 F2B50608 */  j          .L801AD7C8
    /* 24200 801AD178 21100000 */   addu      $v0, $zero, $zero
  .L801AD17C:
    /* 24204 801AD17C 0B80033C */  lui        $v1, %hi(D_800AD638)
    /* 24208 801AD180 38D66394 */  lhu        $v1, %lo(D_800AD638)($v1)
    /* 2420C 801AD184 00000000 */  nop
    /* 24210 801AD188 05006010 */  beqz       $v1, .L801AD1A0
    /* 24214 801AD18C 01000224 */   addiu     $v0, $zero, 0x1
  .L801AD190:
    /* 24218 801AD190 09006210 */  beq        $v1, $v0, .L801AD1B8
    /* 2421C 801AD194 28000224 */   addiu     $v0, $zero, 0x28
    /* 24220 801AD198 F2B50608 */  j          .L801AD7C8
    /* 24224 801AD19C 21100000 */   addu      $v0, $zero, $zero
  .L801AD1A0:
    /* 24228 801AD1A0 1E000224 */  addiu      $v0, $zero, 0x1E
    /* 2422C 801AD1A4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24230 801AD1A8 21088102 */  addu       $at, $s4, $at
    /* 24234 801AD1AC D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 24238 801AD1B0 F2B50608 */  j          .L801AD7C8
    /* 2423C 801AD1B4 21100000 */   addu      $v0, $zero, $zero
  .L801AD1B8:
    /* 24240 801AD1B8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24244 801AD1BC 21088102 */  addu       $at, $s4, $at
    /* 24248 801AD1C0 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 2424C 801AD1C4 F2B50608 */  j          .L801AD7C8
    /* 24250 801AD1C8 21100000 */   addu      $v0, $zero, $zero
  .L801AD1CC:
    /* 24254 801AD1CC 7E016214 */  bne        $v1, $v0, .L801AD7C8
    /* 24258 801AD1D0 21100000 */   addu      $v0, $zero, $zero
    /* 2425C 801AD1D4 88AD020C */  jal        func_800AB620
    /* 24260 801AD1D8 29050424 */   addiu     $a0, $zero, 0x529
    /* 24264 801AD1DC 32000224 */  addiu      $v0, $zero, 0x32
    /* 24268 801AD1E0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2426C 801AD1E4 21088102 */  addu       $at, $s4, $at
    /* 24270 801AD1E8 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 24274 801AD1EC F2B50608 */  j          .L801AD7C8
    /* 24278 801AD1F0 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801AD1F4
    /* 2427C 801AD1F4 3FBF010C */  jal        func_8006FCFC
    /* 24280 801AD1F8 36000424 */   addiu     $a0, $zero, 0x36
    /* 24284 801AD1FC 40000424 */  addiu      $a0, $zero, 0x40
    /* 24288 801AD200 37BC010C */  jal        func_8006F0DC
    /* 2428C 801AD204 21280000 */   addu      $a1, $zero, $zero
    /* 24290 801AD208 6F014010 */  beqz       $v0, .L801AD7C8
    /* 24294 801AD20C 21100000 */   addu      $v0, $zero, $zero
    /* 24298 801AD210 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2429C 801AD214 21088102 */  addu       $at, $s4, $at
    /* 242A0 801AD218 D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 242A4 801AD21C EAB50608 */  j          .L801AD7A8
    /* 242A8 801AD220 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801AD224
    /* 242AC 801AD224 4E39060C */  jal        func_8018E538
    /* 242B0 801AD228 21200000 */   addu      $a0, $zero, $zero
    /* 242B4 801AD22C 3C5E80A2 */  sb         $zero, 0x5E3C($s4)
    /* 242B8 801AD230 1E80013C */  lui        $at, %hi(D_801D8FA0)
    /* 242BC 801AD234 A08F20A0 */  sb         $zero, %lo(D_801D8FA0)($at)
    /* 242C0 801AD238 1E80013C */  lui        $at, %hi(D_801D92DB)
    /* 242C4 801AD23C DB9220A0 */  sb         $zero, %lo(D_801D92DB)($at)
    /* 242C8 801AD240 7F5C000C */  jal        func_800171FC
    /* 242CC 801AD244 81000424 */   addiu     $a0, $zero, 0x81
    /* 242D0 801AD248 02000224 */  addiu      $v0, $zero, 0x2
    /* 242D4 801AD24C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 242D8 801AD250 21088102 */  addu       $at, $s4, $at
    /* 242DC 801AD254 DAAB20A0 */  sb         $zero, -0x5426($at)
    /* 242E0 801AD258 0100013C */  lui        $at, (0x10000 >> 16)
    /* 242E4 801AD25C 21088102 */  addu       $at, $s4, $at
    /* 242E8 801AD260 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 242EC 801AD264 F2B50608 */  j          .L801AD7C8
    /* 242F0 801AD268 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801AD26C
    /* 242F4 801AD26C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 242F8 801AD270 21088102 */  addu       $at, $s4, $at
    /* 242FC 801AD274 D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 24300 801AD278 3C5E80A2 */  sb         $zero, 0x5E3C($s4)
    /* 24304 801AD27C 1E80013C */  lui        $at, %hi(D_801D8FA0)
    /* 24308 801AD280 A08F20A0 */  sb         $zero, %lo(D_801D8FA0)($at)
    /* 2430C 801AD284 EAB50608 */  j          .L801AD7A8
    /* 24310 801AD288 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801AD28C
    /* 24314 801AD28C 1E80103C */  lui        $s0, %hi(D_801D92E4)
    /* 24318 801AD290 E4921026 */  addiu      $s0, $s0, %lo(D_801D92E4)
    /* 2431C 801AD294 21200002 */  addu       $a0, $s0, $zero
    /* 24320 801AD298 21280000 */  addu       $a1, $zero, $zero
    /* 24324 801AD29C 10000624 */  addiu      $a2, $zero, 0x10
    /* 24328 801AD2A0 823A060C */  jal        func_8018EA08
    /* 2432C 801AD2A4 FCFF0726 */   addiu     $a3, $s0, -0x4
    /* 24330 801AD2A8 24882202 */  and        $s1, $s1, $v0
    /* 24334 801AD2AC 02000426 */  addiu      $a0, $s0, 0x2
    /* 24338 801AD2B0 21280000 */  addu       $a1, $zero, $zero
    /* 2433C 801AD2B4 08000624 */  addiu      $a2, $zero, 0x8
    /* 24340 801AD2B8 823A060C */  jal        func_8018EA08
    /* 24344 801AD2BC FEFF0726 */   addiu     $a3, $s0, -0x2
    /* 24348 801AD2C0 24882202 */  and        $s1, $s1, $v0
    /* 2434C 801AD2C4 40012012 */  beqz       $s1, .L801AD7C8
    /* 24350 801AD2C8 21100000 */   addu      $v0, $zero, $zero
    /* 24354 801AD2CC E4B50608 */  j          .L801AD790
    /* 24358 801AD2D0 00000000 */   nop
  jlabel .L801AD2D4
    /* 2435C 801AD2D4 40000424 */  addiu      $a0, $zero, 0x40
    /* 24360 801AD2D8 37BC010C */  jal        func_8006F0DC
    /* 24364 801AD2DC 21280000 */   addu      $a1, $zero, $zero
    /* 24368 801AD2E0 38014010 */  beqz       $v0, .L801AD7C4
    /* 2436C 801AD2E4 02000224 */   addiu     $v0, $zero, 0x2
    /* 24370 801AD2E8 F2B50608 */  j          .L801AD7C8
    /* 24374 801AD2EC 00000000 */   nop
  jlabel .L801AD2F0
    /* 24378 801AD2F0 01000424 */  addiu      $a0, $zero, 0x1
    /* 2437C 801AD2F4 21280000 */  addu       $a1, $zero, $zero
    /* 24380 801AD2F8 1E80103C */  lui        $s0, %hi(D_801D8D78)
    /* 24384 801AD2FC 788D1026 */  addiu      $s0, $s0, %lo(D_801D8D78)
    /* 24388 801AD300 21300002 */  addu       $a2, $s0, $zero
    /* 2438C 801AD304 21380000 */  addu       $a3, $zero, $zero
    /* 24390 801AD308 01000224 */  addiu      $v0, $zero, 0x1
    /* 24394 801AD30C 1E80013C */  lui        $at, %hi(D_801D86BE + 0x1)
    /* 24398 801AD310 BF8622A0 */  sb         $v0, %lo(D_801D86BE + 0x1)($at)
    /* 2439C 801AD314 C8000224 */  addiu      $v0, $zero, 0xC8
    /* 243A0 801AD318 000000A6 */  sh         $zero, 0x0($s0)
    /* 243A4 801AD31C 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 243A8 801AD320 7C8D22A4 */  sh         $v0, %lo(D_801D8D7C)($at)
    /* 243AC 801AD324 50000224 */  addiu      $v0, $zero, 0x50
    /* 243B0 801AD328 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 243B4 801AD32C 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 243B8 801AD330 30000224 */  addiu      $v0, $zero, 0x30
    /* 243BC 801AD334 01001124 */  addiu      $s1, $zero, 0x1
    /* 243C0 801AD338 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 243C4 801AD33C 7A8D20A4 */  sh         $zero, %lo(D_801D8D7A)($at)
    /* 243C8 801AD340 1E80013C */  lui        $at, %hi(D_801D8D80)
    /* 243CC 801AD344 808D20A0 */  sb         $zero, %lo(D_801D8D80)($at)
    /* 243D0 801AD348 1E80013C */  lui        $at, %hi(D_801D8D81)
    /* 243D4 801AD34C 818D20A0 */  sb         $zero, %lo(D_801D8D81)($at)
    /* 243D8 801AD350 1E80013C */  lui        $at, %hi(D_801D8D82)
    /* 243DC 801AD354 828D22A0 */  sb         $v0, %lo(D_801D8D82)($at)
    /* 243E0 801AD358 1000B1AF */  sw         $s1, 0x10($sp)
    /* 243E4 801AD35C 7850060C */  jal        func_801941E0
    /* 243E8 801AD360 1400B1AF */   sw        $s1, 0x14($sp)
    /* 243EC 801AD364 21200000 */  addu       $a0, $zero, $zero
    /* 243F0 801AD368 21280000 */  addu       $a1, $zero, $zero
    /* 243F4 801AD36C 21300002 */  addu       $a2, $s0, $zero
    /* 243F8 801AD370 1E80033C */  lui        $v1, %hi(D_801D86BE + 0x1)
    /* 243FC 801AD374 BF866390 */  lbu        $v1, %lo(D_801D86BE + 0x1)($v1)
    /* 24400 801AD378 CEFF0224 */  addiu      $v0, $zero, -0x32
    /* 24404 801AD37C 0000C2A4 */  sh         $v0, 0x0($a2)
    /* 24408 801AD380 64000224 */  addiu      $v0, $zero, 0x64
    /* 2440C 801AD384 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 24410 801AD388 7C8D22A4 */  sh         $v0, %lo(D_801D8D7C)($at)
    /* 24414 801AD38C 10000224 */  addiu      $v0, $zero, 0x10
    /* 24418 801AD390 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 2441C 801AD394 7E8D22A4 */  sh         $v0, %lo(D_801D8D7E)($at)
    /* 24420 801AD398 1E80013C */  lui        $at, %hi(D_801D8D80)
    /* 24424 801AD39C 808D20A0 */  sb         $zero, %lo(D_801D8D80)($at)
    /* 24428 801AD3A0 1E80013C */  lui        $at, %hi(D_801D8D81)
    /* 2442C 801AD3A4 818D20A0 */  sb         $zero, %lo(D_801D8D81)($at)
    /* 24430 801AD3A8 1E80013C */  lui        $at, %hi(D_801D8D82)
    /* 24434 801AD3AC 828D20A0 */  sb         $zero, %lo(D_801D8D82)($at)
    /* 24438 801AD3B0 1E80013C */  lui        $at, %hi(D_801D8D83)
    /* 2443C 801AD3B4 838D20A0 */  sb         $zero, %lo(D_801D8D83)($at)
    /* 24440 801AD3B8 1E80013C */  lui        $at, %hi(D_801D8D84)
    /* 24444 801AD3BC 848D20A0 */  sb         $zero, %lo(D_801D8D84)($at)
    /* 24448 801AD3C0 1E80013C */  lui        $at, %hi(D_801D8D85)
    /* 2444C 801AD3C4 858D20A0 */  sb         $zero, %lo(D_801D8D85)($at)
    /* 24450 801AD3C8 1E80013C */  lui        $at, %hi(D_801D8D86)
    /* 24454 801AD3CC 868D20A0 */  sb         $zero, %lo(D_801D8D86)($at)
    /* 24458 801AD3D0 1E80013C */  lui        $at, %hi(D_801D8D87)
    /* 2445C 801AD3D4 878D20A0 */  sb         $zero, %lo(D_801D8D87)($at)
    /* 24460 801AD3D8 1E80013C */  lui        $at, %hi(D_801D8D88)
    /* 24464 801AD3DC 888D20A0 */  sb         $zero, %lo(D_801D8D88)($at)
    /* 24468 801AD3E0 1E80013C */  lui        $at, %hi(D_801D8D89)
    /* 2446C 801AD3E4 898D20A0 */  sb         $zero, %lo(D_801D8D89)($at)
    /* 24470 801AD3E8 1E80013C */  lui        $at, %hi(D_801D8D8A)
    /* 24474 801AD3EC 8A8D20A0 */  sb         $zero, %lo(D_801D8D8A)($at)
    /* 24478 801AD3F0 1E80013C */  lui        $at, %hi(D_801D8D8B)
    /* 2447C 801AD3F4 8B8D20A0 */  sb         $zero, %lo(D_801D8D8B)($at)
    /* 24480 801AD3F8 1000B1AF */  sw         $s1, 0x10($sp)
    /* 24484 801AD3FC 1400B1AF */  sw         $s1, 0x14($sp)
    /* 24488 801AD400 40100300 */  sll        $v0, $v1, 1
    /* 2448C 801AD404 21104300 */  addu       $v0, $v0, $v1
    /* 24490 801AD408 80100200 */  sll        $v0, $v0, 2
    /* 24494 801AD40C 23104300 */  subu       $v0, $v0, $v1
    /* 24498 801AD410 40100200 */  sll        $v0, $v0, 1
    /* 2449C 801AD414 F8FF4224 */  addiu      $v0, $v0, -0x8
    /* 244A0 801AD418 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 244A4 801AD41C 7A8D22A4 */  sh         $v0, %lo(D_801D8D7A)($at)
    /* 244A8 801AD420 3B50060C */  jal        func_801940EC
    /* 244AC 801AD424 02000724 */   addiu     $a3, $zero, 0x2
    /* 244B0 801AD428 21200000 */  addu       $a0, $zero, $zero
    /* 244B4 801AD42C 9CFF0624 */  addiu      $a2, $zero, -0x64
    /* 244B8 801AD430 E2FF0724 */  addiu      $a3, $zero, -0x1E
    /* 244BC 801AD434 1280123C */  lui        $s2, %hi(D_8011D73C)
    /* 244C0 801AD438 3CD75226 */  addiu      $s2, $s2, %lo(D_8011D73C)
    /* 244C4 801AD43C C8001324 */  addiu      $s3, $zero, 0xC8
    /* 244C8 801AD440 0000458E */  lw         $a1, 0x0($s2)
    /* 244CC 801AD444 03001024 */  addiu      $s0, $zero, 0x3
    /* 244D0 801AD448 1000B3AF */  sw         $s3, 0x10($sp)
    /* 244D4 801AD44C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 244D8 801AD450 1800B1AF */  sw         $s1, 0x18($sp)
    /* 244DC 801AD454 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 244E0 801AD458 2000A0AF */  sw         $zero, 0x20($sp)
    /* 244E4 801AD45C 2400B0AF */  sw         $s0, 0x24($sp)
    /* 244E8 801AD460 2800A0AF */  sw         $zero, 0x28($sp)
    /* 244EC 801AD464 B850060C */  jal        func_801942E0
    /* 244F0 801AD468 2C00B1AF */   sw        $s1, 0x2C($sp)
    /* 244F4 801AD46C 01000424 */  addiu      $a0, $zero, 0x1
    /* 244F8 801AD470 9CFF0624 */  addiu      $a2, $zero, -0x64
    /* 244FC 801AD474 F8FF0724 */  addiu      $a3, $zero, -0x8
    /* 24500 801AD478 0000458E */  lw         $a1, 0x0($s2)
    /* 24504 801AD47C 06000224 */  addiu      $v0, $zero, 0x6
    /* 24508 801AD480 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 2450C 801AD484 0C000224 */  addiu      $v0, $zero, 0xC
    /* 24510 801AD488 1000B3AF */  sw         $s3, 0x10($sp)
    /* 24514 801AD48C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 24518 801AD490 1800B1AF */  sw         $s1, 0x18($sp)
    /* 2451C 801AD494 2000A0AF */  sw         $zero, 0x20($sp)
    /* 24520 801AD498 2400A2AF */  sw         $v0, 0x24($sp)
    /* 24524 801AD49C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 24528 801AD4A0 B850060C */  jal        func_801942E0
    /* 2452C 801AD4A4 2C00B1AF */   sw        $s1, 0x2C($sp)
    /* 24530 801AD4A8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24534 801AD4AC 21088102 */  addu       $at, $s4, $at
    /* 24538 801AD4B0 D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 2453C 801AD4B4 EAB50608 */  j          .L801AD7A8
    /* 24540 801AD4B8 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801AD4BC
    /* 24544 801AD4BC 3C5E80A2 */  sb         $zero, 0x5E3C($s4)
    /* 24548 801AD4C0 1E80123C */  lui        $s2, %hi(D_801D92B0)
    /* 2454C 801AD4C4 B0925226 */  addiu      $s2, $s2, %lo(D_801D92B0)
    /* 24550 801AD4C8 21880000 */  addu       $s1, $zero, $zero
    /* 24554 801AD4CC 62001324 */  addiu      $s3, $zero, 0x62
    /* 24558 801AD4D0 02005026 */  addiu      $s0, $s2, 0x2
  .L801AD4D4:
    /* 2455C 801AD4D4 40000424 */  addiu      $a0, $zero, 0x40
    /* 24560 801AD4D8 6E39060C */  jal        func_8018E5B8
    /* 24564 801AD4DC 01000524 */   addiu     $a1, $zero, 0x1
    /* 24568 801AD4E0 C0181100 */  sll        $v1, $s1, 3
    /* 2456C 801AD4E4 21186200 */  addu       $v1, $v1, $v0
    /* 24570 801AD4E8 40006228 */  slti       $v0, $v1, 0x40
    /* 24574 801AD4EC 02004014 */  bnez       $v0, .L801AD4F8
    /* 24578 801AD4F0 00000000 */   nop
    /* 2457C 801AD4F4 23186302 */  subu       $v1, $s3, $v1
  .L801AD4F8:
    /* 24580 801AD4F8 43180300 */  sra        $v1, $v1, 1
    /* 24584 801AD4FC 01003126 */  addiu      $s1, $s1, 0x1
    /* 24588 801AD500 40100300 */  sll        $v0, $v1, 1
    /* 2458C 801AD504 21104300 */  addu       $v0, $v0, $v1
    /* 24590 801AD508 000042A2 */  sb         $v0, 0x0($s2)
    /* 24594 801AD50C 80100300 */  sll        $v0, $v1, 2
    /* 24598 801AD510 FFFF03A2 */  sb         $v1, -0x1($s0)
    /* 2459C 801AD514 000002A2 */  sb         $v0, 0x0($s0)
    /* 245A0 801AD518 03001026 */  addiu      $s0, $s0, 0x3
    /* 245A4 801AD51C 0400222A */  slti       $v0, $s1, 0x4
    /* 245A8 801AD520 ECFF4014 */  bnez       $v0, .L801AD4D4
    /* 245AC 801AD524 03005226 */   addiu     $s2, $s2, 0x3
    /* 245B0 801AD528 20BB010C */  jal        func_8006EC80
    /* 245B4 801AD52C 21200000 */   addu      $a0, $zero, $zero
    /* 245B8 801AD530 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 245BC 801AD534 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 245C0 801AD538 FFFF4430 */  andi       $a0, $v0, 0xFFFF
    /* 245C4 801AD53C 00100224 */  addiu      $v0, $zero, 0x1000
    /* 245C8 801AD540 03008210 */  beq        $a0, $v0, .L801AD550
    /* 245CC 801AD544 00400224 */   addiu     $v0, $zero, 0x4000
    /* 245D0 801AD548 15008214 */  bne        $a0, $v0, .L801AD5A0
    /* 245D4 801AD54C 01000324 */   addiu     $v1, $zero, 0x1
  .L801AD550:
    /* 245D8 801AD550 21280000 */  addu       $a1, $zero, $zero
    /* 245DC 801AD554 1E80043C */  lui        $a0, %hi(D_801D86BE + 0x1)
    /* 245E0 801AD558 BF868490 */  lbu        $a0, %lo(D_801D86BE + 0x1)($a0)
    /* 245E4 801AD55C 7B39060C */  jal        func_8018E5EC
    /* 245E8 801AD560 01000624 */   addiu     $a2, $zero, 0x1
    /* 245EC 801AD564 1E80013C */  lui        $at, %hi(D_801D86BE + 0x1)
    /* 245F0 801AD568 BF8622A0 */  sb         $v0, %lo(D_801D86BE + 0x1)($at)
    /* 245F4 801AD56C FF004230 */  andi       $v0, $v0, 0xFF
    /* 245F8 801AD570 40180200 */  sll        $v1, $v0, 1
    /* 245FC 801AD574 21186200 */  addu       $v1, $v1, $v0
    /* 24600 801AD578 80180300 */  sll        $v1, $v1, 2
    /* 24604 801AD57C 23186200 */  subu       $v1, $v1, $v0
    /* 24608 801AD580 40180300 */  sll        $v1, $v1, 1
    /* 2460C 801AD584 F8FF6324 */  addiu      $v1, $v1, -0x8
    /* 24610 801AD588 1E80013C */  lui        $at, %hi(D_801D92AA)
    /* 24614 801AD58C AA9223A4 */  sh         $v1, %lo(D_801D92AA)($at)
    /* 24618 801AD590 88AD020C */  jal        func_800AB620
    /* 2461C 801AD594 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 24620 801AD598 F2B50608 */  j          .L801AD7C8
    /* 24624 801AD59C 21100000 */   addu      $v0, $zero, $zero
  .L801AD5A0:
    /* 24628 801AD5A0 1E80023C */  lui        $v0, %hi(D_801D86BE + 0x1)
    /* 2462C 801AD5A4 BF864290 */  lbu        $v0, %lo(D_801D86BE + 0x1)($v0)
    /* 24630 801AD5A8 1D80013C */  lui        $at, %hi(D_801D269D)
    /* 24634 801AD5AC 9D2623A0 */  sb         $v1, %lo(D_801D269D)($at)
    /* 24638 801AD5B0 1D80013C */  lui        $at, %hi(D_801D269C)
    /* 2463C 801AD5B4 9C2622A0 */  sb         $v0, %lo(D_801D269C)($at)
    /* 24640 801AD5B8 20000224 */  addiu      $v0, $zero, 0x20
    /* 24644 801AD5BC 1B008214 */  bne        $a0, $v0, .L801AD62C
    /* 24648 801AD5C0 40000224 */   addiu     $v0, $zero, 0x40
    /* 2464C 801AD5C4 88AD020C */  jal        func_800AB620
    /* 24650 801AD5C8 28050424 */   addiu     $a0, $zero, 0x528
    /* 24654 801AD5CC 1E80033C */  lui        $v1, %hi(D_801D86BE + 0x1)
    /* 24658 801AD5D0 BF866390 */  lbu        $v1, %lo(D_801D86BE + 0x1)($v1)
    /* 2465C 801AD5D4 01000224 */  addiu      $v0, $zero, 0x1
    /* 24660 801AD5D8 1D80013C */  lui        $at, %hi(D_801D269D)
    /* 24664 801AD5DC 9D2620A0 */  sb         $zero, %lo(D_801D269D)($at)
    /* 24668 801AD5E0 1E80013C */  lui        $at, %hi(D_801D8FB8)
    /* 2466C 801AD5E4 B88F20A0 */  sb         $zero, %lo(D_801D8FB8)($at)
    /* 24670 801AD5E8 06006214 */  bne        $v1, $v0, .L801AD604
    /* 24674 801AD5EC 00000000 */   nop
    /* 24678 801AD5F0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2467C 801AD5F4 21088102 */  addu       $at, $s4, $at
    /* 24680 801AD5F8 D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 24684 801AD5FC EAB50608 */  j          .L801AD7A8
    /* 24688 801AD600 01004224 */   addiu     $v0, $v0, 0x1
  .L801AD604:
    /* 2468C 801AD604 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24690 801AD608 21088102 */  addu       $at, $s4, $at
    /* 24694 801AD60C D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 24698 801AD610 00000000 */  nop
    /* 2469C 801AD614 02004224 */  addiu      $v0, $v0, 0x2
    /* 246A0 801AD618 0100013C */  lui        $at, (0x10000 >> 16)
    /* 246A4 801AD61C 21088102 */  addu       $at, $s4, $at
    /* 246A8 801AD620 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 246AC 801AD624 F2B50608 */  j          .L801AD7C8
    /* 246B0 801AD628 21100000 */   addu      $v0, $zero, $zero
  .L801AD62C:
    /* 246B4 801AD62C 66008214 */  bne        $a0, $v0, .L801AD7C8
    /* 246B8 801AD630 21100000 */   addu      $v0, $zero, $zero
    /* 246BC 801AD634 88AD020C */  jal        func_800AB620
    /* 246C0 801AD638 29050424 */   addiu     $a0, $zero, 0x529
    /* 246C4 801AD63C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 246C8 801AD640 21088102 */  addu       $at, $s4, $at
    /* 246CC 801AD644 D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 246D0 801AD648 1D80013C */  lui        $at, %hi(D_801D269D)
    /* 246D4 801AD64C 9D2620A0 */  sb         $zero, %lo(D_801D269D)($at)
    /* 246D8 801AD650 1E80013C */  lui        $at, %hi(D_801D8FB8)
    /* 246DC 801AD654 B88F20A0 */  sb         $zero, %lo(D_801D8FB8)($at)
    /* 246E0 801AD658 EAB50608 */  j          .L801AD7A8
    /* 246E4 801AD65C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801AD660
    /* 246E8 801AD660 1E80013C */  lui        $at, %hi(D_801D92A3)
    /* 246EC 801AD664 A39220A0 */  sb         $zero, %lo(D_801D92A3)($at)
    /* 246F0 801AD668 1E80013C */  lui        $at, %hi(D_801D92BF)
    /* 246F4 801AD66C BF9220A0 */  sb         $zero, %lo(D_801D92BF)($at)
    /* 246F8 801AD670 1E80013C */  lui        $at, %hi(D_801D8FA0)
    /* 246FC 801AD674 A08F20A0 */  sb         $zero, %lo(D_801D8FA0)($at)
    /* 24700 801AD678 1D80013C */  lui        $at, %hi(D_801D2784)
    /* 24704 801AD67C 21083200 */  addu       $at, $at, $s2
    /* 24708 801AD680 84272290 */  lbu        $v0, %lo(D_801D2784)($at)
    /* 2470C 801AD684 00000000 */  nop
    /* 24710 801AD688 80100200 */  sll        $v0, $v0, 2
    /* 24714 801AD68C 1280013C */  lui        $at, %hi(D_8011D5F4)
    /* 24718 801AD690 21082200 */  addu       $at, $at, $v0
    /* 2471C 801AD694 F4D5258C */  lw         $a1, %lo(D_8011D5F4)($at)
    /* 24720 801AD698 183B060C */  jal        func_8018EC60
    /* 24724 801AD69C 21200000 */   addu      $a0, $zero, $zero
    /* 24728 801AD6A0 02000224 */  addiu      $v0, $zero, 0x2
    /* 2472C 801AD6A4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24730 801AD6A8 21088102 */  addu       $at, $s4, $at
    /* 24734 801AD6AC D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 24738 801AD6B0 F2B50608 */  j          .L801AD7C8
    /* 2473C 801AD6B4 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801AD6B8
    /* 24740 801AD6B8 10000424 */  addiu      $a0, $zero, 0x10
    /* 24744 801AD6BC 37BC010C */  jal        func_8006F0DC
    /* 24748 801AD6C0 21280000 */   addu      $a1, $zero, $zero
    /* 2474C 801AD6C4 3F004010 */  beqz       $v0, .L801AD7C4
    /* 24750 801AD6C8 03000224 */   addiu     $v0, $zero, 0x3
    /* 24754 801AD6CC F2B50608 */  j          .L801AD7C8
    /* 24758 801AD6D0 00000000 */   nop
  jlabel .L801AD6D4
    /* 2475C 801AD6D4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24760 801AD6D8 21088102 */  addu       $at, $s4, $at
    /* 24764 801AD6DC D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 24768 801AD6E0 3C5E80A2 */  sb         $zero, 0x5E3C($s4)
    /* 2476C 801AD6E4 1E80013C */  lui        $at, %hi(D_801D8FA0)
    /* 24770 801AD6E8 A08F20A0 */  sb         $zero, %lo(D_801D8FA0)($at)
    /* 24774 801AD6EC 1E80013C */  lui        $at, %hi(D_801D86BE)
    /* 24778 801AD6F0 BE8620A0 */  sb         $zero, %lo(D_801D86BE)($at)
    /* 2477C 801AD6F4 EAB50608 */  j          .L801AD7A8
    /* 24780 801AD6F8 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801AD6FC
    /* 24784 801AD6FC 1E80033C */  lui        $v1, %hi(D_801D86BE)
    /* 24788 801AD700 BE866390 */  lbu        $v1, %lo(D_801D86BE)($v1)
    /* 2478C 801AD704 00000000 */  nop
    /* 24790 801AD708 0C00622C */  sltiu      $v0, $v1, 0xC
    /* 24794 801AD70C 20004010 */  beqz       $v0, .L801AD790
    /* 24798 801AD710 02000424 */   addiu     $a0, $zero, 0x2
    /* 2479C 801AD714 0070053C */  lui        $a1, (0x70000000 >> 16)
    /* 247A0 801AD718 1E80063C */  lui        $a2, %hi(D_801D8D78)
    /* 247A4 801AD71C 788DC624 */  addiu      $a2, $a2, %lo(D_801D8D78)
    /* 247A8 801AD720 80180300 */  sll        $v1, $v1, 2
    /* 247AC 801AD724 0000C0A4 */  sh         $zero, 0x0($a2)
    /* 247B0 801AD728 1E80013C */  lui        $at, %hi(D_801D8D7A)
    /* 247B4 801AD72C 7A8D20A4 */  sh         $zero, %lo(D_801D8D7A)($at)
    /* 247B8 801AD730 1D80013C */  lui        $at, %hi(D_801D273C)
    /* 247BC 801AD734 21082300 */  addu       $at, $at, $v1
    /* 247C0 801AD738 3C272294 */  lhu        $v0, %lo(D_801D273C)($at)
    /* 247C4 801AD73C 21380000 */  addu       $a3, $zero, $zero
    /* 247C8 801AD740 1E80013C */  lui        $at, %hi(D_801D8D7C)
    /* 247CC 801AD744 7C8D22A4 */  sh         $v0, %lo(D_801D8D7C)($at)
    /* 247D0 801AD748 1D80013C */  lui        $at, %hi(D_801D273E)
    /* 247D4 801AD74C 21082300 */  addu       $at, $at, $v1
    /* 247D8 801AD750 3E272394 */  lhu        $v1, %lo(D_801D273E)($at)
  .L801AD754:
    /* 247DC 801AD754 01000224 */  addiu      $v0, $zero, 0x1
    /* 247E0 801AD758 1000A2AF */  sw         $v0, 0x10($sp)
    /* 247E4 801AD75C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 247E8 801AD760 1E80013C */  lui        $at, %hi(D_801D8D7E)
    /* 247EC 801AD764 7E8D23A4 */  sh         $v1, %lo(D_801D8D7E)($at)
    /* 247F0 801AD768 7850060C */  jal        func_801941E0
    /* 247F4 801AD76C 00000000 */   nop
    /* 247F8 801AD770 1E80023C */  lui        $v0, %hi(D_801D86BE)
    /* 247FC 801AD774 BE864290 */  lbu        $v0, %lo(D_801D86BE)($v0)
    /* 24800 801AD778 00000000 */  nop
    /* 24804 801AD77C 01004224 */  addiu      $v0, $v0, 0x1
    /* 24808 801AD780 1E80013C */  lui        $at, %hi(D_801D86BE)
    /* 2480C 801AD784 BE8622A0 */  sb         $v0, %lo(D_801D86BE)($at)
    /* 24810 801AD788 F2B50608 */  j          .L801AD7C8
    /* 24814 801AD78C 21100000 */   addu      $v0, $zero, $zero
  .L801AD790:
    /* 24818 801AD790 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2481C 801AD794 21088102 */  addu       $at, $s4, $at
    /* 24820 801AD798 D8AB2290 */  lbu        $v0, -0x5428($at)
    /* 24824 801AD79C 1E80013C */  lui        $at, %hi(D_801D92DB)
    /* 24828 801AD7A0 DB9220A0 */  sb         $zero, %lo(D_801D92DB)($at)
    /* 2482C 801AD7A4 01004224 */  addiu      $v0, $v0, 0x1
  .L801AD7A8:
    /* 24830 801AD7A8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 24834 801AD7AC 21088102 */  addu       $at, $s4, $at
    /* 24838 801AD7B0 D8AB22A0 */  sb         $v0, -0x5428($at)
    /* 2483C 801AD7B4 F2B50608 */  j          .L801AD7C8
    /* 24840 801AD7B8 21100000 */   addu      $v0, $zero, $zero
  jlabel .L801AD7BC
    /* 24844 801AD7BC F2B50608 */  j          .L801AD7C8
    /* 24848 801AD7C0 01000224 */   addiu     $v0, $zero, 0x1
  jlabel .L801AD7C4
    /* 2484C 801AD7C4 21100000 */  addu       $v0, $zero, $zero
  .L801AD7C8:
    /* 24850 801AD7C8 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 24854 801AD7CC 5800B48F */  lw         $s4, 0x58($sp)
    /* 24858 801AD7D0 5400B38F */  lw         $s3, 0x54($sp)
    /* 2485C 801AD7D4 5000B28F */  lw         $s2, 0x50($sp)
    /* 24860 801AD7D8 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 24864 801AD7DC 4800B08F */  lw         $s0, 0x48($sp)
    /* 24868 801AD7E0 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 2486C 801AD7E4 0800E003 */  jr         $ra
    /* 24870 801AD7E8 00000000 */   nop
endlabel func_801ACE2C
