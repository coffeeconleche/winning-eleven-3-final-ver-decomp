nonmatching func_800B0944, 0x13C

glabel func_800B0944
    /* A1144 800B0944 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A1148 800B0948 1400BFAF */  sw         $ra, 0x14($sp)
    /* A114C 800B094C 2A008014 */  bnez       $a0, .L800B09F8
    /* A1150 800B0950 1000B0AF */   sw        $s0, 0x10($sp)
    /* A1154 800B0954 A0C2020C */  jal        func_800B0A80
    /* A1158 800B0958 00000000 */   nop
    /* A115C 800B095C 5FC20208 */  j          .L800B097C
    /* A1160 800B0960 00000000 */   nop
  .L800B0964:
    /* A1164 800B0964 65C1020C */  jal        func_800B0594
    /* A1168 800B0968 00000000 */   nop
    /* A116C 800B096C ADC2020C */  jal        func_800B0AB4
    /* A1170 800B0970 00000000 */   nop
    /* A1174 800B0974 3E004014 */  bnez       $v0, .L800B0A70
    /* A1178 800B0978 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800B097C:
    /* A117C 800B097C 0D80033C */  lui        $v1, %hi(D_800CEBBC)
    /* A1180 800B0980 BCEB638C */  lw         $v1, %lo(D_800CEBBC)($v1)
    /* A1184 800B0984 0D80023C */  lui        $v0, %hi(D_800CEBC0)
    /* A1188 800B0988 C0EB428C */  lw         $v0, %lo(D_800CEBC0)($v0)
    /* A118C 800B098C 00000000 */  nop
    /* A1190 800B0990 07006210 */  beq        $v1, $v0, .L800B09B0
    /* A1194 800B0994 00000000 */   nop
    /* A1198 800B0998 59C20208 */  j          .L800B0964
    /* A119C 800B099C 00000000 */   nop
  .L800B09A0:
    /* A11A0 800B09A0 ADC2020C */  jal        func_800B0AB4
    /* A11A4 800B09A4 00000000 */   nop
    /* A11A8 800B09A8 31004014 */  bnez       $v0, .L800B0A70
    /* A11AC 800B09AC FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800B09B0:
    /* A11B0 800B09B0 0D80023C */  lui        $v0, %hi(D_800CEBA8)
    /* A11B4 800B09B4 A8EB428C */  lw         $v0, %lo(D_800CEBA8)($v0)
    /* A11B8 800B09B8 00000000 */  nop
    /* A11BC 800B09BC 0000428C */  lw         $v0, 0x0($v0)
    /* A11C0 800B09C0 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* A11C4 800B09C4 24104300 */  and        $v0, $v0, $v1
    /* A11C8 800B09C8 F5FF4014 */  bnez       $v0, .L800B09A0
    /* A11CC 800B09CC 00000000 */   nop
    /* A11D0 800B09D0 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A11D4 800B09D4 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A11D8 800B09D8 00000000 */  nop
    /* A11DC 800B09DC 0000428C */  lw         $v0, 0x0($v0)
    /* A11E0 800B09E0 0004033C */  lui        $v1, (0x4000000 >> 16)
    /* A11E4 800B09E4 24104300 */  and        $v0, $v0, $v1
    /* A11E8 800B09E8 EDFF4010 */  beqz       $v0, .L800B09A0
    /* A11EC 800B09EC 21100000 */   addu      $v0, $zero, $zero
    /* A11F0 800B09F0 9CC20208 */  j          .L800B0A70
    /* A11F4 800B09F4 00000000 */   nop
  .L800B09F8:
    /* A11F8 800B09F8 0D80023C */  lui        $v0, %hi(D_800CEBBC)
    /* A11FC 800B09FC BCEB428C */  lw         $v0, %lo(D_800CEBBC)($v0)
    /* A1200 800B0A00 0D80033C */  lui        $v1, %hi(D_800CEBC0)
    /* A1204 800B0A04 C0EB638C */  lw         $v1, %lo(D_800CEBC0)($v1)
    /* A1208 800B0A08 00000000 */  nop
    /* A120C 800B0A0C 23104300 */  subu       $v0, $v0, $v1
    /* A1210 800B0A10 3F005030 */  andi       $s0, $v0, 0x3F
    /* A1214 800B0A14 03000012 */  beqz       $s0, .L800B0A24
    /* A1218 800B0A18 00000000 */   nop
    /* A121C 800B0A1C 65C1020C */  jal        func_800B0594
    /* A1220 800B0A20 00000000 */   nop
  .L800B0A24:
    /* A1224 800B0A24 0D80023C */  lui        $v0, %hi(D_800CEBA8)
    /* A1228 800B0A28 A8EB428C */  lw         $v0, %lo(D_800CEBA8)($v0)
    /* A122C 800B0A2C 00000000 */  nop
    /* A1230 800B0A30 0000428C */  lw         $v0, 0x0($v0)
    /* A1234 800B0A34 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* A1238 800B0A38 24104300 */  and        $v0, $v0, $v1
    /* A123C 800B0A3C 09004014 */  bnez       $v0, .L800B0A64
    /* A1240 800B0A40 00000000 */   nop
    /* A1244 800B0A44 0D80023C */  lui        $v0, %hi(D_800CEB9C)
    /* A1248 800B0A48 9CEB428C */  lw         $v0, %lo(D_800CEB9C)($v0)
    /* A124C 800B0A4C 00000000 */  nop
    /* A1250 800B0A50 0000428C */  lw         $v0, 0x0($v0)
    /* A1254 800B0A54 0004033C */  lui        $v1, (0x4000000 >> 16)
    /* A1258 800B0A58 24104300 */  and        $v0, $v0, $v1
    /* A125C 800B0A5C 04004014 */  bnez       $v0, .L800B0A70
    /* A1260 800B0A60 21100002 */   addu      $v0, $s0, $zero
  .L800B0A64:
    /* A1264 800B0A64 02000016 */  bnez       $s0, .L800B0A70
    /* A1268 800B0A68 21100002 */   addu      $v0, $s0, $zero
    /* A126C 800B0A6C 01000224 */  addiu      $v0, $zero, 0x1
  .L800B0A70:
    /* A1270 800B0A70 1400BF8F */  lw         $ra, 0x14($sp)
    /* A1274 800B0A74 1000B08F */  lw         $s0, 0x10($sp)
    /* A1278 800B0A78 0800E003 */  jr         $ra
    /* A127C 800B0A7C 1800BD27 */   addiu     $sp, $sp, 0x18
endlabel func_800B0944
