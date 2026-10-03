nonmatching func_801A5B88, 0x174

glabel func_801A5B88
    /* 1CC10 801A5B88 0500822C */  sltiu      $v0, $a0, 0x5
    /* 1CC14 801A5B8C 59004010 */  beqz       $v0, .L801A5CF4
    /* 1CC18 801A5B90 80100400 */   sll       $v0, $a0, 2
    /* 1CC1C 801A5B94 1980013C */  lui        $at, %hi(jtbl_8018A1F0)
    /* 1CC20 801A5B98 21082200 */  addu       $at, $at, $v0
    /* 1CC24 801A5B9C F0A1228C */  lw         $v0, %lo(jtbl_8018A1F0)($at)
    /* 1CC28 801A5BA0 00000000 */  nop
    /* 1CC2C 801A5BA4 08004000 */  jr         $v0
    /* 1CC30 801A5BA8 00000000 */   nop
  jlabel .L801A5BAC
    /* 1CC34 801A5BAC 21300000 */  addu       $a2, $zero, $zero
    /* 1CC38 801A5BB0 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 1CC3C 801A5BB4 80280200 */  sll        $a1, $v0, 2
    /* 1CC40 801A5BB8 1E80073C */  lui        $a3, %hi(D_801D8078)
    /* 1CC44 801A5BBC 7880E724 */  addiu      $a3, $a3, %lo(D_801D8078)
    /* 1CC48 801A5BC0 80000424 */  addiu      $a0, $zero, 0x80
  .L801A5BC4:
    /* 1CC4C 801A5BC4 2110A600 */  addu       $v0, $a1, $a2
    /* 1CC50 801A5BC8 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1CC54 801A5BCC C0180200 */  sll        $v1, $v0, 3
    /* 1CC58 801A5BD0 21186200 */  addu       $v1, $v1, $v0
    /* 1CC5C 801A5BD4 80180300 */  sll        $v1, $v1, 2
    /* 1CC60 801A5BD8 21186700 */  addu       $v1, $v1, $a3
    /* 1CC64 801A5BDC 0400C228 */  slti       $v0, $a2, 0x4
    /* 1CC68 801A5BE0 040060A0 */  sb         $zero, 0x4($v1)
    /* 1CC6C 801A5BE4 050060A0 */  sb         $zero, 0x5($v1)
    /* 1CC70 801A5BE8 060064A0 */  sb         $a0, 0x6($v1)
    /* 1CC74 801A5BEC 0C0060A0 */  sb         $zero, 0xC($v1)
    /* 1CC78 801A5BF0 0D0060A0 */  sb         $zero, 0xD($v1)
    /* 1CC7C 801A5BF4 0E0064A0 */  sb         $a0, 0xE($v1)
    /* 1CC80 801A5BF8 140060A0 */  sb         $zero, 0x14($v1)
    /* 1CC84 801A5BFC 150060A0 */  sb         $zero, 0x15($v1)
    /* 1CC88 801A5C00 160064A0 */  sb         $a0, 0x16($v1)
    /* 1CC8C 801A5C04 1C0060A0 */  sb         $zero, 0x1C($v1)
    /* 1CC90 801A5C08 1D0060A0 */  sb         $zero, 0x1D($v1)
    /* 1CC94 801A5C0C EDFF4014 */  bnez       $v0, .L801A5BC4
    /* 1CC98 801A5C10 1E0064A0 */   sb        $a0, 0x1E($v1)
    /* 1CC9C 801A5C14 3D970608 */  j          .L801A5CF4
    /* 1CCA0 801A5C18 00000000 */   nop
  jlabel .L801A5C1C
    /* 1CCA4 801A5C1C 21300000 */  addu       $a2, $zero, $zero
    /* 1CCA8 801A5C20 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 1CCAC 801A5C24 80280200 */  sll        $a1, $v0, 2
    /* 1CCB0 801A5C28 1E80073C */  lui        $a3, %hi(D_801D8078)
    /* 1CCB4 801A5C2C 7880E724 */  addiu      $a3, $a3, %lo(D_801D8078)
    /* 1CCB8 801A5C30 80000424 */  addiu      $a0, $zero, 0x80
  .L801A5C34:
    /* 1CCBC 801A5C34 2110A600 */  addu       $v0, $a1, $a2
    /* 1CCC0 801A5C38 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1CCC4 801A5C3C C0180200 */  sll        $v1, $v0, 3
    /* 1CCC8 801A5C40 21186200 */  addu       $v1, $v1, $v0
    /* 1CCCC 801A5C44 80180300 */  sll        $v1, $v1, 2
    /* 1CCD0 801A5C48 21186700 */  addu       $v1, $v1, $a3
    /* 1CCD4 801A5C4C 0400C228 */  slti       $v0, $a2, 0x4
    /* 1CCD8 801A5C50 040064A0 */  sb         $a0, 0x4($v1)
    /* 1CCDC 801A5C54 050060A0 */  sb         $zero, 0x5($v1)
    /* 1CCE0 801A5C58 060060A0 */  sb         $zero, 0x6($v1)
    /* 1CCE4 801A5C5C 0C0064A0 */  sb         $a0, 0xC($v1)
    /* 1CCE8 801A5C60 0D0060A0 */  sb         $zero, 0xD($v1)
    /* 1CCEC 801A5C64 0E0060A0 */  sb         $zero, 0xE($v1)
    /* 1CCF0 801A5C68 140064A0 */  sb         $a0, 0x14($v1)
    /* 1CCF4 801A5C6C 150060A0 */  sb         $zero, 0x15($v1)
    /* 1CCF8 801A5C70 160060A0 */  sb         $zero, 0x16($v1)
    /* 1CCFC 801A5C74 1C0064A0 */  sb         $a0, 0x1C($v1)
    /* 1CD00 801A5C78 1D0060A0 */  sb         $zero, 0x1D($v1)
    /* 1CD04 801A5C7C EDFF4014 */  bnez       $v0, .L801A5C34
    /* 1CD08 801A5C80 1E0060A0 */   sb        $zero, 0x1E($v1)
    /* 1CD0C 801A5C84 3D970608 */  j          .L801A5CF4
    /* 1CD10 801A5C88 00000000 */   nop
  jlabel .L801A5C8C
    /* 1CD14 801A5C8C 21300000 */  addu       $a2, $zero, $zero
    /* 1CD18 801A5C90 FF00A230 */  andi       $v0, $a1, 0xFF
    /* 1CD1C 801A5C94 80280200 */  sll        $a1, $v0, 2
    /* 1CD20 801A5C98 1E80073C */  lui        $a3, %hi(D_801D8078)
    /* 1CD24 801A5C9C 7880E724 */  addiu      $a3, $a3, %lo(D_801D8078)
    /* 1CD28 801A5CA0 80000424 */  addiu      $a0, $zero, 0x80
  .L801A5CA4:
    /* 1CD2C 801A5CA4 2110A600 */  addu       $v0, $a1, $a2
    /* 1CD30 801A5CA8 0100C624 */  addiu      $a2, $a2, 0x1
    /* 1CD34 801A5CAC C0180200 */  sll        $v1, $v0, 3
    /* 1CD38 801A5CB0 21186200 */  addu       $v1, $v1, $v0
    /* 1CD3C 801A5CB4 80180300 */  sll        $v1, $v1, 2
    /* 1CD40 801A5CB8 21186700 */  addu       $v1, $v1, $a3
    /* 1CD44 801A5CBC 0400C228 */  slti       $v0, $a2, 0x4
    /* 1CD48 801A5CC0 040064A0 */  sb         $a0, 0x4($v1)
    /* 1CD4C 801A5CC4 050064A0 */  sb         $a0, 0x5($v1)
    /* 1CD50 801A5CC8 060060A0 */  sb         $zero, 0x6($v1)
    /* 1CD54 801A5CCC 0C0064A0 */  sb         $a0, 0xC($v1)
    /* 1CD58 801A5CD0 0D0064A0 */  sb         $a0, 0xD($v1)
    /* 1CD5C 801A5CD4 0E0060A0 */  sb         $zero, 0xE($v1)
    /* 1CD60 801A5CD8 140064A0 */  sb         $a0, 0x14($v1)
    /* 1CD64 801A5CDC 150064A0 */  sb         $a0, 0x15($v1)
    /* 1CD68 801A5CE0 160060A0 */  sb         $zero, 0x16($v1)
    /* 1CD6C 801A5CE4 1C0064A0 */  sb         $a0, 0x1C($v1)
    /* 1CD70 801A5CE8 1D0064A0 */  sb         $a0, 0x1D($v1)
    /* 1CD74 801A5CEC EDFF4014 */  bnez       $v0, .L801A5CA4
    /* 1CD78 801A5CF0 1E0060A0 */   sb        $zero, 0x1E($v1)
  .L801A5CF4:
    /* 1CD7C 801A5CF4 0800E003 */  jr         $ra
    /* 1CD80 801A5CF8 00000000 */   nop
endlabel func_801A5B88
