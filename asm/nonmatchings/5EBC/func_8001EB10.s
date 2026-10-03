nonmatching func_8001EB10, 0x374

glabel func_8001EB10
    /* F310 8001EB10 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* F314 8001EB14 1800BFAF */  sw         $ra, 0x18($sp)
    /* F318 8001EB18 1400B1AF */  sw         $s1, 0x14($sp)
    /* F31C 8001EB1C 6341010C */  jal        func_8005058C
    /* F320 8001EB20 1000B0AF */   sw        $s0, 0x10($sp)
    /* F324 8001EB24 153F010C */  jal        func_8004FC54
    /* F328 8001EB28 01000424 */   addiu     $a0, $zero, 0x1
    /* F32C 8001EB2C 1080103C */  lui        $s0, %hi(D_800FF748)
    /* F330 8001EB30 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* F334 8001EB34 801F023C */  lui        $v0, (0x1F8002E1 >> 16)
    /* F338 8001EB38 E1024290 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($v0)
    /* F33C 8001EB3C 00000000 */  nop
    /* F340 8001EB40 06004014 */  bnez       $v0, .L8001EB5C
    /* F344 8001EB44 801F113C */   lui       $s1, (0x1F8002E1 >> 16)
    /* F348 8001EB48 801F033C */  lui        $v1, (0x1F800298 >> 16)
    /* F34C 8001EB4C 98026390 */  lbu        $v1, (0x1F800298 & 0xFFFF)($v1)
    /* F350 8001EB50 03000224 */  addiu      $v0, $zero, 0x3
    /* F354 8001EB54 03006210 */  beq        $v1, $v0, .L8001EB64
    /* F358 8001EB58 01000224 */   addiu     $v0, $zero, 0x1
  .L8001EB5C:
    /* F35C 8001EB5C 1180023C */  lui        $v0, %hi(D_8010A5A9)
    /* F360 8001EB60 A9A54290 */  lbu        $v0, %lo(D_8010A5A9)($v0)
  .L8001EB64:
    /* F364 8001EB64 801F013C */  lui        $at, (0x1F800328 >> 16)
    /* F368 8001EB68 280322A0 */  sb         $v0, (0x1F800328 & 0xFFFF)($at)
    /* F36C 8001EB6C 21380000 */  addu       $a3, $zero, $zero
    /* F370 8001EB70 FF000A24 */  addiu      $t2, $zero, 0xFF
    /* F374 8001EB74 D1880C34 */  ori        $t4, $zero, 0x88D1
    /* F378 8001EB78 A5880B34 */  ori        $t3, $zero, 0x88A5
    /* F37C 8001EB7C 21400002 */  addu       $t0, $s0, $zero
    /* F380 8001EB80 21480000 */  addu       $t1, $zero, $zero
    /* F384 8001EB84 21302002 */  addu       $a2, $s1, $zero
    /* F388 8001EB88 A10220A2 */  sb         $zero, (0x1F8002A1 & 0xFFFF)($s1)
    /* F38C 8001EB8C CE0220A2 */  sb         $zero, (0x1F8002CE & 0xFFFF)($s1)
  .L8001EB90:
    /* F390 8001EB90 21280000 */  addu       $a1, $zero, $zero
    /* F394 8001EB94 21202001 */  addu       $a0, $t1, $zero
    /* F398 8001EB98 21100702 */  addu       $v0, $s0, $a3
    /* F39C 8001EB9C 21182702 */  addu       $v1, $s1, $a3
    /* F3A0 8001EBA0 0100013C */  lui        $at, (0x10000 >> 16)
    /* F3A4 8001EBA4 21084100 */  addu       $at, $v0, $at
    /* F3A8 8001EBA8 D68E20A0 */  sb         $zero, -0x712A($at)
    /* F3AC 8001EBAC 0100013C */  lui        $at, (0x10000 >> 16)
    /* F3B0 8001EBB0 21084100 */  addu       $at, $v0, $at
    /* F3B4 8001EBB4 D48E20A0 */  sb         $zero, -0x712C($at)
    /* F3B8 8001EBB8 0100013C */  lui        $at, (0x10000 >> 16)
    /* F3BC 8001EBBC 21084100 */  addu       $at, $v0, $at
    /* F3C0 8001EBC0 D28E20A0 */  sb         $zero, -0x712E($at)
    /* F3C4 8001EBC4 0100013C */  lui        $at, (0x10000 >> 16)
    /* F3C8 8001EBC8 21084100 */  addu       $at, $v0, $at
    /* F3CC 8001EBCC D08E20A0 */  sb         $zero, -0x7130($at)
    /* F3D0 8001EBD0 0100013C */  lui        $at, (0x10000 >> 16)
    /* F3D4 8001EBD4 21084100 */  addu       $at, $v0, $at
    /* F3D8 8001EBD8 CE8E20A0 */  sb         $zero, -0x7132($at)
    /* F3DC 8001EBDC 0100013C */  lui        $at, (0x10000 >> 16)
    /* F3E0 8001EBE0 21084100 */  addu       $at, $v0, $at
    /* F3E4 8001EBE4 CC8E20A0 */  sb         $zero, -0x7134($at)
    /* F3E8 8001EBE8 0100013C */  lui        $at, (0x10000 >> 16)
    /* F3EC 8001EBEC 21084100 */  addu       $at, $v0, $at
    /* F3F0 8001EBF0 CA8E20A0 */  sb         $zero, -0x7136($at)
    /* F3F4 8001EBF4 0100013C */  lui        $at, (0x10000 >> 16)
    /* F3F8 8001EBF8 21084100 */  addu       $at, $v0, $at
    /* F3FC 8001EBFC C88E20A0 */  sb         $zero, -0x7138($at)
    /* F400 8001EC00 D602C0A0 */  sb         $zero, (0x1F8002D6 & 0xFFFF)($a2)
    /* F404 8001EC04 D502C0A0 */  sb         $zero, (0x1F8002D5 & 0xFFFF)($a2)
    /* F408 8001EC08 D402C0A0 */  sb         $zero, (0x1F8002D4 & 0xFFFF)($a2)
    /* F40C 8001EC0C D302C0A0 */  sb         $zero, (0x1F8002D3 & 0xFFFF)($a2)
    /* F410 8001EC10 DB0260A0 */  sb         $zero, (0x1F8002DB & 0xFFFF)($v1)
    /* F414 8001EC14 D10260A0 */  sb         $zero, (0x1F8002D1 & 0xFFFF)($v1)
    /* F418 8001EC18 0100013C */  lui        $at, (0x10000 >> 16)
    /* F41C 8001EC1C 21084100 */  addu       $at, $v0, $at
    /* F420 8001EC20 70AC20A0 */  sb         $zero, -0x5390($at)
    /* F424 8001EC24 330320A2 */  sb         $zero, (0x1F800333 & 0xFFFF)($s1)
    /* F428 8001EC28 340360A0 */  sb         $zero, (0x1F800334 & 0xFFFF)($v1)
  .L8001EC2C:
    /* F42C 8001EC2C 21100402 */  addu       $v0, $s0, $a0
    /* F430 8001EC30 0100A524 */  addiu      $a1, $a1, 0x1
    /* F434 8001EC34 0100013C */  lui        $at, (0x10000 >> 16)
    /* F438 8001EC38 21084100 */  addu       $at, $v0, $at
    /* F43C 8001EC3C FF882AA0 */  sb         $t2, -0x7701($at)
    /* F440 8001EC40 0100013C */  lui        $at, (0x10000 >> 16)
    /* F444 8001EC44 21084100 */  addu       $at, $v0, $at
    /* F448 8001EC48 FE882AA0 */  sb         $t2, -0x7702($at)
    /* F44C 8001EC4C 0100013C */  lui        $at, (0x10000 >> 16)
    /* F450 8001EC50 21084100 */  addu       $at, $v0, $at
    /* F454 8001EC54 FD882AA0 */  sb         $t2, -0x7703($at)
    /* F458 8001EC58 2000A228 */  slti       $v0, $a1, 0x20
    /* F45C 8001EC5C F3FF4014 */  bnez       $v0, .L8001EC2C
    /* F460 8001EC60 03008424 */   addiu     $a0, $a0, 0x3
    /* F464 8001EC64 21180B01 */  addu       $v1, $t0, $t3
    /* F468 8001EC68 21200C01 */  addu       $a0, $t0, $t4
    /* F46C 8001EC6C 16006524 */  addiu      $a1, $v1, 0x16
  .L8001EC70:
    /* F470 8001EC70 000080A0 */  sb         $zero, 0x0($a0)
    /* F474 8001EC74 000060A0 */  sb         $zero, 0x0($v1)
    /* F478 8001EC78 01006324 */  addiu      $v1, $v1, 0x1
    /* F47C 8001EC7C 2A106500 */  slt        $v0, $v1, $a1
    /* F480 8001EC80 FBFF4014 */  bnez       $v0, .L8001EC70
    /* F484 8001EC84 01008424 */   addiu     $a0, $a0, 0x1
    /* F488 8001EC88 16000825 */  addiu      $t0, $t0, 0x16
    /* F48C 8001EC8C 60002925 */  addiu      $t1, $t1, 0x60
    /* F490 8001EC90 0100E724 */  addiu      $a3, $a3, 0x1
    /* F494 8001EC94 0200E228 */  slti       $v0, $a3, 0x2
    /* F498 8001EC98 BDFF4014 */  bnez       $v0, .L8001EB90
    /* F49C 8001EC9C 0400C624 */   addiu     $a2, $a2, %lo(D_1F800004)
    /* F4A0 8001ECA0 10000424 */  addiu      $a0, $zero, 0x10
    /* F4A4 8001ECA4 0100013C */  lui        $at, (0x10000 >> 16)
    /* F4A8 8001ECA8 21080102 */  addu       $at, $s0, $at
    /* F4AC 8001ECAC 76AC20A0 */  sb         $zero, -0x538A($at)
    /* F4B0 8001ECB0 0100013C */  lui        $at, (0x10000 >> 16)
    /* F4B4 8001ECB4 21080102 */  addu       $at, $s0, $at
    /* F4B8 8001ECB8 77AC20A0 */  sb         $zero, -0x5389($at)
    /* F4BC 8001ECBC 0100013C */  lui        $at, (0x10000 >> 16)
    /* F4C0 8001ECC0 21080102 */  addu       $at, $s0, $at
    /* F4C4 8001ECC4 75AC20A0 */  sb         $zero, -0x538B($at)
    /* F4C8 8001ECC8 0100013C */  lui        $at, (0x10000 >> 16)
    /* F4CC 8001ECCC 21080102 */  addu       $at, $s0, $at
    /* F4D0 8001ECD0 78AC20AC */  sw         $zero, -0x5388($at)
    /* F4D4 8001ECD4 AE79000C */  jal        func_8001E6B8
    /* F4D8 8001ECD8 310320A2 */   sb        $zero, (0x1F800331 & 0xFFFF)($s1)
    /* F4DC 8001ECDC 0100013C */  lui        $at, (0x10000 >> 16)
    /* F4E0 8001ECE0 21080102 */  addu       $at, $s0, $at
    /* F4E4 8001ECE4 69AC22A0 */  sb         $v0, -0x5397($at)
    /* F4E8 8001ECE8 AE79000C */  jal        func_8001E6B8
    /* F4EC 8001ECEC 10000424 */   addiu     $a0, $zero, 0x10
    /* F4F0 8001ECF0 0100013C */  lui        $at, (0x10000 >> 16)
    /* F4F4 8001ECF4 21080102 */  addu       $at, $s0, $at
    /* F4F8 8001ECF8 52AC22A0 */  sb         $v0, -0x53AE($at)
    /* F4FC 8001ECFC AE79000C */  jal        func_8001E6B8
    /* F500 8001ED00 10000424 */   addiu     $a0, $zero, 0x10
    /* F504 8001ED04 0100013C */  lui        $at, (0x10000 >> 16)
    /* F508 8001ED08 21080102 */  addu       $at, $s0, $at
    /* F50C 8001ED0C 6BAC22A0 */  sb         $v0, -0x5395($at)
    /* F510 8001ED10 AE79000C */  jal        func_8001E6B8
    /* F514 8001ED14 10000424 */   addiu     $a0, $zero, 0x10
    /* F518 8001ED18 0100013C */  lui        $at, (0x10000 >> 16)
    /* F51C 8001ED1C 21080102 */  addu       $at, $s0, $at
    /* F520 8001ED20 50AC22A0 */  sb         $v0, -0x53B0($at)
    /* F524 8001ED24 AE79000C */  jal        func_8001E6B8
    /* F528 8001ED28 10000424 */   addiu     $a0, $zero, 0x10
    /* F52C 8001ED2C 0100013C */  lui        $at, (0x10000 >> 16)
    /* F530 8001ED30 21080102 */  addu       $at, $s0, $at
    /* F534 8001ED34 57AC22A0 */  sb         $v0, -0x53A9($at)
    /* F538 8001ED38 AE79000C */  jal        func_8001E6B8
    /* F53C 8001ED3C 10000424 */   addiu     $a0, $zero, 0x10
    /* F540 8001ED40 0100013C */  lui        $at, (0x10000 >> 16)
    /* F544 8001ED44 21080102 */  addu       $at, $s0, $at
    /* F548 8001ED48 66AC22A0 */  sb         $v0, -0x539A($at)
    /* F54C 8001ED4C AE79000C */  jal        func_8001E6B8
    /* F550 8001ED50 10000424 */   addiu     $a0, $zero, 0x10
    /* F554 8001ED54 0100013C */  lui        $at, (0x10000 >> 16)
    /* F558 8001ED58 21080102 */  addu       $at, $s0, $at
    /* F55C 8001ED5C 6DAC22A0 */  sb         $v0, -0x5393($at)
    /* F560 8001ED60 AE79000C */  jal        func_8001E6B8
    /* F564 8001ED64 10000424 */   addiu     $a0, $zero, 0x10
    /* F568 8001ED68 0100013C */  lui        $at, (0x10000 >> 16)
    /* F56C 8001ED6C 21080102 */  addu       $at, $s0, $at
    /* F570 8001ED70 5CAC22A0 */  sb         $v0, -0x53A4($at)
    /* F574 8001ED74 AE79000C */  jal        func_8001E6B8
    /* F578 8001ED78 10000424 */   addiu     $a0, $zero, 0x10
    /* F57C 8001ED7C 0100013C */  lui        $at, (0x10000 >> 16)
    /* F580 8001ED80 21080102 */  addu       $at, $s0, $at
    /* F584 8001ED84 5EAC22A0 */  sb         $v0, -0x53A2($at)
    /* F588 8001ED88 AE79000C */  jal        func_8001E6B8
    /* F58C 8001ED8C 10000424 */   addiu     $a0, $zero, 0x10
    /* F590 8001ED90 0100013C */  lui        $at, (0x10000 >> 16)
    /* F594 8001ED94 21080102 */  addu       $at, $s0, $at
    /* F598 8001ED98 60AC22A0 */  sb         $v0, -0x53A0($at)
    /* F59C 8001ED9C AE79000C */  jal        func_8001E6B8
    /* F5A0 8001EDA0 0A000424 */   addiu     $a0, $zero, 0xA
    /* F5A4 8001EDA4 0100013C */  lui        $at, (0x10000 >> 16)
    /* F5A8 8001EDA8 21080102 */  addu       $at, $s0, $at
    /* F5AC 8001EDAC 5DAC22A0 */  sb         $v0, -0x53A3($at)
    /* F5B0 8001EDB0 AE79000C */  jal        func_8001E6B8
    /* F5B4 8001EDB4 10000424 */   addiu     $a0, $zero, 0x10
    /* F5B8 8001EDB8 0100013C */  lui        $at, (0x10000 >> 16)
    /* F5BC 8001EDBC 21080102 */  addu       $at, $s0, $at
    /* F5C0 8001EDC0 68AC22A0 */  sb         $v0, -0x5398($at)
    /* F5C4 8001EDC4 AE79000C */  jal        func_8001E6B8
    /* F5C8 8001EDC8 10000424 */   addiu     $a0, $zero, 0x10
    /* F5CC 8001EDCC 0100013C */  lui        $at, (0x10000 >> 16)
    /* F5D0 8001EDD0 21080102 */  addu       $at, $s0, $at
    /* F5D4 8001EDD4 67AC22A0 */  sb         $v0, -0x5399($at)
    /* F5D8 8001EDD8 AE79000C */  jal        func_8001E6B8
    /* F5DC 8001EDDC 10000424 */   addiu     $a0, $zero, 0x10
    /* F5E0 8001EDE0 0100013C */  lui        $at, (0x10000 >> 16)
    /* F5E4 8001EDE4 21080102 */  addu       $at, $s0, $at
    /* F5E8 8001EDE8 5BAC22A0 */  sb         $v0, -0x53A5($at)
    /* F5EC 8001EDEC AE79000C */  jal        func_8001E6B8
    /* F5F0 8001EDF0 10000424 */   addiu     $a0, $zero, 0x10
    /* F5F4 8001EDF4 DD022392 */  lbu        $v1, (0x1F8002DD & 0xFFFF)($s1)
    /* F5F8 8001EDF8 DE022592 */  lbu        $a1, (0x1F8002DE & 0xFFFF)($s1)
    /* F5FC 8001EDFC 21186200 */  addu       $v1, $v1, $v0
    /* F600 8001EE00 2128A300 */  addu       $a1, $a1, $v1
    /* F604 8001EE04 0100013C */  lui        $at, (0x10000 >> 16)
    /* F608 8001EE08 21080102 */  addu       $at, $s0, $at
    /* F60C 8001EE0C 61AC25A0 */  sb         $a1, -0x539F($at)
    /* F610 8001EE10 AE79000C */  jal        func_8001E6B8
    /* F614 8001EE14 10000424 */   addiu     $a0, $zero, 0x10
    /* F618 8001EE18 0100013C */  lui        $at, (0x10000 >> 16)
    /* F61C 8001EE1C 21080102 */  addu       $at, $s0, $at
    /* F620 8001EE20 62AC22A0 */  sb         $v0, -0x539E($at)
    /* F624 8001EE24 8F5C000C */  jal        func_8001723C
    /* F628 8001EE28 21200000 */   addu      $a0, $zero, $zero
    /* F62C 8001EE2C 2242010C */  jal        func_80050888
    /* F630 8001EE30 21200000 */   addu      $a0, $zero, $zero
    /* F634 8001EE34 835C000C */  jal        func_8001720C
    /* F638 8001EE38 00000000 */   nop
    /* F63C 8001EE3C 98022292 */  lbu        $v0, (0x1F800298 & 0xFFFF)($s1)
    /* F640 8001EE40 00000000 */  nop
    /* F644 8001EE44 FF004330 */  andi       $v1, $v0, 0xFF
    /* F648 8001EE48 05000224 */  addiu      $v0, $zero, 0x5
    /* F64C 8001EE4C 07006214 */  bne        $v1, $v0, .L8001EE6C
    /* F650 8001EE50 00000000 */   nop
    /* F654 8001EE54 E1022292 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($s1)
    /* F658 8001EE58 00000000 */  nop
    /* F65C 8001EE5C 03004310 */  beq        $v0, $v1, .L8001EE6C
    /* F660 8001EE60 00000000 */   nop
    /* F664 8001EE64 595D000C */  jal        func_80017564
    /* F668 8001EE68 BF000424 */   addiu     $a0, $zero, 0xBF
  .L8001EE6C:
    /* F66C 8001EE6C 1800BF8F */  lw         $ra, 0x18($sp)
    /* F670 8001EE70 1400B18F */  lw         $s1, 0x14($sp)
    /* F674 8001EE74 1000B08F */  lw         $s0, 0x10($sp)
    /* F678 8001EE78 2000BD27 */  addiu      $sp, $sp, 0x20
    /* F67C 8001EE7C 0800E003 */  jr         $ra
    /* F680 8001EE80 00000000 */   nop
endlabel func_8001EB10
