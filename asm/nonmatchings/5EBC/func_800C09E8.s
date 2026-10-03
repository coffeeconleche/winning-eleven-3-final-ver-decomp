nonmatching func_800C09E8, 0xC4

glabel func_800C09E8
    /* B11E8 800C09E8 21488000 */  addu       $t1, $a0, $zero
    /* B11EC 800C09EC 21380000 */  addu       $a3, $zero, $zero
    /* B11F0 800C09F0 1180033C */  lui        $v1, %hi(D_8010A3C8)
    /* B11F4 800C09F4 C8A36324 */  addiu      $v1, $v1, %lo(D_8010A3C8)
    /* B11F8 800C09F8 00006280 */  lb         $v0, 0x0($v1)
    /* B11FC 800C09FC 00000000 */  nop
    /* B1200 800C0A00 28004018 */  blez       $v0, .L800C0AA4
    /* B1204 800C0A04 21300000 */   addu      $a2, $zero, $zero
    /* B1208 800C0A08 07006824 */  addiu      $t0, $v1, 0x7
    /* B120C 800C0A0C 21506000 */  addu       $t2, $v1, $zero
    /* B1210 800C0A10 001E0600 */  sll        $v1, $a2, 24
  .L800C0A14:
    /* B1214 800C0A14 00000281 */  lb         $v0, 0x0($t0)
    /* B1218 800C0A18 031E0300 */  sra        $v1, $v1, 24
    /* B121C 800C0A1C 00110200 */  sll        $v0, $v0, 4
    /* B1220 800C0A20 21104300 */  addu       $v0, $v0, $v1
    /* B1224 800C0A24 0F80033C */  lui        $v1, %hi(D_800F20B0)
    /* B1228 800C0A28 B020638C */  lw         $v1, %lo(D_800F20B0)($v1)
    /* B122C 800C0A2C 40110200 */  sll        $v0, $v0, 5
    /* B1230 800C0A30 21204300 */  addu       $a0, $v0, $v1
    /* B1234 800C0A34 06008290 */  lbu        $v0, 0x6($a0)
    /* B1238 800C0A38 FBFF0381 */  lb         $v1, -0x5($t0)
    /* B123C 800C0A3C 00000000 */  nop
    /* B1240 800C0A40 2A106200 */  slt        $v0, $v1, $v0
    /* B1244 800C0A44 10004014 */  bnez       $v0, .L800C0A88
    /* B1248 800C0A48 0100C224 */   addiu     $v0, $a2, 0x1
    /* B124C 800C0A4C 07008290 */  lbu        $v0, 0x7($a0)
    /* B1250 800C0A50 00000000 */  nop
    /* B1254 800C0A54 2A104300 */  slt        $v0, $v0, $v1
    /* B1258 800C0A58 0B004014 */  bnez       $v0, .L800C0A88
    /* B125C 800C0A5C 0100C224 */   addiu     $v0, $a2, 0x1
    /* B1260 800C0A60 FF00E230 */  andi       $v0, $a3, 0xFF
    /* B1264 800C0A64 2118E000 */  addu       $v1, $a3, $zero
    /* B1268 800C0A68 0100E724 */  addiu      $a3, $a3, 0x1
    /* B126C 800C0A6C 2110A200 */  addu       $v0, $a1, $v0
    /* B1270 800C0A70 FF006330 */  andi       $v1, $v1, 0xFF
    /* B1274 800C0A74 16008490 */  lbu        $a0, 0x16($a0)
    /* B1278 800C0A78 21182301 */  addu       $v1, $t1, $v1
    /* B127C 800C0A7C 000044A0 */  sb         $a0, 0x0($v0)
    /* B1280 800C0A80 000066A0 */  sb         $a2, 0x0($v1)
    /* B1284 800C0A84 0100C224 */  addiu      $v0, $a2, 0x1
  .L800C0A88:
    /* B1288 800C0A88 21304000 */  addu       $a2, $v0, $zero
    /* B128C 800C0A8C 00160200 */  sll        $v0, $v0, 24
    /* B1290 800C0A90 00004381 */  lb         $v1, 0x0($t2)
    /* B1294 800C0A94 03160200 */  sra        $v0, $v0, 24
    /* B1298 800C0A98 2A104300 */  slt        $v0, $v0, $v1
    /* B129C 800C0A9C DDFF4014 */  bnez       $v0, .L800C0A14
    /* B12A0 800C0AA0 001E0600 */   sll       $v1, $a2, 24
  .L800C0AA4:
    /* B12A4 800C0AA4 0800E003 */  jr         $ra
    /* B12A8 800C0AA8 FF00E230 */   andi      $v0, $a3, 0xFF
endlabel func_800C09E8
    /* B12AC 800C0AAC 00000000 */  nop
    /* B12B0 800C0AB0 00000000 */  nop
    /* B12B4 800C0AB4 00000000 */  nop
