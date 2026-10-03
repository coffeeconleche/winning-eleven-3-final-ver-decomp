nonmatching func_801C7A84, 0xA64

glabel func_801C7A84
    /* 3EB0C 801C7A84 68FFBD27 */  addiu      $sp, $sp, -0x98
    /* 3EB10 801C7A88 7800B2AF */  sw         $s2, 0x78($sp)
    /* 3EB14 801C7A8C 801F123C */  lui        $s2, (0x1F80029D >> 16)
    /* 3EB18 801C7A90 8000B4AF */  sw         $s4, 0x80($sp)
    /* 3EB1C 801C7A94 2800B427 */  addiu      $s4, $sp, 0x28
    /* 3EB20 801C7A98 4000A827 */  addiu      $t0, $sp, 0x40
    /* 3EB24 801C7A9C 1E80033C */  lui        $v1, %hi(D_801DA5C8)
    /* 3EB28 801C7AA0 C8A56390 */  lbu        $v1, %lo(D_801DA5C8)($v1)
    /* 3EB2C 801C7AA4 01000224 */  addiu      $v0, $zero, 0x1
    /* 3EB30 801C7AA8 9400BFAF */  sw         $ra, 0x94($sp)
    /* 3EB34 801C7AAC 9000BEAF */  sw         $fp, 0x90($sp)
    /* 3EB38 801C7AB0 8C00B7AF */  sw         $s7, 0x8C($sp)
    /* 3EB3C 801C7AB4 8800B6AF */  sw         $s6, 0x88($sp)
    /* 3EB40 801C7AB8 8400B5AF */  sw         $s5, 0x84($sp)
    /* 3EB44 801C7ABC 7C00B3AF */  sw         $s3, 0x7C($sp)
    /* 3EB48 801C7AC0 7400B1AF */  sw         $s1, 0x74($sp)
    /* 3EB4C 801C7AC4 7000B0AF */  sw         $s0, 0x70($sp)
    /* 3EB50 801C7AC8 21016214 */  bne        $v1, $v0, .L801C7F50
    /* 3EB54 801C7ACC 5800A8AF */   sw        $t0, 0x58($sp)
    /* 3EB58 801C7AD0 21980000 */  addu       $s3, $zero, $zero
    /* 3EB5C 801C7AD4 6666033C */  lui        $v1, (0x66666667 >> 16)
  .L801C7AD8:
    /* 3EB60 801C7AD8 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
    /* 3EB64 801C7ADC 21200000 */  addu       $a0, $zero, $zero
    /* 3EB68 801C7AE0 08000724 */  addiu      $a3, $zero, 0x8
    /* 3EB6C 801C7AE4 10000224 */  addiu      $v0, $zero, 0x10
    /* 3EB70 801C7AE8 18006302 */  mult       $s3, $v1
    /* 3EB74 801C7AEC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3EB78 801C7AF0 C0101300 */  sll        $v0, $s3, 3
    /* 3EB7C 801C7AF4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3EB80 801C7AF8 50000224 */  addiu      $v0, $zero, 0x50
    /* 3EB84 801C7AFC 1800A2AF */  sw         $v0, 0x18($sp)
    /* 3EB88 801C7B00 17000224 */  addiu      $v0, $zero, 0x17
    /* 3EB8C 801C7B04 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 3EB90 801C7B08 08000224 */  addiu      $v0, $zero, 0x8
    /* 3EB94 801C7B0C 2000A2AF */  sw         $v0, 0x20($sp)
    /* 3EB98 801C7B10 02000224 */  addiu      $v0, $zero, 0x2
    /* 3EB9C 801C7B14 2400A2AF */  sw         $v0, 0x24($sp)
    /* 3EBA0 801C7B18 C3171300 */  sra        $v0, $s3, 31
    /* 3EBA4 801C7B1C 10400000 */  mfhi       $t0
    /* 3EBA8 801C7B20 43180800 */  sra        $v1, $t0, 1
    /* 3EBAC 801C7B24 23886200 */  subu       $s1, $v1, $v0
    /* 3EBB0 801C7B28 21902002 */  addu       $s2, $s1, $zero
    /* 3EBB4 801C7B2C 80101200 */  sll        $v0, $s2, 2
    /* 3EBB8 801C7B30 21105200 */  addu       $v0, $v0, $s2
    /* 3EBBC 801C7B34 23886202 */  subu       $s1, $s3, $v0
    /* 3EBC0 801C7B38 C0281200 */  sll        $a1, $s2, 3
    /* 3EBC4 801C7B3C 2128B200 */  addu       $a1, $a1, $s2
    /* 3EBC8 801C7B40 40280500 */  sll        $a1, $a1, 1
    /* 3EBCC 801C7B44 C3FFA524 */  addiu      $a1, $a1, -0x3D
    /* 3EBD0 801C7B48 C0301100 */  sll        $a2, $s1, 3
    /* 3EBD4 801C7B4C 2130D100 */  addu       $a2, $a2, $s1
    /* 3EBD8 801C7B50 40300600 */  sll        $a2, $a2, 1
    /* 3EBDC 801C7B54 DE58060C */  jal        func_80196378
    /* 3EBE0 801C7B58 D4FFC624 */   addiu     $a2, $a2, -0x2C
    /* 3EBE4 801C7B5C 01007326 */  addiu      $s3, $s3, 0x1
    /* 3EBE8 801C7B60 1F00622A */  slti       $v0, $s3, 0x1F
    /* 3EBEC 801C7B64 DCFF4014 */  bnez       $v0, .L801C7AD8
    /* 3EBF0 801C7B68 6666033C */   lui       $v1, (0x66666667 >> 16)
    /* 3EBF4 801C7B6C 1F001324 */  addiu      $s3, $zero, 0x1F
    /* 3EBF8 801C7B70 21800000 */  addu       $s0, $zero, $zero
    /* 3EBFC 801C7B74 6666023C */  lui        $v0, (0x66666667 >> 16)
  .L801C7B78:
    /* 3EC00 801C7B78 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 3EC04 801C7B7C 21200000 */  addu       $a0, $zero, $zero
    /* 3EC08 801C7B80 08000724 */  addiu      $a3, $zero, 0x8
    /* 3EC0C 801C7B84 1400B0AF */  sw         $s0, 0x14($sp)
    /* 3EC10 801C7B88 08001026 */  addiu      $s0, $s0, 0x8
    /* 3EC14 801C7B8C 18006202 */  mult       $s3, $v0
    /* 3EC18 801C7B90 10001724 */  addiu      $s7, $zero, 0x10
    /* 3EC1C 801C7B94 60000824 */  addiu      $t0, $zero, 0x60
    /* 3EC20 801C7B98 17001E24 */  addiu      $fp, $zero, 0x17
    /* 3EC24 801C7B9C 08001624 */  addiu      $s6, $zero, 0x8
    /* 3EC28 801C7BA0 02001524 */  addiu      $s5, $zero, 0x2
    /* 3EC2C 801C7BA4 C3171300 */  sra        $v0, $s3, 31
    /* 3EC30 801C7BA8 1000B7AF */  sw         $s7, 0x10($sp)
    /* 3EC34 801C7BAC 1800A8AF */  sw         $t0, 0x18($sp)
    /* 3EC38 801C7BB0 1C00BEAF */  sw         $fp, 0x1C($sp)
    /* 3EC3C 801C7BB4 2000B6AF */  sw         $s6, 0x20($sp)
    /* 3EC40 801C7BB8 2400B5AF */  sw         $s5, 0x24($sp)
    /* 3EC44 801C7BBC 10400000 */  mfhi       $t0
    /* 3EC48 801C7BC0 43180800 */  sra        $v1, $t0, 1
    /* 3EC4C 801C7BC4 23886200 */  subu       $s1, $v1, $v0
    /* 3EC50 801C7BC8 21902002 */  addu       $s2, $s1, $zero
    /* 3EC54 801C7BCC 80101200 */  sll        $v0, $s2, 2
    /* 3EC58 801C7BD0 21105200 */  addu       $v0, $v0, $s2
    /* 3EC5C 801C7BD4 23886202 */  subu       $s1, $s3, $v0
    /* 3EC60 801C7BD8 C0281200 */  sll        $a1, $s2, 3
    /* 3EC64 801C7BDC 2128B200 */  addu       $a1, $a1, $s2
    /* 3EC68 801C7BE0 40280500 */  sll        $a1, $a1, 1
    /* 3EC6C 801C7BE4 C3FFA524 */  addiu      $a1, $a1, -0x3D
    /* 3EC70 801C7BE8 C0301100 */  sll        $a2, $s1, 3
    /* 3EC74 801C7BEC 2130D100 */  addu       $a2, $a2, $s1
    /* 3EC78 801C7BF0 40300600 */  sll        $a2, $a2, 1
    /* 3EC7C 801C7BF4 DE58060C */  jal        func_80196378
    /* 3EC80 801C7BF8 D4FFC624 */   addiu     $a2, $a2, -0x2C
    /* 3EC84 801C7BFC 01007326 */  addiu      $s3, $s3, 0x1
    /* 3EC88 801C7C00 2400622A */  slti       $v0, $s3, 0x24
    /* 3EC8C 801C7C04 DCFF4014 */  bnez       $v0, .L801C7B78
    /* 3EC90 801C7C08 6666023C */   lui       $v0, (0x66666667 >> 16)
    /* 3EC94 801C7C0C 21200000 */  addu       $a0, $zero, $zero
    /* 3EC98 801C7C10 41000524 */  addiu      $a1, $zero, 0x41
    /* 3EC9C 801C7C14 F8FF0624 */  addiu      $a2, $zero, -0x8
    /* 3ECA0 801C7C18 08000724 */  addiu      $a3, $zero, 0x8
    /* 3ECA4 801C7C1C 28000224 */  addiu      $v0, $zero, 0x28
    /* 3ECA8 801C7C20 60000824 */  addiu      $t0, $zero, 0x60
    /* 3ECAC 801C7C24 1000B7AF */  sw         $s7, 0x10($sp)
    /* 3ECB0 801C7C28 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3ECB4 801C7C2C 1800A8AF */  sw         $t0, 0x18($sp)
    /* 3ECB8 801C7C30 1C00BEAF */  sw         $fp, 0x1C($sp)
    /* 3ECBC 801C7C34 2000B6AF */  sw         $s6, 0x20($sp)
    /* 3ECC0 801C7C38 DE58060C */  jal        func_80196378
    /* 3ECC4 801C7C3C 2400B5AF */   sw        $s5, 0x24($sp)
    /* 3ECC8 801C7C40 21200000 */  addu       $a0, $zero, $zero
    /* 3ECCC 801C7C44 41000524 */  addiu      $a1, $zero, 0x41
    /* 3ECD0 801C7C48 1C000624 */  addiu      $a2, $zero, 0x1C
    /* 3ECD4 801C7C4C 08000724 */  addiu      $a3, $zero, 0x8
    /* 3ECD8 801C7C50 30000224 */  addiu      $v0, $zero, 0x30
    /* 3ECDC 801C7C54 60000824 */  addiu      $t0, $zero, 0x60
    /* 3ECE0 801C7C58 1000B7AF */  sw         $s7, 0x10($sp)
    /* 3ECE4 801C7C5C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3ECE8 801C7C60 1800A8AF */  sw         $t0, 0x18($sp)
    /* 3ECEC 801C7C64 1C00BEAF */  sw         $fp, 0x1C($sp)
    /* 3ECF0 801C7C68 2000B6AF */  sw         $s6, 0x20($sp)
    /* 3ECF4 801C7C6C DE58060C */  jal        func_80196378
    /* 3ECF8 801C7C70 2400B5AF */   sw        $s5, 0x24($sp)
    /* 3ECFC 801C7C74 28001324 */  addiu      $s3, $zero, 0x28
    /* 3ED00 801C7C78 38001024 */  addiu      $s0, $zero, 0x38
    /* 3ED04 801C7C7C 6666023C */  lui        $v0, (0x66666667 >> 16)
  .L801C7C80:
    /* 3ED08 801C7C80 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 3ED0C 801C7C84 21200000 */  addu       $a0, $zero, $zero
    /* 3ED10 801C7C88 08000724 */  addiu      $a3, $zero, 0x8
    /* 3ED14 801C7C8C 1400B0AF */  sw         $s0, 0x14($sp)
    /* 3ED18 801C7C90 08001026 */  addiu      $s0, $s0, 0x8
    /* 3ED1C 801C7C94 18006202 */  mult       $s3, $v0
    /* 3ED20 801C7C98 10001724 */  addiu      $s7, $zero, 0x10
    /* 3ED24 801C7C9C 60000824 */  addiu      $t0, $zero, 0x60
    /* 3ED28 801C7CA0 17001E24 */  addiu      $fp, $zero, 0x17
    /* 3ED2C 801C7CA4 08001624 */  addiu      $s6, $zero, 0x8
    /* 3ED30 801C7CA8 02001524 */  addiu      $s5, $zero, 0x2
    /* 3ED34 801C7CAC C3171300 */  sra        $v0, $s3, 31
    /* 3ED38 801C7CB0 1000B7AF */  sw         $s7, 0x10($sp)
    /* 3ED3C 801C7CB4 1800A8AF */  sw         $t0, 0x18($sp)
    /* 3ED40 801C7CB8 1C00BEAF */  sw         $fp, 0x1C($sp)
    /* 3ED44 801C7CBC 2000B6AF */  sw         $s6, 0x20($sp)
    /* 3ED48 801C7CC0 2400B5AF */  sw         $s5, 0x24($sp)
    /* 3ED4C 801C7CC4 10400000 */  mfhi       $t0
    /* 3ED50 801C7CC8 43180800 */  sra        $v1, $t0, 1
    /* 3ED54 801C7CCC 23886200 */  subu       $s1, $v1, $v0
    /* 3ED58 801C7CD0 21902002 */  addu       $s2, $s1, $zero
    /* 3ED5C 801C7CD4 80101200 */  sll        $v0, $s2, 2
    /* 3ED60 801C7CD8 21105200 */  addu       $v0, $v0, $s2
    /* 3ED64 801C7CDC 23886202 */  subu       $s1, $s3, $v0
    /* 3ED68 801C7CE0 C0281200 */  sll        $a1, $s2, 3
    /* 3ED6C 801C7CE4 2128B200 */  addu       $a1, $a1, $s2
    /* 3ED70 801C7CE8 40280500 */  sll        $a1, $a1, 1
    /* 3ED74 801C7CEC C3FFA524 */  addiu      $a1, $a1, -0x3D
    /* 3ED78 801C7CF0 C0301100 */  sll        $a2, $s1, 3
    /* 3ED7C 801C7CF4 2130D100 */  addu       $a2, $a2, $s1
    /* 3ED80 801C7CF8 40300600 */  sll        $a2, $a2, 1
    /* 3ED84 801C7CFC DE58060C */  jal        func_80196378
    /* 3ED88 801C7D00 D4FFC624 */   addiu     $a2, $a2, -0x2C
    /* 3ED8C 801C7D04 01007326 */  addiu      $s3, $s3, 0x1
    /* 3ED90 801C7D08 2D00622A */  slti       $v0, $s3, 0x2D
    /* 3ED94 801C7D0C DCFF4014 */  bnez       $v0, .L801C7C80
    /* 3ED98 801C7D10 6666023C */   lui       $v0, (0x66666667 >> 16)
    /* 3ED9C 801C7D14 21200000 */  addu       $a0, $zero, $zero
    /* 3EDA0 801C7D18 65000524 */  addiu      $a1, $zero, 0x65
    /* 3EDA4 801C7D1C D4FF0624 */  addiu      $a2, $zero, -0x2C
    /* 3EDA8 801C7D20 08000724 */  addiu      $a3, $zero, 0x8
    /* 3EDAC 801C7D24 60000824 */  addiu      $t0, $zero, 0x60
    /* 3EDB0 801C7D28 1400A8AF */  sw         $t0, 0x14($sp)
    /* 3EDB4 801C7D2C 1000B7AF */  sw         $s7, 0x10($sp)
    /* 3EDB8 801C7D30 1800A8AF */  sw         $t0, 0x18($sp)
    /* 3EDBC 801C7D34 1C00BEAF */  sw         $fp, 0x1C($sp)
    /* 3EDC0 801C7D38 2000B6AF */  sw         $s6, 0x20($sp)
    /* 3EDC4 801C7D3C DE58060C */  jal        func_80196378
    /* 3EDC8 801C7D40 2400B5AF */   sw        $s5, 0x24($sp)
    /* 3EDCC 801C7D44 21200000 */  addu       $a0, $zero, $zero
    /* 3EDD0 801C7D48 65000524 */  addiu      $a1, $zero, 0x65
    /* 3EDD4 801C7D4C F8FF0624 */  addiu      $a2, $zero, -0x8
    /* 3EDD8 801C7D50 08000724 */  addiu      $a3, $zero, 0x8
    /* 3EDDC 801C7D54 88000224 */  addiu      $v0, $zero, 0x88
    /* 3EDE0 801C7D58 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3EDE4 801C7D5C 70000224 */  addiu      $v0, $zero, 0x70
    /* 3EDE8 801C7D60 1000B7AF */  sw         $s7, 0x10($sp)
    /* 3EDEC 801C7D64 1800A2AF */  sw         $v0, 0x18($sp)
    /* 3EDF0 801C7D68 1C00BEAF */  sw         $fp, 0x1C($sp)
    /* 3EDF4 801C7D6C 2000B6AF */  sw         $s6, 0x20($sp)
    /* 3EDF8 801C7D70 DE58060C */  jal        func_80196378
    /* 3EDFC 801C7D74 2400B5AF */   sw        $s5, 0x24($sp)
    /* 3EE00 801C7D78 21200000 */  addu       $a0, $zero, $zero
    /* 3EE04 801C7D7C 65000524 */  addiu      $a1, $zero, 0x65
    /* 3EE08 801C7D80 1C000624 */  addiu      $a2, $zero, 0x1C
    /* 3EE0C 801C7D84 08000724 */  addiu      $a3, $zero, 0x8
    /* 3EE10 801C7D88 68000224 */  addiu      $v0, $zero, 0x68
    /* 3EE14 801C7D8C 60000824 */  addiu      $t0, $zero, 0x60
    /* 3EE18 801C7D90 1000B7AF */  sw         $s7, 0x10($sp)
    /* 3EE1C 801C7D94 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3EE20 801C7D98 1800A8AF */  sw         $t0, 0x18($sp)
    /* 3EE24 801C7D9C 1C00BEAF */  sw         $fp, 0x1C($sp)
    /* 3EE28 801C7DA0 2000B6AF */  sw         $s6, 0x20($sp)
    /* 3EE2C 801C7DA4 DE58060C */  jal        func_80196378
    /* 3EE30 801C7DA8 2400B5AF */   sw        $s5, 0x24($sp)
    /* 3EE34 801C7DAC 32001324 */  addiu      $s3, $zero, 0x32
    /* 3EE38 801C7DB0 90001024 */  addiu      $s0, $zero, 0x90
    /* 3EE3C 801C7DB4 6666023C */  lui        $v0, (0x66666667 >> 16)
  .L801C7DB8:
    /* 3EE40 801C7DB8 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* 3EE44 801C7DBC 21200000 */  addu       $a0, $zero, $zero
    /* 3EE48 801C7DC0 08000724 */  addiu      $a3, $zero, 0x8
    /* 3EE4C 801C7DC4 1400B0AF */  sw         $s0, 0x14($sp)
    /* 3EE50 801C7DC8 08001026 */  addiu      $s0, $s0, 0x8
    /* 3EE54 801C7DCC 18006202 */  mult       $s3, $v0
    /* 3EE58 801C7DD0 10001524 */  addiu      $s5, $zero, 0x10
    /* 3EE5C 801C7DD4 70000824 */  addiu      $t0, $zero, 0x70
    /* 3EE60 801C7DD8 17001724 */  addiu      $s7, $zero, 0x17
    /* 3EE64 801C7DDC 08001E24 */  addiu      $fp, $zero, 0x8
    /* 3EE68 801C7DE0 02001624 */  addiu      $s6, $zero, 0x2
    /* 3EE6C 801C7DE4 C3171300 */  sra        $v0, $s3, 31
    /* 3EE70 801C7DE8 1000B5AF */  sw         $s5, 0x10($sp)
    /* 3EE74 801C7DEC 1800A8AF */  sw         $t0, 0x18($sp)
    /* 3EE78 801C7DF0 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 3EE7C 801C7DF4 2000BEAF */  sw         $fp, 0x20($sp)
    /* 3EE80 801C7DF8 2400B6AF */  sw         $s6, 0x24($sp)
    /* 3EE84 801C7DFC 10400000 */  mfhi       $t0
    /* 3EE88 801C7E00 43180800 */  sra        $v1, $t0, 1
    /* 3EE8C 801C7E04 23886200 */  subu       $s1, $v1, $v0
    /* 3EE90 801C7E08 21902002 */  addu       $s2, $s1, $zero
    /* 3EE94 801C7E0C 80101200 */  sll        $v0, $s2, 2
    /* 3EE98 801C7E10 21105200 */  addu       $v0, $v0, $s2
    /* 3EE9C 801C7E14 23886202 */  subu       $s1, $s3, $v0
    /* 3EEA0 801C7E18 C0281200 */  sll        $a1, $s2, 3
    /* 3EEA4 801C7E1C 2128B200 */  addu       $a1, $a1, $s2
    /* 3EEA8 801C7E20 40280500 */  sll        $a1, $a1, 1
    /* 3EEAC 801C7E24 C3FFA524 */  addiu      $a1, $a1, -0x3D
    /* 3EEB0 801C7E28 C0301100 */  sll        $a2, $s1, 3
    /* 3EEB4 801C7E2C 2130D100 */  addu       $a2, $a2, $s1
    /* 3EEB8 801C7E30 40300600 */  sll        $a2, $a2, 1
    /* 3EEBC 801C7E34 DE58060C */  jal        func_80196378
    /* 3EEC0 801C7E38 D4FFC624 */   addiu     $a2, $a2, -0x2C
    /* 3EEC4 801C7E3C 01007326 */  addiu      $s3, $s3, 0x1
    /* 3EEC8 801C7E40 3B00622A */  slti       $v0, $s3, 0x3B
    /* 3EECC 801C7E44 DCFF4014 */  bnez       $v0, .L801C7DB8
    /* 3EED0 801C7E48 6666023C */   lui       $v0, (0x66666667 >> 16)
    /* 3EED4 801C7E4C 21200000 */  addu       $a0, $zero, $zero
    /* 3EED8 801C7E50 9B000524 */  addiu      $a1, $zero, 0x9B
    /* 3EEDC 801C7E54 D4FF0624 */  addiu      $a2, $zero, -0x2C
    /* 3EEE0 801C7E58 06000724 */  addiu      $a3, $zero, 0x6
    /* 3EEE4 801C7E5C 60001024 */  addiu      $s0, $zero, 0x60
    /* 3EEE8 801C7E60 1000B5AF */  sw         $s5, 0x10($sp)
    /* 3EEEC 801C7E64 1400B0AF */  sw         $s0, 0x14($sp)
    /* 3EEF0 801C7E68 1800B5AF */  sw         $s5, 0x18($sp)
    /* 3EEF4 801C7E6C 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 3EEF8 801C7E70 2000BEAF */  sw         $fp, 0x20($sp)
    /* 3EEFC 801C7E74 DE58060C */  jal        func_80196378
    /* 3EF00 801C7E78 2400B6AF */   sw        $s6, 0x24($sp)
    /* 3EF04 801C7E7C 21200000 */  addu       $a0, $zero, $zero
    /* 3EF08 801C7E80 9B000524 */  addiu      $a1, $zero, 0x9B
    /* 3EF0C 801C7E84 EAFF0624 */  addiu      $a2, $zero, -0x16
    /* 3EF10 801C7E88 08000724 */  addiu      $a3, $zero, 0x8
    /* 3EF14 801C7E8C 70000824 */  addiu      $t0, $zero, 0x70
    /* 3EF18 801C7E90 1000B5AF */  sw         $s5, 0x10($sp)
    /* 3EF1C 801C7E94 1400A8AF */  sw         $t0, 0x14($sp)
    /* 3EF20 801C7E98 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3EF24 801C7E9C 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 3EF28 801C7EA0 2000BEAF */  sw         $fp, 0x20($sp)
    /* 3EF2C 801C7EA4 DE58060C */  jal        func_80196378
    /* 3EF30 801C7EA8 2400B6AF */   sw        $s6, 0x24($sp)
    /* 3EF34 801C7EAC 21200000 */  addu       $a0, $zero, $zero
    /* 3EF38 801C7EB0 9B000524 */  addiu      $a1, $zero, 0x9B
    /* 3EF3C 801C7EB4 FCFF0624 */  addiu      $a2, $zero, -0x4
    /* 3EF40 801C7EB8 08000724 */  addiu      $a3, $zero, 0x8
    /* 3EF44 801C7EBC 78000224 */  addiu      $v0, $zero, 0x78
    /* 3EF48 801C7EC0 1000B5AF */  sw         $s5, 0x10($sp)
    /* 3EF4C 801C7EC4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3EF50 801C7EC8 1800B0AF */  sw         $s0, 0x18($sp)
    /* 3EF54 801C7ECC 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 3EF58 801C7ED0 2000BEAF */  sw         $fp, 0x20($sp)
    /* 3EF5C 801C7ED4 DE58060C */  jal        func_80196378
    /* 3EF60 801C7ED8 2400B6AF */   sw        $s6, 0x24($sp)
    /* 3EF64 801C7EDC 21200000 */  addu       $a0, $zero, $zero
    /* 3EF68 801C7EE0 97000524 */  addiu      $a1, $zero, 0x97
    /* 3EF6C 801C7EE4 0E000624 */  addiu      $a2, $zero, 0xE
    /* 3EF70 801C7EE8 10000724 */  addiu      $a3, $zero, 0x10
    /* 3EF74 801C7EEC 20000224 */  addiu      $v0, $zero, 0x20
    /* 3EF78 801C7EF0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3EF7C 801C7EF4 50000224 */  addiu      $v0, $zero, 0x50
    /* 3EF80 801C7EF8 1800A2AF */  sw         $v0, 0x18($sp)
    /* 3EF84 801C7EFC 16000224 */  addiu      $v0, $zero, 0x16
    /* 3EF88 801C7F00 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 3EF8C 801C7F04 38000224 */  addiu      $v0, $zero, 0x38
    /* 3EF90 801C7F08 1000B5AF */  sw         $s5, 0x10($sp)
    /* 3EF94 801C7F0C 2000A2AF */  sw         $v0, 0x20($sp)
    /* 3EF98 801C7F10 DE58060C */  jal        func_80196378
    /* 3EF9C 801C7F14 2400B6AF */   sw        $s6, 0x24($sp)
    /* 3EFA0 801C7F18 21200000 */  addu       $a0, $zero, $zero
    /* 3EFA4 801C7F1C 8B000524 */  addiu      $a1, $zero, 0x8B
    /* 3EFA8 801C7F20 1C000624 */  addiu      $a2, $zero, 0x1C
    /* 3EFAC 801C7F24 18000724 */  addiu      $a3, $zero, 0x18
    /* 3EFB0 801C7F28 D8000224 */  addiu      $v0, $zero, 0xD8
    /* 3EFB4 801C7F2C 70000824 */  addiu      $t0, $zero, 0x70
    /* 3EFB8 801C7F30 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3EFBC 801C7F34 62000224 */  addiu      $v0, $zero, 0x62
    /* 3EFC0 801C7F38 1000B5AF */  sw         $s5, 0x10($sp)
    /* 3EFC4 801C7F3C 1800A8AF */  sw         $t0, 0x18($sp)
    /* 3EFC8 801C7F40 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 3EFCC 801C7F44 2000A2AF */  sw         $v0, 0x20($sp)
    /* 3EFD0 801C7F48 15200708 */  j          .L801C8054
    /* 3EFD4 801C7F4C 2400B6AF */   sw        $s6, 0x24($sp)
  .L801C7F50:
    /* 3EFD8 801C7F50 1D80023C */  lui        $v0, %hi(D_801D5984)
    /* 3EFDC 801C7F54 8459428C */  lw         $v0, %lo(D_801D5984)($v0)
    /* 3EFE0 801C7F58 00000000 */  nop
    /* 3EFE4 801C7F5C 00004290 */  lbu        $v0, 0x0($v0)
    /* 3EFE8 801C7F60 21980000 */  addu       $s3, $zero, $zero
    /* 3EFEC 801C7F64 1C004010 */  beqz       $v0, .L801C7FD8
    /* 3EFF0 801C7F68 000022A2 */   sb        $v0, 0x0($s1)
    /* 3EFF4 801C7F6C 1980103C */  lui        $s0, %hi(D_8018D824)
    /* 3EFF8 801C7F70 24D81026 */  addiu      $s0, $s0, %lo(D_8018D824)
  .L801C7F74:
    /* 3EFFC 801C7F74 00002492 */  lbu        $a0, 0x0($s1)
    /* 3F000 801C7F78 00000586 */  lh         $a1, 0x0($s0)
    /* 3F004 801C7F7C 1980013C */  lui        $at, %hi(D_8018D8AC)
    /* 3F008 801C7F80 21083300 */  addu       $at, $at, $s3
    /* 3F00C 801C7F84 ACD82680 */  lb         $a2, %lo(D_8018D8AC)($at)
    /* 3F010 801C7F88 8626070C */  jal        func_801C9A18
    /* 3F014 801C7F8C 21380000 */   addu      $a3, $zero, $zero
    /* 3F018 801C7F90 5C014426 */  addiu      $a0, $s2, %lo(D_1F80015C)
    /* 3F01C 801C7F94 9D024292 */  lbu        $v0, (0x1F80029D & 0xFFFF)($s2)
    /* 3F020 801C7F98 02000624 */  addiu      $a2, $zero, 0x2
    /* 3F024 801C7F9C 80280200 */  sll        $a1, $v0, 2
    /* 3F028 801C7FA0 2128A200 */  addu       $a1, $a1, $v0
    /* 3F02C 801C7FA4 80280500 */  sll        $a1, $a1, 2
    /* 3F030 801C7FA8 0F80023C */  lui        $v0, %hi(D_800F1018)
    /* 3F034 801C7FAC 18104224 */  addiu      $v0, $v0, %lo(D_800F1018)
    /* 3F038 801C7FB0 EECF020C */  jal        func_800B3FB8
    /* 3F03C 801C7FB4 2128A200 */   addu      $a1, $a1, $v0
    /* 3F040 801C7FB8 1D80023C */  lui        $v0, %hi(D_801D5984)
    /* 3F044 801C7FBC 8459428C */  lw         $v0, %lo(D_801D5984)($v0)
    /* 3F048 801C7FC0 01007326 */  addiu      $s3, $s3, 0x1
    /* 3F04C 801C7FC4 21105300 */  addu       $v0, $v0, $s3
    /* 3F050 801C7FC8 00004290 */  lbu        $v0, 0x0($v0)
    /* 3F054 801C7FCC 02001026 */  addiu      $s0, $s0, 0x2
    /* 3F058 801C7FD0 E8FF4014 */  bnez       $v0, .L801C7F74
    /* 3F05C 801C7FD4 000022A2 */   sb        $v0, 0x0($s1)
  .L801C7FD8:
    /* 3F060 801C7FD8 21200000 */  addu       $a0, $zero, $zero
    /* 3F064 801C7FDC 98000524 */  addiu      $a1, $zero, 0x98
    /* 3F068 801C7FE0 08000624 */  addiu      $a2, $zero, 0x8
    /* 3F06C 801C7FE4 10000724 */  addiu      $a3, $zero, 0x10
    /* 3F070 801C7FE8 10001124 */  addiu      $s1, $zero, 0x10
    /* 3F074 801C7FEC 20000224 */  addiu      $v0, $zero, 0x20
    /* 3F078 801C7FF0 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3F07C 801C7FF4 50000224 */  addiu      $v0, $zero, 0x50
    /* 3F080 801C7FF8 1800A2AF */  sw         $v0, 0x18($sp)
    /* 3F084 801C7FFC 16000224 */  addiu      $v0, $zero, 0x16
    /* 3F088 801C8000 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 3F08C 801C8004 38000224 */  addiu      $v0, $zero, 0x38
    /* 3F090 801C8008 02001024 */  addiu      $s0, $zero, 0x2
    /* 3F094 801C800C 1000B1AF */  sw         $s1, 0x10($sp)
    /* 3F098 801C8010 2000A2AF */  sw         $v0, 0x20($sp)
    /* 3F09C 801C8014 DE58060C */  jal        func_80196378
    /* 3F0A0 801C8018 2400B0AF */   sw        $s0, 0x24($sp)
    /* 3F0A4 801C801C 21200000 */  addu       $a0, $zero, $zero
    /* 3F0A8 801C8020 8B000524 */  addiu      $a1, $zero, 0x8B
    /* 3F0AC 801C8024 1C000624 */  addiu      $a2, $zero, 0x1C
    /* 3F0B0 801C8028 18000724 */  addiu      $a3, $zero, 0x18
    /* 3F0B4 801C802C E8000224 */  addiu      $v0, $zero, 0xE8
    /* 3F0B8 801C8030 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3F0BC 801C8034 40000224 */  addiu      $v0, $zero, 0x40
    /* 3F0C0 801C8038 1800A2AF */  sw         $v0, 0x18($sp)
    /* 3F0C4 801C803C 17000224 */  addiu      $v0, $zero, 0x17
    /* 3F0C8 801C8040 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 3F0CC 801C8044 62000224 */  addiu      $v0, $zero, 0x62
    /* 3F0D0 801C8048 1000B1AF */  sw         $s1, 0x10($sp)
    /* 3F0D4 801C804C 2000A2AF */  sw         $v0, 0x20($sp)
    /* 3F0D8 801C8050 2400B0AF */  sw         $s0, 0x24($sp)
  .L801C8054:
    /* 3F0DC 801C8054 DE58060C */  jal        func_80196378
    /* 3F0E0 801C8058 11001124 */   addiu     $s1, $zero, 0x11
    /* 3F0E4 801C805C 21200000 */  addu       $a0, $zero, $zero
    /* 3F0E8 801C8060 90FF0524 */  addiu      $a1, $zero, -0x70
    /* 3F0EC 801C8064 A1FF0624 */  addiu      $a2, $zero, -0x5F
    /* 3F0F0 801C8068 A2000724 */  addiu      $a3, $zero, 0xA2
    /* 3F0F4 801C806C 20000224 */  addiu      $v0, $zero, 0x20
    /* 3F0F8 801C8070 04001024 */  addiu      $s0, $zero, 0x4
    /* 3F0FC 801C8074 1000B1AF */  sw         $s1, 0x10($sp)
    /* 3F100 801C8078 1400A2AF */  sw         $v0, 0x14($sp)
    /* 3F104 801C807C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 3F108 801C8080 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 3F10C 801C8084 005A060C */  jal        func_80196800
    /* 3F110 801C8088 2000B0AF */   sw        $s0, 0x20($sp)
    /* 3F114 801C808C 21200000 */  addu       $a0, $zero, $zero
    /* 3F118 801C8090 8DFF0524 */  addiu      $a1, $zero, -0x73
    /* 3F11C 801C8094 9FFF0624 */  addiu      $a2, $zero, -0x61
    /* 3F120 801C8098 A2000724 */  addiu      $a3, $zero, 0xA2
    /* 3F124 801C809C 1000B1AF */  sw         $s1, 0x10($sp)
    /* 3F128 801C80A0 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3F12C 801C80A4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3F130 801C80A8 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 3F134 801C80AC 005A060C */  jal        func_80196800
    /* 3F138 801C80B0 2000B0AF */   sw        $s0, 0x20($sp)
    /* 3F13C 801C80B4 0B80023C */  lui        $v0, %hi(D_800AD638)
    /* 3F140 801C80B8 38D64294 */  lhu        $v0, %lo(D_800AD638)($v0)
    /* 3F144 801C80BC 00000000 */  nop
    /* 3F148 801C80C0 00190200 */  sll        $v1, $v0, 4
    /* 3F14C 801C80C4 1E80023C */  lui        $v0, %hi(D_801D8B17)
    /* 3F150 801C80C8 178B4290 */  lbu        $v0, %lo(D_801D8B17)($v0)
    /* 3F154 801C80CC 00000000 */  nop
    /* 3F158 801C80D0 0C004014 */  bnez       $v0, .L801C8104
    /* 3F15C 801C80D4 B6FF6624 */   addiu     $a2, $v1, -0x4A
    /* 3F160 801C80D8 01000424 */  addiu      $a0, $zero, 0x1
    /* 3F164 801C80DC 5DFF0524 */  addiu      $a1, $zero, -0xA3
    /* 3F168 801C80E0 00340600 */  sll        $a2, $a2, 16
    /* 3F16C 801C80E4 03340600 */  sra        $a2, $a2, 16
    /* 3F170 801C80E8 9CFF0724 */  addiu      $a3, $zero, -0x64
    /* 3F174 801C80EC C6FF6224 */  addiu      $v0, $v1, -0x3A
    /* 3F178 801C80F0 00140200 */  sll        $v0, $v0, 16
    /* 3F17C 801C80F4 03140200 */  sra        $v0, $v0, 16
    /* 3F180 801C80F8 1000A2AF */  sw         $v0, 0x10($sp)
    /* 3F184 801C80FC 56200708 */  j          .L801C8158
    /* 3F188 801C8100 1400A0AF */   sw        $zero, 0x14($sp)
  .L801C8104:
    /* 3F18C 801C8104 1E80023C */  lui        $v0, %hi(D_801D8DFE)
    /* 3F190 801C8108 FE8D4290 */  lbu        $v0, %lo(D_801D8DFE)($v0)
    /* 3F194 801C810C 00000000 */  nop
    /* 3F198 801C8110 13004010 */  beqz       $v0, .L801C8160
    /* 3F19C 801C8114 21200000 */   addu      $a0, $zero, $zero
    /* 3F1A0 801C8118 1E80053C */  lui        $a1, %hi(D_801D8DEE)
    /* 3F1A4 801C811C EE8DA584 */  lh         $a1, %lo(D_801D8DEE)($a1)
    /* 3F1A8 801C8120 1E80063C */  lui        $a2, %hi(D_801D8DF0)
    /* 3F1AC 801C8124 F08DC684 */  lh         $a2, %lo(D_801D8DF0)($a2)
    /* 3F1B0 801C8128 1E80073C */  lui        $a3, %hi(D_801D8DEC)
    /* 3F1B4 801C812C EC8DE790 */  lbu        $a3, %lo(D_801D8DEC)($a3)
    /* 3F1B8 801C8130 1E80023C */  lui        $v0, %hi(D_801D8DBE)
    /* 3F1BC 801C8134 BE8D4290 */  lbu        $v0, %lo(D_801D8DBE)($v0)
    /* 3F1C0 801C8138 1400A0AF */  sw         $zero, 0x14($sp)
    /* 3F1C4 801C813C 2138E500 */  addu       $a3, $a3, $a1
    /* 3F1C8 801C8140 003C0700 */  sll        $a3, $a3, 16
    /* 3F1CC 801C8144 033C0700 */  sra        $a3, $a3, 16
    /* 3F1D0 801C8148 21104600 */  addu       $v0, $v0, $a2
    /* 3F1D4 801C814C 00140200 */  sll        $v0, $v0, 16
    /* 3F1D8 801C8150 03140200 */  sra        $v0, $v0, 16
    /* 3F1DC 801C8154 1000A2AF */  sw         $v0, 0x10($sp)
  .L801C8158:
    /* 3F1E0 801C8158 B617070C */  jal        func_801C5ED8
    /* 3F1E4 801C815C 00000000 */   nop
  .L801C8160:
    /* 3F1E8 801C8160 21980000 */  addu       $s3, $zero, $zero
    /* 3F1EC 801C8164 58001224 */  addiu      $s2, $zero, 0x58
    /* 3F1F0 801C8168 14001124 */  addiu      $s1, $zero, 0x14
    /* 3F1F4 801C816C FC001024 */  addiu      $s0, $zero, 0xFC
    /* 3F1F8 801C8170 38FF0224 */  addiu      $v0, $zero, -0xC8
    /* 3F1FC 801C8174 000082A6 */  sh         $v0, 0x0($s4)
    /* 3F200 801C8178 88FF0224 */  addiu      $v0, $zero, -0x78
    /* 3F204 801C817C 020082A6 */  sh         $v0, 0x2($s4)
    /* 3F208 801C8180 90010224 */  addiu      $v0, $zero, 0x190
    /* 3F20C 801C8184 040082A6 */  sh         $v0, 0x4($s4)
    /* 3F210 801C8188 78000224 */  addiu      $v0, $zero, 0x78
    /* 3F214 801C818C 060082A6 */  sh         $v0, 0x6($s4)
    /* 3F218 801C8190 58000224 */  addiu      $v0, $zero, 0x58
    /* 3F21C 801C8194 0B0082A2 */  sb         $v0, 0xB($s4)
    /* 3F220 801C8198 080082A2 */  sb         $v0, 0x8($s4)
    /* 3F224 801C819C 14000224 */  addiu      $v0, $zero, 0x14
    /* 3F228 801C81A0 0C0082A2 */  sb         $v0, 0xC($s4)
    /* 3F22C 801C81A4 090082A2 */  sb         $v0, 0x9($s4)
    /* 3F230 801C81A8 FC000224 */  addiu      $v0, $zero, 0xFC
    /* 3F234 801C81AC 0D0082A2 */  sb         $v0, 0xD($s4)
    /* 3F238 801C81B0 0A0082A2 */  sb         $v0, 0xA($s4)
    /* 3F23C 801C81B4 130080A2 */  sb         $zero, 0x13($s4)
    /* 3F240 801C81B8 100080A2 */  sb         $zero, 0x10($s4)
    /* 3F244 801C81BC 120080A2 */  sb         $zero, 0x12($s4)
    /* 3F248 801C81C0 0F0080A2 */  sb         $zero, 0xF($s4)
    /* 3F24C 801C81C4 110080A2 */  sb         $zero, 0x11($s4)
    /* 3F250 801C81C8 0E0080A2 */  sb         $zero, 0xE($s4)
  .L801C81CC:
    /* 3F254 801C81CC 04006012 */  beqz       $s3, .L801C81E0
    /* 3F258 801C81D0 21200000 */   addu      $a0, $zero, $zero
    /* 3F25C 801C81D4 21288002 */  addu       $a1, $s4, $zero
    /* 3F260 801C81D8 87200708 */  j          .L801C821C
    /* 3F264 801C81DC 06000624 */   addiu     $a2, $zero, 0x6
  .L801C81E0:
    /* 3F268 801C81E0 21288002 */  addu       $a1, $s4, $zero
    /* 3F26C 801C81E4 06000624 */  addiu      $a2, $zero, 0x6
    /* 3F270 801C81E8 020080A6 */  sh         $zero, 0x2($s4)
    /* 3F274 801C81EC 110092A2 */  sb         $s2, 0x11($s4)
    /* 3F278 801C81F0 0E0092A2 */  sb         $s2, 0xE($s4)
    /* 3F27C 801C81F4 120091A2 */  sb         $s1, 0x12($s4)
    /* 3F280 801C81F8 0F0091A2 */  sb         $s1, 0xF($s4)
    /* 3F284 801C81FC 130090A2 */  sb         $s0, 0x13($s4)
    /* 3F288 801C8200 100090A2 */  sb         $s0, 0x10($s4)
    /* 3F28C 801C8204 0D0080A2 */  sb         $zero, 0xD($s4)
    /* 3F290 801C8208 0A0080A2 */  sb         $zero, 0xA($s4)
    /* 3F294 801C820C 0C0080A2 */  sb         $zero, 0xC($s4)
    /* 3F298 801C8210 090080A2 */  sb         $zero, 0x9($s4)
    /* 3F29C 801C8214 0B0080A2 */  sb         $zero, 0xB($s4)
    /* 3F2A0 801C8218 080080A2 */  sb         $zero, 0x8($s4)
  .L801C821C:
    /* 3F2A4 801C821C 985A060C */  jal        func_80196A60
    /* 3F2A8 801C8220 01007326 */   addiu     $s3, $s3, 0x1
    /* 3F2AC 801C8224 0200622A */  slti       $v0, $s3, 0x2
    /* 3F2B0 801C8228 E8FF4014 */  bnez       $v0, .L801C81CC
    /* 3F2B4 801C822C 00000000 */   nop
    /* 3F2B8 801C8230 B725070C */  jal        func_801C96DC
    /* 3F2BC 801C8234 21980000 */   addu      $s3, $zero, $zero
    /* 3F2C0 801C8238 AD21070C */  jal        func_801C86B4
    /* 3F2C4 801C823C 08001E24 */   addiu     $fp, $zero, 0x8
    /* 3F2C8 801C8240 09001724 */  addiu      $s7, $zero, 0x9
    /* 3F2CC 801C8244 05001624 */  addiu      $s6, $zero, 0x5
    /* 3F2D0 801C8248 21A80000 */  addu       $s5, $zero, $zero
  .L801C824C:
    /* 3F2D4 801C824C 1080083C */  lui        $t0, %hi(D_800FF748)
    /* 3F2D8 801C8250 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* 3F2DC 801C8254 1E80023C */  lui        $v0, %hi(D_801DA5D2)
    /* 3F2E0 801C8258 D2A54284 */  lh         $v0, %lo(D_801DA5D2)($v0)
    /* 3F2E4 801C825C 1E80033C */  lui        $v1, %hi(D_801DA330)
    /* 3F2E8 801C8260 30A36390 */  lbu        $v1, %lo(D_801DA330)($v1)
    /* 3F2EC 801C8264 21905300 */  addu       $s2, $v0, $s3
    /* 3F2F0 801C8268 40100300 */  sll        $v0, $v1, 1
    /* 3F2F4 801C826C 21104300 */  addu       $v0, $v0, $v1
    /* 3F2F8 801C8270 80100200 */  sll        $v0, $v0, 2
    /* 3F2FC 801C8274 23104300 */  subu       $v0, $v0, $v1
    /* 3F300 801C8278 40100200 */  sll        $v0, $v0, 1
    /* 3F304 801C827C 21104800 */  addu       $v0, $v0, $t0
    /* 3F308 801C8280 EA8A0334 */  ori        $v1, $zero, 0x8AEA
    /* 3F30C 801C8284 21104300 */  addu       $v0, $v0, $v1
    /* 3F310 801C8288 21105200 */  addu       $v0, $v0, $s2
    /* 3F314 801C828C 00004290 */  lbu        $v0, 0x0($v0)
    /* 3F318 801C8290 6666033C */  lui        $v1, (0x66666667 >> 16)
    /* 3F31C 801C8294 0F80013C */  lui        $at, %hi(D_800F0420)
    /* 3F320 801C8298 21082200 */  addu       $at, $at, $v0
    /* 3F324 801C829C 20043190 */  lbu        $s1, %lo(D_800F0420)($at)
    /* 3F328 801C82A0 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
    /* 3F32C 801C82A4 18002302 */  mult       $s1, $v1
    /* 3F330 801C82A8 C3171100 */  sra        $v0, $s1, 31
    /* 3F334 801C82AC 10400000 */  mfhi       $t0
    /* 3F338 801C82B0 83180800 */  sra        $v1, $t0, 2
    /* 3F33C 801C82B4 23A06200 */  subu       $s4, $v1, $v0
    /* 3F340 801C82B8 1C008012 */  beqz       $s4, .L801C832C
    /* 3F344 801C82BC 21200000 */   addu      $a0, $zero, $zero
    /* 3F348 801C82C0 99FF0534 */  ori        $a1, $zero, 0xFF99
    /* 3F34C 801C82C4 B8FF1034 */  ori        $s0, $zero, 0xFFB8
    /* 3F350 801C82C8 2180B002 */  addu       $s0, $s5, $s0
    /* 3F354 801C82CC 21300002 */  addu       $a2, $s0, $zero
    /* 3F358 801C82D0 10000724 */  addiu      $a3, $zero, 0x10
    /* 3F35C 801C82D4 80000824 */  addiu      $t0, $zero, 0x80
    /* 3F360 801C82D8 C0101400 */  sll        $v0, $s4, 3
    /* 3F364 801C82DC 80004224 */  addiu      $v0, $v0, 0x80
    /* 3F368 801C82E0 1400A8AF */  sw         $t0, 0x14($sp)
    /* 3F36C 801C82E4 1D000824 */  addiu      $t0, $zero, 0x1D
    /* 3F370 801C82E8 1000BEAF */  sw         $fp, 0x10($sp)
    /* 3F374 801C82EC 1800A2AF */  sw         $v0, 0x18($sp)
    /* 3F378 801C82F0 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 3F37C 801C82F4 2000A8AF */  sw         $t0, 0x20($sp)
    /* 3F380 801C82F8 DE58060C */  jal        func_80196378
    /* 3F384 801C82FC 2400B6AF */   sw        $s6, 0x24($sp)
    /* 3F388 801C8300 21200000 */  addu       $a0, $zero, $zero
    /* 3F38C 801C8304 A2FF0534 */  ori        $a1, $zero, 0xFFA2
    /* 3F390 801C8308 21300002 */  addu       $a2, $s0, $zero
    /* 3F394 801C830C 10000724 */  addiu      $a3, $zero, 0x10
    /* 3F398 801C8310 80000824 */  addiu      $t0, $zero, 0x80
    /* 3F39C 801C8314 80101400 */  sll        $v0, $s4, 2
    /* 3F3A0 801C8318 21105400 */  addu       $v0, $v0, $s4
    /* 3F3A4 801C831C 40100200 */  sll        $v0, $v0, 1
    /* 3F3A8 801C8320 23102202 */  subu       $v0, $s1, $v0
    /* 3F3AC 801C8324 D1200708 */  j          .L801C8344
    /* 3F3B0 801C8328 C0100200 */   sll       $v0, $v0, 3
  .L801C832C:
    /* 3F3B4 801C832C 9EFF0534 */  ori        $a1, $zero, 0xFF9E
    /* 3F3B8 801C8330 B8FF0634 */  ori        $a2, $zero, 0xFFB8
    /* 3F3BC 801C8334 2130A602 */  addu       $a2, $s5, $a2
    /* 3F3C0 801C8338 10000724 */  addiu      $a3, $zero, 0x10
    /* 3F3C4 801C833C 80000824 */  addiu      $t0, $zero, 0x80
    /* 3F3C8 801C8340 C0101100 */  sll        $v0, $s1, 3
  .L801C8344:
    /* 3F3CC 801C8344 80004224 */  addiu      $v0, $v0, 0x80
    /* 3F3D0 801C8348 1400A8AF */  sw         $t0, 0x14($sp)
    /* 3F3D4 801C834C 1D000824 */  addiu      $t0, $zero, 0x1D
    /* 3F3D8 801C8350 1000BEAF */  sw         $fp, 0x10($sp)
    /* 3F3DC 801C8354 1800A2AF */  sw         $v0, 0x18($sp)
    /* 3F3E0 801C8358 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 3F3E4 801C835C 2000A8AF */  sw         $t0, 0x20($sp)
    /* 3F3E8 801C8360 DE58060C */  jal        func_80196378
    /* 3F3EC 801C8364 2400B6AF */   sw        $s6, 0x24($sp)
    /* 3F3F0 801C8368 21200000 */  addu       $a0, $zero, $zero
    /* 3F3F4 801C836C 9DFF0534 */  ori        $a1, $zero, 0xFF9D
    /* 3F3F8 801C8370 BEFF0634 */  ori        $a2, $zero, 0xFFBE
    /* 3F3FC 801C8374 2130A602 */  addu       $a2, $s5, $a2
    /* 3F400 801C8378 10000724 */  addiu      $a3, $zero, 0x10
    /* 3F404 801C837C 1080083C */  lui        $t0, %hi(D_800FF748)
    /* 3F408 801C8380 48F70825 */  addiu      $t0, $t0, %lo(D_800FF748)
    /* 3F40C 801C8384 1E80033C */  lui        $v1, %hi(D_801DA330)
    /* 3F410 801C8388 30A36390 */  lbu        $v1, %lo(D_801DA330)($v1)
    /* 3F414 801C838C 1000B526 */  addiu      $s5, $s5, 0x10
    /* 3F418 801C8390 40100300 */  sll        $v0, $v1, 1
    /* 3F41C 801C8394 21104300 */  addu       $v0, $v0, $v1
    /* 3F420 801C8398 80100200 */  sll        $v0, $v0, 2
    /* 3F424 801C839C 23104300 */  subu       $v0, $v0, $v1
    /* 3F428 801C83A0 40100200 */  sll        $v0, $v0, 1
    /* 3F42C 801C83A4 21104800 */  addu       $v0, $v0, $t0
    /* 3F430 801C83A8 EA8A0334 */  ori        $v1, $zero, 0x8AEA
    /* 3F434 801C83AC 21104300 */  addu       $v0, $v0, $v1
    /* 3F438 801C83B0 21105200 */  addu       $v0, $v0, $s2
    /* 3F43C 801C83B4 00004290 */  lbu        $v0, 0x0($v0)
    /* 3F440 801C83B8 01007326 */  addiu      $s3, $s3, 0x1
    /* 3F444 801C83BC 0E80013C */  lui        $at, %hi(D_800E78A8)
    /* 3F448 801C83C0 21082200 */  addu       $at, $at, $v0
    /* 3F44C 801C83C4 A8783190 */  lbu        $s1, %lo(D_800E78A8)($at)
    /* 3F450 801C83C8 20000224 */  addiu      $v0, $zero, 0x20
    /* 3F454 801C83CC 1800A2AF */  sw         $v0, 0x18($sp)
    /* 3F458 801C83D0 0C000224 */  addiu      $v0, $zero, 0xC
    /* 3F45C 801C83D4 1000BEAF */  sw         $fp, 0x10($sp)
    /* 3F460 801C83D8 1C00B7AF */  sw         $s7, 0x1C($sp)
    /* 3F464 801C83DC 2000A2AF */  sw         $v0, 0x20($sp)
    /* 3F468 801C83E0 2400B6AF */  sw         $s6, 0x24($sp)
    /* 3F46C 801C83E4 00111100 */  sll        $v0, $s1, 4
    /* 3F470 801C83E8 DE58060C */  jal        func_80196378
    /* 3F474 801C83EC 1400A2AF */   sw        $v0, 0x14($sp)
    /* 3F478 801C83F0 0B00622A */  slti       $v0, $s3, 0xB
    /* 3F47C 801C83F4 95FF4014 */  bnez       $v0, .L801C824C
    /* 3F480 801C83F8 00010424 */   addiu     $a0, $zero, 0x100
    /* 3F484 801C83FC 6E39060C */  jal        func_8018E5B8
    /* 3F488 801C8400 04000524 */   addiu     $a1, $zero, 0x4
    /* 3F48C 801C8404 FF005330 */  andi       $s3, $v0, 0xFF
    /* 3F490 801C8408 5800A88F */  lw         $t0, 0x58($sp)
    /* 3F494 801C840C 83101300 */  sra        $v0, $s3, 2
    /* 3F498 801C8410 0C0002A1 */  sb         $v0, 0xC($t0)
    /* 3F49C 801C8414 0D0013A1 */  sb         $s3, 0xD($t0)
    /* 3F4A0 801C8418 0E0013A1 */  sb         $s3, 0xE($t0)
    /* 3F4A4 801C841C 1E80023C */  lui        $v0, %hi(D_801DA5D2)
    /* 3F4A8 801C8420 D2A54284 */  lh         $v0, %lo(D_801DA5D2)($v0)
    /* 3F4AC 801C8424 00000000 */  nop
    /* 3F4B0 801C8428 0F004010 */  beqz       $v0, .L801C8468
    /* 3F4B4 801C842C 21200000 */   addu      $a0, $zero, $zero
    /* 3F4B8 801C8430 01000624 */  addiu      $a2, $zero, 0x1
    /* 3F4BC 801C8434 5800A58F */  lw         $a1, 0x58($sp)
    /* 3F4C0 801C8438 58FF0224 */  addiu      $v0, $zero, -0xA8
    /* 3F4C4 801C843C 000002A5 */  sh         $v0, 0x0($t0)
    /* 3F4C8 801C8440 B7FF0224 */  addiu      $v0, $zero, -0x49
    /* 3F4CC 801C8444 020002A5 */  sh         $v0, 0x2($t0)
    /* 3F4D0 801C8448 54FF0224 */  addiu      $v0, $zero, -0xAC
    /* 3F4D4 801C844C BFFF0324 */  addiu      $v1, $zero, -0x41
    /* 3F4D8 801C8450 040002A5 */  sh         $v0, 0x4($t0)
    /* 3F4DC 801C8454 5CFF0224 */  addiu      $v0, $zero, -0xA4
    /* 3F4E0 801C8458 060003A5 */  sh         $v1, 0x6($t0)
    /* 3F4E4 801C845C 080002A5 */  sh         $v0, 0x8($t0)
    /* 3F4E8 801C8460 265B060C */  jal        func_80196C98
    /* 3F4EC 801C8464 0A0003A5 */   sh        $v1, 0xA($t0)
  .L801C8468:
    /* 3F4F0 801C8468 1E80033C */  lui        $v1, %hi(D_801DA5D2)
    /* 3F4F4 801C846C D2A56384 */  lh         $v1, %lo(D_801DA5D2)($v1)
    /* 3F4F8 801C8470 0B000224 */  addiu      $v0, $zero, 0xB
    /* 3F4FC 801C8474 0F006210 */  beq        $v1, $v0, .L801C84B4
    /* 3F500 801C8478 21200000 */   addu      $a0, $zero, $zero
    /* 3F504 801C847C 01000624 */  addiu      $a2, $zero, 0x1
    /* 3F508 801C8480 58FF0224 */  addiu      $v0, $zero, -0xA8
    /* 3F50C 801C8484 5800A58F */  lw         $a1, 0x58($sp)
    /* 3F510 801C8488 5F000324 */  addiu      $v1, $zero, 0x5F
    /* 3F514 801C848C 0000A2A4 */  sh         $v0, 0x0($a1)
    /* 3F518 801C8490 67000224 */  addiu      $v0, $zero, 0x67
    /* 3F51C 801C8494 0200A2A4 */  sh         $v0, 0x2($a1)
    /* 3F520 801C8498 54FF0224 */  addiu      $v0, $zero, -0xAC
    /* 3F524 801C849C 0400A2A4 */  sh         $v0, 0x4($a1)
    /* 3F528 801C84A0 5CFF0224 */  addiu      $v0, $zero, -0xA4
    /* 3F52C 801C84A4 0600A3A4 */  sh         $v1, 0x6($a1)
    /* 3F530 801C84A8 0800A2A4 */  sh         $v0, 0x8($a1)
    /* 3F534 801C84AC 265B060C */  jal        func_80196C98
    /* 3F538 801C84B0 0A00A3A4 */   sh        $v1, 0xA($a1)
  .L801C84B4:
    /* 3F53C 801C84B4 9400BF8F */  lw         $ra, 0x94($sp)
    /* 3F540 801C84B8 9000BE8F */  lw         $fp, 0x90($sp)
    /* 3F544 801C84BC 8C00B78F */  lw         $s7, 0x8C($sp)
    /* 3F548 801C84C0 8800B68F */  lw         $s6, 0x88($sp)
    /* 3F54C 801C84C4 8400B58F */  lw         $s5, 0x84($sp)
    /* 3F550 801C84C8 8000B48F */  lw         $s4, 0x80($sp)
    /* 3F554 801C84CC 7C00B38F */  lw         $s3, 0x7C($sp)
    /* 3F558 801C84D0 7800B28F */  lw         $s2, 0x78($sp)
    /* 3F55C 801C84D4 7400B18F */  lw         $s1, 0x74($sp)
    /* 3F560 801C84D8 7000B08F */  lw         $s0, 0x70($sp)
    /* 3F564 801C84DC 9800BD27 */  addiu      $sp, $sp, 0x98
    /* 3F568 801C84E0 0800E003 */  jr         $ra
    /* 3F56C 801C84E4 00000000 */   nop
endlabel func_801C7A84
