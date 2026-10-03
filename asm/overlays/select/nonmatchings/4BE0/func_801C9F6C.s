nonmatching func_801C9F6C, 0xB90

glabel func_801C9F6C
    /* 40FF4 801C9F6C 801F033C */  lui        $v1, (0x1F80029B >> 16)
    /* 40FF8 801C9F70 9B026390 */  lbu        $v1, (0x1F80029B & 0xFFFF)($v1)
    /* 40FFC 801C9F74 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 41000 801C9F78 3000B4AF */  sw         $s4, 0x30($sp)
    /* 41004 801C9F7C 1080143C */  lui        $s4, %hi(D_800FF748)
    /* 41008 801C9F80 48F79426 */  addiu      $s4, $s4, %lo(D_800FF748)
    /* 4100C 801C9F84 2000B0AF */  sw         $s0, 0x20($sp)
    /* 41010 801C9F88 801F103C */  lui        $s0, (0x1F800330 >> 16)
    /* 41014 801C9F8C 3400BFAF */  sw         $ra, 0x34($sp)
    /* 41018 801C9F90 2C00B3AF */  sw         $s3, 0x2C($sp)
    /* 4101C 801C9F94 2800B2AF */  sw         $s2, 0x28($sp)
    /* 41020 801C9F98 0600622C */  sltiu      $v0, $v1, 0x6
    /* 41024 801C9F9C CE024010 */  beqz       $v0, .L801CAAD8
    /* 41028 801C9FA0 2400B1AF */   sw        $s1, 0x24($sp)
    /* 4102C 801C9FA4 80100300 */  sll        $v0, $v1, 2
    /* 41030 801C9FA8 1980013C */  lui        $at, %hi(jtbl_8018D98C)
    /* 41034 801C9FAC 21082200 */  addu       $at, $at, $v0
    /* 41038 801C9FB0 8CD9228C */  lw         $v0, %lo(jtbl_8018D98C)($at)
    /* 4103C 801C9FB4 00000000 */  nop
    /* 41040 801C9FB8 08004000 */  jr         $v0
    /* 41044 801C9FBC 00000000 */   nop
  jlabel .L801C9FC0
    /* 41048 801C9FC0 453F010C */  jal        func_8004FD14
    /* 4104C 801C9FC4 21200000 */   addu      $a0, $zero, $zero
    /* 41050 801C9FC8 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 41054 801C9FCC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 41058 801C9FD0 21088102 */  addu       $at, $s4, $at
    /* 4105C 801C9FD4 D6AB22A4 */  sh         $v0, -0x542A($at)
    /* 41060 801C9FD8 01000224 */  addiu      $v0, $zero, 0x1
    /* 41064 801C9FDC 775C000C */  jal        func_800171DC
    /* 41068 801C9FE0 300302A2 */   sb        $v0, (0x1F800330 & 0xFFFF)($s0)
    /* 4106C 801C9FE4 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 41070 801C9FE8 58A020AC */  sw         $zero, %lo(D_801DA058)($at)
    /* 41074 801C9FEC 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 41078 801C9FF0 5CA020AC */  sw         $zero, %lo(D_801DA05C)($at)
    /* 4107C 801C9FF4 B62A0708 */  j          .L801CAAD8
    /* 41080 801C9FF8 00000000 */   nop
  jlabel .L801C9FFC
    /* 41084 801C9FFC 623C060C */  jal        func_8018F188
    /* 41088 801CA000 01000424 */   addiu     $a0, $zero, 0x1
    /* 4108C 801CA004 B4024010 */  beqz       $v0, .L801CAAD8
    /* 41090 801CA008 0C000424 */   addiu     $a0, $zero, 0xC
    /* 41094 801CA00C 00800534 */  ori        $a1, $zero, 0x8000
    /* 41098 801CA010 21300000 */  addu       $a2, $zero, $zero
    /* 4109C 801CA014 21380000 */  addu       $a3, $zero, $zero
    /* 410A0 801CA018 1C001024 */  addiu      $s0, $zero, 0x1C
    /* 410A4 801CA01C 01001124 */  addiu      $s1, $zero, 0x1
    /* 410A8 801CA020 1000A0AF */  sw         $zero, 0x10($sp)
    /* 410AC 801CA024 1400B0AF */  sw         $s0, 0x14($sp)
    /* 410B0 801CA028 1800A0AF */  sw         $zero, 0x18($sp)
    /* 410B4 801CA02C B873000C */  jal        func_8001CEE0
    /* 410B8 801CA030 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 410BC 801CA034 0D000424 */  addiu      $a0, $zero, 0xD
    /* 410C0 801CA038 02800534 */  ori        $a1, $zero, 0x8002
    /* 410C4 801CA03C 21300000 */  addu       $a2, $zero, $zero
    /* 410C8 801CA040 21380000 */  addu       $a3, $zero, $zero
    /* 410CC 801CA044 1000A0AF */  sw         $zero, 0x10($sp)
    /* 410D0 801CA048 1400B0AF */  sw         $s0, 0x14($sp)
    /* 410D4 801CA04C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 410D8 801CA050 B873000C */  jal        func_8001CEE0
    /* 410DC 801CA054 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 410E0 801CA058 0E000424 */  addiu      $a0, $zero, 0xE
    /* 410E4 801CA05C 01800534 */  ori        $a1, $zero, 0x8001
    /* 410E8 801CA060 21300000 */  addu       $a2, $zero, $zero
    /* 410EC 801CA064 21380000 */  addu       $a3, $zero, $zero
    /* 410F0 801CA068 1000A0AF */  sw         $zero, 0x10($sp)
    /* 410F4 801CA06C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 410F8 801CA070 1800A0AF */  sw         $zero, 0x18($sp)
    /* 410FC 801CA074 B873000C */  jal        func_8001CEE0
    /* 41100 801CA078 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 41104 801CA07C 0F000424 */  addiu      $a0, $zero, 0xF
    /* 41108 801CA080 03800534 */  ori        $a1, $zero, 0x8003
    /* 4110C 801CA084 21300000 */  addu       $a2, $zero, $zero
    /* 41110 801CA088 21380000 */  addu       $a3, $zero, $zero
    /* 41114 801CA08C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 41118 801CA090 1400B0AF */  sw         $s0, 0x14($sp)
    /* 4111C 801CA094 1800A0AF */  sw         $zero, 0x18($sp)
    /* 41120 801CA098 B873000C */  jal        func_8001CEE0
    /* 41124 801CA09C 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 41128 801CA0A0 06000424 */  addiu      $a0, $zero, 0x6
    /* 4112C 801CA0A4 04800534 */  ori        $a1, $zero, 0x8004
    /* 41130 801CA0A8 21300000 */  addu       $a2, $zero, $zero
    /* 41134 801CA0AC 21380000 */  addu       $a3, $zero, $zero
    /* 41138 801CA0B0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4113C 801CA0B4 1400B0AF */  sw         $s0, 0x14($sp)
    /* 41140 801CA0B8 1800A0AF */  sw         $zero, 0x18($sp)
    /* 41144 801CA0BC B873000C */  jal        func_8001CEE0
    /* 41148 801CA0C0 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 4114C 801CA0C4 07000424 */  addiu      $a0, $zero, 0x7
    /* 41150 801CA0C8 05800534 */  ori        $a1, $zero, 0x8005
    /* 41154 801CA0CC 21300000 */  addu       $a2, $zero, $zero
    /* 41158 801CA0D0 21380000 */  addu       $a3, $zero, $zero
    /* 4115C 801CA0D4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 41160 801CA0D8 1400B0AF */  sw         $s0, 0x14($sp)
    /* 41164 801CA0DC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 41168 801CA0E0 B873000C */  jal        func_8001CEE0
    /* 4116C 801CA0E4 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 41170 801CA0E8 08000424 */  addiu      $a0, $zero, 0x8
    /* 41174 801CA0EC 06800534 */  ori        $a1, $zero, 0x8006
    /* 41178 801CA0F0 21300000 */  addu       $a2, $zero, $zero
    /* 4117C 801CA0F4 21380000 */  addu       $a3, $zero, $zero
    /* 41180 801CA0F8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 41184 801CA0FC 1400B0AF */  sw         $s0, 0x14($sp)
    /* 41188 801CA100 1800A0AF */  sw         $zero, 0x18($sp)
    /* 4118C 801CA104 B873000C */  jal        func_8001CEE0
    /* 41190 801CA108 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 41194 801CA10C 09000424 */  addiu      $a0, $zero, 0x9
    /* 41198 801CA110 07800534 */  ori        $a1, $zero, 0x8007
    /* 4119C 801CA114 21300000 */  addu       $a2, $zero, $zero
    /* 411A0 801CA118 21380000 */  addu       $a3, $zero, $zero
    /* 411A4 801CA11C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 411A8 801CA120 1400B0AF */  sw         $s0, 0x14($sp)
    /* 411AC 801CA124 1800A0AF */  sw         $zero, 0x18($sp)
    /* 411B0 801CA128 B873000C */  jal        func_8001CEE0
    /* 411B4 801CA12C 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 411B8 801CA130 0A000424 */  addiu      $a0, $zero, 0xA
    /* 411BC 801CA134 0C800534 */  ori        $a1, $zero, 0x800C
    /* 411C0 801CA138 21300000 */  addu       $a2, $zero, $zero
    /* 411C4 801CA13C 21380000 */  addu       $a3, $zero, $zero
    /* 411C8 801CA140 82001224 */  addiu      $s2, $zero, 0x82
    /* 411CC 801CA144 1000A0AF */  sw         $zero, 0x10($sp)
    /* 411D0 801CA148 1400B0AF */  sw         $s0, 0x14($sp)
    /* 411D4 801CA14C 1800B2AF */  sw         $s2, 0x18($sp)
    /* 411D8 801CA150 B873000C */  jal        func_8001CEE0
    /* 411DC 801CA154 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 411E0 801CA158 0B000424 */  addiu      $a0, $zero, 0xB
    /* 411E4 801CA15C 0C800534 */  ori        $a1, $zero, 0x800C
    /* 411E8 801CA160 21300000 */  addu       $a2, $zero, $zero
    /* 411EC 801CA164 21380000 */  addu       $a3, $zero, $zero
    /* 411F0 801CA168 B4000224 */  addiu      $v0, $zero, 0xB4
    /* 411F4 801CA16C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 411F8 801CA170 1400B0AF */  sw         $s0, 0x14($sp)
    /* 411FC 801CA174 1800B2AF */  sw         $s2, 0x18($sp)
    /* 41200 801CA178 B873000C */  jal        func_8001CEE0
    /* 41204 801CA17C 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 41208 801CA180 10000424 */  addiu      $a0, $zero, 0x10
    /* 4120C 801CA184 08800534 */  ori        $a1, $zero, 0x8008
    /* 41210 801CA188 21300000 */  addu       $a2, $zero, $zero
    /* 41214 801CA18C 21380000 */  addu       $a3, $zero, $zero
    /* 41218 801CA190 1000A0AF */  sw         $zero, 0x10($sp)
    /* 4121C 801CA194 1400B0AF */  sw         $s0, 0x14($sp)
    /* 41220 801CA198 1800A0AF */  sw         $zero, 0x18($sp)
    /* 41224 801CA19C B873000C */  jal        func_8001CEE0
    /* 41228 801CA1A0 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 4122C 801CA1A4 11000424 */  addiu      $a0, $zero, 0x11
    /* 41230 801CA1A8 0A800534 */  ori        $a1, $zero, 0x800A
    /* 41234 801CA1AC 21300000 */  addu       $a2, $zero, $zero
    /* 41238 801CA1B0 21380000 */  addu       $a3, $zero, $zero
    /* 4123C 801CA1B4 1000A0AF */  sw         $zero, 0x10($sp)
    /* 41240 801CA1B8 1400B0AF */  sw         $s0, 0x14($sp)
    /* 41244 801CA1BC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 41248 801CA1C0 B873000C */  jal        func_8001CEE0
    /* 4124C 801CA1C4 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 41250 801CA1C8 12000424 */  addiu      $a0, $zero, 0x12
    /* 41254 801CA1CC 09800534 */  ori        $a1, $zero, 0x8009
    /* 41258 801CA1D0 21300000 */  addu       $a2, $zero, $zero
    /* 4125C 801CA1D4 21380000 */  addu       $a3, $zero, $zero
    /* 41260 801CA1D8 1000A0AF */  sw         $zero, 0x10($sp)
    /* 41264 801CA1DC 1400B0AF */  sw         $s0, 0x14($sp)
    /* 41268 801CA1E0 1800A0AF */  sw         $zero, 0x18($sp)
    /* 4126C 801CA1E4 B873000C */  jal        func_8001CEE0
    /* 41270 801CA1E8 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 41274 801CA1EC 13000424 */  addiu      $a0, $zero, 0x13
    /* 41278 801CA1F0 0B800534 */  ori        $a1, $zero, 0x800B
    /* 4127C 801CA1F4 21300000 */  addu       $a2, $zero, $zero
    /* 41280 801CA1F8 21380000 */  addu       $a3, $zero, $zero
    /* 41284 801CA1FC 1000A0AF */  sw         $zero, 0x10($sp)
    /* 41288 801CA200 1400B0AF */  sw         $s0, 0x14($sp)
    /* 4128C 801CA204 1800A0AF */  sw         $zero, 0x18($sp)
    /* 41290 801CA208 B873000C */  jal        func_8001CEE0
    /* 41294 801CA20C 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 41298 801CA210 14000424 */  addiu      $a0, $zero, 0x14
    /* 4129C 801CA214 0D800534 */  ori        $a1, $zero, 0x800D
    /* 412A0 801CA218 21300000 */  addu       $a2, $zero, $zero
    /* 412A4 801CA21C 21380000 */  addu       $a3, $zero, $zero
    /* 412A8 801CA220 1000A0AF */  sw         $zero, 0x10($sp)
    /* 412AC 801CA224 1400B0AF */  sw         $s0, 0x14($sp)
    /* 412B0 801CA228 1800A0AF */  sw         $zero, 0x18($sp)
    /* 412B4 801CA22C B873000C */  jal        func_8001CEE0
    /* 412B8 801CA230 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 412BC 801CA234 35000424 */  addiu      $a0, $zero, 0x35
    /* 412C0 801CA238 0E800534 */  ori        $a1, $zero, 0x800E
    /* 412C4 801CA23C 21300000 */  addu       $a2, $zero, $zero
    /* 412C8 801CA240 21380000 */  addu       $a3, $zero, $zero
    /* 412CC 801CA244 09000224 */  addiu      $v0, $zero, 0x9
    /* 412D0 801CA248 1000A0AF */  sw         $zero, 0x10($sp)
    /* 412D4 801CA24C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 412D8 801CA250 1800A0AF */  sw         $zero, 0x18($sp)
    /* 412DC 801CA254 B873000C */  jal        func_8001CEE0
    /* 412E0 801CA258 1C00B1AF */   sw        $s1, 0x1C($sp)
    /* 412E4 801CA25C BF2A070C */  jal        func_801CAAFC
    /* 412E8 801CA260 00000000 */   nop
    /* 412EC 801CA264 06000424 */  addiu      $a0, $zero, 0x6
    /* 412F0 801CA268 01000524 */  addiu      $a1, $zero, 0x1
    /* 412F4 801CA26C BDBE010C */  jal        func_8006FAF4
    /* 412F8 801CA270 8C000624 */   addiu     $a2, $zero, 0x8C
    /* 412FC 801CA274 08000424 */  addiu      $a0, $zero, 0x8
    /* 41300 801CA278 01000524 */  addiu      $a1, $zero, 0x1
    /* 41304 801CA27C BDBE010C */  jal        func_8006FAF4
    /* 41308 801CA280 8C000624 */   addiu     $a2, $zero, 0x8C
    /* 4130C 801CA284 532C070C */  jal        func_801CB14C
    /* 41310 801CA288 00000000 */   nop
    /* 41314 801CA28C DE2B070C */  jal        func_801CAF78
    /* 41318 801CA290 21200000 */   addu      $a0, $zero, $zero
    /* 4131C 801CA294 DE2B070C */  jal        func_801CAF78
    /* 41320 801CA298 01000424 */   addiu     $a0, $zero, 0x1
    /* 41324 801CA29C 775C000C */  jal        func_800171DC
    /* 41328 801CA2A0 00000000 */   nop
    /* 4132C 801CA2A4 B62A0708 */  j          .L801CAAD8
    /* 41330 801CA2A8 00000000 */   nop
  jlabel .L801CA2AC
    /* 41334 801CA2AC 1FBC010C */  jal        func_8006F07C
    /* 41338 801CA2B0 10000424 */   addiu     $a0, $zero, 0x10
    /* 4133C 801CA2B4 08024010 */  beqz       $v0, .L801CAAD8
    /* 41340 801CA2B8 00000000 */   nop
    /* 41344 801CA2BC 1E80013C */  lui        $at, %hi(D_801DA064)
    /* 41348 801CA2C0 64A020AC */  sw         $zero, %lo(D_801DA064)($at)
    /* 4134C 801CA2C4 1E80013C */  lui        $at, %hi(D_801DA060)
    /* 41350 801CA2C8 60A020AC */  sw         $zero, %lo(D_801DA060)($at)
    /* 41354 801CA2CC 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 41358 801CA2D0 58A020AC */  sw         $zero, %lo(D_801DA058)($at)
    /* 4135C 801CA2D4 1E80013C */  lui        $at, %hi(D_801D8A15)
    /* 41360 801CA2D8 158A20A0 */  sb         $zero, %lo(D_801D8A15)($at)
    /* 41364 801CA2DC 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 41368 801CA2E0 148A20A0 */  sb         $zero, %lo(D_801D8A14)($at)
    /* 4136C 801CA2E4 1E80013C */  lui        $at, %hi(D_801D8A17)
    /* 41370 801CA2E8 178A20A0 */  sb         $zero, %lo(D_801D8A17)($at)
    /* 41374 801CA2EC 1E80013C */  lui        $at, %hi(D_801D8A16)
    /* 41378 801CA2F0 168A20A0 */  sb         $zero, %lo(D_801D8A16)($at)
    /* 4137C 801CA2F4 1E80013C */  lui        $at, %hi(D_801D8A19)
    /* 41380 801CA2F8 198A20A0 */  sb         $zero, %lo(D_801D8A19)($at)
    /* 41384 801CA2FC 1E80013C */  lui        $at, %hi(D_801D8A18)
    /* 41388 801CA300 188A20A0 */  sb         $zero, %lo(D_801D8A18)($at)
    /* 4138C 801CA304 775C000C */  jal        func_800171DC
    /* 41390 801CA308 00000000 */   nop
    /* 41394 801CA30C B62A0708 */  j          .L801CAAD8
    /* 41398 801CA310 00000000 */   nop
  jlabel .L801CA314
    /* 4139C 801CA314 DF2C070C */  jal        func_801CB37C
    /* 413A0 801CA318 21200000 */   addu      $a0, $zero, $zero
    /* 413A4 801CA31C DF2C070C */  jal        func_801CB37C
    /* 413A8 801CA320 01000424 */   addiu     $a0, $zero, 0x1
    /* 413AC 801CA324 21900000 */  addu       $s2, $zero, $zero
    /* 413B0 801CA328 1E80023C */  lui        $v0, %hi(D_801DA058)
    /* 413B4 801CA32C 58A0428C */  lw         $v0, %lo(D_801DA058)($v0)
    /* 413B8 801CA330 7FFF1324 */  addiu      $s3, $zero, -0x81
    /* 413BC 801CA334 01004224 */  addiu      $v0, $v0, 0x1
    /* 413C0 801CA338 1E80013C */  lui        $at, %hi(D_801DA058)
    /* 413C4 801CA33C 58A022AC */  sw         $v0, %lo(D_801DA058)($at)
    /* 413C8 801CA340 FF004232 */  andi       $v0, $s2, 0xFF
  .L801CA344:
    /* 413CC 801CA344 05004010 */  beqz       $v0, .L801CA35C
    /* 413D0 801CA348 00000000 */   nop
    /* 413D4 801CA34C 1E80023C */  lui        $v0, %hi(D_801DA064)
    /* 413D8 801CA350 64A0428C */  lw         $v0, %lo(D_801DA064)($v0)
    /* 413DC 801CA354 DB280708 */  j          .L801CA36C
    /* 413E0 801CA358 C3110200 */   sra       $v0, $v0, 7
  .L801CA35C:
    /* 413E4 801CA35C 1E80023C */  lui        $v0, %hi(D_801DA060)
    /* 413E8 801CA360 60A0428C */  lw         $v0, %lo(D_801DA060)($v0)
    /* 413EC 801CA364 00000000 */  nop
    /* 413F0 801CA368 C3110200 */  sra        $v0, $v0, 7
  .L801CA36C:
    /* 413F4 801CA36C 01004230 */  andi       $v0, $v0, 0x1
    /* 413F8 801CA370 E2004014 */  bnez       $v0, .L801CA6FC
    /* 413FC 801CA374 FF005032 */   andi      $s0, $s2, 0xFF
    /* 41400 801CA378 0A000226 */  addiu      $v0, $s0, 0xA
    /* 41404 801CA37C 80280200 */  sll        $a1, $v0, 2
    /* 41408 801CA380 2128A200 */  addu       $a1, $a1, $v0
    /* 4140C 801CA384 C0280500 */  sll        $a1, $a1, 3
    /* 41410 801CA388 21288502 */  addu       $a1, $s4, $a1
    /* 41414 801CA38C 40881000 */  sll        $s1, $s0, 1
    /* 41418 801CA390 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 4141C 801CA394 21083000 */  addu       $at, $at, $s0
    /* 41420 801CA398 148A2390 */  lbu        $v1, %lo(D_801D8A14)($at)
    /* 41424 801CA39C 99000624 */  addiu      $a2, $zero, 0x99
    /* 41428 801CA3A0 40100300 */  sll        $v0, $v1, 1
    /* 4142C 801CA3A4 21104300 */  addu       $v0, $v0, $v1
    /* 41430 801CA3A8 C0100200 */  sll        $v0, $v0, 3
    /* 41434 801CA3AC 21104300 */  addu       $v0, $v0, $v1
    /* 41438 801CA3B0 C0100200 */  sll        $v0, $v0, 3
    /* 4143C 801CA3B4 21104300 */  addu       $v0, $v0, $v1
    /* 41440 801CA3B8 D05DA2A4 */  sh         $v0, 0x5DD0($a1)
    /* 41444 801CA3BC 1E80013C */  lui        $at, %hi(D_801D8A16)
    /* 41448 801CA3C0 21083000 */  addu       $at, $at, $s0
    /* 4144C 801CA3C4 168A2290 */  lbu        $v0, %lo(D_801D8A16)($at)
    /* 41450 801CA3C8 21183002 */  addu       $v1, $s1, $s0
    /* 41454 801CA3CC 80200200 */  sll        $a0, $v0, 2
    /* 41458 801CA3D0 21208200 */  addu       $a0, $a0, $v0
    /* 4145C 801CA3D4 00110300 */  sll        $v0, $v1, 4
    /* 41460 801CA3D8 23104300 */  subu       $v0, $v0, $v1
    /* 41464 801CA3DC 21104400 */  addu       $v0, $v0, $a0
    /* 41468 801CA3E0 80100200 */  sll        $v0, $v0, 2
    /* 4146C 801CA3E4 D25DA2A4 */  sh         $v0, 0x5DD2($a1)
    /* 41470 801CA3E8 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 41474 801CA3EC 21083000 */  addu       $at, $at, $s0
    /* 41478 801CA3F0 148A2490 */  lbu        $a0, %lo(D_801D8A14)($at)
    /* 4147C 801CA3F4 1E80013C */  lui        $at, %hi(D_801D8A16)
    /* 41480 801CA3F8 21083000 */  addu       $at, $at, $s0
    /* 41484 801CA3FC 168A2590 */  lbu        $a1, %lo(D_801D8A16)($at)
    /* 41488 801CA400 06008424 */  addiu      $a0, $a0, 0x6
    /* 4148C 801CA404 21202402 */  addu       $a0, $s1, $a0
    /* 41490 801CA408 BDBE010C */  jal        func_8006FAF4
    /* 41494 801CA40C 0100A524 */   addiu     $a1, $a1, 0x1
    /* 41498 801CA410 20BB010C */  jal        func_8006EC80
    /* 4149C 801CA414 21200002 */   addu      $a0, $s0, $zero
    /* 414A0 801CA418 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 414A4 801CA41C 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 414A8 801CA420 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 414AC 801CA424 00800234 */  ori        $v0, $zero, 0x8000
    /* 414B0 801CA428 03006210 */  beq        $v1, $v0, .L801CA438
    /* 414B4 801CA42C 00200224 */   addiu     $v0, $zero, 0x2000
    /* 414B8 801CA430 67006214 */  bne        $v1, $v0, .L801CA5D0
    /* 414BC 801CA434 00000000 */   nop
  .L801CA438:
    /* 414C0 801CA438 1E80013C */  lui        $at, %hi(D_801D8A16)
    /* 414C4 801CA43C 21083000 */  addu       $at, $at, $s0
    /* 414C8 801CA440 168A2590 */  lbu        $a1, %lo(D_801D8A16)($at)
    /* 414CC 801CA444 06000224 */  addiu      $v0, $zero, 0x6
    /* 414D0 801CA448 A301A210 */  beq        $a1, $v0, .L801CAAD8
    /* 414D4 801CA44C 0100A524 */   addiu     $a1, $a1, 0x1
    /* 414D8 801CA450 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 414DC 801CA454 21083000 */  addu       $at, $at, $s0
    /* 414E0 801CA458 148A2490 */  lbu        $a0, %lo(D_801D8A14)($at)
    /* 414E4 801CA45C 8C000624 */  addiu      $a2, $zero, 0x8C
    /* 414E8 801CA460 06008424 */  addiu      $a0, $a0, 0x6
    /* 414EC 801CA464 BDBE010C */  jal        func_8006FAF4
    /* 414F0 801CA468 21202402 */   addu      $a0, $s1, $a0
    /* 414F4 801CA46C 8C000524 */  addiu      $a1, $zero, 0x8C
    /* 414F8 801CA470 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 414FC 801CA474 21083000 */  addu       $at, $at, $s0
    /* 41500 801CA478 148A2490 */  lbu        $a0, %lo(D_801D8A14)($at)
    /* 41504 801CA47C 8D000624 */  addiu      $a2, $zero, 0x8D
    /* 41508 801CA480 0C008424 */  addiu      $a0, $a0, 0xC
    /* 4150C 801CA484 E93A060C */  jal        func_8018EBA4
    /* 41510 801CA488 21202402 */   addu      $a0, $s1, $a0
    /* 41514 801CA48C 69000524 */  addiu      $a1, $zero, 0x69
    /* 41518 801CA490 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 4151C 801CA494 21083000 */  addu       $at, $at, $s0
    /* 41520 801CA498 148A2490 */  lbu        $a0, %lo(D_801D8A14)($at)
    /* 41524 801CA49C 6A000624 */  addiu      $a2, $zero, 0x6A
    /* 41528 801CA4A0 06008424 */  addiu      $a0, $a0, 0x6
    /* 4152C 801CA4A4 E93A060C */  jal        func_8018EBA4
    /* 41530 801CA4A8 21202402 */   addu      $a0, $s1, $a0
    /* 41534 801CA4AC 8C000524 */  addiu      $a1, $zero, 0x8C
    /* 41538 801CA4B0 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 4153C 801CA4B4 21083000 */  addu       $at, $at, $s0
    /* 41540 801CA4B8 148A2490 */  lbu        $a0, %lo(D_801D8A14)($at)
    /* 41544 801CA4BC 8D000624 */  addiu      $a2, $zero, 0x8D
    /* 41548 801CA4C0 06008424 */  addiu      $a0, $a0, 0x6
    /* 4154C 801CA4C4 E93A060C */  jal        func_8018EBA4
    /* 41550 801CA4C8 21202402 */   addu      $a0, $s1, $a0
    /* 41554 801CA4CC 82000524 */  addiu      $a1, $zero, 0x82
    /* 41558 801CA4D0 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 4155C 801CA4D4 21083000 */  addu       $at, $at, $s0
    /* 41560 801CA4D8 148A2490 */  lbu        $a0, %lo(D_801D8A14)($at)
    /* 41564 801CA4DC 83000624 */  addiu      $a2, $zero, 0x83
    /* 41568 801CA4E0 10008424 */  addiu      $a0, $a0, 0x10
    /* 4156C 801CA4E4 E93A060C */  jal        func_8018EBA4
    /* 41570 801CA4E8 21202402 */   addu      $a0, $s1, $a0
    /* 41574 801CA4EC 8C000524 */  addiu      $a1, $zero, 0x8C
    /* 41578 801CA4F0 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 4157C 801CA4F4 21083000 */  addu       $at, $at, $s0
    /* 41580 801CA4F8 148A2490 */  lbu        $a0, %lo(D_801D8A14)($at)
    /* 41584 801CA4FC 8D000624 */  addiu      $a2, $zero, 0x8D
    /* 41588 801CA500 10008424 */  addiu      $a0, $a0, 0x10
    /* 4158C 801CA504 E93A060C */  jal        func_8018EBA4
    /* 41590 801CA508 21202402 */   addu      $a0, $s1, $a0
    /* 41594 801CA50C 88AD020C */  jal        func_800AB620
    /* 41598 801CA510 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 4159C 801CA514 21280000 */  addu       $a1, $zero, $zero
    /* 415A0 801CA518 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 415A4 801CA51C 21083000 */  addu       $at, $at, $s0
    /* 415A8 801CA520 148A2490 */  lbu        $a0, %lo(D_801D8A14)($at)
    /* 415AC 801CA524 9039060C */  jal        func_8018E640
    /* 415B0 801CA528 01000624 */   addiu     $a2, $zero, 0x1
    /* 415B4 801CA52C FF004430 */  andi       $a0, $v0, 0xFF
    /* 415B8 801CA530 0C008424 */  addiu      $a0, $a0, 0xC
    /* 415BC 801CA534 21202402 */  addu       $a0, $s1, $a0
    /* 415C0 801CA538 8D000524 */  addiu      $a1, $zero, 0x8D
    /* 415C4 801CA53C 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 415C8 801CA540 21083000 */  addu       $at, $at, $s0
    /* 415CC 801CA544 148A22A0 */  sb         $v0, %lo(D_801D8A14)($at)
    /* 415D0 801CA548 E93A060C */  jal        func_8018EBA4
    /* 415D4 801CA54C 8C000624 */   addiu     $a2, $zero, 0x8C
    /* 415D8 801CA550 6A000524 */  addiu      $a1, $zero, 0x6A
    /* 415DC 801CA554 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 415E0 801CA558 21083000 */  addu       $at, $at, $s0
    /* 415E4 801CA55C 148A2490 */  lbu        $a0, %lo(D_801D8A14)($at)
    /* 415E8 801CA560 69000624 */  addiu      $a2, $zero, 0x69
    /* 415EC 801CA564 06008424 */  addiu      $a0, $a0, 0x6
    /* 415F0 801CA568 E93A060C */  jal        func_8018EBA4
    /* 415F4 801CA56C 21202402 */   addu      $a0, $s1, $a0
    /* 415F8 801CA570 8D000524 */  addiu      $a1, $zero, 0x8D
    /* 415FC 801CA574 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 41600 801CA578 21083000 */  addu       $at, $at, $s0
    /* 41604 801CA57C 148A2490 */  lbu        $a0, %lo(D_801D8A14)($at)
    /* 41608 801CA580 8C000624 */  addiu      $a2, $zero, 0x8C
    /* 4160C 801CA584 06008424 */  addiu      $a0, $a0, 0x6
    /* 41610 801CA588 E93A060C */  jal        func_8018EBA4
    /* 41614 801CA58C 21202402 */   addu      $a0, $s1, $a0
    /* 41618 801CA590 83000524 */  addiu      $a1, $zero, 0x83
    /* 4161C 801CA594 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 41620 801CA598 21083000 */  addu       $at, $at, $s0
    /* 41624 801CA59C 148A2490 */  lbu        $a0, %lo(D_801D8A14)($at)
    /* 41628 801CA5A0 82000624 */  addiu      $a2, $zero, 0x82
    /* 4162C 801CA5A4 10008424 */  addiu      $a0, $a0, 0x10
    /* 41630 801CA5A8 E93A060C */  jal        func_8018EBA4
    /* 41634 801CA5AC 21202402 */   addu      $a0, $s1, $a0
    /* 41638 801CA5B0 8D000524 */  addiu      $a1, $zero, 0x8D
    /* 4163C 801CA5B4 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 41640 801CA5B8 21083000 */  addu       $at, $at, $s0
    /* 41644 801CA5BC 148A2490 */  lbu        $a0, %lo(D_801D8A14)($at)
    /* 41648 801CA5C0 8C000624 */  addiu      $a2, $zero, 0x8C
    /* 4164C 801CA5C4 10008424 */  addiu      $a0, $a0, 0x10
    /* 41650 801CA5C8 E93A060C */  jal        func_8018EBA4
    /* 41654 801CA5CC 21202402 */   addu      $a0, $s1, $a0
  .L801CA5D0:
    /* 41658 801CA5D0 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 4165C 801CA5D4 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 41660 801CA5D8 00100224 */  addiu      $v0, $zero, 0x1000
    /* 41664 801CA5DC 03006210 */  beq        $v1, $v0, .L801CA5EC
    /* 41668 801CA5E0 00400224 */   addiu     $v0, $zero, 0x4000
    /* 4166C 801CA5E4 24006214 */  bne        $v1, $v0, .L801CA678
    /* 41670 801CA5E8 20000224 */   addiu     $v0, $zero, 0x20
  .L801CA5EC:
    /* 41674 801CA5EC 8C000624 */  addiu      $a2, $zero, 0x8C
    /* 41678 801CA5F0 FF005032 */  andi       $s0, $s2, 0xFF
    /* 4167C 801CA5F4 40101000 */  sll        $v0, $s0, 1
    /* 41680 801CA5F8 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 41684 801CA5FC 21083000 */  addu       $at, $at, $s0
    /* 41688 801CA600 148A2490 */  lbu        $a0, %lo(D_801D8A14)($at)
    /* 4168C 801CA604 1E80013C */  lui        $at, %hi(D_801D8A16)
    /* 41690 801CA608 21083000 */  addu       $at, $at, $s0
    /* 41694 801CA60C 168A2590 */  lbu        $a1, %lo(D_801D8A16)($at)
    /* 41698 801CA610 06008424 */  addiu      $a0, $a0, 0x6
    /* 4169C 801CA614 21204400 */  addu       $a0, $v0, $a0
    /* 416A0 801CA618 BDBE010C */  jal        func_8006FAF4
    /* 416A4 801CA61C 0100A524 */   addiu     $a1, $a1, 0x1
    /* 416A8 801CA620 88AD020C */  jal        func_800AB620
    /* 416AC 801CA624 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 416B0 801CA628 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 416B4 801CA62C 21083000 */  addu       $at, $at, $s0
    /* 416B8 801CA630 148A2290 */  lbu        $v0, %lo(D_801D8A14)($at)
    /* 416BC 801CA634 1E80013C */  lui        $at, %hi(D_801D8A16)
    /* 416C0 801CA638 21083000 */  addu       $at, $at, $s0
    /* 416C4 801CA63C 168A2490 */  lbu        $a0, %lo(D_801D8A16)($at)
    /* 416C8 801CA640 02004010 */  beqz       $v0, .L801CA64C
    /* 416CC 801CA644 06000624 */   addiu     $a2, $zero, 0x6
    /* 416D0 801CA648 05000624 */  addiu      $a2, $zero, 0x5
  .L801CA64C:
    /* 416D4 801CA64C 7B39060C */  jal        func_8018E5EC
    /* 416D8 801CA650 21280000 */   addu      $a1, $zero, $zero
    /* 416DC 801CA654 1E80013C */  lui        $at, %hi(D_801D8A16)
    /* 416E0 801CA658 21083000 */  addu       $at, $at, $s0
    /* 416E4 801CA65C 168A22A0 */  sb         $v0, %lo(D_801D8A16)($at)
    /* 416E8 801CA660 1E80013C */  lui        $at, %hi(D_801D8A18)
    /* 416EC 801CA664 21083000 */  addu       $at, $at, $s0
    /* 416F0 801CA668 188A22A0 */  sb         $v0, %lo(D_801D8A18)($at)
    /* 416F4 801CA66C 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 416F8 801CA670 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 416FC 801CA674 20000224 */  addiu      $v0, $zero, 0x20
  .L801CA678:
    /* 41700 801CA678 13006214 */  bne        $v1, $v0, .L801CA6C8
    /* 41704 801CA67C FF004232 */   andi      $v0, $s2, 0xFF
    /* 41708 801CA680 09004010 */  beqz       $v0, .L801CA6A8
    /* 4170C 801CA684 00000000 */   nop
    /* 41710 801CA688 1E80023C */  lui        $v0, %hi(D_801DA064)
    /* 41714 801CA68C 64A0428C */  lw         $v0, %lo(D_801DA064)($v0)
    /* 41718 801CA690 00000000 */  nop
    /* 4171C 801CA694 80004234 */  ori        $v0, $v0, 0x80
    /* 41720 801CA698 1E80013C */  lui        $at, %hi(D_801DA064)
    /* 41724 801CA69C 64A022AC */  sw         $v0, %lo(D_801DA064)($at)
    /* 41728 801CA6A0 B0290708 */  j          .L801CA6C0
    /* 4172C 801CA6A4 00000000 */   nop
  .L801CA6A8:
    /* 41730 801CA6A8 1E80023C */  lui        $v0, %hi(D_801DA060)
    /* 41734 801CA6AC 60A0428C */  lw         $v0, %lo(D_801DA060)($v0)
    /* 41738 801CA6B0 00000000 */  nop
    /* 4173C 801CA6B4 80004234 */  ori        $v0, $v0, 0x80
    /* 41740 801CA6B8 1E80013C */  lui        $at, %hi(D_801DA060)
    /* 41744 801CA6BC 60A022AC */  sw         $v0, %lo(D_801DA060)($at)
  .L801CA6C0:
    /* 41748 801CA6C0 88AD020C */  jal        func_800AB620
    /* 4174C 801CA6C4 28050424 */   addiu     $a0, $zero, 0x528
  .L801CA6C8:
    /* 41750 801CA6C8 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 41754 801CA6CC A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 41758 801CA6D0 40000224 */  addiu      $v0, $zero, 0x40
    /* 4175C 801CA6D4 E2006214 */  bne        $v1, $v0, .L801CAA60
    /* 41760 801CA6D8 FF004232 */   andi      $v0, $s2, 0xFF
    /* 41764 801CA6DC E1004014 */  bnez       $v0, .L801CAA64
    /* 41768 801CA6E0 01005226 */   addiu     $s2, $s2, 0x1
    /* 4176C 801CA6E4 88AD020C */  jal        func_800AB620
    /* 41770 801CA6E8 29050424 */   addiu     $a0, $zero, 0x529
    /* 41774 801CA6EC 775C000C */  jal        func_800171DC
    /* 41778 801CA6F0 00000000 */   nop
    /* 4177C 801CA6F4 B62A0708 */  j          .L801CAAD8
    /* 41780 801CA6F8 00000000 */   nop
  .L801CA6FC:
    /* 41784 801CA6FC 0A000226 */  addiu      $v0, $s0, 0xA
    /* 41788 801CA700 80280200 */  sll        $a1, $v0, 2
    /* 4178C 801CA704 2128A200 */  addu       $a1, $a1, $v0
    /* 41790 801CA708 C0280500 */  sll        $a1, $a1, 3
    /* 41794 801CA70C 21288502 */  addu       $a1, $s4, $a1
    /* 41798 801CA710 40881000 */  sll        $s1, $s0, 1
    /* 4179C 801CA714 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 417A0 801CA718 21083000 */  addu       $at, $at, $s0
    /* 417A4 801CA71C 148A2390 */  lbu        $v1, %lo(D_801D8A14)($at)
    /* 417A8 801CA720 99000624 */  addiu      $a2, $zero, 0x99
    /* 417AC 801CA724 40100300 */  sll        $v0, $v1, 1
    /* 417B0 801CA728 21104300 */  addu       $v0, $v0, $v1
    /* 417B4 801CA72C C0100200 */  sll        $v0, $v0, 3
    /* 417B8 801CA730 21104300 */  addu       $v0, $v0, $v1
    /* 417BC 801CA734 C0100200 */  sll        $v0, $v0, 3
    /* 417C0 801CA738 21104300 */  addu       $v0, $v0, $v1
    /* 417C4 801CA73C D05DA2A4 */  sh         $v0, 0x5DD0($a1)
    /* 417C8 801CA740 1E80013C */  lui        $at, %hi(D_801D8A18)
    /* 417CC 801CA744 21083000 */  addu       $at, $at, $s0
    /* 417D0 801CA748 188A2290 */  lbu        $v0, %lo(D_801D8A18)($at)
    /* 417D4 801CA74C 21183002 */  addu       $v1, $s1, $s0
    /* 417D8 801CA750 80200200 */  sll        $a0, $v0, 2
    /* 417DC 801CA754 21208200 */  addu       $a0, $a0, $v0
    /* 417E0 801CA758 00110300 */  sll        $v0, $v1, 4
    /* 417E4 801CA75C 23104300 */  subu       $v0, $v0, $v1
    /* 417E8 801CA760 21104400 */  addu       $v0, $v0, $a0
    /* 417EC 801CA764 80100200 */  sll        $v0, $v0, 2
    /* 417F0 801CA768 D25DA2A4 */  sh         $v0, 0x5DD2($a1)
    /* 417F4 801CA76C 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 417F8 801CA770 21083000 */  addu       $at, $at, $s0
    /* 417FC 801CA774 148A2490 */  lbu        $a0, %lo(D_801D8A14)($at)
    /* 41800 801CA778 1E80013C */  lui        $at, %hi(D_801D8A18)
    /* 41804 801CA77C 21083000 */  addu       $at, $at, $s0
    /* 41808 801CA780 188A2590 */  lbu        $a1, %lo(D_801D8A18)($at)
    /* 4180C 801CA784 06008424 */  addiu      $a0, $a0, 0x6
    /* 41810 801CA788 21202402 */  addu       $a0, $s1, $a0
    /* 41814 801CA78C BDBE010C */  jal        func_8006FAF4
    /* 41818 801CA790 0100A524 */   addiu     $a1, $a1, 0x1
    /* 4181C 801CA794 8E000624 */  addiu      $a2, $zero, 0x8E
    /* 41820 801CA798 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 41824 801CA79C 21083000 */  addu       $at, $at, $s0
    /* 41828 801CA7A0 148A2290 */  lbu        $v0, %lo(D_801D8A14)($at)
    /* 4182C 801CA7A4 1E80013C */  lui        $at, %hi(D_801D8A16)
    /* 41830 801CA7A8 21083000 */  addu       $at, $at, $s0
    /* 41834 801CA7AC 168A2390 */  lbu        $v1, %lo(D_801D8A16)($at)
    /* 41838 801CA7B0 06004224 */  addiu      $v0, $v0, 0x6
    /* 4183C 801CA7B4 21202202 */  addu       $a0, $s1, $v0
    /* 41840 801CA7B8 1E80023C */  lui        $v0, %hi(D_801DA058)
    /* 41844 801CA7BC 58A0428C */  lw         $v0, %lo(D_801DA058)($v0)
    /* 41848 801CA7C0 00000000 */  nop
    /* 4184C 801CA7C4 03110200 */  sra        $v0, $v0, 4
    /* 41850 801CA7C8 01004230 */  andi       $v0, $v0, 0x1
    /* 41854 801CA7CC 02004010 */  beqz       $v0, .L801CA7D8
    /* 41858 801CA7D0 01006524 */   addiu     $a1, $v1, 0x1
    /* 4185C 801CA7D4 99000624 */  addiu      $a2, $zero, 0x99
  .L801CA7D8:
    /* 41860 801CA7D8 BDBE010C */  jal        func_8006FAF4
    /* 41864 801CA7DC 00000000 */   nop
    /* 41868 801CA7E0 1E80013C */  lui        $at, %hi(D_801D8A16)
    /* 4186C 801CA7E4 21083000 */  addu       $at, $at, $s0
    /* 41870 801CA7E8 168A2390 */  lbu        $v1, %lo(D_801D8A16)($at)
    /* 41874 801CA7EC 06000224 */  addiu      $v0, $zero, 0x6
    /* 41878 801CA7F0 15006214 */  bne        $v1, $v0, .L801CA848
    /* 4187C 801CA7F4 00000000 */   nop
    /* 41880 801CA7F8 3C2B070C */  jal        func_801CACF0
    /* 41884 801CA7FC 21200002 */   addu      $a0, $s0, $zero
    /* 41888 801CA800 09000012 */  beqz       $s0, .L801CA828
    /* 4188C 801CA804 00000000 */   nop
    /* 41890 801CA808 1E80023C */  lui        $v0, %hi(D_801DA064)
    /* 41894 801CA80C 64A0428C */  lw         $v0, %lo(D_801DA064)($v0)
    /* 41898 801CA810 00000000 */  nop
    /* 4189C 801CA814 24105300 */  and        $v0, $v0, $s3
    /* 418A0 801CA818 1E80013C */  lui        $at, %hi(D_801DA064)
    /* 418A4 801CA81C 64A022AC */  sw         $v0, %lo(D_801DA064)($at)
    /* 418A8 801CA820 992A0708 */  j          .L801CAA64
    /* 418AC 801CA824 01005226 */   addiu     $s2, $s2, 0x1
  .L801CA828:
    /* 418B0 801CA828 1E80023C */  lui        $v0, %hi(D_801DA060)
    /* 418B4 801CA82C 60A0428C */  lw         $v0, %lo(D_801DA060)($v0)
    /* 418B8 801CA830 00000000 */  nop
    /* 418BC 801CA834 24105300 */  and        $v0, $v0, $s3
    /* 418C0 801CA838 1E80013C */  lui        $at, %hi(D_801DA060)
    /* 418C4 801CA83C 60A022AC */  sw         $v0, %lo(D_801DA060)($at)
    /* 418C8 801CA840 992A0708 */  j          .L801CAA64
    /* 418CC 801CA844 01005226 */   addiu     $s2, $s2, 0x1
  .L801CA848:
    /* 418D0 801CA848 20BB010C */  jal        func_8006EC80
    /* 418D4 801CA84C 21200002 */   addu      $a0, $s0, $zero
    /* 418D8 801CA850 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 418DC 801CA854 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 418E0 801CA858 FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 418E4 801CA85C 00100224 */  addiu      $v0, $zero, 0x1000
    /* 418E8 801CA860 03006210 */  beq        $v1, $v0, .L801CA870
    /* 418EC 801CA864 00400224 */   addiu     $v0, $zero, 0x4000
    /* 418F0 801CA868 17006214 */  bne        $v1, $v0, .L801CA8C8
    /* 418F4 801CA86C 00000000 */   nop
  .L801CA870:
    /* 418F8 801CA870 8C000624 */  addiu      $a2, $zero, 0x8C
    /* 418FC 801CA874 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 41900 801CA878 21083000 */  addu       $at, $at, $s0
    /* 41904 801CA87C 148A2490 */  lbu        $a0, %lo(D_801D8A14)($at)
    /* 41908 801CA880 1E80013C */  lui        $at, %hi(D_801D8A18)
    /* 4190C 801CA884 21083000 */  addu       $at, $at, $s0
    /* 41910 801CA888 188A2590 */  lbu        $a1, %lo(D_801D8A18)($at)
    /* 41914 801CA88C 06008424 */  addiu      $a0, $a0, 0x6
    /* 41918 801CA890 21202402 */  addu       $a0, $s1, $a0
    /* 4191C 801CA894 BDBE010C */  jal        func_8006FAF4
    /* 41920 801CA898 0100A524 */   addiu     $a1, $a1, 0x1
    /* 41924 801CA89C 88AD020C */  jal        func_800AB620
    /* 41928 801CA8A0 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 4192C 801CA8A4 21280000 */  addu       $a1, $zero, $zero
    /* 41930 801CA8A8 1E80013C */  lui        $at, %hi(D_801D8A18)
    /* 41934 801CA8AC 21083000 */  addu       $at, $at, $s0
    /* 41938 801CA8B0 188A2490 */  lbu        $a0, %lo(D_801D8A18)($at)
    /* 4193C 801CA8B4 7B39060C */  jal        func_8018E5EC
    /* 41940 801CA8B8 05000624 */   addiu     $a2, $zero, 0x5
    /* 41944 801CA8BC 1E80013C */  lui        $at, %hi(D_801D8A18)
    /* 41948 801CA8C0 21083000 */  addu       $at, $at, $s0
    /* 4194C 801CA8C4 188A22A0 */  sb         $v0, %lo(D_801D8A18)($at)
  .L801CA8C8:
    /* 41950 801CA8C8 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 41954 801CA8CC A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 41958 801CA8D0 20000224 */  addiu      $v0, $zero, 0x20
    /* 4195C 801CA8D4 3C006214 */  bne        $v1, $v0, .L801CA9C8
    /* 41960 801CA8D8 40000224 */   addiu     $v0, $zero, 0x40
    /* 41964 801CA8DC 8C000624 */  addiu      $a2, $zero, 0x8C
    /* 41968 801CA8E0 FF005032 */  andi       $s0, $s2, 0xFF
    /* 4196C 801CA8E4 40881000 */  sll        $s1, $s0, 1
    /* 41970 801CA8E8 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 41974 801CA8EC 21083000 */  addu       $at, $at, $s0
    /* 41978 801CA8F0 148A2490 */  lbu        $a0, %lo(D_801D8A14)($at)
    /* 4197C 801CA8F4 1E80013C */  lui        $at, %hi(D_801D8A16)
    /* 41980 801CA8F8 21083000 */  addu       $at, $at, $s0
    /* 41984 801CA8FC 168A2590 */  lbu        $a1, %lo(D_801D8A16)($at)
    /* 41988 801CA900 06008424 */  addiu      $a0, $a0, 0x6
    /* 4198C 801CA904 21202402 */  addu       $a0, $s1, $a0
    /* 41990 801CA908 BDBE010C */  jal        func_8006FAF4
    /* 41994 801CA90C 0100A524 */   addiu     $a1, $a1, 0x1
    /* 41998 801CA910 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 4199C 801CA914 21083000 */  addu       $at, $at, $s0
    /* 419A0 801CA918 148A2590 */  lbu        $a1, %lo(D_801D8A14)($at)
    /* 419A4 801CA91C 1E80013C */  lui        $at, %hi(D_801D8A16)
    /* 419A8 801CA920 21083000 */  addu       $at, $at, $s0
    /* 419AC 801CA924 168A2690 */  lbu        $a2, %lo(D_801D8A16)($at)
    /* 419B0 801CA928 1E80013C */  lui        $at, %hi(D_801D8A18)
    /* 419B4 801CA92C 21083000 */  addu       $at, $at, $s0
    /* 419B8 801CA930 188A2790 */  lbu        $a3, %lo(D_801D8A18)($at)
    /* 419BC 801CA934 712B070C */  jal        func_801CADC4
    /* 419C0 801CA938 21200002 */   addu      $a0, $s0, $zero
    /* 419C4 801CA93C 8D000624 */  addiu      $a2, $zero, 0x8D
    /* 419C8 801CA940 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 419CC 801CA944 21083000 */  addu       $at, $at, $s0
    /* 419D0 801CA948 148A2490 */  lbu        $a0, %lo(D_801D8A14)($at)
    /* 419D4 801CA94C 1E80013C */  lui        $at, %hi(D_801D8A18)
    /* 419D8 801CA950 21083000 */  addu       $at, $at, $s0
    /* 419DC 801CA954 188A2290 */  lbu        $v0, %lo(D_801D8A18)($at)
    /* 419E0 801CA958 06008424 */  addiu      $a0, $a0, 0x6
    /* 419E4 801CA95C 21202402 */  addu       $a0, $s1, $a0
    /* 419E8 801CA960 1E80013C */  lui        $at, %hi(D_801D8A16)
    /* 419EC 801CA964 21083000 */  addu       $at, $at, $s0
    /* 419F0 801CA968 168A22A0 */  sb         $v0, %lo(D_801D8A16)($at)
    /* 419F4 801CA96C BDBE010C */  jal        func_8006FAF4
    /* 419F8 801CA970 01004524 */   addiu     $a1, $v0, 0x1
    /* 419FC 801CA974 09000012 */  beqz       $s0, .L801CA99C
    /* 41A00 801CA978 00000000 */   nop
    /* 41A04 801CA97C 1E80023C */  lui        $v0, %hi(D_801DA064)
    /* 41A08 801CA980 64A0428C */  lw         $v0, %lo(D_801DA064)($v0)
    /* 41A0C 801CA984 00000000 */  nop
    /* 41A10 801CA988 24105300 */  and        $v0, $v0, $s3
    /* 41A14 801CA98C 1E80013C */  lui        $at, %hi(D_801DA064)
    /* 41A18 801CA990 64A022AC */  sw         $v0, %lo(D_801DA064)($at)
    /* 41A1C 801CA994 6D2A0708 */  j          .L801CA9B4
    /* 41A20 801CA998 00000000 */   nop
  .L801CA99C:
    /* 41A24 801CA99C 1E80023C */  lui        $v0, %hi(D_801DA060)
    /* 41A28 801CA9A0 60A0428C */  lw         $v0, %lo(D_801DA060)($v0)
    /* 41A2C 801CA9A4 00000000 */  nop
    /* 41A30 801CA9A8 24105300 */  and        $v0, $v0, $s3
    /* 41A34 801CA9AC 1E80013C */  lui        $at, %hi(D_801DA060)
    /* 41A38 801CA9B0 60A022AC */  sw         $v0, %lo(D_801DA060)($at)
  .L801CA9B4:
    /* 41A3C 801CA9B4 88AD020C */  jal        func_800AB620
    /* 41A40 801CA9B8 28050424 */   addiu     $a0, $zero, 0x528
    /* 41A44 801CA9BC 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 41A48 801CA9C0 A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 41A4C 801CA9C4 40000224 */  addiu      $v0, $zero, 0x40
  .L801CA9C8:
    /* 41A50 801CA9C8 25006214 */  bne        $v1, $v0, .L801CAA60
    /* 41A54 801CA9CC FF004232 */   andi      $v0, $s2, 0xFF
    /* 41A58 801CA9D0 09004010 */  beqz       $v0, .L801CA9F8
    /* 41A5C 801CA9D4 8C000624 */   addiu     $a2, $zero, 0x8C
    /* 41A60 801CA9D8 1E80023C */  lui        $v0, %hi(D_801DA064)
    /* 41A64 801CA9DC 64A0428C */  lw         $v0, %lo(D_801DA064)($v0)
    /* 41A68 801CA9E0 00000000 */  nop
    /* 41A6C 801CA9E4 24105300 */  and        $v0, $v0, $s3
    /* 41A70 801CA9E8 1E80013C */  lui        $at, %hi(D_801DA064)
    /* 41A74 801CA9EC 64A022AC */  sw         $v0, %lo(D_801DA064)($at)
    /* 41A78 801CA9F0 842A0708 */  j          .L801CAA10
    /* 41A7C 801CA9F4 00000000 */   nop
  .L801CA9F8:
    /* 41A80 801CA9F8 1E80023C */  lui        $v0, %hi(D_801DA060)
    /* 41A84 801CA9FC 60A0428C */  lw         $v0, %lo(D_801DA060)($v0)
    /* 41A88 801CAA00 00000000 */  nop
    /* 41A8C 801CAA04 24105300 */  and        $v0, $v0, $s3
    /* 41A90 801CAA08 1E80013C */  lui        $at, %hi(D_801DA060)
    /* 41A94 801CAA0C 60A022AC */  sw         $v0, %lo(D_801DA060)($at)
  .L801CAA10:
    /* 41A98 801CAA10 FF005032 */  andi       $s0, $s2, 0xFF
    /* 41A9C 801CAA14 40101000 */  sll        $v0, $s0, 1
    /* 41AA0 801CAA18 1E80013C */  lui        $at, %hi(D_801D8A14)
    /* 41AA4 801CAA1C 21083000 */  addu       $at, $at, $s0
    /* 41AA8 801CAA20 148A2490 */  lbu        $a0, %lo(D_801D8A14)($at)
    /* 41AAC 801CAA24 1E80013C */  lui        $at, %hi(D_801D8A16)
    /* 41AB0 801CAA28 21083000 */  addu       $at, $at, $s0
    /* 41AB4 801CAA2C 168A2590 */  lbu        $a1, %lo(D_801D8A16)($at)
    /* 41AB8 801CAA30 06008424 */  addiu      $a0, $a0, 0x6
    /* 41ABC 801CAA34 21204400 */  addu       $a0, $v0, $a0
    /* 41AC0 801CAA38 BDBE010C */  jal        func_8006FAF4
    /* 41AC4 801CAA3C 0100A524 */   addiu     $a1, $a1, 0x1
    /* 41AC8 801CAA40 1E80013C */  lui        $at, %hi(D_801D8A18)
    /* 41ACC 801CAA44 21083000 */  addu       $at, $at, $s0
    /* 41AD0 801CAA48 188A2290 */  lbu        $v0, %lo(D_801D8A18)($at)
    /* 41AD4 801CAA4C 1E80013C */  lui        $at, %hi(D_801D8A16)
    /* 41AD8 801CAA50 21083000 */  addu       $at, $at, $s0
    /* 41ADC 801CAA54 168A22A0 */  sb         $v0, %lo(D_801D8A16)($at)
    /* 41AE0 801CAA58 88AD020C */  jal        func_800AB620
    /* 41AE4 801CAA5C 29050424 */   addiu     $a0, $zero, 0x529
  .L801CAA60:
    /* 41AE8 801CAA60 01005226 */  addiu      $s2, $s2, 0x1
  .L801CAA64:
    /* 41AEC 801CAA64 FF004232 */  andi       $v0, $s2, 0xFF
    /* 41AF0 801CAA68 0200422C */  sltiu      $v0, $v0, 0x2
    /* 41AF4 801CAA6C 35FE4014 */  bnez       $v0, .L801CA344
    /* 41AF8 801CAA70 FF004232 */   andi      $v0, $s2, 0xFF
    /* 41AFC 801CAA74 B62A0708 */  j          .L801CAAD8
    /* 41B00 801CAA78 00000000 */   nop
  jlabel .L801CAA7C
    /* 41B04 801CAA7C 40000424 */  addiu      $a0, $zero, 0x40
    /* 41B08 801CAA80 37BC010C */  jal        func_8006F0DC
    /* 41B0C 801CAA84 01000524 */   addiu     $a1, $zero, 0x1
    /* 41B10 801CAA88 13004010 */  beqz       $v0, .L801CAAD8
    /* 41B14 801CAA8C 00000000 */   nop
    /* 41B18 801CAA90 1E80013C */  lui        $at, %hi(D_801DA05C)
    /* 41B1C 801CAA94 5CA020AC */  sw         $zero, %lo(D_801DA05C)($at)
    /* 41B20 801CAA98 775C000C */  jal        func_800171DC
    /* 41B24 801CAA9C 00000000 */   nop
    /* 41B28 801CAAA0 B62A0708 */  j          .L801CAAD8
    /* 41B2C 801CAAA4 00000000 */   nop
  jlabel .L801CAAA8
    /* 41B30 801CAAA8 623C060C */  jal        func_8018F188
    /* 41B34 801CAAAC 21200000 */   addu      $a0, $zero, $zero
    /* 41B38 801CAAB0 09004010 */  beqz       $v0, .L801CAAD8
    /* 41B3C 801CAAB4 10000424 */   addiu     $a0, $zero, 0x10
    /* 41B40 801CAAB8 A20200A2 */  sb         $zero, 0x2A2($s0)
    /* 41B44 801CAABC 715C000C */  jal        func_800171C4
    /* 41B48 801CAAC0 300300A2 */   sb        $zero, 0x330($s0)
    /* 41B4C 801CAAC4 7F5C000C */  jal        func_800171FC
    /* 41B50 801CAAC8 21200000 */   addu      $a0, $zero, $zero
    /* 41B54 801CAACC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 41B58 801CAAD0 21088102 */  addu       $at, $s4, $at
    /* 41B5C 801CAAD4 DAAB20A0 */  sb         $zero, -0x5426($at)
  .L801CAAD8:
    /* 41B60 801CAAD8 3400BF8F */  lw         $ra, 0x34($sp)
    /* 41B64 801CAADC 3000B48F */  lw         $s4, 0x30($sp)
    /* 41B68 801CAAE0 2C00B38F */  lw         $s3, 0x2C($sp)
    /* 41B6C 801CAAE4 2800B28F */  lw         $s2, 0x28($sp)
    /* 41B70 801CAAE8 2400B18F */  lw         $s1, 0x24($sp)
    /* 41B74 801CAAEC 2000B08F */  lw         $s0, 0x20($sp)
    /* 41B78 801CAAF0 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 41B7C 801CAAF4 0800E003 */  jr         $ra
    /* 41B80 801CAAF8 00000000 */   nop
endlabel func_801C9F6C
