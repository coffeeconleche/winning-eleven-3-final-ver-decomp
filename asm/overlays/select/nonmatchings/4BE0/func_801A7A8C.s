nonmatching func_801A7A8C, 0x698

glabel func_801A7A8C
    /* 1EB14 801A7A8C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1EB18 801A7A90 2800B6AF */  sw         $s6, 0x28($sp)
    /* 1EB1C 801A7A94 21B08000 */  addu       $s6, $a0, $zero
    /* 1EB20 801A7A98 2000B4AF */  sw         $s4, 0x20($sp)
    /* 1EB24 801A7A9C 21A0A000 */  addu       $s4, $a1, $zero
    /* 1EB28 801A7AA0 80300424 */  addiu      $a0, $zero, 0x3080
    /* 1EB2C 801A7AA4 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 1EB30 801A7AA8 2400B5AF */  sw         $s5, 0x24($sp)
    /* 1EB34 801A7AAC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 1EB38 801A7AB0 1800B2AF */  sw         $s2, 0x18($sp)
    /* 1EB3C 801A7AB4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 1EB40 801A7AB8 0174000C */  jal        func_8001D004
    /* 1EB44 801A7ABC 1000B0AF */   sw        $s0, 0x10($sp)
    /* 1EB48 801A7AC0 81300424 */  addiu      $a0, $zero, 0x3081
    /* 1EB4C 801A7AC4 0174000C */  jal        func_8001D004
    /* 1EB50 801A7AC8 21804000 */   addu      $s0, $v0, $zero
    /* 1EB54 801A7ACC 82300424 */  addiu      $a0, $zero, 0x3082
    /* 1EB58 801A7AD0 0174000C */  jal        func_8001D004
    /* 1EB5C 801A7AD4 21904000 */   addu      $s2, $v0, $zero
    /* 1EB60 801A7AD8 1080153C */  lui        $s5, %hi(D_800FF748)
    /* 1EB64 801A7ADC 48F7B526 */  addiu      $s5, $s5, %lo(D_800FF748)
    /* 1EB68 801A7AE0 21984000 */  addu       $s3, $v0, $zero
    /* 1EB6C 801A7AE4 FF00C332 */  andi       $v1, $s6, 0xFF
    /* 1EB70 801A7AE8 0B00622C */  sltiu      $v0, $v1, 0xB
    /* 1EB74 801A7AEC 82014010 */  beqz       $v0, .L801A80F8
    /* 1EB78 801A7AF0 80100300 */   sll       $v0, $v1, 2
    /* 1EB7C 801A7AF4 1980013C */  lui        $at, %hi(jtbl_8018A26C)
    /* 1EB80 801A7AF8 21082200 */  addu       $at, $at, $v0
    /* 1EB84 801A7AFC 6CA2228C */  lw         $v0, %lo(jtbl_8018A26C)($at)
    /* 1EB88 801A7B00 00000000 */  nop
    /* 1EB8C 801A7B04 08004000 */  jr         $v0
    /* 1EB90 801A7B08 00000000 */   nop
  jlabel .L801A7B0C
    /* 1EB94 801A7B0C 0174000C */  jal        func_8001D004
    /* 1EB98 801A7B10 8B300424 */   addiu     $a0, $zero, 0x308B
    /* 1EB9C 801A7B14 21884000 */  addu       $s1, $v0, $zero
    /* 1EBA0 801A7B18 FF008232 */  andi       $v0, $s4, 0xFF
    /* 1EBA4 801A7B1C 08004010 */  beqz       $v0, .L801A7B40
    /* 1EBA8 801A7B20 09000224 */   addiu     $v0, $zero, 0x9
    /* 1EBAC 801A7B24 160042A2 */  sb         $v0, 0x16($s2)
    /* 1EBB0 801A7B28 0A0042A2 */  sb         $v0, 0xA($s2)
    /* 1EBB4 801A7B2C DB000224 */  addiu      $v0, $zero, 0xDB
    /* 1EBB8 801A7B30 160022A2 */  sb         $v0, 0x16($s1)
    /* 1EBBC 801A7B34 0A0022A2 */  sb         $v0, 0xA($s1)
    /* 1EBC0 801A7B38 3EA00608 */  j          .L801A80F8
    /* 1EBC4 801A7B3C 2060A0AE */   sw        $zero, 0x6020($s5)
  .L801A7B40:
    /* 1EBC8 801A7B40 DC000224 */  addiu      $v0, $zero, 0xDC
    /* 1EBCC 801A7B44 160042A2 */  sb         $v0, 0x16($s2)
    /* 1EBD0 801A7B48 0A0042A2 */  sb         $v0, 0xA($s2)
    /* 1EBD4 801A7B4C DA000224 */  addiu      $v0, $zero, 0xDA
    /* 1EBD8 801A7B50 160022A2 */  sb         $v0, 0x16($s1)
    /* 1EBDC 801A7B54 0A0022A2 */  sb         $v0, 0xA($s1)
    /* 1EBE0 801A7B58 0060023C */  lui        $v0, (0x60000000 >> 16)
    /* 1EBE4 801A7B5C 3EA00608 */  j          .L801A80F8
    /* 1EBE8 801A7B60 2060A2AE */   sw        $v0, 0x6020($s5)
  jlabel .L801A7B64
    /* 1EBEC 801A7B64 0174000C */  jal        func_8001D004
    /* 1EBF0 801A7B68 8C300424 */   addiu     $a0, $zero, 0x308C
    /* 1EBF4 801A7B6C 21884000 */  addu       $s1, $v0, $zero
    /* 1EBF8 801A7B70 0174000C */  jal        func_8001D004
    /* 1EBFC 801A7B74 93300424 */   addiu     $a0, $zero, 0x3093
    /* 1EC00 801A7B78 21204000 */  addu       $a0, $v0, $zero
    /* 1EC04 801A7B7C FF008232 */  andi       $v0, $s4, 0xFF
    /* 1EC08 801A7B80 0E004010 */  beqz       $v0, .L801A7BBC
    /* 1EC0C 801A7B84 DD000224 */   addiu     $v0, $zero, 0xDD
    /* 1EC10 801A7B88 09000324 */  addiu      $v1, $zero, 0x9
    /* 1EC14 801A7B8C 160002A2 */  sb         $v0, 0x16($s0)
    /* 1EC18 801A7B90 0A0002A2 */  sb         $v0, 0xA($s0)
    /* 1EC1C 801A7B94 3A0043A2 */  sb         $v1, 0x3A($s2)
    /* 1EC20 801A7B98 2E0043A2 */  sb         $v1, 0x2E($s2)
    /* 1EC24 801A7B9C 220043A2 */  sb         $v1, 0x22($s2)
    /* 1EC28 801A7BA0 0A0062A2 */  sb         $v0, 0xA($s3)
    /* 1EC2C 801A7BA4 DB000224 */  addiu      $v0, $zero, 0xDB
    /* 1EC30 801A7BA8 0A0022A2 */  sb         $v0, 0xA($s1)
    /* 1EC34 801A7BAC 4860A0AE */  sw         $zero, 0x6048($s5)
    /* 1EC38 801A7BB0 0A0082A0 */  sb         $v0, 0xA($a0)
    /* 1EC3C 801A7BB4 3EA00608 */  j          .L801A80F8
    /* 1EC40 801A7BB8 6061A0AE */   sw        $zero, 0x6160($s5)
  .L801A7BBC:
    /* 1EC44 801A7BBC DC000224 */  addiu      $v0, $zero, 0xDC
    /* 1EC48 801A7BC0 160002A2 */  sb         $v0, 0x16($s0)
    /* 1EC4C 801A7BC4 0A0002A2 */  sb         $v0, 0xA($s0)
    /* 1EC50 801A7BC8 3A0042A2 */  sb         $v0, 0x3A($s2)
    /* 1EC54 801A7BCC 2E0042A2 */  sb         $v0, 0x2E($s2)
    /* 1EC58 801A7BD0 220042A2 */  sb         $v0, 0x22($s2)
    /* 1EC5C 801A7BD4 DE000224 */  addiu      $v0, $zero, 0xDE
    /* 1EC60 801A7BD8 DA000324 */  addiu      $v1, $zero, 0xDA
    /* 1EC64 801A7BDC 0A0062A2 */  sb         $v0, 0xA($s3)
    /* 1EC68 801A7BE0 0060023C */  lui        $v0, (0x60000000 >> 16)
    /* 1EC6C 801A7BE4 0A0023A2 */  sb         $v1, 0xA($s1)
    /* 1EC70 801A7BE8 4860A2AE */  sw         $v0, 0x6048($s5)
    /* 1EC74 801A7BEC 0A0083A0 */  sb         $v1, 0xA($a0)
    /* 1EC78 801A7BF0 3EA00608 */  j          .L801A80F8
    /* 1EC7C 801A7BF4 6061A2AE */   sw        $v0, 0x6160($s5)
  jlabel .L801A7BF8
    /* 1EC80 801A7BF8 0174000C */  jal        func_8001D004
    /* 1EC84 801A7BFC 8D300424 */   addiu     $a0, $zero, 0x308D
    /* 1EC88 801A7C00 21884000 */  addu       $s1, $v0, $zero
    /* 1EC8C 801A7C04 0174000C */  jal        func_8001D004
    /* 1EC90 801A7C08 94300424 */   addiu     $a0, $zero, 0x3094
    /* 1EC94 801A7C0C 21204000 */  addu       $a0, $v0, $zero
    /* 1EC98 801A7C10 FF008232 */  andi       $v0, $s4, 0xFF
    /* 1EC9C 801A7C14 0D004010 */  beqz       $v0, .L801A7C4C
    /* 1ECA0 801A7C18 DD000224 */   addiu     $v0, $zero, 0xDD
    /* 1ECA4 801A7C1C 09000324 */  addiu      $v1, $zero, 0x9
    /* 1ECA8 801A7C20 2E0002A2 */  sb         $v0, 0x2E($s0)
    /* 1ECAC 801A7C24 220002A2 */  sb         $v0, 0x22($s0)
    /* 1ECB0 801A7C28 520043A2 */  sb         $v1, 0x52($s2)
    /* 1ECB4 801A7C2C 460043A2 */  sb         $v1, 0x46($s2)
    /* 1ECB8 801A7C30 160062A2 */  sb         $v0, 0x16($s3)
    /* 1ECBC 801A7C34 DB000224 */  addiu      $v0, $zero, 0xDB
    /* 1ECC0 801A7C38 0A0022A2 */  sb         $v0, 0xA($s1)
    /* 1ECC4 801A7C3C 7060A0AE */  sw         $zero, 0x6070($s5)
    /* 1ECC8 801A7C40 0A0082A0 */  sb         $v0, 0xA($a0)
    /* 1ECCC 801A7C44 3EA00608 */  j          .L801A80F8
    /* 1ECD0 801A7C48 8861A0AE */   sw        $zero, 0x6188($s5)
  .L801A7C4C:
    /* 1ECD4 801A7C4C DC000224 */  addiu      $v0, $zero, 0xDC
    /* 1ECD8 801A7C50 2E0002A2 */  sb         $v0, 0x2E($s0)
    /* 1ECDC 801A7C54 220002A2 */  sb         $v0, 0x22($s0)
    /* 1ECE0 801A7C58 520042A2 */  sb         $v0, 0x52($s2)
    /* 1ECE4 801A7C5C 460042A2 */  sb         $v0, 0x46($s2)
    /* 1ECE8 801A7C60 DE000224 */  addiu      $v0, $zero, 0xDE
    /* 1ECEC 801A7C64 DA000324 */  addiu      $v1, $zero, 0xDA
    /* 1ECF0 801A7C68 160062A2 */  sb         $v0, 0x16($s3)
    /* 1ECF4 801A7C6C 0060023C */  lui        $v0, (0x60000000 >> 16)
    /* 1ECF8 801A7C70 0A0023A2 */  sb         $v1, 0xA($s1)
    /* 1ECFC 801A7C74 7060A2AE */  sw         $v0, 0x6070($s5)
    /* 1ED00 801A7C78 0A0083A0 */  sb         $v1, 0xA($a0)
    /* 1ED04 801A7C7C 3EA00608 */  j          .L801A80F8
    /* 1ED08 801A7C80 8861A2AE */   sw        $v0, 0x6188($s5)
  jlabel .L801A7C84
    /* 1ED0C 801A7C84 0174000C */  jal        func_8001D004
    /* 1ED10 801A7C88 8E300424 */   addiu     $a0, $zero, 0x308E
    /* 1ED14 801A7C8C 21884000 */  addu       $s1, $v0, $zero
    /* 1ED18 801A7C90 0174000C */  jal        func_8001D004
    /* 1ED1C 801A7C94 95300424 */   addiu     $a0, $zero, 0x3095
    /* 1ED20 801A7C98 21204000 */  addu       $a0, $v0, $zero
    /* 1ED24 801A7C9C FF008232 */  andi       $v0, $s4, 0xFF
    /* 1ED28 801A7CA0 0E004010 */  beqz       $v0, .L801A7CDC
    /* 1ED2C 801A7CA4 DD000224 */   addiu     $v0, $zero, 0xDD
    /* 1ED30 801A7CA8 09000324 */  addiu      $v1, $zero, 0x9
    /* 1ED34 801A7CAC 460002A2 */  sb         $v0, 0x46($s0)
    /* 1ED38 801A7CB0 3A0002A2 */  sb         $v0, 0x3A($s0)
    /* 1ED3C 801A7CB4 5E0043A2 */  sb         $v1, 0x5E($s2)
    /* 1ED40 801A7CB8 3A0062A2 */  sb         $v0, 0x3A($s3)
    /* 1ED44 801A7CBC 2E0062A2 */  sb         $v0, 0x2E($s3)
    /* 1ED48 801A7CC0 220062A2 */  sb         $v0, 0x22($s3)
    /* 1ED4C 801A7CC4 DB000224 */  addiu      $v0, $zero, 0xDB
    /* 1ED50 801A7CC8 0A0022A2 */  sb         $v0, 0xA($s1)
    /* 1ED54 801A7CCC 9860A0AE */  sw         $zero, 0x6098($s5)
    /* 1ED58 801A7CD0 0A0082A0 */  sb         $v0, 0xA($a0)
    /* 1ED5C 801A7CD4 3EA00608 */  j          .L801A80F8
    /* 1ED60 801A7CD8 B061A0AE */   sw        $zero, 0x61B0($s5)
  .L801A7CDC:
    /* 1ED64 801A7CDC DC000224 */  addiu      $v0, $zero, 0xDC
    /* 1ED68 801A7CE0 460002A2 */  sb         $v0, 0x46($s0)
    /* 1ED6C 801A7CE4 3A0002A2 */  sb         $v0, 0x3A($s0)
    /* 1ED70 801A7CE8 5E0042A2 */  sb         $v0, 0x5E($s2)
    /* 1ED74 801A7CEC DE000224 */  addiu      $v0, $zero, 0xDE
    /* 1ED78 801A7CF0 DA000324 */  addiu      $v1, $zero, 0xDA
    /* 1ED7C 801A7CF4 3A0062A2 */  sb         $v0, 0x3A($s3)
    /* 1ED80 801A7CF8 2E0062A2 */  sb         $v0, 0x2E($s3)
    /* 1ED84 801A7CFC 220062A2 */  sb         $v0, 0x22($s3)
    /* 1ED88 801A7D00 0060023C */  lui        $v0, (0x60000000 >> 16)
    /* 1ED8C 801A7D04 0A0023A2 */  sb         $v1, 0xA($s1)
    /* 1ED90 801A7D08 9860A2AE */  sw         $v0, 0x6098($s5)
    /* 1ED94 801A7D0C 0A0083A0 */  sb         $v1, 0xA($a0)
    /* 1ED98 801A7D10 3EA00608 */  j          .L801A80F8
    /* 1ED9C 801A7D14 B061A2AE */   sw        $v0, 0x61B0($s5)
  jlabel .L801A7D18
    /* 1EDA0 801A7D18 0174000C */  jal        func_8001D004
    /* 1EDA4 801A7D1C 8F300424 */   addiu     $a0, $zero, 0x308F
    /* 1EDA8 801A7D20 21884000 */  addu       $s1, $v0, $zero
    /* 1EDAC 801A7D24 0174000C */  jal        func_8001D004
    /* 1EDB0 801A7D28 96300424 */   addiu     $a0, $zero, 0x3096
    /* 1EDB4 801A7D2C 21204000 */  addu       $a0, $v0, $zero
    /* 1EDB8 801A7D30 FF008232 */  andi       $v0, $s4, 0xFF
    /* 1EDBC 801A7D34 0C004010 */  beqz       $v0, .L801A7D68
    /* 1EDC0 801A7D38 DD000224 */   addiu     $v0, $zero, 0xDD
    /* 1EDC4 801A7D3C 09000324 */  addiu      $v1, $zero, 0x9
    /* 1EDC8 801A7D40 5E0002A2 */  sb         $v0, 0x5E($s0)
    /* 1EDCC 801A7D44 520002A2 */  sb         $v0, 0x52($s0)
    /* 1EDD0 801A7D48 6A0043A2 */  sb         $v1, 0x6A($s2)
    /* 1EDD4 801A7D4C 460062A2 */  sb         $v0, 0x46($s3)
    /* 1EDD8 801A7D50 DB000224 */  addiu      $v0, $zero, 0xDB
    /* 1EDDC 801A7D54 0A0022A2 */  sb         $v0, 0xA($s1)
    /* 1EDE0 801A7D58 C060A0AE */  sw         $zero, 0x60C0($s5)
    /* 1EDE4 801A7D5C 0A0082A0 */  sb         $v0, 0xA($a0)
    /* 1EDE8 801A7D60 3EA00608 */  j          .L801A80F8
    /* 1EDEC 801A7D64 D861A0AE */   sw        $zero, 0x61D8($s5)
  .L801A7D68:
    /* 1EDF0 801A7D68 DC000224 */  addiu      $v0, $zero, 0xDC
    /* 1EDF4 801A7D6C 5E0002A2 */  sb         $v0, 0x5E($s0)
    /* 1EDF8 801A7D70 520002A2 */  sb         $v0, 0x52($s0)
    /* 1EDFC 801A7D74 6A0042A2 */  sb         $v0, 0x6A($s2)
    /* 1EE00 801A7D78 DE000224 */  addiu      $v0, $zero, 0xDE
    /* 1EE04 801A7D7C DA000324 */  addiu      $v1, $zero, 0xDA
    /* 1EE08 801A7D80 460062A2 */  sb         $v0, 0x46($s3)
    /* 1EE0C 801A7D84 0060023C */  lui        $v0, (0x60000000 >> 16)
    /* 1EE10 801A7D88 0A0023A2 */  sb         $v1, 0xA($s1)
    /* 1EE14 801A7D8C C060A2AE */  sw         $v0, 0x60C0($s5)
    /* 1EE18 801A7D90 0A0083A0 */  sb         $v1, 0xA($a0)
    /* 1EE1C 801A7D94 3EA00608 */  j          .L801A80F8
    /* 1EE20 801A7D98 D861A2AE */   sw        $v0, 0x61D8($s5)
  jlabel .L801A7D9C
    /* 1EE24 801A7D9C 0174000C */  jal        func_8001D004
    /* 1EE28 801A7DA0 90300424 */   addiu     $a0, $zero, 0x3090
    /* 1EE2C 801A7DA4 21884000 */  addu       $s1, $v0, $zero
    /* 1EE30 801A7DA8 0174000C */  jal        func_8001D004
    /* 1EE34 801A7DAC 97300424 */   addiu     $a0, $zero, 0x3097
    /* 1EE38 801A7DB0 21204000 */  addu       $a0, $v0, $zero
    /* 1EE3C 801A7DB4 FF008232 */  andi       $v0, $s4, 0xFF
    /* 1EE40 801A7DB8 0D004010 */  beqz       $v0, .L801A7DF0
    /* 1EE44 801A7DBC DD000224 */   addiu     $v0, $zero, 0xDD
    /* 1EE48 801A7DC0 09000324 */  addiu      $v1, $zero, 0x9
    /* 1EE4C 801A7DC4 760002A2 */  sb         $v0, 0x76($s0)
    /* 1EE50 801A7DC8 6A0002A2 */  sb         $v0, 0x6A($s0)
    /* 1EE54 801A7DCC 760043A2 */  sb         $v1, 0x76($s2)
    /* 1EE58 801A7DD0 5E0062A2 */  sb         $v0, 0x5E($s3)
    /* 1EE5C 801A7DD4 520062A2 */  sb         $v0, 0x52($s3)
    /* 1EE60 801A7DD8 DB000224 */  addiu      $v0, $zero, 0xDB
    /* 1EE64 801A7DDC 0A0022A2 */  sb         $v0, 0xA($s1)
    /* 1EE68 801A7DE0 E860A0AE */  sw         $zero, 0x60E8($s5)
    /* 1EE6C 801A7DE4 0A0082A0 */  sb         $v0, 0xA($a0)
    /* 1EE70 801A7DE8 3EA00608 */  j          .L801A80F8
    /* 1EE74 801A7DEC 0062A0AE */   sw        $zero, 0x6200($s5)
  .L801A7DF0:
    /* 1EE78 801A7DF0 DC000224 */  addiu      $v0, $zero, 0xDC
    /* 1EE7C 801A7DF4 760002A2 */  sb         $v0, 0x76($s0)
    /* 1EE80 801A7DF8 6A0002A2 */  sb         $v0, 0x6A($s0)
    /* 1EE84 801A7DFC 760042A2 */  sb         $v0, 0x76($s2)
    /* 1EE88 801A7E00 DE000224 */  addiu      $v0, $zero, 0xDE
    /* 1EE8C 801A7E04 DA000324 */  addiu      $v1, $zero, 0xDA
    /* 1EE90 801A7E08 5E0062A2 */  sb         $v0, 0x5E($s3)
    /* 1EE94 801A7E0C 520062A2 */  sb         $v0, 0x52($s3)
    /* 1EE98 801A7E10 0060023C */  lui        $v0, (0x60000000 >> 16)
    /* 1EE9C 801A7E14 0A0023A2 */  sb         $v1, 0xA($s1)
    /* 1EEA0 801A7E18 E860A2AE */  sw         $v0, 0x60E8($s5)
    /* 1EEA4 801A7E1C 0A0083A0 */  sb         $v1, 0xA($a0)
    /* 1EEA8 801A7E20 3EA00608 */  j          .L801A80F8
    /* 1EEAC 801A7E24 0062A2AE */   sw        $v0, 0x6200($s5)
  jlabel .L801A7E28
    /* 1EEB0 801A7E28 0174000C */  jal        func_8001D004
    /* 1EEB4 801A7E2C 91300424 */   addiu     $a0, $zero, 0x3091
    /* 1EEB8 801A7E30 21884000 */  addu       $s1, $v0, $zero
    /* 1EEBC 801A7E34 FF008232 */  andi       $v0, $s4, 0xFF
    /* 1EEC0 801A7E38 06004010 */  beqz       $v0, .L801A7E54
    /* 1EEC4 801A7E3C 09000224 */   addiu     $v0, $zero, 0x9
    /* 1EEC8 801A7E40 820042A2 */  sb         $v0, 0x82($s2)
    /* 1EECC 801A7E44 DB000224 */  addiu      $v0, $zero, 0xDB
    /* 1EED0 801A7E48 0A0022A2 */  sb         $v0, 0xA($s1)
    /* 1EED4 801A7E4C 9B9F0608 */  j          .L801A7E6C
    /* 1EED8 801A7E50 1061A0AE */   sw        $zero, 0x6110($s5)
  .L801A7E54:
    /* 1EEDC 801A7E54 DC000224 */  addiu      $v0, $zero, 0xDC
    /* 1EEE0 801A7E58 820042A2 */  sb         $v0, 0x82($s2)
    /* 1EEE4 801A7E5C DA000224 */  addiu      $v0, $zero, 0xDA
    /* 1EEE8 801A7E60 0A0022A2 */  sb         $v0, 0xA($s1)
    /* 1EEEC 801A7E64 0060023C */  lui        $v0, (0x60000000 >> 16)
    /* 1EEF0 801A7E68 1061A2AE */  sw         $v0, 0x6110($s5)
  .L801A7E6C:
    /* 1EEF4 801A7E6C FF00C432 */  andi       $a0, $s6, 0xFF
    /* 1EEF8 801A7E70 07000224 */  addiu      $v0, $zero, 0x7
    /* 1EEFC 801A7E74 26008210 */  beq        $a0, $v0, .L801A7F10
    /* 1EF00 801A7E78 08008228 */   slti      $v0, $a0, 0x8
    /* 1EF04 801A7E7C 05004010 */  beqz       $v0, .L801A7E94
    /* 1EF08 801A7E80 06000224 */   addiu     $v0, $zero, 0x6
    /* 1EF0C 801A7E84 08008210 */  beq        $a0, $v0, .L801A7EA8
    /* 1EF10 801A7E88 00000000 */   nop
    /* 1EF14 801A7E8C 3EA00608 */  j          .L801A80F8
    /* 1EF18 801A7E90 00000000 */   nop
  .L801A7E94:
    /* 1EF1C 801A7E94 08000224 */  addiu      $v0, $zero, 0x8
    /* 1EF20 801A7E98 37008210 */  beq        $a0, $v0, .L801A7F78
    /* 1EF24 801A7E9C 00000000 */   nop
    /* 1EF28 801A7EA0 3EA00608 */  j          .L801A80F8
    /* 1EF2C 801A7EA4 00000000 */   nop
  .L801A7EA8:
    /* 1EF30 801A7EA8 0174000C */  jal        func_8001D004
    /* 1EF34 801A7EAC 98300424 */   addiu     $a0, $zero, 0x3098
    /* 1EF38 801A7EB0 21204000 */  addu       $a0, $v0, $zero
    /* 1EF3C 801A7EB4 FF008232 */  andi       $v0, $s4, 0xFF
    /* 1EF40 801A7EB8 0A004010 */  beqz       $v0, .L801A7EE4
    /* 1EF44 801A7EBC DD000224 */   addiu     $v0, $zero, 0xDD
    /* 1EF48 801A7EC0 8E0002A2 */  sb         $v0, 0x8E($s0)
    /* 1EF4C 801A7EC4 820002A2 */  sb         $v0, 0x82($s0)
    /* 1EF50 801A7EC8 6A0062A2 */  sb         $v0, 0x6A($s3)
    /* 1EF54 801A7ECC 09000224 */  addiu      $v0, $zero, 0x9
    /* 1EF58 801A7ED0 8E0042A2 */  sb         $v0, 0x8E($s2)
    /* 1EF5C 801A7ED4 DB000224 */  addiu      $v0, $zero, 0xDB
    /* 1EF60 801A7ED8 0A0082A0 */  sb         $v0, 0xA($a0)
    /* 1EF64 801A7EDC 3EA00608 */  j          .L801A80F8
    /* 1EF68 801A7EE0 2862A0AE */   sw        $zero, 0x6228($s5)
  .L801A7EE4:
    /* 1EF6C 801A7EE4 DC000324 */  addiu      $v1, $zero, 0xDC
    /* 1EF70 801A7EE8 DE000224 */  addiu      $v0, $zero, 0xDE
    /* 1EF74 801A7EEC 8E0003A2 */  sb         $v1, 0x8E($s0)
    /* 1EF78 801A7EF0 820003A2 */  sb         $v1, 0x82($s0)
    /* 1EF7C 801A7EF4 6A0062A2 */  sb         $v0, 0x6A($s3)
    /* 1EF80 801A7EF8 DA000224 */  addiu      $v0, $zero, 0xDA
    /* 1EF84 801A7EFC 8E0043A2 */  sb         $v1, 0x8E($s2)
    /* 1EF88 801A7F00 0A0082A0 */  sb         $v0, 0xA($a0)
    /* 1EF8C 801A7F04 0060023C */  lui        $v0, (0x60000000 >> 16)
    /* 1EF90 801A7F08 3EA00608 */  j          .L801A80F8
    /* 1EF94 801A7F0C 2862A2AE */   sw        $v0, 0x6228($s5)
  .L801A7F10:
    /* 1EF98 801A7F10 0174000C */  jal        func_8001D004
    /* 1EF9C 801A7F14 99300424 */   addiu     $a0, $zero, 0x3099
    /* 1EFA0 801A7F18 21204000 */  addu       $a0, $v0, $zero
    /* 1EFA4 801A7F1C FF008232 */  andi       $v0, $s4, 0xFF
    /* 1EFA8 801A7F20 0A004010 */  beqz       $v0, .L801A7F4C
    /* 1EFAC 801A7F24 DD000224 */   addiu     $v0, $zero, 0xDD
    /* 1EFB0 801A7F28 A60002A2 */  sb         $v0, 0xA6($s0)
    /* 1EFB4 801A7F2C 9A0002A2 */  sb         $v0, 0x9A($s0)
    /* 1EFB8 801A7F30 760062A2 */  sb         $v0, 0x76($s3)
    /* 1EFBC 801A7F34 09000224 */  addiu      $v0, $zero, 0x9
    /* 1EFC0 801A7F38 9A0042A2 */  sb         $v0, 0x9A($s2)
    /* 1EFC4 801A7F3C DB000224 */  addiu      $v0, $zero, 0xDB
    /* 1EFC8 801A7F40 0A0082A0 */  sb         $v0, 0xA($a0)
    /* 1EFCC 801A7F44 3EA00608 */  j          .L801A80F8
    /* 1EFD0 801A7F48 5062A0AE */   sw        $zero, 0x6250($s5)
  .L801A7F4C:
    /* 1EFD4 801A7F4C DC000324 */  addiu      $v1, $zero, 0xDC
    /* 1EFD8 801A7F50 DE000224 */  addiu      $v0, $zero, 0xDE
    /* 1EFDC 801A7F54 A60003A2 */  sb         $v1, 0xA6($s0)
    /* 1EFE0 801A7F58 9A0003A2 */  sb         $v1, 0x9A($s0)
    /* 1EFE4 801A7F5C 760062A2 */  sb         $v0, 0x76($s3)
    /* 1EFE8 801A7F60 DA000224 */  addiu      $v0, $zero, 0xDA
    /* 1EFEC 801A7F64 9A0043A2 */  sb         $v1, 0x9A($s2)
    /* 1EFF0 801A7F68 0A0082A0 */  sb         $v0, 0xA($a0)
    /* 1EFF4 801A7F6C 0060023C */  lui        $v0, (0x60000000 >> 16)
    /* 1EFF8 801A7F70 3EA00608 */  j          .L801A80F8
    /* 1EFFC 801A7F74 5062A2AE */   sw        $v0, 0x6250($s5)
  .L801A7F78:
    /* 1F000 801A7F78 0174000C */  jal        func_8001D004
    /* 1F004 801A7F7C 9A300424 */   addiu     $a0, $zero, 0x309A
    /* 1F008 801A7F80 21204000 */  addu       $a0, $v0, $zero
    /* 1F00C 801A7F84 FF008232 */  andi       $v0, $s4, 0xFF
    /* 1F010 801A7F88 0A004010 */  beqz       $v0, .L801A7FB4
    /* 1F014 801A7F8C DD000224 */   addiu     $v0, $zero, 0xDD
    /* 1F018 801A7F90 BE0002A2 */  sb         $v0, 0xBE($s0)
    /* 1F01C 801A7F94 B20002A2 */  sb         $v0, 0xB2($s0)
    /* 1F020 801A7F98 820062A2 */  sb         $v0, 0x82($s3)
    /* 1F024 801A7F9C 09000224 */  addiu      $v0, $zero, 0x9
    /* 1F028 801A7FA0 A60042A2 */  sb         $v0, 0xA6($s2)
    /* 1F02C 801A7FA4 DB000224 */  addiu      $v0, $zero, 0xDB
    /* 1F030 801A7FA8 0A0082A0 */  sb         $v0, 0xA($a0)
    /* 1F034 801A7FAC 3EA00608 */  j          .L801A80F8
    /* 1F038 801A7FB0 7862A0AE */   sw        $zero, 0x6278($s5)
  .L801A7FB4:
    /* 1F03C 801A7FB4 DC000324 */  addiu      $v1, $zero, 0xDC
    /* 1F040 801A7FB8 DE000224 */  addiu      $v0, $zero, 0xDE
    /* 1F044 801A7FBC BE0003A2 */  sb         $v1, 0xBE($s0)
    /* 1F048 801A7FC0 B20003A2 */  sb         $v1, 0xB2($s0)
    /* 1F04C 801A7FC4 820062A2 */  sb         $v0, 0x82($s3)
    /* 1F050 801A7FC8 DA000224 */  addiu      $v0, $zero, 0xDA
    /* 1F054 801A7FCC A60043A2 */  sb         $v1, 0xA6($s2)
    /* 1F058 801A7FD0 0A0082A0 */  sb         $v0, 0xA($a0)
    /* 1F05C 801A7FD4 0060023C */  lui        $v0, (0x60000000 >> 16)
    /* 1F060 801A7FD8 3EA00608 */  j          .L801A80F8
    /* 1F064 801A7FDC 7862A2AE */   sw        $v0, 0x6278($s5)
  jlabel .L801A7FE0
    /* 1F068 801A7FE0 0174000C */  jal        func_8001D004
    /* 1F06C 801A7FE4 92300424 */   addiu     $a0, $zero, 0x3092
    /* 1F070 801A7FE8 21884000 */  addu       $s1, $v0, $zero
    /* 1F074 801A7FEC FF008232 */  andi       $v0, $s4, 0xFF
    /* 1F078 801A7FF0 06004010 */  beqz       $v0, .L801A800C
    /* 1F07C 801A7FF4 09000224 */   addiu     $v0, $zero, 0x9
    /* 1F080 801A7FF8 B20042A2 */  sb         $v0, 0xB2($s2)
    /* 1F084 801A7FFC DB000224 */  addiu      $v0, $zero, 0xDB
    /* 1F088 801A8000 0A0022A2 */  sb         $v0, 0xA($s1)
    /* 1F08C 801A8004 09A00608 */  j          .L801A8024
    /* 1F090 801A8008 3861A0AE */   sw        $zero, 0x6138($s5)
  .L801A800C:
    /* 1F094 801A800C DC000224 */  addiu      $v0, $zero, 0xDC
    /* 1F098 801A8010 B20042A2 */  sb         $v0, 0xB2($s2)
    /* 1F09C 801A8014 DA000224 */  addiu      $v0, $zero, 0xDA
    /* 1F0A0 801A8018 0A0022A2 */  sb         $v0, 0xA($s1)
    /* 1F0A4 801A801C 0060023C */  lui        $v0, (0x60000000 >> 16)
    /* 1F0A8 801A8020 3861A2AE */  sw         $v0, 0x6138($s5)
  .L801A8024:
    /* 1F0AC 801A8024 FF00C432 */  andi       $a0, $s6, 0xFF
    /* 1F0B0 801A8028 09000224 */  addiu      $v0, $zero, 0x9
    /* 1F0B4 801A802C 05008210 */  beq        $a0, $v0, .L801A8044
    /* 1F0B8 801A8030 0A000224 */   addiu     $v0, $zero, 0xA
    /* 1F0BC 801A8034 1A008210 */  beq        $a0, $v0, .L801A80A0
    /* 1F0C0 801A8038 00000000 */   nop
    /* 1F0C4 801A803C 3EA00608 */  j          .L801A80F8
    /* 1F0C8 801A8040 00000000 */   nop
  .L801A8044:
    /* 1F0CC 801A8044 0174000C */  jal        func_8001D004
    /* 1F0D0 801A8048 9B300424 */   addiu     $a0, $zero, 0x309B
    /* 1F0D4 801A804C 21204000 */  addu       $a0, $v0, $zero
    /* 1F0D8 801A8050 FF008232 */  andi       $v0, $s4, 0xFF
    /* 1F0DC 801A8054 08004010 */  beqz       $v0, .L801A8078
    /* 1F0E0 801A8058 DD000224 */   addiu     $v0, $zero, 0xDD
    /* 1F0E4 801A805C D60002A2 */  sb         $v0, 0xD6($s0)
    /* 1F0E8 801A8060 CA0002A2 */  sb         $v0, 0xCA($s0)
    /* 1F0EC 801A8064 8E0062A2 */  sb         $v0, 0x8E($s3)
    /* 1F0F0 801A8068 DB000224 */  addiu      $v0, $zero, 0xDB
    /* 1F0F4 801A806C 0A0082A0 */  sb         $v0, 0xA($a0)
    /* 1F0F8 801A8070 3EA00608 */  j          .L801A80F8
    /* 1F0FC 801A8074 A062A0AE */   sw        $zero, 0x62A0($s5)
  .L801A8078:
    /* 1F100 801A8078 DC000224 */  addiu      $v0, $zero, 0xDC
    /* 1F104 801A807C D60002A2 */  sb         $v0, 0xD6($s0)
    /* 1F108 801A8080 CA0002A2 */  sb         $v0, 0xCA($s0)
    /* 1F10C 801A8084 DE000224 */  addiu      $v0, $zero, 0xDE
    /* 1F110 801A8088 8E0062A2 */  sb         $v0, 0x8E($s3)
    /* 1F114 801A808C DA000224 */  addiu      $v0, $zero, 0xDA
    /* 1F118 801A8090 0A0082A0 */  sb         $v0, 0xA($a0)
    /* 1F11C 801A8094 0060023C */  lui        $v0, (0x60000000 >> 16)
    /* 1F120 801A8098 3EA00608 */  j          .L801A80F8
    /* 1F124 801A809C A062A2AE */   sw        $v0, 0x62A0($s5)
  .L801A80A0:
    /* 1F128 801A80A0 0174000C */  jal        func_8001D004
    /* 1F12C 801A80A4 9C300424 */   addiu     $a0, $zero, 0x309C
    /* 1F130 801A80A8 21204000 */  addu       $a0, $v0, $zero
    /* 1F134 801A80AC FF008232 */  andi       $v0, $s4, 0xFF
    /* 1F138 801A80B0 08004010 */  beqz       $v0, .L801A80D4
    /* 1F13C 801A80B4 DD000224 */   addiu     $v0, $zero, 0xDD
    /* 1F140 801A80B8 EE0002A2 */  sb         $v0, 0xEE($s0)
    /* 1F144 801A80BC E20002A2 */  sb         $v0, 0xE2($s0)
    /* 1F148 801A80C0 9A0062A2 */  sb         $v0, 0x9A($s3)
    /* 1F14C 801A80C4 DB000224 */  addiu      $v0, $zero, 0xDB
    /* 1F150 801A80C8 0A0082A0 */  sb         $v0, 0xA($a0)
    /* 1F154 801A80CC 3EA00608 */  j          .L801A80F8
    /* 1F158 801A80D0 C862A0AE */   sw        $zero, 0x62C8($s5)
  .L801A80D4:
    /* 1F15C 801A80D4 DC000224 */  addiu      $v0, $zero, 0xDC
    /* 1F160 801A80D8 EE0002A2 */  sb         $v0, 0xEE($s0)
    /* 1F164 801A80DC E20002A2 */  sb         $v0, 0xE2($s0)
    /* 1F168 801A80E0 DE000224 */  addiu      $v0, $zero, 0xDE
    /* 1F16C 801A80E4 9A0062A2 */  sb         $v0, 0x9A($s3)
    /* 1F170 801A80E8 DA000224 */  addiu      $v0, $zero, 0xDA
    /* 1F174 801A80EC 0A0082A0 */  sb         $v0, 0xA($a0)
    /* 1F178 801A80F0 0060023C */  lui        $v0, (0x60000000 >> 16)
    /* 1F17C 801A80F4 C862A2AE */  sw         $v0, 0x62C8($s5)
  .L801A80F8:
    /* 1F180 801A80F8 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 1F184 801A80FC 2800B68F */  lw         $s6, 0x28($sp)
    /* 1F188 801A8100 2400B58F */  lw         $s5, 0x24($sp)
    /* 1F18C 801A8104 2000B48F */  lw         $s4, 0x20($sp)
    /* 1F190 801A8108 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 1F194 801A810C 1800B28F */  lw         $s2, 0x18($sp)
    /* 1F198 801A8110 1400B18F */  lw         $s1, 0x14($sp)
    /* 1F19C 801A8114 1000B08F */  lw         $s0, 0x10($sp)
    /* 1F1A0 801A8118 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 1F1A4 801A811C 0800E003 */  jr         $ra
    /* 1F1A8 801A8120 00000000 */   nop
endlabel func_801A7A8C
