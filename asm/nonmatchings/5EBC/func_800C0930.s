nonmatching func_800C0930, 0xB8

glabel func_800C0930
    /* B1130 800C0930 1080023C */  lui        $v0, %hi(D_800FB578)
    /* B1134 800C0934 78B54280 */  lb         $v0, %lo(D_800FB578)($v0)
    /* B1138 800C0938 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* B113C 800C093C 1000B0AF */  sw         $s0, 0x10($sp)
    /* B1140 800C0940 21800000 */  addu       $s0, $zero, $zero
    /* B1144 800C0944 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* B1148 800C0948 1800B2AF */  sw         $s2, 0x18($sp)
    /* B114C 800C094C 20004018 */  blez       $v0, .L800C09D0
    /* B1150 800C0950 1400B1AF */   sw        $s1, 0x14($sp)
    /* B1154 800C0954 01001224 */  addiu      $s2, $zero, 0x1
    /* B1158 800C0958 00140400 */  sll        $v0, $a0, 16
    /* B115C 800C095C 038C0200 */  sra        $s1, $v0, 16
    /* B1160 800C0960 FF000432 */  andi       $a0, $s0, 0xFF
  .L800C0964:
    /* B1164 800C0964 0D80023C */  lui        $v0, %hi(D_800D4F0C)
    /* B1168 800C0968 0C4F428C */  lw         $v0, %lo(D_800D4F0C)($v0)
    /* B116C 800C096C 04189200 */  sllv       $v1, $s2, $a0
    /* B1170 800C0970 24104300 */  and        $v0, $v0, $v1
    /* B1174 800C0974 0F004014 */  bnez       $v0, .L800C09B4
    /* B1178 800C0978 C0100400 */   sll       $v0, $a0, 3
    /* B117C 800C097C 23104400 */  subu       $v0, $v0, $a0
    /* B1180 800C0980 80100200 */  sll        $v0, $v0, 2
    /* B1184 800C0984 23104400 */  subu       $v0, $v0, $a0
    /* B1188 800C0988 40100200 */  sll        $v0, $v0, 1
    /* B118C 800C098C 0E80013C */  lui        $at, %hi(D_800E78E8)
    /* B1190 800C0990 21082200 */  addu       $at, $at, $v0
    /* B1194 800C0994 E8782284 */  lh         $v0, %lo(D_800E78E8)($at)
    /* B1198 800C0998 00000000 */  nop
    /* B119C 800C099C 05005114 */  bne        $v0, $s1, .L800C09B4
    /* B11A0 800C09A0 FF000232 */   andi      $v0, $s0, 0xFF
    /* B11A4 800C09A4 1180013C */  lui        $at, %hi(D_8010A3E2)
    /* B11A8 800C09A8 E2A322A4 */  sh         $v0, %lo(D_8010A3E2)($at)
    /* B11AC 800C09AC 46FF020C */  jal        func_800BFD18
    /* B11B0 800C09B0 21200000 */   addu      $a0, $zero, $zero
  .L800C09B4:
    /* B11B4 800C09B4 01001026 */  addiu      $s0, $s0, 0x1
    /* B11B8 800C09B8 1080033C */  lui        $v1, %hi(D_800FB578)
    /* B11BC 800C09BC 78B56380 */  lb         $v1, %lo(D_800FB578)($v1)
    /* B11C0 800C09C0 FF000232 */  andi       $v0, $s0, 0xFF
    /* B11C4 800C09C4 2A104300 */  slt        $v0, $v0, $v1
    /* B11C8 800C09C8 E6FF4014 */  bnez       $v0, .L800C0964
    /* B11CC 800C09CC FF000432 */   andi      $a0, $s0, 0xFF
  .L800C09D0:
    /* B11D0 800C09D0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* B11D4 800C09D4 1800B28F */  lw         $s2, 0x18($sp)
    /* B11D8 800C09D8 1400B18F */  lw         $s1, 0x14($sp)
    /* B11DC 800C09DC 1000B08F */  lw         $s0, 0x10($sp)
    /* B11E0 800C09E0 0800E003 */  jr         $ra
    /* B11E4 800C09E4 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_800C0930
