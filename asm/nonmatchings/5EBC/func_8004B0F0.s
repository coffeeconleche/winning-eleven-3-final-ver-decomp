nonmatching func_8004B0F0, 0x188

glabel func_8004B0F0
    /* 3B8F0 8004B0F0 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3B8F4 8004B0F4 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 3B8F8 8004B0F8 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 3B8FC 8004B0FC 00320600 */  sll        $a2, $a2, 8
    /* 3B900 8004B100 1000BFAF */  sw         $ra, 0x10($sp)
    /* 3B904 8004B104 801F013C */  lui        $at, (0x1F8002B0 >> 16)
    /* 3B908 8004B108 B00220AC */  sw         $zero, (0x1F8002B0 & 0xFFFF)($at)
    /* 3B90C 8004B10C A40345A0 */  sb         $a1, 0x3A4($v0)
    /* 3B910 8004B110 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 3B914 8004B114 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 3B918 8004B118 23380700 */  negu       $a3, $a3
    /* 3B91C 8004B11C A00346AC */  sw         $a2, 0x3A0($v0)
    /* 3B920 8004B120 40100700 */  sll        $v0, $a3, 1
    /* 3B924 8004B124 21104700 */  addu       $v0, $v0, $a3
    /* 3B928 8004B128 C0100200 */  sll        $v0, $v0, 3
    /* 3B92C 8004B12C 23104700 */  subu       $v0, $v0, $a3
    /* 3B930 8004B130 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 3B934 8004B134 F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 3B938 8004B138 40110200 */  sll        $v0, $v0, 5
    /* 3B93C 8004B13C 0C0062AC */  sw         $v0, 0xC($v1)
    /* 3B940 8004B140 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 3B944 8004B144 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 3B948 8004B148 00000000 */  nop
    /* 3B94C 8004B14C C80340A4 */  sh         $zero, 0x3C8($v0)
    /* 3B950 8004B150 98038290 */  lbu        $v0, 0x398($a0)
    /* 3B954 8004B154 801F013C */  lui        $at, (0x1F8002CF >> 16)
    /* 3B958 8004B158 21084100 */  addu       $at, $v0, $at
    /* 3B95C 8004B15C CF0220A0 */  sb         $zero, (0x1F8002CF & 0xFFFF)($at)
    /* 3B960 8004B160 98038290 */  lbu        $v0, 0x398($a0)
    /* 3B964 8004B164 01000524 */  addiu      $a1, $zero, 0x1
    /* 3B968 8004B168 01004238 */  xori       $v0, $v0, 0x1
    /* 3B96C 8004B16C 801F013C */  lui        $at, (0x1F8002CF >> 16)
    /* 3B970 8004B170 21084100 */  addu       $at, $v0, $at
    /* 3B974 8004B174 CF0225A0 */  sb         $a1, (0x1F8002CF & 0xFFFF)($at)
    /* 3B978 8004B178 801F033C */  lui        $v1, (0x1F8002AA >> 16)
    /* 3B97C 8004B17C AA026390 */  lbu        $v1, (0x1F8002AA & 0xFFFF)($v1)
    /* 3B980 8004B180 8D038290 */  lbu        $v0, 0x38D($a0)
    /* 3B984 8004B184 00000000 */  nop
    /* 3B988 8004B188 08004310 */  beq        $v0, $v1, .L8004B1AC
    /* 3B98C 8004B18C 00000000 */   nop
    /* 3B990 8004B190 801F013C */  lui        $at, (0x1F8002AB >> 16)
    /* 3B994 8004B194 AB0223A0 */  sb         $v1, (0x1F8002AB & 0xFFFF)($at)
    /* 3B998 8004B198 8D038290 */  lbu        $v0, 0x38D($a0)
    /* 3B99C 8004B19C 801F013C */  lui        $at, (0x1F800332 >> 16)
    /* 3B9A0 8004B1A0 320320A0 */  sb         $zero, (0x1F800332 & 0xFFFF)($at)
    /* 3B9A4 8004B1A4 801F013C */  lui        $at, (0x1F8002AA >> 16)
    /* 3B9A8 8004B1A8 AA0222A0 */  sb         $v0, (0x1F8002AA & 0xFFFF)($at)
  .L8004B1AC:
    /* 3B9AC 8004B1AC 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 3B9B0 8004B1B0 F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 3B9B4 8004B1B4 801F013C */  lui        $at, (0x1F8002A9 >> 16)
    /* 3B9B8 8004B1B8 A90220A0 */  sb         $zero, (0x1F8002A9 & 0xFFFF)($at)
    /* 3B9BC 8004B1BC 801F013C */  lui        $at, (0x1F8002A8 >> 16)
    /* 3B9C0 8004B1C0 A80220A0 */  sb         $zero, (0x1F8002A8 & 0xFFFF)($at)
    /* 3B9C4 8004B1C4 B20340A0 */  sb         $zero, 0x3B2($v0)
    /* 3B9C8 8004B1C8 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 3B9CC 8004B1CC F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 3B9D0 8004B1D0 00000000 */  nop
    /* 3B9D4 8004B1D4 B10340A0 */  sb         $zero, 0x3B1($v0)
    /* 3B9D8 8004B1D8 801F023C */  lui        $v0, (0x1F8002F4 >> 16)
    /* 3B9DC 8004B1DC F402428C */  lw         $v0, (0x1F8002F4 & 0xFFFF)($v0)
    /* 3B9E0 8004B1E0 00000000 */  nop
    /* 3B9E4 8004B1E4 BC0340A4 */  sh         $zero, 0x3BC($v0)
    /* 3B9E8 8004B1E8 801F033C */  lui        $v1, (0x1F8002F4 >> 16)
    /* 3B9EC 8004B1EC F402638C */  lw         $v1, (0x1F8002F4 & 0xFFFF)($v1)
    /* 3B9F0 8004B1F0 FF7F0424 */  addiu      $a0, $zero, 0x7FFF
    /* 3B9F4 8004B1F4 801F013C */  lui        $at, (0x1F8002B8 >> 16)
    /* 3B9F8 8004B1F8 B80224A4 */  sh         $a0, (0x1F8002B8 & 0xFFFF)($at)
    /* 3B9FC 8004B1FC 801F013C */  lui        $at, (0x1F8002F2 >> 16)
    /* 3BA00 8004B200 F20220A0 */  sb         $zero, (0x1F8002F2 & 0xFFFF)($at)
    /* 3BA04 8004B204 0C00628C */  lw         $v0, 0xC($v1)
    /* 3BA08 8004B208 00000000 */  nop
    /* 3BA0C 8004B20C 06004014 */  bnez       $v0, .L8004B228
    /* 3BA10 8004B210 00000000 */   nop
    /* 3BA14 8004B214 04006284 */  lh         $v0, 0x4($v1)
    /* 3BA18 8004B218 00000000 */  nop
    /* 3BA1C 8004B21C D8FF4228 */  slti       $v0, $v0, -0x28
    /* 3BA20 8004B220 0E004010 */  beqz       $v0, .L8004B25C
    /* 3BA24 8004B224 02000224 */   addiu     $v0, $zero, 0x2
  .L8004B228:
    /* 3BA28 8004B228 FF000424 */  addiu      $a0, $zero, 0xFF
    /* 3BA2C 8004B22C B82C010C */  jal        func_8004B2E0
    /* 3BA30 8004B230 960365A0 */   sb        $a1, 0x396($v1)
    /* 3BA34 8004B234 801F023C */  lui        $v0, (0x1F8000F8 >> 16)
    /* 3BA38 8004B238 F8004294 */  lhu        $v0, (0x1F8000F8 & 0xFFFF)($v0)
    /* 3BA3C 8004B23C 801F033C */  lui        $v1, (0x1F8000FC >> 16)
    /* 3BA40 8004B240 FC006394 */  lhu        $v1, (0x1F8000FC & 0xFFFF)($v1)
    /* 3BA44 8004B244 801F013C */  lui        $at, (0x1F8002B4 >> 16)
    /* 3BA48 8004B248 B40222A4 */  sh         $v0, (0x1F8002B4 & 0xFFFF)($at)
    /* 3BA4C 8004B24C 801F013C */  lui        $at, (0x1F8002B6 >> 16)
    /* 3BA50 8004B250 B60223A4 */  sh         $v1, (0x1F8002B6 & 0xFFFF)($at)
    /* 3BA54 8004B254 9A2C0108 */  j          .L8004B268
    /* 3BA58 8004B258 00000000 */   nop
  .L8004B25C:
    /* 3BA5C 8004B25C 801F013C */  lui        $at, (0x1F8002B4 >> 16)
    /* 3BA60 8004B260 B40224A4 */  sh         $a0, (0x1F8002B4 & 0xFFFF)($at)
    /* 3BA64 8004B264 960362A0 */  sb         $v0, 0x396($v1)
  .L8004B268:
    /* 3BA68 8004B268 1000BF8F */  lw         $ra, 0x10($sp)
    /* 3BA6C 8004B26C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3BA70 8004B270 0800E003 */  jr         $ra
    /* 3BA74 8004B274 00000000 */   nop
endlabel func_8004B0F0
