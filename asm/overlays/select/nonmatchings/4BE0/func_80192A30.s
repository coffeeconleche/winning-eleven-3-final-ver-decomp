nonmatching func_80192A30, 0x6C4

glabel func_80192A30
    /* 9AB8 80192A30 A8FFBD27 */  addiu      $sp, $sp, -0x58
    /* 9ABC 80192A34 5000B6AF */  sw         $s6, 0x50($sp)
    /* 9AC0 80192A38 6800B68F */  lw         $s6, 0x68($sp)
    /* 9AC4 80192A3C 1E80033C */  lui        $v1, %hi(D_801D8A78)
    /* 9AC8 80192A40 788A638C */  lw         $v1, %lo(D_801D8A78)($v1)
    /* 9ACC 80192A44 3800B0AF */  sw         $s0, 0x38($sp)
    /* 9AD0 80192A48 2180A000 */  addu       $s0, $a1, $zero
    /* 9AD4 80192A4C 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 9AD8 80192A50 2188C000 */  addu       $s1, $a2, $zero
    /* 9ADC 80192A54 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* 9AE0 80192A58 21A8E000 */  addu       $s5, $a3, $zero
    /* 9AE4 80192A5C 4400B3AF */  sw         $s3, 0x44($sp)
    /* 9AE8 80192A60 21988000 */  addu       $s3, $a0, $zero
    /* 9AEC 80192A64 4800B4AF */  sw         $s4, 0x48($sp)
    /* 9AF0 80192A68 1080143C */  lui        $s4, %hi(D_800FF748)
    /* 9AF4 80192A6C 48F79426 */  addiu      $s4, $s4, %lo(D_800FF748)
    /* 9AF8 80192A70 4000B2AF */  sw         $s2, 0x40($sp)
    /* 9AFC 80192A74 6C00B293 */  lbu        $s2, 0x6C($sp)
    /* 9B00 80192A78 01000224 */  addiu      $v0, $zero, 0x1
    /* 9B04 80192A7C A3006210 */  beq        $v1, $v0, .L80192D0C
    /* 9B08 80192A80 5400BFAF */   sw        $ra, 0x54($sp)
    /* 9B0C 80192A84 02006228 */  slti       $v0, $v1, 0x2
    /* 9B10 80192A88 05004010 */  beqz       $v0, .L80192AA0
    /* 9B14 80192A8C 00000000 */   nop
    /* 9B18 80192A90 08006010 */  beqz       $v1, .L80192AB4
    /* 9B1C 80192A94 21100000 */   addu      $v0, $zero, $zero
    /* 9B20 80192A98 324C0608 */  j          .L801930C8
    /* 9B24 80192A9C 00000000 */   nop
  .L80192AA0:
    /* 9B28 80192AA0 02000224 */  addiu      $v0, $zero, 0x2
    /* 9B2C 80192AA4 E7006210 */  beq        $v1, $v0, .L80192E44
    /* 9B30 80192AA8 21100000 */   addu      $v0, $zero, $zero
    /* 9B34 80192AAC 324C0608 */  j          .L801930C8
    /* 9B38 80192AB0 00000000 */   nop
  .L80192AB4:
    /* 9B3C 80192AB4 1080043C */  lui        $a0, %hi(D_800FB568)
    /* 9B40 80192AB8 68B5848C */  lw         $a0, %lo(D_800FB568)($a0)
    /* 9B44 80192ABC 92B3020C */  jal        func_800ACE48
    /* 9B48 80192AC0 00000000 */   nop
    /* 9B4C 80192AC4 15004014 */  bnez       $v0, .L80192B1C
    /* 9B50 80192AC8 01000224 */   addiu     $v0, $zero, 0x1
    /* 9B54 80192ACC 1080043C */  lui        $a0, %hi(D_800FB56C)
    /* 9B58 80192AD0 6CB5848C */  lw         $a0, %lo(D_800FB56C)($a0)
    /* 9B5C 80192AD4 92B3020C */  jal        func_800ACE48
    /* 9B60 80192AD8 00000000 */   nop
    /* 9B64 80192ADC 0F004014 */  bnez       $v0, .L80192B1C
    /* 9B68 80192AE0 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 9B6C 80192AE4 1080043C */  lui        $a0, %hi(D_800FB570)
    /* 9B70 80192AE8 70B5848C */  lw         $a0, %lo(D_800FB570)($a0)
    /* 9B74 80192AEC 92B3020C */  jal        func_800ACE48
    /* 9B78 80192AF0 00000000 */   nop
    /* 9B7C 80192AF4 09004014 */  bnez       $v0, .L80192B1C
    /* 9B80 80192AF8 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 9B84 80192AFC 1080043C */  lui        $a0, %hi(D_800FB574)
    /* 9B88 80192B00 74B5848C */  lw         $a0, %lo(D_800FB574)($a0)
    /* 9B8C 80192B04 92B3020C */  jal        func_800ACE48
    /* 9B90 80192B08 00000000 */   nop
    /* 9B94 80192B0C 2B100200 */  sltu       $v0, $zero, $v0
    /* 9B98 80192B10 23100200 */  negu       $v0, $v0
    /* 9B9C 80192B14 FDFF0324 */  addiu      $v1, $zero, -0x3
    /* 9BA0 80192B18 24104300 */  and        $v0, $v0, $v1
  .L80192B1C:
    /* 9BA4 80192B1C 03004324 */  addiu      $v1, $v0, 0x3
    /* 9BA8 80192B20 0500622C */  sltiu      $v0, $v1, 0x5
    /* 9BAC 80192B24 67014010 */  beqz       $v0, .L801930C4
    /* 9BB0 80192B28 80100300 */   sll       $v0, $v1, 2
    /* 9BB4 80192B2C 1980013C */  lui        $at, %hi(jtbl_80189460)
    /* 9BB8 80192B30 21082200 */  addu       $at, $at, $v0
    /* 9BBC 80192B34 6094228C */  lw         $v0, %lo(jtbl_80189460)($at)
    /* 9BC0 80192B38 00000000 */  nop
    /* 9BC4 80192B3C 08004000 */  jr         $v0
    /* 9BC8 80192B40 00000000 */   nop
  jlabel .L80192B44
    /* 9BCC 80192B44 1080043C */  lui        $a0, %hi(D_800FB568)
    /* 9BD0 80192B48 68B5848C */  lw         $a0, %lo(D_800FB568)($a0)
    /* 9BD4 80192B4C 92B3020C */  jal        func_800ACE48
    /* 9BD8 80192B50 00000000 */   nop
    /* 9BDC 80192B54 1080043C */  lui        $a0, %hi(D_800FB56C)
    /* 9BE0 80192B58 6CB5848C */  lw         $a0, %lo(D_800FB56C)($a0)
    /* 9BE4 80192B5C 92B3020C */  jal        func_800ACE48
    /* 9BE8 80192B60 00000000 */   nop
    /* 9BEC 80192B64 1080043C */  lui        $a0, %hi(D_800FB570)
    /* 9BF0 80192B68 70B5848C */  lw         $a0, %lo(D_800FB570)($a0)
    /* 9BF4 80192B6C 92B3020C */  jal        func_800ACE48
    /* 9BF8 80192B70 00000000 */   nop
    /* 9BFC 80192B74 1080043C */  lui        $a0, %hi(D_800FB574)
    /* 9C00 80192B78 74B5848C */  lw         $a0, %lo(D_800FB574)($a0)
    /* 9C04 80192B7C 92B3020C */  jal        func_800ACE48
    /* 9C08 80192B80 00000000 */   nop
  .L80192B84:
    /* 9C0C 80192B84 4E16030C */  jal        func_800C5938
    /* 9C10 80192B88 00211000 */   sll       $a0, $s0, 4
    /* 9C14 80192B8C FDFF4010 */  beqz       $v0, .L80192B84
    /* 9C18 80192B90 01000224 */   addiu     $v0, $zero, 0x1
    /* 9C1C 80192B94 1E80013C */  lui        $at, %hi(D_801D8A78)
    /* 9C20 80192B98 788A22AC */  sw         $v0, %lo(D_801D8A78)($at)
    /* 9C24 80192B9C 324C0608 */  j          .L801930C8
    /* 9C28 80192BA0 21100000 */   addu      $v0, $zero, $zero
  jlabel .L80192BA4
    /* 9C2C 80192BA4 1080043C */  lui        $a0, %hi(D_800FF698)
    /* 9C30 80192BA8 98F6848C */  lw         $a0, %lo(D_800FF698)($a0)
    /* 9C34 80192BAC 01000224 */  addiu      $v0, $zero, 0x1
    /* 9C38 80192BB0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 9C3C 80192BB4 21088102 */  addu       $at, $s4, $at
    /* 9C40 80192BB8 1CAC22A0 */  sb         $v0, -0x53E4($at)
    /* 9C44 80192BBC 92B3020C */  jal        func_800ACE48
    /* 9C48 80192BC0 00000000 */   nop
    /* 9C4C 80192BC4 1080043C */  lui        $a0, %hi(D_800FF69C)
    /* 9C50 80192BC8 9CF6848C */  lw         $a0, %lo(D_800FF69C)($a0)
    /* 9C54 80192BCC 92B3020C */  jal        func_800ACE48
    /* 9C58 80192BD0 00000000 */   nop
    /* 9C5C 80192BD4 1080043C */  lui        $a0, %hi(D_800FF6A0)
    /* 9C60 80192BD8 A0F6848C */  lw         $a0, %lo(D_800FF6A0)($a0)
    /* 9C64 80192BDC 92B3020C */  jal        func_800ACE48
    /* 9C68 80192BE0 00000000 */   nop
    /* 9C6C 80192BE4 1080043C */  lui        $a0, %hi(D_800FF6A8)
    /* 9C70 80192BE8 A8F6848C */  lw         $a0, %lo(D_800FF6A8)($a0)
    /* 9C74 80192BEC 92B3020C */  jal        func_800ACE48
    /* 9C78 80192BF0 00000000 */   nop
  .L80192BF4:
    /* 9C7C 80192BF4 5616030C */  jal        func_800C5958
    /* 9C80 80192BF8 00211000 */   sll       $a0, $s0, 4
    /* 9C84 80192BFC FDFF4010 */  beqz       $v0, .L80192BF4
    /* 9C88 80192C00 00000000 */   nop
  .L80192C04:
    /* 9C8C 80192C04 1080043C */  lui        $a0, %hi(D_800FF698)
    /* 9C90 80192C08 98F6848C */  lw         $a0, %lo(D_800FF698)($a0)
    /* 9C94 80192C0C 92B3020C */  jal        func_800ACE48
    /* 9C98 80192C10 00000000 */   nop
    /* 9C9C 80192C14 15004014 */  bnez       $v0, .L80192C6C
    /* 9CA0 80192C18 01000224 */   addiu     $v0, $zero, 0x1
    /* 9CA4 80192C1C 1080043C */  lui        $a0, %hi(D_800FF69C)
    /* 9CA8 80192C20 9CF6848C */  lw         $a0, %lo(D_800FF69C)($a0)
    /* 9CAC 80192C24 92B3020C */  jal        func_800ACE48
    /* 9CB0 80192C28 00000000 */   nop
    /* 9CB4 80192C2C 0F004014 */  bnez       $v0, .L80192C6C
    /* 9CB8 80192C30 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 9CBC 80192C34 1080043C */  lui        $a0, %hi(D_800FF6A0)
    /* 9CC0 80192C38 A0F6848C */  lw         $a0, %lo(D_800FF6A0)($a0)
    /* 9CC4 80192C3C 92B3020C */  jal        func_800ACE48
    /* 9CC8 80192C40 00000000 */   nop
    /* 9CCC 80192C44 09004014 */  bnez       $v0, .L80192C6C
    /* 9CD0 80192C48 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 9CD4 80192C4C 1080043C */  lui        $a0, %hi(D_800FF6A8)
    /* 9CD8 80192C50 A8F6848C */  lw         $a0, %lo(D_800FF6A8)($a0)
    /* 9CDC 80192C54 92B3020C */  jal        func_800ACE48
    /* 9CE0 80192C58 00000000 */   nop
    /* 9CE4 80192C5C 2B100200 */  sltu       $v0, $zero, $v0
    /* 9CE8 80192C60 23100200 */  negu       $v0, $v0
    /* 9CEC 80192C64 FDFF0324 */  addiu      $v1, $zero, -0x3
    /* 9CF0 80192C68 24104300 */  and        $v0, $v0, $v1
  .L80192C6C:
    /* 9CF4 80192C6C E5FF4010 */  beqz       $v0, .L80192C04
    /* 9CF8 80192C70 21204000 */   addu      $a0, $v0, $zero
    /* 9CFC 80192C74 01000224 */  addiu      $v0, $zero, 0x1
    /* 9D00 80192C78 13018214 */  bne        $a0, $v0, .L801930C8
    /* 9D04 80192C7C 21108000 */   addu      $v0, $a0, $zero
    /* 9D08 80192C80 1080043C */  lui        $a0, %hi(D_800FB568)
    /* 9D0C 80192C84 68B5848C */  lw         $a0, %lo(D_800FB568)($a0)
    /* 9D10 80192C88 01000224 */  addiu      $v0, $zero, 0x1
    /* 9D14 80192C8C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 9D18 80192C90 21088102 */  addu       $at, $s4, $at
    /* 9D1C 80192C94 1CAC22A0 */  sb         $v0, -0x53E4($at)
    /* 9D20 80192C98 92B3020C */  jal        func_800ACE48
    /* 9D24 80192C9C 00000000 */   nop
    /* 9D28 80192CA0 1080043C */  lui        $a0, %hi(D_800FB56C)
    /* 9D2C 80192CA4 6CB5848C */  lw         $a0, %lo(D_800FB56C)($a0)
    /* 9D30 80192CA8 92B3020C */  jal        func_800ACE48
    /* 9D34 80192CAC 00000000 */   nop
    /* 9D38 80192CB0 1080043C */  lui        $a0, %hi(D_800FB570)
    /* 9D3C 80192CB4 70B5848C */  lw         $a0, %lo(D_800FB570)($a0)
    /* 9D40 80192CB8 92B3020C */  jal        func_800ACE48
    /* 9D44 80192CBC 00000000 */   nop
    /* 9D48 80192CC0 1080043C */  lui        $a0, %hi(D_800FB574)
    /* 9D4C 80192CC4 74B5848C */  lw         $a0, %lo(D_800FB574)($a0)
    /* 9D50 80192CC8 92B3020C */  jal        func_800ACE48
    /* 9D54 80192CCC 00000000 */   nop
  .L80192CD0:
    /* 9D58 80192CD0 4E16030C */  jal        func_800C5938
    /* 9D5C 80192CD4 00211000 */   sll       $a0, $s0, 4
    /* 9D60 80192CD8 FDFF4010 */  beqz       $v0, .L80192CD0
    /* 9D64 80192CDC 21100000 */   addu      $v0, $zero, $zero
    /* 9D68 80192CE0 1E80013C */  lui        $at, %hi(D_801D8A78)
    /* 9D6C 80192CE4 788A20AC */  sw         $zero, %lo(D_801D8A78)($at)
    /* 9D70 80192CE8 1D80013C */  lui        $at, %hi(D_801D7D56)
    /* 9D74 80192CEC 567D20A4 */  sh         $zero, %lo(D_801D7D56)($at)
    /* 9D78 80192CF0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 9D7C 80192CF4 21088102 */  addu       $at, $s4, $at
    /* 9D80 80192CF8 1E8F20A0 */  sb         $zero, -0x70E2($at)
    /* 9D84 80192CFC 324C0608 */  j          .L801930C8
    /* 9D88 80192D00 00000000 */   nop
  jlabel .L80192D04
    /* 9D8C 80192D04 324C0608 */  j          .L801930C8
    /* 9D90 80192D08 FEFF0224 */   addiu     $v0, $zero, -0x2
  .L80192D0C:
    /* 9D94 80192D0C 1080043C */  lui        $a0, %hi(D_800FB568)
    /* 9D98 80192D10 68B5848C */  lw         $a0, %lo(D_800FB568)($a0)
    /* 9D9C 80192D14 92B3020C */  jal        func_800ACE48
    /* 9DA0 80192D18 00000000 */   nop
    /* 9DA4 80192D1C 15004014 */  bnez       $v0, .L80192D74
    /* 9DA8 80192D20 01000224 */   addiu     $v0, $zero, 0x1
    /* 9DAC 80192D24 1080043C */  lui        $a0, %hi(D_800FB56C)
    /* 9DB0 80192D28 6CB5848C */  lw         $a0, %lo(D_800FB56C)($a0)
    /* 9DB4 80192D2C 92B3020C */  jal        func_800ACE48
    /* 9DB8 80192D30 00000000 */   nop
    /* 9DBC 80192D34 0F004014 */  bnez       $v0, .L80192D74
    /* 9DC0 80192D38 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 9DC4 80192D3C 1080043C */  lui        $a0, %hi(D_800FB570)
    /* 9DC8 80192D40 70B5848C */  lw         $a0, %lo(D_800FB570)($a0)
    /* 9DCC 80192D44 92B3020C */  jal        func_800ACE48
    /* 9DD0 80192D48 00000000 */   nop
    /* 9DD4 80192D4C 09004014 */  bnez       $v0, .L80192D74
    /* 9DD8 80192D50 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 9DDC 80192D54 1080043C */  lui        $a0, %hi(D_800FB574)
    /* 9DE0 80192D58 74B5848C */  lw         $a0, %lo(D_800FB574)($a0)
    /* 9DE4 80192D5C 92B3020C */  jal        func_800ACE48
    /* 9DE8 80192D60 00000000 */   nop
    /* 9DEC 80192D64 2B100200 */  sltu       $v0, $zero, $v0
    /* 9DF0 80192D68 23100200 */  negu       $v0, $v0
    /* 9DF4 80192D6C FDFF0324 */  addiu      $v1, $zero, -0x3
    /* 9DF8 80192D70 24104300 */  and        $v0, $v0, $v1
  .L80192D74:
    /* 9DFC 80192D74 03004324 */  addiu      $v1, $v0, 0x3
    /* 9E00 80192D78 0500622C */  sltiu      $v0, $v1, 0x5
    /* 9E04 80192D7C D1004010 */  beqz       $v0, .L801930C4
    /* 9E08 80192D80 80100300 */   sll       $v0, $v1, 2
    /* 9E0C 80192D84 1980013C */  lui        $at, %hi(jtbl_80189478)
    /* 9E10 80192D88 21082200 */  addu       $at, $at, $v0
    /* 9E14 80192D8C 7894228C */  lw         $v0, %lo(jtbl_80189478)($at)
    /* 9E18 80192D90 00000000 */  nop
    /* 9E1C 80192D94 08004000 */  jr         $v0
    /* 9E20 80192D98 00000000 */   nop
  jlabel .L80192D9C
    /* 9E24 80192D9C 21202002 */  addu       $a0, $s1, $zero
    /* 9E28 80192DA0 9EB3020C */  jal        func_800ACE78
    /* 9E2C 80192DA4 01800534 */   ori       $a1, $zero, 0x8001
    /* 9E30 80192DA8 21204000 */  addu       $a0, $v0, $zero
    /* 9E34 80192DAC 1D80013C */  lui        $at, %hi(D_801D7D48)
    /* 9E38 80192DB0 487D24AC */  sw         $a0, %lo(D_801D7D48)($at)
    /* 9E3C 80192DB4 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 9E40 80192DB8 C3008210 */  beq        $a0, $v0, .L801930C8
    /* 9E44 80192DBC 00000000 */   nop
    /* 9E48 80192DC0 1D80053C */  lui        $a1, %hi(D_801D1AF8)
    /* 9E4C 80192DC4 F81AA58C */  lw         $a1, %lo(D_801D1AF8)($a1)
    /* 9E50 80192DC8 02000224 */  addiu      $v0, $zero, 0x2
    /* 9E54 80192DCC 1E80013C */  lui        $at, %hi(D_801D8A78)
    /* 9E58 80192DD0 788A22AC */  sw         $v0, %lo(D_801D8A78)($at)
    /* 9E5C 80192DD4 A6B3020C */  jal        func_800ACE98
    /* 9E60 80192DD8 0001C626 */   addiu     $a2, $s6, 0x100
    /* 9E64 80192DDC 324C0608 */  j          .L801930C8
    /* 9E68 80192DE0 21100000 */   addu      $v0, $zero, $zero
  jlabel .L80192DE4
    /* 9E6C 80192DE4 1080043C */  lui        $a0, %hi(D_800FB568)
    /* 9E70 80192DE8 68B5848C */  lw         $a0, %lo(D_800FB568)($a0)
    /* 9E74 80192DEC 92B3020C */  jal        func_800ACE48
    /* 9E78 80192DF0 00000000 */   nop
    /* 9E7C 80192DF4 1080043C */  lui        $a0, %hi(D_800FB56C)
    /* 9E80 80192DF8 6CB5848C */  lw         $a0, %lo(D_800FB56C)($a0)
    /* 9E84 80192DFC 92B3020C */  jal        func_800ACE48
    /* 9E88 80192E00 00000000 */   nop
    /* 9E8C 80192E04 1080043C */  lui        $a0, %hi(D_800FB570)
    /* 9E90 80192E08 70B5848C */  lw         $a0, %lo(D_800FB570)($a0)
    /* 9E94 80192E0C 92B3020C */  jal        func_800ACE48
    /* 9E98 80192E10 00000000 */   nop
    /* 9E9C 80192E14 1080043C */  lui        $a0, %hi(D_800FB574)
    /* 9EA0 80192E18 74B5848C */  lw         $a0, %lo(D_800FB574)($a0)
    /* 9EA4 80192E1C 92B3020C */  jal        func_800ACE48
    /* 9EA8 80192E20 00000000 */   nop
  .L80192E24:
    /* 9EAC 80192E24 4E16030C */  jal        func_800C5938
    /* 9EB0 80192E28 00211000 */   sll       $a0, $s0, 4
    /* 9EB4 80192E2C FDFF4010 */  beqz       $v0, .L80192E24
    /* 9EB8 80192E30 00000000 */   nop
    /* 9EBC 80192E34 2F4C0608 */  j          .L801930BC
    /* 9EC0 80192E38 00000000 */   nop
  jlabel .L80192E3C
    /* 9EC4 80192E3C 324C0608 */  j          .L801930C8
    /* 9EC8 80192E40 FDFF0224 */   addiu     $v0, $zero, -0x3
  .L80192E44:
    /* 9ECC 80192E44 1080043C */  lui        $a0, %hi(D_800FB568)
    /* 9ED0 80192E48 68B5848C */  lw         $a0, %lo(D_800FB568)($a0)
    /* 9ED4 80192E4C 92B3020C */  jal        func_800ACE48
    /* 9ED8 80192E50 00000000 */   nop
    /* 9EDC 80192E54 15004014 */  bnez       $v0, .L80192EAC
    /* 9EE0 80192E58 01000324 */   addiu     $v1, $zero, 0x1
    /* 9EE4 80192E5C 1080043C */  lui        $a0, %hi(D_800FB56C)
    /* 9EE8 80192E60 6CB5848C */  lw         $a0, %lo(D_800FB56C)($a0)
    /* 9EEC 80192E64 92B3020C */  jal        func_800ACE48
    /* 9EF0 80192E68 00000000 */   nop
    /* 9EF4 80192E6C 0F004014 */  bnez       $v0, .L80192EAC
    /* 9EF8 80192E70 FFFF0324 */   addiu     $v1, $zero, -0x1
    /* 9EFC 80192E74 1080043C */  lui        $a0, %hi(D_800FB570)
    /* 9F00 80192E78 70B5848C */  lw         $a0, %lo(D_800FB570)($a0)
    /* 9F04 80192E7C 92B3020C */  jal        func_800ACE48
    /* 9F08 80192E80 00000000 */   nop
    /* 9F0C 80192E84 09004014 */  bnez       $v0, .L80192EAC
    /* 9F10 80192E88 FEFF0324 */   addiu     $v1, $zero, -0x2
    /* 9F14 80192E8C 1080043C */  lui        $a0, %hi(D_800FB574)
    /* 9F18 80192E90 74B5848C */  lw         $a0, %lo(D_800FB574)($a0)
    /* 9F1C 80192E94 92B3020C */  jal        func_800ACE48
    /* 9F20 80192E98 00000000 */   nop
    /* 9F24 80192E9C 2B100200 */  sltu       $v0, $zero, $v0
    /* 9F28 80192EA0 23100200 */  negu       $v0, $v0
    /* 9F2C 80192EA4 FDFF0324 */  addiu      $v1, $zero, -0x3
    /* 9F30 80192EA8 24184300 */  and        $v1, $v0, $v1
  .L80192EAC:
    /* 9F34 80192EAC 86006010 */  beqz       $v1, .L801930C8
    /* 9F38 80192EB0 21100000 */   addu      $v0, $zero, $zero
    /* 9F3C 80192EB4 0600601C */  bgtz       $v1, .L80192ED0
    /* 9F40 80192EB8 01000224 */   addiu     $v0, $zero, 0x1
    /* 9F44 80192EBC FDFF6228 */  slti       $v0, $v1, -0x3
    /* 9F48 80192EC0 81004014 */  bnez       $v0, .L801930C8
    /* 9F4C 80192EC4 21100000 */   addu      $v0, $zero, $zero
    /* 9F50 80192EC8 174C0608 */  j          .L8019305C
    /* 9F54 80192ECC 00000000 */   nop
  .L80192ED0:
    /* 9F58 80192ED0 7D006214 */  bne        $v1, $v0, .L801930C8
    /* 9F5C 80192ED4 21100000 */   addu      $v0, $zero, $zero
    /* 9F60 80192ED8 FFFF1024 */  addiu      $s0, $zero, -0x1
  .L80192EDC:
    /* 9F64 80192EDC 1D80043C */  lui        $a0, %hi(D_801D7D48)
    /* 9F68 80192EE0 487D848C */  lw         $a0, %lo(D_801D7D48)($a0)
    /* 9F6C 80192EE4 AEB3020C */  jal        func_800ACEB8
    /* 9F70 80192EE8 00000000 */   nop
    /* 9F74 80192EEC FBFF5010 */  beq        $v0, $s0, .L80192EDC
    /* 9F78 80192EF0 FF006432 */   andi      $a0, $s3, 0xFF
    /* 9F7C 80192EF4 01000224 */  addiu      $v0, $zero, 0x1
    /* 9F80 80192EF8 23008214 */  bne        $a0, $v0, .L80192F88
    /* 9F84 80192EFC 21280000 */   addu      $a1, $zero, $zero
    /* 9F88 80192F00 21200000 */  addu       $a0, $zero, $zero
    /* 9F8C 80192F04 1D80033C */  lui        $v1, %hi(D_801D1AF8)
    /* 9F90 80192F08 F81A638C */  lw         $v1, %lo(D_801D1AF8)($v1)
    /* 9F94 80192F0C 00000000 */  nop
    /* 9F98 80192F10 21106400 */  addu       $v0, $v1, $a0
  .L80192F14:
    /* 9F9C 80192F14 00014290 */  lbu        $v0, 0x100($v0)
    /* 9FA0 80192F18 01008424 */  addiu      $a0, $a0, 0x1
    /* 9FA4 80192F1C 2128A200 */  addu       $a1, $a1, $v0
    /* 9FA8 80192F20 1F058228 */  slti       $v0, $a0, 0x51F
    /* 9FAC 80192F24 FBFF4014 */  bnez       $v0, .L80192F14
    /* 9FB0 80192F28 21106400 */   addu      $v0, $v1, $a0
    /* 9FB4 80192F2C 1D80063C */  lui        $a2, %hi(D_801D1AF8)
    /* 9FB8 80192F30 F81AC68C */  lw         $a2, %lo(D_801D1AF8)($a2)
    /* 9FBC 80192F34 00000000 */  nop
    /* 9FC0 80192F38 1F06C390 */  lbu        $v1, 0x61F($a2)
    /* 9FC4 80192F3C FF00A230 */  andi       $v0, $a1, 0xFF
    /* 9FC8 80192F40 61004314 */  bne        $v0, $v1, .L801930C8
    /* 9FCC 80192F44 FCFF0224 */   addiu     $v0, $zero, -0x4
    /* 9FD0 80192F48 21280000 */  addu       $a1, $zero, $zero
    /* 9FD4 80192F4C 80050424 */  addiu      $a0, $zero, 0x580
    /* 9FD8 80192F50 2118C000 */  addu       $v1, $a2, $zero
    /* 9FDC 80192F54 21106400 */  addu       $v0, $v1, $a0
  .L80192F58:
    /* 9FE0 80192F58 00014290 */  lbu        $v0, 0x100($v0)
    /* 9FE4 80192F5C 01008424 */  addiu      $a0, $a0, 0x1
    /* 9FE8 80192F60 2128A200 */  addu       $a1, $a1, $v0
    /* 9FEC 80192F64 B0218228 */  slti       $v0, $a0, 0x21B0
    /* 9FF0 80192F68 FBFF4014 */  bnez       $v0, .L80192F58
    /* 9FF4 80192F6C 21106400 */   addu      $v0, $v1, $a0
    /* 9FF8 80192F70 1D80033C */  lui        $v1, %hi(D_801D1AF8)
    /* 9FFC 80192F74 F81A638C */  lw         $v1, %lo(D_801D1AF8)($v1)
    /* A000 80192F78 00000000 */  nop
    /* A004 80192F7C B0226490 */  lbu        $a0, 0x22B0($v1)
    /* A008 80192F80 FE4B0608 */  j          .L80192FF8
    /* A00C 80192F84 01000224 */   addiu     $v0, $zero, 0x1
  .L80192F88:
    /* A010 80192F88 20008014 */  bnez       $a0, .L8019300C
    /* A014 80192F8C 00000000 */   nop
    /* A018 80192F90 09004016 */  bnez       $s2, .L80192FB8
    /* A01C 80192F94 21200000 */   addu      $a0, $zero, $zero
    /* A020 80192F98 2128A002 */  addu       $a1, $s5, $zero
    /* A024 80192F9C 1D80043C */  lui        $a0, %hi(D_801D1AF8)
    /* A028 80192FA0 F81A848C */  lw         $a0, %lo(D_801D1AF8)($a0)
    /* A02C 80192FA4 2130C002 */  addu       $a2, $s6, $zero
    /* A030 80192FA8 92B5020C */  jal        func_800AD648
    /* A034 80192FAC 00018424 */   addiu     $a0, $a0, 0x100
    /* A038 80192FB0 324C0608 */  j          .L801930C8
    /* A03C 80192FB4 01000224 */   addiu     $v0, $zero, 0x1
  .L80192FB8:
    /* A040 80192FB8 21280000 */  addu       $a1, $zero, $zero
    /* A044 80192FBC 1D80033C */  lui        $v1, %hi(D_801D1AF8)
    /* A048 80192FC0 F81A638C */  lw         $v1, %lo(D_801D1AF8)($v1)
    /* A04C 80192FC4 00000000 */  nop
    /* A050 80192FC8 21106400 */  addu       $v0, $v1, $a0
  .L80192FCC:
    /* A054 80192FCC 00014290 */  lbu        $v0, 0x100($v0)
    /* A058 80192FD0 01008424 */  addiu      $a0, $a0, 0x1
    /* A05C 80192FD4 2128A200 */  addu       $a1, $a1, $v0
    /* A060 80192FD8 901C8228 */  slti       $v0, $a0, 0x1C90
    /* A064 80192FDC FBFF4014 */  bnez       $v0, .L80192FCC
    /* A068 80192FE0 21106400 */   addu      $v0, $v1, $a0
    /* A06C 80192FE4 1D80033C */  lui        $v1, %hi(D_801D1AF8)
    /* A070 80192FE8 F81A638C */  lw         $v1, %lo(D_801D1AF8)($v1)
    /* A074 80192FEC 01000224 */  addiu      $v0, $zero, 0x1
    /* A078 80192FF0 21186400 */  addu       $v1, $v1, $a0
    /* A07C 80192FF4 00016490 */  lbu        $a0, 0x100($v1)
  .L80192FF8:
    /* A080 80192FF8 FF00A330 */  andi       $v1, $a1, 0xFF
    /* A084 80192FFC 32006410 */  beq        $v1, $a0, .L801930C8
    /* A088 80193000 00000000 */   nop
    /* A08C 80193004 324C0608 */  j          .L801930C8
    /* A090 80193008 FCFF0224 */   addiu     $v0, $zero, -0x4
  .L8019300C:
    /* A094 8019300C 21200000 */  addu       $a0, $zero, $zero
    /* A098 80193010 1D80033C */  lui        $v1, %hi(D_801D1AF8)
    /* A09C 80193014 F81A638C */  lw         $v1, %lo(D_801D1AF8)($v1)
  .L80193018:
    /* A0A0 80193018 00000000 */  nop
    /* A0A4 8019301C 21106400 */  addu       $v0, $v1, $a0
    /* A0A8 80193020 80014290 */  lbu        $v0, 0x180($v0)
    /* A0AC 80193024 01008424 */  addiu      $a0, $a0, 0x1
    /* A0B0 80193028 2128A200 */  addu       $a1, $a1, $v0
    /* A0B4 8019302C 801E8228 */  slti       $v0, $a0, 0x1E80
    /* A0B8 80193030 F9FF4014 */  bnez       $v0, .L80193018
    /* A0BC 80193034 00000000 */   nop
    /* A0C0 80193038 1D80033C */  lui        $v1, %hi(D_801D1AF8)
    /* A0C4 8019303C F81A638C */  lw         $v1, %lo(D_801D1AF8)($v1)
    /* A0C8 80193040 00000000 */  nop
    /* A0CC 80193044 00016490 */  lbu        $a0, 0x100($v1)
    /* A0D0 80193048 FF00A330 */  andi       $v1, $a1, 0xFF
    /* A0D4 8019304C 1E006410 */  beq        $v1, $a0, .L801930C8
    /* A0D8 80193050 01000224 */   addiu     $v0, $zero, 0x1
  jlabel .L80193054
    /* A0DC 80193054 324C0608 */  j          .L801930C8
    /* A0E0 80193058 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L8019305C:
    /* A0E4 8019305C 1D80043C */  lui        $a0, %hi(D_801D7D48)
    /* A0E8 80193060 487D848C */  lw         $a0, %lo(D_801D7D48)($a0)
    /* A0EC 80193064 AEB3020C */  jal        func_800ACEB8
    /* A0F0 80193068 00000000 */   nop
    /* A0F4 8019306C 1080043C */  lui        $a0, %hi(D_800FB568)
    /* A0F8 80193070 68B5848C */  lw         $a0, %lo(D_800FB568)($a0)
    /* A0FC 80193074 92B3020C */  jal        func_800ACE48
    /* A100 80193078 00000000 */   nop
    /* A104 8019307C 1080043C */  lui        $a0, %hi(D_800FB56C)
    /* A108 80193080 6CB5848C */  lw         $a0, %lo(D_800FB56C)($a0)
    /* A10C 80193084 92B3020C */  jal        func_800ACE48
    /* A110 80193088 00000000 */   nop
    /* A114 8019308C 1080043C */  lui        $a0, %hi(D_800FB570)
    /* A118 80193090 70B5848C */  lw         $a0, %lo(D_800FB570)($a0)
    /* A11C 80193094 92B3020C */  jal        func_800ACE48
    /* A120 80193098 00000000 */   nop
    /* A124 8019309C 1080043C */  lui        $a0, %hi(D_800FB574)
    /* A128 801930A0 74B5848C */  lw         $a0, %lo(D_800FB574)($a0)
    /* A12C 801930A4 92B3020C */  jal        func_800ACE48
    /* A130 801930A8 00000000 */   nop
  .L801930AC:
    /* A134 801930AC 4E16030C */  jal        func_800C5938
    /* A138 801930B0 00211000 */   sll       $a0, $s0, 4
    /* A13C 801930B4 FDFF4010 */  beqz       $v0, .L801930AC
    /* A140 801930B8 00000000 */   nop
  .L801930BC:
    /* A144 801930BC 1E80013C */  lui        $at, %hi(D_801D8A78)
    /* A148 801930C0 788A20AC */  sw         $zero, %lo(D_801D8A78)($at)
  jlabel .L801930C4
    /* A14C 801930C4 21100000 */  addu       $v0, $zero, $zero
  .L801930C8:
    /* A150 801930C8 5400BF8F */  lw         $ra, 0x54($sp)
    /* A154 801930CC 5000B68F */  lw         $s6, 0x50($sp)
    /* A158 801930D0 4C00B58F */  lw         $s5, 0x4C($sp)
    /* A15C 801930D4 4800B48F */  lw         $s4, 0x48($sp)
    /* A160 801930D8 4400B38F */  lw         $s3, 0x44($sp)
    /* A164 801930DC 4000B28F */  lw         $s2, 0x40($sp)
    /* A168 801930E0 3C00B18F */  lw         $s1, 0x3C($sp)
    /* A16C 801930E4 3800B08F */  lw         $s0, 0x38($sp)
    /* A170 801930E8 5800BD27 */  addiu      $sp, $sp, 0x58
    /* A174 801930EC 0800E003 */  jr         $ra
    /* A178 801930F0 00000000 */   nop
endlabel func_80192A30
