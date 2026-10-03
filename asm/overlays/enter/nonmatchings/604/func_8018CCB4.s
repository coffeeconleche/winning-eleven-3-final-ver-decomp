nonmatching func_8018CCB4, 0x18C

glabel func_8018CCB4
    /* 3D3C 8018CCB4 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 3D40 8018CCB8 2C00B5AF */  sw         $s5, 0x2C($sp)
    /* 3D44 8018CCBC 21A88000 */  addu       $s5, $a0, $zero
    /* 3D48 8018CCC0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 3D4C 8018CCC4 801F113C */  lui        $s1, (0x1F80029D >> 16)
    /* 3D50 8018CCC8 2000B2AF */  sw         $s2, 0x20($sp)
    /* 3D54 8018CCCC 21900000 */  addu       $s2, $zero, $zero
    /* 3D58 8018CCD0 3800BEAF */  sw         $fp, 0x38($sp)
    /* 3D5C 8018CCD4 04001E24 */  addiu      $fp, $zero, 0x4
    /* 3D60 8018CCD8 3400B7AF */  sw         $s7, 0x34($sp)
    /* 3D64 8018CCDC 0F80173C */  lui        $s7, %hi(D_800F3560)
    /* 3D68 8018CCE0 6035F726 */  addiu      $s7, $s7, %lo(D_800F3560)
    /* 3D6C 8018CCE4 2800B4AF */  sw         $s4, 0x28($sp)
    /* 3D70 8018CCE8 FF00143C */  lui        $s4, (0xFFFFFF >> 16)
    /* 3D74 8018CCEC FFFF9436 */  ori        $s4, $s4, (0xFFFFFF & 0xFFFF)
    /* 3D78 8018CCF0 3000B6AF */  sw         $s6, 0x30($sp)
    /* 3D7C 8018CCF4 00FF163C */  lui        $s6, (0xFF000000 >> 16)
    /* 3D80 8018CCF8 2400B3AF */  sw         $s3, 0x24($sp)
    /* 3D84 8018CCFC 00021324 */  addiu      $s3, $zero, 0x200
    /* 3D88 8018CD00 3C00BFAF */  sw         $ra, 0x3C($sp)
    /* 3D8C 8018CD04 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3D90 8018CD08 8D03A492 */  lbu        $a0, 0x38D($s5)
    /* 3D94 8018CD0C 801F033C */  lui        $v1, (0x1F80029D >> 16)
    /* 3D98 8018CD10 9D026390 */  lbu        $v1, (0x1F80029D & 0xFFFF)($v1)
    /* 3D9C 8018CD14 E8FF8424 */  addiu      $a0, $a0, -0x18
    /* 3DA0 8018CD18 C0310400 */  sll        $a2, $a0, 7
    /* 3DA4 8018CD1C 80100300 */  sll        $v0, $v1, 2
    /* 3DA8 8018CD20 21104300 */  addu       $v0, $v0, $v1
    /* 3DAC 8018CD24 80100200 */  sll        $v0, $v0, 2
    /* 3DB0 8018CD28 21104300 */  addu       $v0, $v0, $v1
    /* 3DB4 8018CD2C 80100200 */  sll        $v0, $v0, 2
    /* 3DB8 8018CD30 23104300 */  subu       $v0, $v0, $v1
    /* 3DBC 8018CD34 00110200 */  sll        $v0, $v0, 4
    /* 3DC0 8018CD38 1980033C */  lui        $v1, %hi(D_80193C98)
    /* 3DC4 8018CD3C 983C6324 */  addiu      $v1, $v1, %lo(D_80193C98)
    /* 3DC8 8018CD40 21104300 */  addu       $v0, $v0, $v1
    /* 3DCC 8018CD44 80180400 */  sll        $v1, $a0, 2
    /* 3DD0 8018CD48 21186400 */  addu       $v1, $v1, $a0
    /* 3DD4 8018CD4C 40190300 */  sll        $v1, $v1, 5
    /* 3DD8 8018CD50 21804300 */  addu       $s0, $v0, $v1
    /* 3DDC 8018CD54 1000A6AF */  sw         $a2, 0x10($sp)
  .L8018CD58:
    /* 3DE0 8018CD58 40211200 */  sll        $a0, $s2, 5
    /* 3DE4 8018CD5C 0200A286 */  lh         $v0, 0x2($s5)
    /* 3DE8 8018CD60 01005226 */  addiu      $s2, $s2, 0x1
    /* 3DEC 8018CD64 400120AE */  sw         $zero, (0x1F800140 & 0xFFFF)($s1)
    /* 3DF0 8018CD68 3C0122AE */  sw         $v0, (0x1F80013C & 0xFFFF)($s1)
    /* 3DF4 8018CD6C 0600A286 */  lh         $v0, 0x6($s5)
    /* 3DF8 8018CD70 21280002 */  addu       $a1, $s0, $zero
    /* 3DFC 8018CD74 260133A6 */  sh         $s3, (0x1F800126 & 0xFFFF)($s1)
    /* 3E00 8018CD78 00047326 */  addiu      $s3, $s3, 0x400
    /* 3E04 8018CD7C 240120A6 */  sh         $zero, (0x1F800124 & 0xFFFF)($s1)
    /* 3E08 8018CD80 280120A6 */  sh         $zero, (0x1F800128 & 0xFFFF)($s1)
    /* 3E0C 8018CD84 440122AE */  sw         $v0, (0x1F800144 & 0xFFFF)($s1)
    /* 3E10 8018CD88 1980023C */  lui        $v0, %hi(D_80193848)
    /* 3E14 8018CD8C 48384224 */  addiu      $v0, $v0, %lo(D_80193848)
    /* 3E18 8018CD90 1000A68F */  lw         $a2, 0x10($sp)
    /* 3E1C 8018CD94 21208200 */  addu       $a0, $a0, $v0
    /* 3E20 8018CD98 A467000C */  jal        func_80019E90
    /* 3E24 8018CD9C 2120C400 */   addu      $a0, $a2, $a0
    /* 3E28 8018CDA0 0000048E */  lw         $a0, 0x0($s0)
    /* 3E2C 8018CDA4 0000238E */  lw         $v1, (0x1F800000 & 0xFFFF)($s1)
    /* 3E30 8018CDA8 9D022292 */  lbu        $v0, (0x1F80029D & 0xFFFF)($s1)
    /* 3E34 8018CDAC 04187E00 */  sllv       $v1, $fp, $v1
    /* 3E38 8018CDB0 80130200 */  sll        $v0, $v0, 14
    /* 3E3C 8018CDB4 21104300 */  addu       $v0, $v0, $v1
    /* 3E40 8018CDB8 21105700 */  addu       $v0, $v0, $s7
    /* 3E44 8018CDBC 0000428C */  lw         $v0, 0x0($v0)
    /* 3E48 8018CDC0 24209600 */  and        $a0, $a0, $s6
    /* 3E4C 8018CDC4 24105400 */  and        $v0, $v0, $s4
    /* 3E50 8018CDC8 25208200 */  or         $a0, $a0, $v0
    /* 3E54 8018CDCC 000004AE */  sw         $a0, 0x0($s0)
    /* 3E58 8018CDD0 24201402 */  and        $a0, $s0, $s4
    /* 3E5C 8018CDD4 0000238E */  lw         $v1, (0x1F800000 & 0xFFFF)($s1)
    /* 3E60 8018CDD8 9D022292 */  lbu        $v0, (0x1F80029D & 0xFFFF)($s1)
    /* 3E64 8018CDDC 04187E00 */  sllv       $v1, $fp, $v1
    /* 3E68 8018CDE0 80130200 */  sll        $v0, $v0, 14
    /* 3E6C 8018CDE4 21104300 */  addu       $v0, $v0, $v1
    /* 3E70 8018CDE8 21105700 */  addu       $v0, $v0, $s7
    /* 3E74 8018CDEC 0000438C */  lw         $v1, 0x0($v0)
    /* 3E78 8018CDF0 00000000 */  nop
    /* 3E7C 8018CDF4 24187600 */  and        $v1, $v1, $s6
    /* 3E80 8018CDF8 25186400 */  or         $v1, $v1, $a0
    /* 3E84 8018CDFC 000043AC */  sw         $v1, 0x0($v0)
    /* 3E88 8018CE00 0400422A */  slti       $v0, $s2, 0x4
    /* 3E8C 8018CE04 D4FF4014 */  bnez       $v0, .L8018CD58
    /* 3E90 8018CE08 28001026 */   addiu     $s0, $s0, 0x28
    /* 3E94 8018CE0C 3C00BF8F */  lw         $ra, 0x3C($sp)
    /* 3E98 8018CE10 3800BE8F */  lw         $fp, 0x38($sp)
    /* 3E9C 8018CE14 3400B78F */  lw         $s7, 0x34($sp)
    /* 3EA0 8018CE18 3000B68F */  lw         $s6, 0x30($sp)
    /* 3EA4 8018CE1C 2C00B58F */  lw         $s5, 0x2C($sp)
    /* 3EA8 8018CE20 2800B48F */  lw         $s4, 0x28($sp)
    /* 3EAC 8018CE24 2400B38F */  lw         $s3, 0x24($sp)
    /* 3EB0 8018CE28 2000B28F */  lw         $s2, 0x20($sp)
    /* 3EB4 8018CE2C 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 3EB8 8018CE30 1800B08F */  lw         $s0, 0x18($sp)
    /* 3EBC 8018CE34 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 3EC0 8018CE38 0800E003 */  jr         $ra
    /* 3EC4 8018CE3C 00000000 */   nop
endlabel func_8018CCB4
