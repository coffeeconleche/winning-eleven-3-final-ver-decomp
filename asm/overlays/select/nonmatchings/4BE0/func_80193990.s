nonmatching func_80193990, 0x510

glabel func_80193990
    /* AA18 80193990 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* AA1C 80193994 567D4290 */  lbu        $v0, %lo(D_801D7D56)($v0)
    /* AA20 80193998 B8FFBD27 */  addiu      $sp, $sp, -0x48
    /* AA24 8019399C 4000B4AF */  sw         $s4, 0x40($sp)
    /* AA28 801939A0 1080143C */  lui        $s4, %hi(D_800FF748)
    /* AA2C 801939A4 48F79426 */  addiu      $s4, $s4, %lo(D_800FF748)
    /* AA30 801939A8 3000B0AF */  sw         $s0, 0x30($sp)
    /* AA34 801939AC 21800000 */  addu       $s0, $zero, $zero
    /* AA38 801939B0 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* AA3C 801939B4 02001324 */  addiu      $s3, $zero, 0x2
    /* AA40 801939B8 3400B1AF */  sw         $s1, 0x34($sp)
    /* AA44 801939BC 08001124 */  addiu      $s1, $zero, 0x8
    /* AA48 801939C0 3800B2AF */  sw         $s2, 0x38($sp)
    /* AA4C 801939C4 5B001224 */  addiu      $s2, $zero, 0x5B
    /* AA50 801939C8 4400BFAF */  sw         $ra, 0x44($sp)
    /* AA54 801939CC 30004224 */  addiu      $v0, $v0, 0x30
    /* AA58 801939D0 1D80013C */  lui        $at, %hi(D_801D1B11)
    /* AA5C 801939D4 111B22A0 */  sb         $v0, %lo(D_801D1B11)($at)
  .L801939D8:
    /* AA60 801939D8 1D80043C */  lui        $a0, %hi(D_801D1B05)
    /* AA64 801939DC 051B8424 */  addiu      $a0, $a0, %lo(D_801D1B05)
    /* AA68 801939E0 80281000 */  sll        $a1, $s0, 2
    /* AA6C 801939E4 2128B000 */  addu       $a1, $a1, $s0
    /* AA70 801939E8 C0280500 */  sll        $a1, $a1, 3
    /* AA74 801939EC 1E80023C */  lui        $v0, %hi(D_801DA070)
    /* AA78 801939F0 70A04224 */  addiu      $v0, $v0, %lo(D_801DA070)
    /* AA7C 801939F4 2128A200 */  addu       $a1, $a1, $v0
    /* AA80 801939F8 82B5020C */  jal        func_800AD608
    /* AA84 801939FC 0D000624 */   addiu     $a2, $zero, 0xD
    /* AA88 80193A00 E7004014 */  bnez       $v0, .L80193DA0
    /* AA8C 80193A04 01001026 */   addiu     $s0, $s0, 0x1
    /* AA90 80193A08 01000224 */  addiu      $v0, $zero, 0x1
    /* AA94 80193A0C 3C5E82A2 */  sb         $v0, 0x5E3C($s4)
    /* AA98 80193A10 0174000C */  jal        func_8001D004
    /* AA9C 80193A14 04500424 */   addiu     $a0, $zero, 0x5004
    /* AAA0 80193A18 04001024 */  addiu      $s0, $zero, 0x4
    /* AAA4 80193A1C 21284000 */  addu       $a1, $v0, $zero
    /* AAA8 80193A20 3000A224 */  addiu      $v0, $a1, 0x30
  .L80193A24:
    /* AAAC 80193A24 0A0052A0 */  sb         $s2, 0xA($v0)
    /* AAB0 80193A28 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* AAB4 80193A2C FDFF0106 */  bgez       $s0, .L80193A24
    /* AAB8 80193A30 F4FF4224 */   addiu     $v0, $v0, -0xC
    /* AABC 80193A34 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* AAC0 80193A38 567D4284 */  lh         $v0, %lo(D_801D7D56)($v0)
    /* AAC4 80193A3C 1D80013C */  lui        $at, %hi(D_801D7D80)
    /* AAC8 80193A40 21082200 */  addu       $at, $at, $v0
    /* AACC 80193A44 807D2390 */  lbu        $v1, %lo(D_801D7D80)($at)
    /* AAD0 80193A48 01000224 */  addiu      $v0, $zero, 0x1
    /* AAD4 80193A4C 0D006210 */  beq        $v1, $v0, .L80193A84
    /* AAD8 80193A50 02006228 */   slti      $v0, $v1, 0x2
    /* AADC 80193A54 05004010 */  beqz       $v0, .L80193A6C
    /* AAE0 80193A58 00000000 */   nop
    /* AAE4 80193A5C 07006010 */  beqz       $v1, .L80193A7C
    /* AAE8 80193A60 5B000624 */   addiu     $a2, $zero, 0x5B
    /* AAEC 80193A64 A74E0608 */  j          .L80193A9C
    /* AAF0 80193A68 00000000 */   nop
  .L80193A6C:
    /* AAF4 80193A6C 07007310 */  beq        $v1, $s3, .L80193A8C
    /* AAF8 80193A70 5B000624 */   addiu     $a2, $zero, 0x5B
    /* AAFC 80193A74 A74E0608 */  j          .L80193A9C
    /* AB00 80193A78 00000000 */   nop
  .L80193A7C:
    /* AB04 80193A7C A64E0608 */  j          .L80193A98
    /* AB08 80193A80 0A00B1A0 */   sb        $s1, 0xA($a1)
  .L80193A84:
    /* AB0C 80193A84 A64E0608 */  j          .L80193A98
    /* AB10 80193A88 1600B1A0 */   sb        $s1, 0x16($a1)
  .L80193A8C:
    /* AB14 80193A8C 3A00B1A0 */  sb         $s1, 0x3A($a1)
    /* AB18 80193A90 2E00B1A0 */  sb         $s1, 0x2E($a1)
    /* AB1C 80193A94 2200B1A0 */  sb         $s1, 0x22($a1)
  .L80193A98:
    /* AB20 80193A98 5B000624 */  addiu      $a2, $zero, 0x5B
  .L80193A9C:
    /* AB24 80193A9C 5E00A6A0 */  sb         $a2, 0x5E($a1)
    /* AB28 80193AA0 4600B1A0 */  sb         $s1, 0x46($a1)
    /* AB2C 80193AA4 5200B1A0 */  sb         $s1, 0x52($a1)
    /* AB30 80193AA8 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* AB34 80193AAC 567D4284 */  lh         $v0, %lo(D_801D7D56)($v0)
    /* AB38 80193AB0 1D80013C */  lui        $at, %hi(D_801D7D78)
    /* AB3C 80193AB4 21082200 */  addu       $at, $at, $v0
    /* AB40 80193AB8 787D2290 */  lbu        $v0, %lo(D_801D7D78)($at)
    /* AB44 80193ABC 00000000 */  nop
    /* AB48 80193AC0 01004224 */  addiu      $v0, $v0, 0x1
    /* AB4C 80193AC4 43100200 */  sra        $v0, $v0, 1
    /* AB50 80193AC8 C0100200 */  sll        $v0, $v0, 3
    /* AB54 80193ACC 4B00A2A0 */  sb         $v0, 0x4B($a1)
    /* AB58 80193AD0 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* AB5C 80193AD4 567D4284 */  lh         $v0, %lo(D_801D7D56)($v0)
    /* AB60 80193AD8 6666033C */  lui        $v1, (0x66666667 >> 16)
    /* AB64 80193ADC 1D80013C */  lui        $at, %hi(D_801D7D78)
    /* AB68 80193AE0 21082200 */  addu       $at, $at, $v0
    /* AB6C 80193AE4 787D2290 */  lbu        $v0, %lo(D_801D7D78)($at)
    /* AB70 80193AE8 67666334 */  ori        $v1, $v1, (0x66666667 & 0xFFFF)
    /* AB74 80193AEC 01004224 */  addiu      $v0, $v0, 0x1
    /* AB78 80193AF0 80200200 */  sll        $a0, $v0, 2
    /* AB7C 80193AF4 21208200 */  addu       $a0, $a0, $v0
    /* AB80 80193AF8 18008300 */  mult       $a0, $v1
    /* AB84 80193AFC C3170400 */  sra        $v0, $a0, 31
    /* AB88 80193B00 10480000 */  mfhi       $t1
    /* AB8C 80193B04 83180900 */  sra        $v1, $t1, 2
    /* AB90 80193B08 23186200 */  subu       $v1, $v1, $v0
    /* AB94 80193B0C 80100300 */  sll        $v0, $v1, 2
    /* AB98 80193B10 21104300 */  addu       $v0, $v0, $v1
    /* AB9C 80193B14 40100200 */  sll        $v0, $v0, 1
    /* ABA0 80193B18 23208200 */  subu       $a0, $a0, $v0
    /* ABA4 80193B1C 4B00A290 */  lbu        $v0, 0x4B($a1)
    /* ABA8 80193B20 C0200400 */  sll        $a0, $a0, 3
    /* ABAC 80193B24 02004014 */  bnez       $v0, .L80193B30
    /* ABB0 80193B28 3F00A4A0 */   sb        $a0, 0x3F($a1)
    /* ABB4 80193B2C 5200A6A0 */  sb         $a2, 0x52($a1)
  .L80193B30:
    /* ABB8 80193B30 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* ABBC 80193B34 567D4284 */  lh         $v0, %lo(D_801D7D56)($v0)
    /* ABC0 80193B38 1D80013C */  lui        $at, %hi(D_801D7D60)
    /* ABC4 80193B3C 21082200 */  addu       $at, $at, $v0
    /* ABC8 80193B40 607D2290 */  lbu        $v0, %lo(D_801D7D60)($at)
    /* ABCC 80193B44 00000000 */  nop
    /* ABD0 80193B48 0C005314 */  bne        $v0, $s3, .L80193B7C
    /* ABD4 80193B4C 08001024 */   addiu     $s0, $zero, 0x8
    /* ABD8 80193B50 5B000424 */  addiu      $a0, $zero, 0x5B
    /* ABDC 80193B54 6000A324 */  addiu      $v1, $a1, 0x60
  .L80193B58:
    /* ABE0 80193B58 0A0064A0 */  sb         $a0, 0xA($v1)
    /* ABE4 80193B5C 01001026 */  addiu      $s0, $s0, 0x1
    /* ABE8 80193B60 0B00022A */  slti       $v0, $s0, 0xB
    /* ABEC 80193B64 FCFF4014 */  bnez       $v0, .L80193B58
    /* ABF0 80193B68 0C006324 */   addiu     $v1, $v1, 0xC
    /* ABF4 80193B6C 5B000224 */  addiu      $v0, $zero, 0x5B
    /* ABF8 80193B70 0601A2A0 */  sb         $v0, 0x106($a1)
    /* ABFC 80193B74 FF4E0608 */  j          .L80193BFC
    /* AC00 80193B78 2A01A2A0 */   sb        $v0, 0x12A($a1)
  .L80193B7C:
    /* AC04 80193B7C 2A01B1A0 */  sb         $s1, 0x12A($a1)
    /* AC08 80193B80 0601B1A0 */  sb         $s1, 0x106($a1)
    /* AC0C 80193B84 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* AC10 80193B88 567D4284 */  lh         $v0, %lo(D_801D7D56)($v0)
    /* AC14 80193B8C 1D80013C */  lui        $at, %hi(D_801D7D68)
    /* AC18 80193B90 21082200 */  addu       $at, $at, $v0
    /* AC1C 80193B94 687D2390 */  lbu        $v1, %lo(D_801D7D68)($at)
    /* AC20 80193B98 00000000 */  nop
    /* AC24 80193B9C 10007310 */  beq        $v1, $s3, .L80193BE0
    /* AC28 80193BA0 03006228 */   slti      $v0, $v1, 0x3
    /* AC2C 80193BA4 05004010 */  beqz       $v0, .L80193BBC
    /* AC30 80193BA8 00000000 */   nop
    /* AC34 80193BAC 08006010 */  beqz       $v1, .L80193BD0
    /* AC38 80193BB0 00000000 */   nop
    /* AC3C 80193BB4 004F0608 */  j          .L80193C00
    /* AC40 80193BB8 0B000624 */   addiu     $a2, $zero, 0xB
  .L80193BBC:
    /* AC44 80193BBC 03000224 */  addiu      $v0, $zero, 0x3
    /* AC48 80193BC0 0B006210 */  beq        $v1, $v0, .L80193BF0
    /* AC4C 80193BC4 00000000 */   nop
    /* AC50 80193BC8 004F0608 */  j          .L80193C00
    /* AC54 80193BCC 0B000624 */   addiu     $a2, $zero, 0xB
  .L80193BD0:
    /* AC58 80193BD0 6A00B1A0 */  sb         $s1, 0x6A($a1)
    /* AC5C 80193BD4 8200A6A0 */  sb         $a2, 0x82($a1)
    /* AC60 80193BD8 FF4E0608 */  j          .L80193BFC
    /* AC64 80193BDC 7600A6A0 */   sb        $a2, 0x76($a1)
  .L80193BE0:
    /* AC68 80193BE0 6A00A6A0 */  sb         $a2, 0x6A($a1)
    /* AC6C 80193BE4 7600B1A0 */  sb         $s1, 0x76($a1)
    /* AC70 80193BE8 FF4E0608 */  j          .L80193BFC
    /* AC74 80193BEC 8200A6A0 */   sb        $a2, 0x82($a1)
  .L80193BF0:
    /* AC78 80193BF0 7600A6A0 */  sb         $a2, 0x76($a1)
    /* AC7C 80193BF4 6A00A6A0 */  sb         $a2, 0x6A($a1)
    /* AC80 80193BF8 8200B1A0 */  sb         $s1, 0x82($a1)
  .L80193BFC:
    /* AC84 80193BFC 0B000624 */  addiu      $a2, $zero, 0xB
  .L80193C00:
    /* AC88 80193C00 5B000824 */  addiu      $t0, $zero, 0x5B
    /* AC8C 80193C04 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* AC90 80193C08 567D4284 */  lh         $v0, %lo(D_801D7D56)($v0)
    /* AC94 80193C0C 8400A424 */  addiu      $a0, $a1, 0x84
    /* AC98 80193C10 1D80013C */  lui        $at, %hi(D_801D7D88)
    /* AC9C 80193C14 21082200 */  addu       $at, $at, $v0
    /* ACA0 80193C18 887D2790 */  lbu        $a3, %lo(D_801D7D88)($at)
    /* ACA4 80193C1C 1D80013C */  lui        $at, %hi(D_801D7D98)
    /* ACA8 80193C20 21082200 */  addu       $at, $at, $v0
    /* ACAC 80193C24 987D2390 */  lbu        $v1, %lo(D_801D7D98)($at)
  .L80193C28:
    /* ACB0 80193C28 0A0088A0 */  sb         $t0, 0xA($a0)
    /* ACB4 80193C2C 0100C624 */  addiu      $a2, $a2, 0x1
    /* ACB8 80193C30 1300C228 */  slti       $v0, $a2, 0x13
    /* ACBC 80193C34 FCFF4014 */  bnez       $v0, .L80193C28
    /* ACC0 80193C38 0C008424 */   addiu     $a0, $a0, 0xC
    /* ACC4 80193C3C 1E01B2A0 */  sb         $s2, 0x11E($a1)
    /* ACC8 80193C40 EE00B2A0 */  sb         $s2, 0xEE($a1)
    /* ACCC 80193C44 E200B2A0 */  sb         $s2, 0xE2($a1)
    /* ACD0 80193C48 D600B2A0 */  sb         $s2, 0xD6($a1)
    /* ACD4 80193C4C 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* ACD8 80193C50 567D4284 */  lh         $v0, %lo(D_801D7D56)($v0)
    /* ACDC 80193C54 1D80013C */  lui        $at, %hi(D_801D7D60)
    /* ACE0 80193C58 21082200 */  addu       $at, $at, $v0
    /* ACE4 80193C5C 607D2290 */  lbu        $v0, %lo(D_801D7D60)($at)
    /* ACE8 80193C60 00000000 */  nop
    /* ACEC 80193C64 32005314 */  bne        $v0, $s3, .L80193D30
    /* ACF0 80193C68 6666023C */   lui       $v0, (0x66666667 >> 16)
    /* ACF4 80193C6C 4000E230 */  andi       $v0, $a3, 0x40
    /* ACF8 80193C70 58004014 */  bnez       $v0, .L80193DD4
    /* ACFC 80193C74 0700E230 */   andi      $v0, $a3, 0x7
    /* AD00 80193C78 04004014 */  bnez       $v0, .L80193C8C
    /* AD04 80193C7C FF006230 */   andi      $v0, $v1, 0xFF
    /* AD08 80193C80 8E00B1A0 */  sb         $s1, 0x8E($a1)
    /* AD0C 80193C84 314F0608 */  j          .L80193CC4
    /* AD10 80193C88 02190200 */   srl       $v1, $v0, 4
  .L80193C8C:
    /* AD14 80193C8C 9A00B1A0 */  sb         $s1, 0x9A($a1)
    /* AD18 80193C90 1D80023C */  lui        $v0, %hi(D_801D7D56)
    /* AD1C 80193C94 567D4284 */  lh         $v0, %lo(D_801D7D56)($v0)
    /* AD20 80193C98 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* AD24 80193C9C 1D80013C */  lui        $at, %hi(D_801D7D90)
    /* AD28 80193CA0 21082200 */  addu       $at, $at, $v0
    /* AD2C 80193CA4 907D2290 */  lbu        $v0, %lo(D_801D7D90)($at)
    /* AD30 80193CA8 FF006330 */  andi       $v1, $v1, 0xFF
    /* AD34 80193CAC 42100200 */  srl        $v0, $v0, 1
    /* AD38 80193CB0 1B006200 */  divu       $zero, $v1, $v0
    /* AD3C 80193CB4 02004014 */  bnez       $v0, .L80193CC0
    /* AD40 80193CB8 00000000 */   nop
    /* AD44 80193CBC 0D000700 */  break      7
  .L80193CC0:
    /* AD48 80193CC0 12180000 */  mflo       $v1
  .L80193CC4:
    /* AD4C 80193CC4 6666023C */  lui        $v0, (0x66666667 >> 16)
    /* AD50 80193CC8 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* AD54 80193CCC FF006430 */  andi       $a0, $v1, 0xFF
    /* AD58 80193CD0 01008424 */  addiu      $a0, $a0, 0x1
    /* AD5C 80193CD4 18008200 */  mult       $a0, $v0
    /* AD60 80193CD8 92000224 */  addiu      $v0, $zero, 0x92
    /* AD64 80193CDC AE00A2A4 */  sh         $v0, 0xAE($a1)
    /* AD68 80193CE0 C3170400 */  sra        $v0, $a0, 31
    /* AD6C 80193CE4 B200B1A0 */  sb         $s1, 0xB2($a1)
    /* AD70 80193CE8 A600B1A0 */  sb         $s1, 0xA6($a1)
    /* AD74 80193CEC 10480000 */  mfhi       $t1
    /* AD78 80193CF0 83180900 */  sra        $v1, $t1, 2
    /* AD7C 80193CF4 23186200 */  subu       $v1, $v1, $v0
    /* AD80 80193CF8 C0100300 */  sll        $v0, $v1, 3
    /* AD84 80193CFC 9F00A2A0 */  sb         $v0, 0x9F($a1)
    /* AD88 80193D00 80100300 */  sll        $v0, $v1, 2
    /* AD8C 80193D04 21104300 */  addu       $v0, $v0, $v1
    /* AD90 80193D08 40100200 */  sll        $v0, $v0, 1
    /* AD94 80193D0C 23208200 */  subu       $a0, $a0, $v0
    /* AD98 80193D10 9F00A290 */  lbu        $v0, 0x9F($a1)
    /* AD9C 80193D14 C0200400 */  sll        $a0, $a0, 3
    /* ADA0 80193D18 1E004014 */  bnez       $v0, .L80193D94
    /* ADA4 80193D1C AB00A4A0 */   sb        $a0, 0xAB($a1)
    /* ADA8 80193D20 5B000224 */  addiu      $v0, $zero, 0x5B
    /* ADAC 80193D24 A600A2A0 */  sb         $v0, 0xA6($a1)
    /* ADB0 80193D28 644F0608 */  j          .L80193D90
    /* ADB4 80193D2C 8E000224 */   addiu     $v0, $zero, 0x8E
  .L80193D30:
    /* ADB8 80193D30 67664234 */  ori        $v0, $v0, (0x66666667 & 0xFFFF)
    /* ADBC 80193D34 FF006430 */  andi       $a0, $v1, 0xFF
    /* ADC0 80193D38 01008424 */  addiu      $a0, $a0, 0x1
    /* ADC4 80193D3C 18008200 */  mult       $a0, $v0
    /* ADC8 80193D40 92000224 */  addiu      $v0, $zero, 0x92
    /* ADCC 80193D44 AE00A2A4 */  sh         $v0, 0xAE($a1)
    /* ADD0 80193D48 C3170400 */  sra        $v0, $a0, 31
    /* ADD4 80193D4C B200B1A0 */  sb         $s1, 0xB2($a1)
    /* ADD8 80193D50 A600B1A0 */  sb         $s1, 0xA6($a1)
    /* ADDC 80193D54 10480000 */  mfhi       $t1
    /* ADE0 80193D58 83180900 */  sra        $v1, $t1, 2
    /* ADE4 80193D5C 23186200 */  subu       $v1, $v1, $v0
    /* ADE8 80193D60 C0100300 */  sll        $v0, $v1, 3
    /* ADEC 80193D64 9F00A2A0 */  sb         $v0, 0x9F($a1)
    /* ADF0 80193D68 80100300 */  sll        $v0, $v1, 2
    /* ADF4 80193D6C 21104300 */  addu       $v0, $v0, $v1
    /* ADF8 80193D70 40100200 */  sll        $v0, $v0, 1
    /* ADFC 80193D74 23208200 */  subu       $a0, $a0, $v0
    /* AE00 80193D78 9F00A290 */  lbu        $v0, 0x9F($a1)
    /* AE04 80193D7C C0200400 */  sll        $a0, $a0, 3
    /* AE08 80193D80 04004014 */  bnez       $v0, .L80193D94
    /* AE0C 80193D84 AB00A4A0 */   sb        $a0, 0xAB($a1)
    /* AE10 80193D88 8E000224 */  addiu      $v0, $zero, 0x8E
    /* AE14 80193D8C A600B2A0 */  sb         $s2, 0xA6($a1)
  .L80193D90:
    /* AE18 80193D90 AE00A2A4 */  sh         $v0, 0xAE($a1)
  .L80193D94:
    /* AE1C 80193D94 CA00B1A0 */  sb         $s1, 0xCA($a1)
    /* AE20 80193D98 6B4F0608 */  j          .L80193DAC
    /* AE24 80193D9C BE00B1A0 */   sb        $s1, 0xBE($a1)
  .L80193DA0:
    /* AE28 80193DA0 0F00022A */  slti       $v0, $s0, 0xF
    /* AE2C 80193DA4 0CFF4014 */  bnez       $v0, .L801939D8
    /* AE30 80193DA8 3C5E80A2 */   sb        $zero, 0x5E3C($s4)
  .L80193DAC:
    /* AE34 80193DAC 801F023C */  lui        $v0, (0x1F8002E1 >> 16)
    /* AE38 80193DB0 E1024290 */  lbu        $v0, (0x1F8002E1 & 0xFFFF)($v0)
    /* AE3C 80193DB4 06000324 */  addiu      $v1, $zero, 0x6
    /* AE40 80193DB8 FF004230 */  andi       $v0, $v0, 0xFF
    /* AE44 80193DBC 10004310 */  beq        $v0, $v1, .L80193E00
    /* AE48 80193DC0 00000000 */   nop
    /* AE4C 80193DC4 1E80023C */  lui        $v0, %hi(D_801D8DFC)
    /* AE50 80193DC8 FC8D4290 */  lbu        $v0, %lo(D_801D8DFC)($v0)
    /* AE54 80193DCC 894F0608 */  j          .L80193E24
    /* AE58 80193DD0 19004324 */   addiu     $v1, $v0, 0x19
  .L80193DD4:
    /* AE5C 80193DD4 08000424 */  addiu      $a0, $zero, 0x8
    /* AE60 80193DD8 FF006330 */  andi       $v1, $v1, 0xFF
    /* AE64 80193DDC 02190300 */  srl        $v1, $v1, 4
    /* AE68 80193DE0 40100300 */  sll        $v0, $v1, 1
    /* AE6C 80193DE4 21104300 */  addu       $v0, $v0, $v1
    /* AE70 80193DE8 80100200 */  sll        $v0, $v0, 2
    /* AE74 80193DEC 21104500 */  addu       $v0, $v0, $a1
    /* AE78 80193DF0 9A00B2A0 */  sb         $s2, 0x9A($a1)
    /* AE7C 80193DF4 1E01A4A0 */  sb         $a0, 0x11E($a1)
    /* AE80 80193DF8 6B4F0608 */  j          .L80193DAC
    /* AE84 80193DFC D60044A0 */   sb        $a0, 0xD6($v0)
  .L80193E00:
    /* AE88 80193E00 0100013C */  lui        $at, (0x10000 >> 16)
    /* AE8C 80193E04 21088102 */  addu       $at, $s4, $at
    /* AE90 80193E08 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* AE94 80193E0C 00000000 */  nop
    /* AE98 80193E10 FDFF4224 */  addiu      $v0, $v0, -0x3
    /* AE9C 80193E14 0200422C */  sltiu      $v0, $v0, 0x2
    /* AEA0 80193E18 02004010 */  beqz       $v0, .L80193E24
    /* AEA4 80193E1C 1B000324 */   addiu     $v1, $zero, 0x1B
    /* AEA8 80193E20 1C000324 */  addiu      $v1, $zero, 0x1C
  .L80193E24:
    /* AEAC 80193E24 21200000 */  addu       $a0, $zero, $zero
    /* AEB0 80193E28 5EFF0624 */  addiu      $a2, $zero, -0xA2
    /* AEB4 80193E2C 4E010224 */  addiu      $v0, $zero, 0x14E
    /* AEB8 80193E30 1000A2AF */  sw         $v0, 0x10($sp)
    /* AEBC 80193E34 02000224 */  addiu      $v0, $zero, 0x2
    /* AEC0 80193E38 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* AEC4 80193E3C 03000224 */  addiu      $v0, $zero, 0x3
    /* AEC8 80193E40 2400A2AF */  sw         $v0, 0x24($sp)
    /* AECC 80193E44 2800A2AF */  sw         $v0, 0x28($sp)
    /* AED0 80193E48 01000224 */  addiu      $v0, $zero, 0x1
    /* AED4 80193E4C 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* AED8 80193E50 80100300 */  sll        $v0, $v1, 2
    /* AEDC 80193E54 1E80013C */  lui        $at, %hi(D_801D8FB8)
    /* AEE0 80193E58 B88F20A0 */  sb         $zero, %lo(D_801D8FB8)($at)
    /* AEE4 80193E5C 1400A0AF */  sw         $zero, 0x14($sp)
    /* AEE8 80193E60 1800A0AF */  sw         $zero, 0x18($sp)
    /* AEEC 80193E64 2000A0AF */  sw         $zero, 0x20($sp)
    /* AEF0 80193E68 1280013C */  lui        $at, %hi(D_8011D5F4)
    /* AEF4 80193E6C 21082200 */  addu       $at, $at, $v0
    /* AEF8 80193E70 F4D5258C */  lw         $a1, %lo(D_8011D5F4)($at)
    /* AEFC 80193E74 B850060C */  jal        func_801942E0
    /* AF00 80193E78 37000724 */   addiu     $a3, $zero, 0x37
    /* AF04 80193E7C 4400BF8F */  lw         $ra, 0x44($sp)
    /* AF08 80193E80 4000B48F */  lw         $s4, 0x40($sp)
    /* AF0C 80193E84 3C00B38F */  lw         $s3, 0x3C($sp)
    /* AF10 80193E88 3800B28F */  lw         $s2, 0x38($sp)
    /* AF14 80193E8C 3400B18F */  lw         $s1, 0x34($sp)
    /* AF18 80193E90 3000B08F */  lw         $s0, 0x30($sp)
    /* AF1C 80193E94 4800BD27 */  addiu      $sp, $sp, 0x48
    /* AF20 80193E98 0800E003 */  jr         $ra
    /* AF24 80193E9C 00000000 */   nop
endlabel func_80193990
