nonmatching func_8018BB0C, 0x314

glabel func_8018BB0C
    /* 2B94 8018BB0C D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2B98 8018BB10 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2B9C 8018BB14 21888000 */  addu       $s1, $a0, $zero
    /* 2BA0 8018BB18 2000BFAF */  sw         $ra, 0x20($sp)
    /* 2BA4 8018BB1C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2BA8 8018BB20 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2BAC 8018BB24 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2BB0 8018BB28 8D032292 */  lbu        $v0, 0x38D($s1)
    /* 2BB4 8018BB2C 1080133C */  lui        $s3, %hi(D_800FF748)
    /* 2BB8 8018BB30 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* 2BBC 8018BB34 07004330 */  andi       $v1, $v0, 0x7
    /* 2BC0 8018BB38 0800622C */  sltiu      $v0, $v1, 0x8
    /* 2BC4 8018BB3C B0004010 */  beqz       $v0, .L8018BE00
    /* 2BC8 8018BB40 80100300 */   sll       $v0, $v1, 2
    /* 2BCC 8018BB44 1980013C */  lui        $at, %hi(jtbl_801892E4)
    /* 2BD0 8018BB48 21082200 */  addu       $at, $at, $v0
    /* 2BD4 8018BB4C E492228C */  lw         $v0, %lo(jtbl_801892E4)($at)
    /* 2BD8 8018BB50 00000000 */  nop
    /* 2BDC 8018BB54 08004000 */  jr         $v0
    /* 2BE0 8018BB58 00000000 */   nop
  jlabel .L8018BB5C
    /* 2BE4 8018BB5C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2BE8 8018BB60 21086102 */  addu       $at, $s3, $at
    /* 2BEC 8018BB64 36AC3084 */  lh         $s0, -0x53CA($at)
    /* 2BF0 8018BB68 00000000 */  nop
    /* 2BF4 8018BB6C 02000106 */  bgez       $s0, .L8018BB78
    /* 2BF8 8018BB70 00000000 */   nop
    /* 2BFC 8018BB74 0F001026 */  addiu      $s0, $s0, 0xF
  .L8018BB78:
    /* 2C00 8018BB78 03811000 */  sra        $s0, $s0, 4
    /* 2C04 8018BB7C 21900002 */  addu       $s2, $s0, $zero
    /* 2C08 8018BB80 28001026 */  addiu      $s0, $s0, 0x28
    /* 2C0C 8018BB84 FF001032 */  andi       $s0, $s0, 0xFF
    /* 2C10 8018BB88 21200002 */  addu       $a0, $s0, $zero
    /* 2C14 8018BB8C A579000C */  jal        func_8001E694
    /* 2C18 8018BB90 20030524 */   addiu     $a1, $zero, 0x320
    /* 2C1C 8018BB94 21200002 */  addu       $a0, $s0, $zero
    /* 2C20 8018BB98 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C24 8018BB9C 21086102 */  addu       $at, $s3, $at
    /* 2C28 8018BBA0 28AC2394 */  lhu        $v1, -0x53D8($at)
    /* 2C2C 8018BBA4 20030524 */  addiu      $a1, $zero, 0x320
    /* 2C30 8018BBA8 21186200 */  addu       $v1, $v1, $v0
    /* 2C34 8018BBAC 6979000C */  jal        func_8001E5A4
    /* 2C38 8018BBB0 BC0323A6 */   sh        $v1, 0x3BC($s1)
    /* 2C3C 8018BBB4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C40 8018BBB8 21086102 */  addu       $at, $s3, $at
    /* 2C44 8018BBBC 30AC2394 */  lhu        $v1, -0x53D0($at)
    /* 2C48 8018BBC0 7E2F0608 */  j          .L8018BDF8
    /* 2C4C 8018BBC4 A40332A2 */   sb        $s2, 0x3A4($s1)
  jlabel .L8018BBC8
    /* 2C50 8018BBC8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C54 8018BBCC 21086102 */  addu       $at, $s3, $at
    /* 2C58 8018BBD0 36AC3084 */  lh         $s0, -0x53CA($at)
    /* 2C5C 8018BBD4 00000000 */  nop
    /* 2C60 8018BBD8 02000106 */  bgez       $s0, .L8018BBE4
    /* 2C64 8018BBDC 00000000 */   nop
    /* 2C68 8018BBE0 0F001026 */  addiu      $s0, $s0, 0xF
  .L8018BBE4:
    /* 2C6C 8018BBE4 03811000 */  sra        $s0, $s0, 4
    /* 2C70 8018BBE8 21900002 */  addu       $s2, $s0, $zero
    /* 2C74 8018BBEC 58001026 */  addiu      $s0, $s0, 0x58
    /* 2C78 8018BBF0 FF001032 */  andi       $s0, $s0, 0xFF
    /* 2C7C 8018BBF4 21200002 */  addu       $a0, $s0, $zero
    /* 2C80 8018BBF8 A579000C */  jal        func_8001E694
    /* 2C84 8018BBFC 20030524 */   addiu     $a1, $zero, 0x320
    /* 2C88 8018BC00 21200002 */  addu       $a0, $s0, $zero
    /* 2C8C 8018BC04 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2C90 8018BC08 21086102 */  addu       $at, $s3, $at
    /* 2C94 8018BC0C 28AC2394 */  lhu        $v1, -0x53D8($at)
    /* 2C98 8018BC10 20030524 */  addiu      $a1, $zero, 0x320
    /* 2C9C 8018BC14 21186200 */  addu       $v1, $v1, $v0
    /* 2CA0 8018BC18 6979000C */  jal        func_8001E5A4
    /* 2CA4 8018BC1C BC0323A6 */   sh        $v1, 0x3BC($s1)
    /* 2CA8 8018BC20 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CAC 8018BC24 21086102 */  addu       $at, $s3, $at
    /* 2CB0 8018BC28 30AC2394 */  lhu        $v1, -0x53D0($at)
    /* 2CB4 8018BC2C 7E2F0608 */  j          .L8018BDF8
    /* 2CB8 8018BC30 A40332A2 */   sb        $s2, 0x3A4($s1)
  jlabel .L8018BC34
    /* 2CBC 8018BC34 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CC0 8018BC38 21086102 */  addu       $at, $s3, $at
    /* 2CC4 8018BC3C 36AC3084 */  lh         $s0, -0x53CA($at)
    /* 2CC8 8018BC40 00000000 */  nop
    /* 2CCC 8018BC44 02000106 */  bgez       $s0, .L8018BC50
    /* 2CD0 8018BC48 00000000 */   nop
    /* 2CD4 8018BC4C 0F001026 */  addiu      $s0, $s0, 0xF
  .L8018BC50:
    /* 2CD8 8018BC50 03811000 */  sra        $s0, $s0, 4
    /* 2CDC 8018BC54 21900002 */  addu       $s2, $s0, $zero
    /* 2CE0 8018BC58 A8001026 */  addiu      $s0, $s0, 0xA8
    /* 2CE4 8018BC5C FF001032 */  andi       $s0, $s0, 0xFF
    /* 2CE8 8018BC60 21200002 */  addu       $a0, $s0, $zero
    /* 2CEC 8018BC64 A579000C */  jal        func_8001E694
    /* 2CF0 8018BC68 20030524 */   addiu     $a1, $zero, 0x320
    /* 2CF4 8018BC6C 21200002 */  addu       $a0, $s0, $zero
    /* 2CF8 8018BC70 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2CFC 8018BC74 21086102 */  addu       $at, $s3, $at
    /* 2D00 8018BC78 28AC2394 */  lhu        $v1, -0x53D8($at)
    /* 2D04 8018BC7C 20030524 */  addiu      $a1, $zero, 0x320
    /* 2D08 8018BC80 21186200 */  addu       $v1, $v1, $v0
    /* 2D0C 8018BC84 6979000C */  jal        func_8001E5A4
    /* 2D10 8018BC88 BC0323A6 */   sh        $v1, 0x3BC($s1)
    /* 2D14 8018BC8C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D18 8018BC90 21086102 */  addu       $at, $s3, $at
    /* 2D1C 8018BC94 30AC2394 */  lhu        $v1, -0x53D0($at)
    /* 2D20 8018BC98 7E2F0608 */  j          .L8018BDF8
    /* 2D24 8018BC9C A40332A2 */   sb        $s2, 0x3A4($s1)
  jlabel .L8018BCA0
    /* 2D28 8018BCA0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D2C 8018BCA4 21086102 */  addu       $at, $s3, $at
    /* 2D30 8018BCA8 36AC3084 */  lh         $s0, -0x53CA($at)
    /* 2D34 8018BCAC 00000000 */  nop
    /* 2D38 8018BCB0 02000106 */  bgez       $s0, .L8018BCBC
    /* 2D3C 8018BCB4 00000000 */   nop
    /* 2D40 8018BCB8 0F001026 */  addiu      $s0, $s0, 0xF
  .L8018BCBC:
    /* 2D44 8018BCBC 03811000 */  sra        $s0, $s0, 4
    /* 2D48 8018BCC0 21900002 */  addu       $s2, $s0, $zero
    /* 2D4C 8018BCC4 D8FF1026 */  addiu      $s0, $s0, -0x28
    /* 2D50 8018BCC8 FF001032 */  andi       $s0, $s0, 0xFF
    /* 2D54 8018BCCC 21200002 */  addu       $a0, $s0, $zero
    /* 2D58 8018BCD0 A579000C */  jal        func_8001E694
    /* 2D5C 8018BCD4 20030524 */   addiu     $a1, $zero, 0x320
    /* 2D60 8018BCD8 21200002 */  addu       $a0, $s0, $zero
    /* 2D64 8018BCDC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D68 8018BCE0 21086102 */  addu       $at, $s3, $at
    /* 2D6C 8018BCE4 28AC2394 */  lhu        $v1, -0x53D8($at)
    /* 2D70 8018BCE8 20030524 */  addiu      $a1, $zero, 0x320
    /* 2D74 8018BCEC 21186200 */  addu       $v1, $v1, $v0
    /* 2D78 8018BCF0 6979000C */  jal        func_8001E5A4
    /* 2D7C 8018BCF4 BC0323A6 */   sh        $v1, 0x3BC($s1)
    /* 2D80 8018BCF8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D84 8018BCFC 21086102 */  addu       $at, $s3, $at
    /* 2D88 8018BD00 30AC2394 */  lhu        $v1, -0x53D0($at)
    /* 2D8C 8018BD04 7E2F0608 */  j          .L8018BDF8
    /* 2D90 8018BD08 A40332A2 */   sb        $s2, 0x3A4($s1)
  jlabel .L8018BD0C
    /* 2D94 8018BD0C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2D98 8018BD10 21086102 */  addu       $at, $s3, $at
    /* 2D9C 8018BD14 3EAC3084 */  lh         $s0, -0x53C2($at)
    /* 2DA0 8018BD18 00000000 */  nop
    /* 2DA4 8018BD1C 02000106 */  bgez       $s0, .L8018BD28
    /* 2DA8 8018BD20 00000000 */   nop
    /* 2DAC 8018BD24 0F001026 */  addiu      $s0, $s0, 0xF
  .L8018BD28:
    /* 2DB0 8018BD28 03811000 */  sra        $s0, $s0, 4
    /* 2DB4 8018BD2C 21900002 */  addu       $s2, $s0, $zero
    /* 2DB8 8018BD30 6E2F0608 */  j          .L8018BDB8
    /* 2DBC 8018BD34 28001026 */   addiu     $s0, $s0, 0x28
  jlabel .L8018BD38
    /* 2DC0 8018BD38 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DC4 8018BD3C 21086102 */  addu       $at, $s3, $at
    /* 2DC8 8018BD40 3EAC3084 */  lh         $s0, -0x53C2($at)
    /* 2DCC 8018BD44 00000000 */  nop
    /* 2DD0 8018BD48 02000106 */  bgez       $s0, .L8018BD54
    /* 2DD4 8018BD4C 00000000 */   nop
    /* 2DD8 8018BD50 0F001026 */  addiu      $s0, $s0, 0xF
  .L8018BD54:
    /* 2DDC 8018BD54 03811000 */  sra        $s0, $s0, 4
    /* 2DE0 8018BD58 21900002 */  addu       $s2, $s0, $zero
    /* 2DE4 8018BD5C 6E2F0608 */  j          .L8018BDB8
    /* 2DE8 8018BD60 58001026 */   addiu     $s0, $s0, 0x58
  jlabel .L8018BD64
    /* 2DEC 8018BD64 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2DF0 8018BD68 21086102 */  addu       $at, $s3, $at
    /* 2DF4 8018BD6C 3EAC3084 */  lh         $s0, -0x53C2($at)
    /* 2DF8 8018BD70 00000000 */  nop
    /* 2DFC 8018BD74 02000106 */  bgez       $s0, .L8018BD80
    /* 2E00 8018BD78 00000000 */   nop
    /* 2E04 8018BD7C 0F001026 */  addiu      $s0, $s0, 0xF
  .L8018BD80:
    /* 2E08 8018BD80 03811000 */  sra        $s0, $s0, 4
    /* 2E0C 8018BD84 21900002 */  addu       $s2, $s0, $zero
    /* 2E10 8018BD88 6E2F0608 */  j          .L8018BDB8
    /* 2E14 8018BD8C A8001026 */   addiu     $s0, $s0, 0xA8
  jlabel .L8018BD90
    /* 2E18 8018BD90 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E1C 8018BD94 21086102 */  addu       $at, $s3, $at
    /* 2E20 8018BD98 3EAC3084 */  lh         $s0, -0x53C2($at)
    /* 2E24 8018BD9C 00000000 */  nop
    /* 2E28 8018BDA0 02000106 */  bgez       $s0, .L8018BDAC
    /* 2E2C 8018BDA4 00000000 */   nop
    /* 2E30 8018BDA8 0F001026 */  addiu      $s0, $s0, 0xF
  .L8018BDAC:
    /* 2E34 8018BDAC 03811000 */  sra        $s0, $s0, 4
    /* 2E38 8018BDB0 21900002 */  addu       $s2, $s0, $zero
    /* 2E3C 8018BDB4 D8FF1026 */  addiu      $s0, $s0, -0x28
  .L8018BDB8:
    /* 2E40 8018BDB8 FF001032 */  andi       $s0, $s0, 0xFF
    /* 2E44 8018BDBC 21200002 */  addu       $a0, $s0, $zero
    /* 2E48 8018BDC0 A579000C */  jal        func_8001E694
    /* 2E4C 8018BDC4 20030524 */   addiu     $a1, $zero, 0x320
    /* 2E50 8018BDC8 21200002 */  addu       $a0, $s0, $zero
    /* 2E54 8018BDCC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E58 8018BDD0 21086102 */  addu       $at, $s3, $at
    /* 2E5C 8018BDD4 2AAC2394 */  lhu        $v1, -0x53D6($at)
    /* 2E60 8018BDD8 20030524 */  addiu      $a1, $zero, 0x320
    /* 2E64 8018BDDC 21186200 */  addu       $v1, $v1, $v0
    /* 2E68 8018BDE0 6979000C */  jal        func_8001E5A4
    /* 2E6C 8018BDE4 BC0323A6 */   sh        $v1, 0x3BC($s1)
    /* 2E70 8018BDE8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E74 8018BDEC 21086102 */  addu       $at, $s3, $at
    /* 2E78 8018BDF0 32AC2394 */  lhu        $v1, -0x53CE($at)
    /* 2E7C 8018BDF4 A40332A2 */  sb         $s2, 0x3A4($s1)
  .L8018BDF8:
    /* 2E80 8018BDF8 21186200 */  addu       $v1, $v1, $v0
    /* 2E84 8018BDFC BE0323A6 */  sh         $v1, 0x3BE($s1)
  .L8018BE00:
    /* 2E88 8018BE00 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2E8C 8018BE04 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2E90 8018BE08 1800B28F */  lw         $s2, 0x18($sp)
    /* 2E94 8018BE0C 1400B18F */  lw         $s1, 0x14($sp)
    /* 2E98 8018BE10 1000B08F */  lw         $s0, 0x10($sp)
    /* 2E9C 8018BE14 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2EA0 8018BE18 0800E003 */  jr         $ra
    /* 2EA4 8018BE1C 00000000 */   nop
endlabel func_8018BB0C
