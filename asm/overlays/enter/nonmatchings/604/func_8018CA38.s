nonmatching func_8018CA38, 0x140

glabel func_8018CA38
    /* 3AC0 8018CA38 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3AC4 8018CA3C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3AC8 8018CA40 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3ACC 8018CA44 8D038590 */  lbu        $a1, 0x38D($a0)
    /* 3AD0 8018CA48 02008284 */  lh         $v0, 0x2($a0)
    /* 3AD4 8018CA4C 801F033C */  lui        $v1, (0x1F80029D >> 16)
    /* 3AD8 8018CA50 9D026390 */  lbu        $v1, (0x1F80029D & 0xFFFF)($v1)
    /* 3ADC 8018CA54 801F013C */  lui        $at, (0x1F800140 >> 16)
    /* 3AE0 8018CA58 400120AC */  sw         $zero, (0x1F800140 & 0xFFFF)($at)
    /* 3AE4 8018CA5C 801F013C */  lui        $at, (0x1F80013C >> 16)
    /* 3AE8 8018CA60 3C0122AC */  sw         $v0, (0x1F80013C & 0xFFFF)($at)
    /* 3AEC 8018CA64 000E0224 */  addiu      $v0, $zero, 0xE00
    /* 3AF0 8018CA68 80800300 */  sll        $s0, $v1, 2
    /* 3AF4 8018CA6C 21800302 */  addu       $s0, $s0, $v1
    /* 3AF8 8018CA70 80801000 */  sll        $s0, $s0, 2
    /* 3AFC 8018CA74 21800302 */  addu       $s0, $s0, $v1
    /* 3B00 8018CA78 80801000 */  sll        $s0, $s0, 2
    /* 3B04 8018CA7C 23800302 */  subu       $s0, $s0, $v1
    /* 3B08 8018CA80 06008484 */  lh         $a0, 0x6($a0)
    /* 3B0C 8018CA84 00811000 */  sll        $s0, $s0, 4
    /* 3B10 8018CA88 801F013C */  lui        $at, (0x1F800126 >> 16)
    /* 3B14 8018CA8C 260122A4 */  sh         $v0, (0x1F800126 & 0xFFFF)($at)
    /* 3B18 8018CA90 1980023C */  lui        $v0, %hi(D_80193C98)
    /* 3B1C 8018CA94 983C4224 */  addiu      $v0, $v0, %lo(D_80193C98)
    /* 3B20 8018CA98 21800202 */  addu       $s0, $s0, $v0
    /* 3B24 8018CA9C E8FFA524 */  addiu      $a1, $a1, -0x18
    /* 3B28 8018CAA0 C0190500 */  sll        $v1, $a1, 7
    /* 3B2C 8018CAA4 80100500 */  sll        $v0, $a1, 2
    /* 3B30 8018CAA8 21104500 */  addu       $v0, $v0, $a1
    /* 3B34 8018CAAC 40110200 */  sll        $v0, $v0, 5
    /* 3B38 8018CAB0 21800202 */  addu       $s0, $s0, $v0
    /* 3B3C 8018CAB4 21280002 */  addu       $a1, $s0, $zero
    /* 3B40 8018CAB8 801F013C */  lui        $at, (0x1F800124 >> 16)
    /* 3B44 8018CABC 240120A4 */  sh         $zero, (0x1F800124 & 0xFFFF)($at)
    /* 3B48 8018CAC0 801F013C */  lui        $at, (0x1F800128 >> 16)
    /* 3B4C 8018CAC4 280120A4 */  sh         $zero, (0x1F800128 & 0xFFFF)($at)
    /* 3B50 8018CAC8 801F013C */  lui        $at, (0x1F800144 >> 16)
    /* 3B54 8018CACC 440124AC */  sw         $a0, (0x1F800144 & 0xFFFF)($at)
    /* 3B58 8018CAD0 1980043C */  lui        $a0, %hi(D_80193848)
    /* 3B5C 8018CAD4 48388424 */  addiu      $a0, $a0, %lo(D_80193848)
    /* 3B60 8018CAD8 A467000C */  jal        func_80019E90
    /* 3B64 8018CADC 21206400 */   addu      $a0, $v1, $a0
    /* 3B68 8018CAE0 FF00063C */  lui        $a2, (0xFFFFFF >> 16)
    /* 3B6C 8018CAE4 FFFFC634 */  ori        $a2, $a2, (0xFFFFFF & 0xFFFF)
    /* 3B70 8018CAE8 801F073C */  lui        $a3, (0x1F800000 >> 16)
    /* 3B74 8018CAEC 04000524 */  addiu      $a1, $zero, 0x4
    /* 3B78 8018CAF0 00FF083C */  lui        $t0, (0xFF000000 >> 16)
    /* 3B7C 8018CAF4 0000048E */  lw         $a0, 0x0($s0)
    /* 3B80 8018CAF8 0000E38C */  lw         $v1, (0x1F800000 & 0xFFFF)($a3)
    /* 3B84 8018CAFC 801F023C */  lui        $v0, (0x1F80029D >> 16)
    /* 3B88 8018CB00 9D024290 */  lbu        $v0, (0x1F80029D & 0xFFFF)($v0)
    /* 3B8C 8018CB04 04186500 */  sllv       $v1, $a1, $v1
    /* 3B90 8018CB08 80130200 */  sll        $v0, $v0, 14
    /* 3B94 8018CB0C 21104300 */  addu       $v0, $v0, $v1
    /* 3B98 8018CB10 0F80013C */  lui        $at, %hi(D_800F3560)
    /* 3B9C 8018CB14 21082200 */  addu       $at, $at, $v0
    /* 3BA0 8018CB18 6035228C */  lw         $v0, %lo(D_800F3560)($at)
    /* 3BA4 8018CB1C 24208800 */  and        $a0, $a0, $t0
    /* 3BA8 8018CB20 24104600 */  and        $v0, $v0, $a2
    /* 3BAC 8018CB24 25208200 */  or         $a0, $a0, $v0
    /* 3BB0 8018CB28 000004AE */  sw         $a0, 0x0($s0)
    /* 3BB4 8018CB2C 0F80043C */  lui        $a0, %hi(D_800F3560)
    /* 3BB8 8018CB30 60358424 */  addiu      $a0, $a0, %lo(D_800F3560)
    /* 3BBC 8018CB34 0000E38C */  lw         $v1, (0x1F800000 & 0xFFFF)($a3)
    /* 3BC0 8018CB38 801F023C */  lui        $v0, (0x1F80029D >> 16)
    /* 3BC4 8018CB3C 9D024290 */  lbu        $v0, (0x1F80029D & 0xFFFF)($v0)
    /* 3BC8 8018CB40 04286500 */  sllv       $a1, $a1, $v1
    /* 3BCC 8018CB44 80130200 */  sll        $v0, $v0, 14
    /* 3BD0 8018CB48 21104500 */  addu       $v0, $v0, $a1
    /* 3BD4 8018CB4C 21104400 */  addu       $v0, $v0, $a0
    /* 3BD8 8018CB50 0000438C */  lw         $v1, 0x0($v0)
    /* 3BDC 8018CB54 24800602 */  and        $s0, $s0, $a2
    /* 3BE0 8018CB58 24186800 */  and        $v1, $v1, $t0
    /* 3BE4 8018CB5C 25187000 */  or         $v1, $v1, $s0
    /* 3BE8 8018CB60 000043AC */  sw         $v1, 0x0($v0)
    /* 3BEC 8018CB64 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3BF0 8018CB68 1800B08F */  lw         $s0, 0x18($sp)
    /* 3BF4 8018CB6C 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3BF8 8018CB70 0800E003 */  jr         $ra
    /* 3BFC 8018CB74 00000000 */   nop
endlabel func_8018CA38
