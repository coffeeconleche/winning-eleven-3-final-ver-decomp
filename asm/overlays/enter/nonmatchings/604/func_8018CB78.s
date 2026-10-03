nonmatching func_8018CB78, 0x13C

glabel func_8018CB78
    /* 3C00 8018CB78 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 3C04 8018CB7C 1C00BFAF */  sw         $ra, 0x1C($sp)
    /* 3C08 8018CB80 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3C0C 8018CB84 8D038590 */  lbu        $a1, 0x38D($a0)
    /* 3C10 8018CB88 801F013C */  lui        $at, (0x1F800124 >> 16)
    /* 3C14 8018CB8C 240120A4 */  sh         $zero, (0x1F800124 & 0xFFFF)($at)
    /* 3C18 8018CB90 801F013C */  lui        $at, (0x1F800126 >> 16)
    /* 3C1C 8018CB94 260120A4 */  sh         $zero, (0x1F800126 & 0xFFFF)($at)
    /* 3C20 8018CB98 801F013C */  lui        $at, (0x1F800128 >> 16)
    /* 3C24 8018CB9C 280120A4 */  sh         $zero, (0x1F800128 & 0xFFFF)($at)
    /* 3C28 8018CBA0 02008284 */  lh         $v0, 0x2($a0)
    /* 3C2C 8018CBA4 801F013C */  lui        $at, (0x1F800140 >> 16)
    /* 3C30 8018CBA8 400120AC */  sw         $zero, (0x1F800140 & 0xFFFF)($at)
    /* 3C34 8018CBAC E8FFA524 */  addiu      $a1, $a1, -0x18
    /* 3C38 8018CBB0 801F013C */  lui        $at, (0x1F80013C >> 16)
    /* 3C3C 8018CBB4 3C0122AC */  sw         $v0, (0x1F80013C & 0xFFFF)($at)
    /* 3C40 8018CBB8 06008384 */  lh         $v1, 0x6($a0)
    /* 3C44 8018CBBC 801F023C */  lui        $v0, (0x1F80029D >> 16)
    /* 3C48 8018CBC0 9D024290 */  lbu        $v0, (0x1F80029D & 0xFFFF)($v0)
    /* 3C4C 8018CBC4 1980043C */  lui        $a0, %hi(D_80193848)
    /* 3C50 8018CBC8 48388424 */  addiu      $a0, $a0, %lo(D_80193848)
    /* 3C54 8018CBCC 80800200 */  sll        $s0, $v0, 2
    /* 3C58 8018CBD0 21800202 */  addu       $s0, $s0, $v0
    /* 3C5C 8018CBD4 80801000 */  sll        $s0, $s0, 2
    /* 3C60 8018CBD8 21800202 */  addu       $s0, $s0, $v0
    /* 3C64 8018CBDC 80801000 */  sll        $s0, $s0, 2
    /* 3C68 8018CBE0 23800202 */  subu       $s0, $s0, $v0
    /* 3C6C 8018CBE4 00811000 */  sll        $s0, $s0, 4
    /* 3C70 8018CBE8 1980023C */  lui        $v0, %hi(D_80193C98)
    /* 3C74 8018CBEC 983C4224 */  addiu      $v0, $v0, %lo(D_80193C98)
    /* 3C78 8018CBF0 21800202 */  addu       $s0, $s0, $v0
    /* 3C7C 8018CBF4 801F013C */  lui        $at, (0x1F800144 >> 16)
    /* 3C80 8018CBF8 440123AC */  sw         $v1, (0x1F800144 & 0xFFFF)($at)
    /* 3C84 8018CBFC C0190500 */  sll        $v1, $a1, 7
    /* 3C88 8018CC00 80100500 */  sll        $v0, $a1, 2
    /* 3C8C 8018CC04 21104500 */  addu       $v0, $v0, $a1
    /* 3C90 8018CC08 40110200 */  sll        $v0, $v0, 5
    /* 3C94 8018CC0C 21800202 */  addu       $s0, $s0, $v0
    /* 3C98 8018CC10 21206400 */  addu       $a0, $v1, $a0
    /* 3C9C 8018CC14 A467000C */  jal        func_80019E90
    /* 3CA0 8018CC18 21280002 */   addu      $a1, $s0, $zero
    /* 3CA4 8018CC1C FF00063C */  lui        $a2, (0xFFFFFF >> 16)
    /* 3CA8 8018CC20 FFFFC634 */  ori        $a2, $a2, (0xFFFFFF & 0xFFFF)
    /* 3CAC 8018CC24 801F073C */  lui        $a3, (0x1F800000 >> 16)
    /* 3CB0 8018CC28 04000524 */  addiu      $a1, $zero, 0x4
    /* 3CB4 8018CC2C 00FF083C */  lui        $t0, (0xFF000000 >> 16)
    /* 3CB8 8018CC30 0000048E */  lw         $a0, 0x0($s0)
    /* 3CBC 8018CC34 0000E38C */  lw         $v1, (0x1F800000 & 0xFFFF)($a3)
    /* 3CC0 8018CC38 801F023C */  lui        $v0, (0x1F80029D >> 16)
    /* 3CC4 8018CC3C 9D024290 */  lbu        $v0, (0x1F80029D & 0xFFFF)($v0)
    /* 3CC8 8018CC40 04186500 */  sllv       $v1, $a1, $v1
    /* 3CCC 8018CC44 80130200 */  sll        $v0, $v0, 14
    /* 3CD0 8018CC48 21104300 */  addu       $v0, $v0, $v1
    /* 3CD4 8018CC4C 0F80013C */  lui        $at, %hi(D_800F3560)
    /* 3CD8 8018CC50 21082200 */  addu       $at, $at, $v0
    /* 3CDC 8018CC54 6035228C */  lw         $v0, %lo(D_800F3560)($at)
    /* 3CE0 8018CC58 24208800 */  and        $a0, $a0, $t0
    /* 3CE4 8018CC5C 24104600 */  and        $v0, $v0, $a2
    /* 3CE8 8018CC60 25208200 */  or         $a0, $a0, $v0
    /* 3CEC 8018CC64 000004AE */  sw         $a0, 0x0($s0)
    /* 3CF0 8018CC68 0F80043C */  lui        $a0, %hi(D_800F3560)
    /* 3CF4 8018CC6C 60358424 */  addiu      $a0, $a0, %lo(D_800F3560)
    /* 3CF8 8018CC70 0000E38C */  lw         $v1, (0x1F800000 & 0xFFFF)($a3)
    /* 3CFC 8018CC74 801F023C */  lui        $v0, (0x1F80029D >> 16)
    /* 3D00 8018CC78 9D024290 */  lbu        $v0, (0x1F80029D & 0xFFFF)($v0)
    /* 3D04 8018CC7C 04286500 */  sllv       $a1, $a1, $v1
    /* 3D08 8018CC80 80130200 */  sll        $v0, $v0, 14
    /* 3D0C 8018CC84 21104500 */  addu       $v0, $v0, $a1
    /* 3D10 8018CC88 21104400 */  addu       $v0, $v0, $a0
    /* 3D14 8018CC8C 0000438C */  lw         $v1, 0x0($v0)
    /* 3D18 8018CC90 24800602 */  and        $s0, $s0, $a2
    /* 3D1C 8018CC94 24186800 */  and        $v1, $v1, $t0
    /* 3D20 8018CC98 25187000 */  or         $v1, $v1, $s0
    /* 3D24 8018CC9C 000043AC */  sw         $v1, 0x0($v0)
    /* 3D28 8018CCA0 1C00BF8F */  lw         $ra, 0x1C($sp)
    /* 3D2C 8018CCA4 1800B08F */  lw         $s0, 0x18($sp)
    /* 3D30 8018CCA8 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3D34 8018CCAC 0800E003 */  jr         $ra
    /* 3D38 8018CCB0 00000000 */   nop
endlabel func_8018CB78
