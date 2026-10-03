nonmatching func_8001F134, 0x19C

glabel func_8001F134
    /* F934 8001F134 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* F938 8001F138 1000BFAF */  sw         $ra, 0x10($sp)
    /* F93C 8001F13C 5477000C */  jal        func_8001DD50
    /* F940 8001F140 0B000424 */   addiu     $a0, $zero, 0xB
    /* F944 8001F144 801F033C */  lui        $v1, (0x1F8002E1 >> 16)
    /* F948 8001F148 E1026390 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($v1)
    /* F94C 8001F14C 05000224 */  addiu      $v0, $zero, 0x5
    /* F950 8001F150 06006214 */  bne        $v1, $v0, .L8001F16C
    /* F954 8001F154 0B000224 */   addiu     $v0, $zero, 0xB
    /* F958 8001F158 801F013C */  lui        $at, (0x1F8002A8 >> 16)
    /* F95C 8001F15C A80222A0 */  sb         $v0, (0x1F8002A8 & 0xFFFF)($at)
    /* F960 8001F160 00E80224 */  addiu      $v0, $zero, -0x1800
    /* F964 8001F164 801F013C */  lui        $at, (0x1F80000E >> 16)
    /* F968 8001F168 0E0022A4 */  sh         $v0, (0x1F80000E & 0xFFFF)($at)
  .L8001F16C:
    /* F96C 8001F16C 4F7D000C */  jal        func_8001F53C
    /* F970 8001F170 00000000 */   nop
    /* F974 8001F174 1458020C */  jal        func_80096050
    /* F978 8001F178 00000000 */   nop
    /* F97C 8001F17C F626020C */  jal        func_80089BD8
    /* F980 8001F180 00000000 */   nop
    /* F984 8001F184 6069010C */  jal        func_8005A580
    /* F988 8001F188 00000000 */   nop
    /* F98C 8001F18C 01000224 */  addiu      $v0, $zero, 0x1
    /* F990 8001F190 801F013C */  lui        $at, (0x1F80030B >> 16)
    /* F994 8001F194 0B0322A0 */  sb         $v0, (0x1F80030B & 0xFFFF)($at)
    /* F998 8001F198 FF000224 */  addiu      $v0, $zero, 0xFF
    /* F99C 8001F19C 1180013C */  lui        $at, %hi(D_8010A369)
    /* F9A0 8001F1A0 69A320A0 */  sb         $zero, %lo(D_8010A369)($at)
    /* F9A4 8001F1A4 1180013C */  lui        $at, %hi(D_8010A368)
    /* F9A8 8001F1A8 68A320A0 */  sb         $zero, %lo(D_8010A368)($at)
    /* F9AC 8001F1AC 801F013C */  lui        $at, (0x1F8002F8 >> 16)
    /* F9B0 8001F1B0 F80222AC */  sw         $v0, (0x1F8002F8 & 0xFFFF)($at)
    /* F9B4 8001F1B4 801F013C */  lui        $at, (0x1F800331 >> 16)
    /* F9B8 8001F1B8 310320A0 */  sb         $zero, (0x1F800331 & 0xFFFF)($at)
    /* F9BC 8001F1BC 5D56010C */  jal        func_80055974
    /* F9C0 8001F1C0 00000000 */   nop
    /* F9C4 8001F1C4 21200000 */  addu       $a0, $zero, $zero
    /* F9C8 8001F1C8 B03E010C */  jal        func_8004FAC0
    /* F9CC 8001F1CC 21280000 */   addu      $a1, $zero, $zero
    /* F9D0 8001F1D0 801F013C */  lui        $at, (0x1F8001EC >> 16)
    /* F9D4 8001F1D4 EC0120A0 */  sb         $zero, (0x1F8001EC & 0xFFFF)($at)
    /* F9D8 8001F1D8 1180013C */  lui        $at, %hi(D_8010A394)
    /* F9DC 8001F1DC 94A320A4 */  sh         $zero, %lo(D_8010A394)($at)
    /* F9E0 8001F1E0 1180013C */  lui        $at, %hi(D_8010A392)
    /* F9E4 8001F1E4 92A320A0 */  sb         $zero, %lo(D_8010A392)($at)
    /* F9E8 8001F1E8 801F013C */  lui        $at, (0x1F8002FC >> 16)
    /* F9EC 8001F1EC FC0220A0 */  sb         $zero, (0x1F8002FC & 0xFFFF)($at)
    /* F9F0 8001F1F0 801F013C */  lui        $at, (0x1F8002C1 >> 16)
    /* F9F4 8001F1F4 C10220A0 */  sb         $zero, (0x1F8002C1 & 0xFFFF)($at)
    /* F9F8 8001F1F8 715C000C */  jal        func_800171C4
    /* F9FC 8001F1FC 21200000 */   addu      $a0, $zero, $zero
    /* FA00 8001F200 801F033C */  lui        $v1, (0x1F8002E1 >> 16)
    /* FA04 8001F204 E1026390 */  lbu        $v1, (0x1F8002E1 & 0xFFFF)($v1)
    /* FA08 8001F208 04000224 */  addiu      $v0, $zero, 0x4
    /* FA0C 8001F20C 09006214 */  bne        $v1, $v0, .L8001F234
    /* FA10 8001F210 00000000 */   nop
    /* FA14 8001F214 8F5C000C */  jal        func_8001723C
    /* FA18 8001F218 04000424 */   addiu     $a0, $zero, 0x4
    /* FA1C 8001F21C 8B5C000C */  jal        func_8001722C
    /* FA20 8001F220 05000424 */   addiu     $a0, $zero, 0x5
    /* FA24 8001F224 715C000C */  jal        func_800171C4
    /* FA28 8001F228 08000424 */   addiu     $a0, $zero, 0x8
    /* FA2C 8001F22C B07C0008 */  j          .L8001F2C0
    /* FA30 8001F230 00000000 */   nop
  .L8001F234:
    /* FA34 8001F234 88AD020C */  jal        func_800AB620
    /* FA38 8001F238 11000424 */   addiu     $a0, $zero, 0x11
    /* FA3C 8001F23C 801F033C */  lui        $v1, (0x1F800298 >> 16)
    /* FA40 8001F240 98026390 */  lbu        $v1, (0x1F800298 & 0xFFFF)($v1)
    /* FA44 8001F244 03000224 */  addiu      $v0, $zero, 0x3
    /* FA48 8001F248 1B006214 */  bne        $v1, $v0, .L8001F2B8
    /* FA4C 8001F24C 00000000 */   nop
    /* FA50 8001F250 0E80023C */  lui        $v0, %hi(D_800E7DE8)
    /* FA54 8001F254 E87D4290 */  lbu        $v0, %lo(D_800E7DE8)($v0)
    /* FA58 8001F258 00000000 */  nop
    /* FA5C 8001F25C 01004230 */  andi       $v0, $v0, 0x1
    /* FA60 8001F260 15004014 */  bnez       $v0, .L8001F2B8
    /* FA64 8001F264 05000224 */   addiu     $v0, $zero, 0x5
    /* FA68 8001F268 801F013C */  lui        $at, (0x1F8002C0 >> 16)
    /* FA6C 8001F26C C00220A0 */  sb         $zero, (0x1F8002C0 & 0xFFFF)($at)
    /* FA70 8001F270 801F013C */  lui        $at, (0x1F8002A1 >> 16)
    /* FA74 8001F274 A10220A0 */  sb         $zero, (0x1F8002A1 & 0xFFFF)($at)
    /* FA78 8001F278 801F013C */  lui        $at, (0x1F8002A0 >> 16)
    /* FA7C 8001F27C A00220A0 */  sb         $zero, (0x1F8002A0 & 0xFFFF)($at)
    /* FA80 8001F280 801F013C */  lui        $at, (0x1F8002C4 >> 16)
    /* FA84 8001F284 C40220AC */  sw         $zero, (0x1F8002C4 & 0xFFFF)($at)
    /* FA88 8001F288 801F013C */  lui        $at, (0x1F8001EC >> 16)
    /* FA8C 8001F28C EC0120A0 */  sb         $zero, (0x1F8001EC & 0xFFFF)($at)
    /* FA90 8001F290 801F013C */  lui        $at, (0x1F800234 >> 16)
    /* FA94 8001F294 340220A4 */  sh         $zero, (0x1F800234 & 0xFFFF)($at)
    /* FA98 8001F298 801F013C */  lui        $at, (0x1F80029C >> 16)
    /* FA9C 8001F29C 9C0222A0 */  sb         $v0, (0x1F80029C & 0xFFFF)($at)
    /* FAA0 8001F2A0 1180013C */  lui        $at, %hi(D_8010A322)
    /* FAA4 8001F2A4 22A320A0 */  sb         $zero, %lo(D_8010A322)($at)
    /* FAA8 8001F2A8 715C000C */  jal        func_800171C4
    /* FAAC 8001F2AC 0E000424 */   addiu     $a0, $zero, 0xE
    /* FAB0 8001F2B0 B07C0008 */  j          .L8001F2C0
    /* FAB4 8001F2B4 00000000 */   nop
  .L8001F2B8:
    /* FAB8 8001F2B8 835C000C */  jal        func_8001720C
    /* FABC 8001F2BC 00000000 */   nop
  .L8001F2C0:
    /* FAC0 8001F2C0 1000BF8F */  lw         $ra, 0x10($sp)
    /* FAC4 8001F2C4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* FAC8 8001F2C8 0800E003 */  jr         $ra
    /* FACC 8001F2CC 00000000 */   nop
endlabel func_8001F134
