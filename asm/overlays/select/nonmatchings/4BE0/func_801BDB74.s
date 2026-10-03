nonmatching func_801BDB74, 0x2E8

glabel func_801BDB74
    /* 34BFC 801BDB74 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 34C00 801BDB78 4C00B5AF */  sw         $s5, 0x4C($sp)
    /* 34C04 801BDB7C 02001524 */  addiu      $s5, $zero, 0x2
    /* 34C08 801BDB80 5400B7AF */  sw         $s7, 0x54($sp)
    /* 34C0C 801BDB84 01001724 */  addiu      $s7, $zero, 0x1
    /* 34C10 801BDB88 4800B4AF */  sw         $s4, 0x48($sp)
    /* 34C14 801BDB8C 21A00000 */  addu       $s4, $zero, $zero
    /* 34C18 801BDB90 4400B3AF */  sw         $s3, 0x44($sp)
    /* 34C1C 801BDB94 21980000 */  addu       $s3, $zero, $zero
    /* 34C20 801BDB98 5000B6AF */  sw         $s6, 0x50($sp)
    /* 34C24 801BDB9C 20011624 */  addiu      $s6, $zero, 0x120
    /* 34C28 801BDBA0 5800BEAF */  sw         $fp, 0x58($sp)
    /* 34C2C 801BDBA4 0C001E24 */  addiu      $fp, $zero, 0xC
    /* 34C30 801BDBA8 5C00BFAF */  sw         $ra, 0x5C($sp)
    /* 34C34 801BDBAC 4000B2AF */  sw         $s2, 0x40($sp)
    /* 34C38 801BDBB0 3C00B1AF */  sw         $s1, 0x3C($sp)
    /* 34C3C 801BDBB4 3800B0AF */  sw         $s0, 0x38($sp)
    /* 34C40 801BDBB8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 34C44 801BDBBC 3000A0AF */  sw         $zero, 0x30($sp)
  .L801BDBC0:
    /* 34C48 801BDBC0 1E80013C */  lui        $at, %hi(D_801D8A4C)
    /* 34C4C 801BDBC4 21083E00 */  addu       $at, $at, $fp
    /* 34C50 801BDBC8 4C8A2290 */  lbu        $v0, %lo(D_801D8A4C)($at)
    /* 34C54 801BDBCC 00000000 */  nop
    /* 34C58 801BDBD0 0F004230 */  andi       $v0, $v0, 0xF
    /* 34C5C 801BDBD4 87004014 */  bnez       $v0, .L801BDDF4
    /* 34C60 801BDBD8 00000000 */   nop
    /* 34C64 801BDBDC 1E80023C */  lui        $v0, %hi(D_801DA2F0)
    /* 34C68 801BDBE0 F0A24290 */  lbu        $v0, %lo(D_801DA2F0)($v0)
    /* 34C6C 801BDBE4 00000000 */  nop
    /* 34C70 801BDBE8 21004010 */  beqz       $v0, .L801BDC70
    /* 34C74 801BDBEC D7FF0424 */   addiu     $a0, $zero, -0x29
    /* 34C78 801BDBF0 1E80013C */  lui        $at, %hi(D_801D9290)
    /* 34C7C 801BDBF4 21083400 */  addu       $at, $at, $s4
    /* 34C80 801BDBF8 90922390 */  lbu        $v1, %lo(D_801D9290)($at)
    /* 34C84 801BDBFC 1180023C */  lui        $v0, %hi(D_80108669)
    /* 34C88 801BDC00 69864290 */  lbu        $v0, %lo(D_80108669)($v0)
    /* 34C8C 801BDC04 00000000 */  nop
    /* 34C90 801BDC08 09006214 */  bne        $v1, $v0, .L801BDC30
    /* 34C94 801BDC0C 00000000 */   nop
    /* 34C98 801BDC10 1E80023C */  lui        $v0, %hi(D_801DA332)
    /* 34C9C 801BDC14 32A34290 */  lbu        $v0, %lo(D_801DA332)($v0)
    /* 34CA0 801BDC18 00000000 */  nop
    /* 34CA4 801BDC1C 42110200 */  srl        $v0, $v0, 5
    /* 34CA8 801BDC20 01004230 */  andi       $v0, $v0, 0x1
    /* 34CAC 801BDC24 1E80013C */  lui        $at, %hi(D_801D8EE0)
    /* 34CB0 801BDC28 21083600 */  addu       $at, $at, $s6
    /* 34CB4 801BDC2C E08E22A0 */  sb         $v0, %lo(D_801D8EE0)($at)
  .L801BDC30:
    /* 34CB8 801BDC30 1E80013C */  lui        $at, %hi(D_801D9291)
    /* 34CBC 801BDC34 21083400 */  addu       $at, $at, $s4
    /* 34CC0 801BDC38 91922390 */  lbu        $v1, %lo(D_801D9291)($at)
    /* 34CC4 801BDC3C 1180023C */  lui        $v0, %hi(D_80108669)
    /* 34CC8 801BDC40 69864290 */  lbu        $v0, %lo(D_80108669)($v0)
    /* 34CCC 801BDC44 00000000 */  nop
    /* 34CD0 801BDC48 09006214 */  bne        $v1, $v0, .L801BDC70
    /* 34CD4 801BDC4C D7FF0424 */   addiu     $a0, $zero, -0x29
    /* 34CD8 801BDC50 1E80023C */  lui        $v0, %hi(D_801DA332)
    /* 34CDC 801BDC54 32A34290 */  lbu        $v0, %lo(D_801DA332)($v0)
    /* 34CE0 801BDC58 00000000 */  nop
    /* 34CE4 801BDC5C 42110200 */  srl        $v0, $v0, 5
    /* 34CE8 801BDC60 01004230 */  andi       $v0, $v0, 0x1
    /* 34CEC 801BDC64 1E80013C */  lui        $at, %hi(D_801D8FA0)
    /* 34CF0 801BDC68 21083600 */  addu       $at, $at, $s6
    /* 34CF4 801BDC6C A08F22A0 */  sb         $v0, %lo(D_801D8FA0)($at)
  .L801BDC70:
    /* 34CF8 801BDC70 3000A88F */  lw         $t0, 0x30($sp)
    /* 34CFC 801BDC74 1E80013C */  lui        $at, %hi(D_801DA310)
    /* 34D00 801BDC78 21083300 */  addu       $at, $at, $s3
    /* 34D04 801BDC7C 10A32790 */  lbu        $a3, %lo(D_801DA310)($at)
    /* 34D08 801BDC80 10000624 */  addiu      $a2, $zero, 0x10
    /* 34D0C 801BDC84 1400B5AF */  sw         $s5, 0x14($sp)
    /* 34D10 801BDC88 1C00B5AF */  sw         $s5, 0x1C($sp)
    /* 34D14 801BDC8C 03940800 */  sra        $s2, $t0, 16
    /* 34D18 801BDC90 CFFF5126 */  addiu      $s1, $s2, -0x31
    /* 34D1C 801BDC94 21282002 */  addu       $a1, $s1, $zero
    /* 34D20 801BDC98 07000824 */  addiu      $t0, $zero, 0x7
    /* 34D24 801BDC9C 1000A8AF */  sw         $t0, 0x10($sp)
    /* 34D28 801BDCA0 04000824 */  addiu      $t0, $zero, 0x4
    /* 34D2C 801BDCA4 7CA2060C */  jal        func_801A89F0
    /* 34D30 801BDCA8 1800A8AF */   sw        $t0, 0x18($sp)
    /* 34D34 801BDCAC 1A000424 */  addiu      $a0, $zero, 0x1A
    /* 34D38 801BDCB0 21282002 */  addu       $a1, $s1, $zero
    /* 34D3C 801BDCB4 10000624 */  addiu      $a2, $zero, 0x10
    /* 34D40 801BDCB8 1E80013C */  lui        $at, %hi(D_801DA312)
    /* 34D44 801BDCBC 21083300 */  addu       $at, $at, $s3
    /* 34D48 801BDCC0 12A32790 */  lbu        $a3, %lo(D_801DA312)($at)
    /* 34D4C 801BDCC4 07000824 */  addiu      $t0, $zero, 0x7
    /* 34D50 801BDCC8 1000A8AF */  sw         $t0, 0x10($sp)
    /* 34D54 801BDCCC 04000824 */  addiu      $t0, $zero, 0x4
    /* 34D58 801BDCD0 1400B7AF */  sw         $s7, 0x14($sp)
    /* 34D5C 801BDCD4 1800A8AF */  sw         $t0, 0x18($sp)
    /* 34D60 801BDCD8 7CA2060C */  jal        func_801A89F0
    /* 34D64 801BDCDC 1C00B5AF */   sw        $s5, 0x1C($sp)
    /* 34D68 801BDCE0 D7FF0424 */  addiu      $a0, $zero, -0x29
    /* 34D6C 801BDCE4 D7FF5026 */  addiu      $s0, $s2, -0x29
    /* 34D70 801BDCE8 21280002 */  addu       $a1, $s0, $zero
    /* 34D74 801BDCEC 10000624 */  addiu      $a2, $zero, 0x10
    /* 34D78 801BDCF0 1E80013C */  lui        $at, %hi(D_801DA311)
    /* 34D7C 801BDCF4 21083300 */  addu       $at, $at, $s3
    /* 34D80 801BDCF8 11A32790 */  lbu        $a3, %lo(D_801DA311)($at)
    /* 34D84 801BDCFC 07000824 */  addiu      $t0, $zero, 0x7
    /* 34D88 801BDD00 1000A8AF */  sw         $t0, 0x10($sp)
    /* 34D8C 801BDD04 04000824 */  addiu      $t0, $zero, 0x4
    /* 34D90 801BDD08 1400B5AF */  sw         $s5, 0x14($sp)
    /* 34D94 801BDD0C 1800A8AF */  sw         $t0, 0x18($sp)
    /* 34D98 801BDD10 7CA2060C */  jal        func_801A89F0
    /* 34D9C 801BDD14 1C00B5AF */   sw        $s5, 0x1C($sp)
    /* 34DA0 801BDD18 1A000424 */  addiu      $a0, $zero, 0x1A
    /* 34DA4 801BDD1C 21280002 */  addu       $a1, $s0, $zero
    /* 34DA8 801BDD20 10000624 */  addiu      $a2, $zero, 0x10
    /* 34DAC 801BDD24 1E80013C */  lui        $at, %hi(D_801DA313)
    /* 34DB0 801BDD28 21083300 */  addu       $at, $at, $s3
    /* 34DB4 801BDD2C 13A32790 */  lbu        $a3, %lo(D_801DA313)($at)
    /* 34DB8 801BDD30 07000824 */  addiu      $t0, $zero, 0x7
    /* 34DBC 801BDD34 1000A8AF */  sw         $t0, 0x10($sp)
    /* 34DC0 801BDD38 04000824 */  addiu      $t0, $zero, 0x4
    /* 34DC4 801BDD3C 1400B7AF */  sw         $s7, 0x14($sp)
    /* 34DC8 801BDD40 1800A8AF */  sw         $t0, 0x18($sp)
    /* 34DCC 801BDD44 7CA2060C */  jal        func_801A89F0
    /* 34DD0 801BDD48 1C00B5AF */   sw        $s5, 0x1C($sp)
    /* 34DD4 801BDD4C E6FF0424 */  addiu      $a0, $zero, -0x1A
    /* 34DD8 801BDD50 21282002 */  addu       $a1, $s1, $zero
    /* 34DDC 801BDD54 10000624 */  addiu      $a2, $zero, 0x10
    /* 34DE0 801BDD58 1E80013C */  lui        $at, %hi(D_801D94D8)
    /* 34DE4 801BDD5C 21083400 */  addu       $at, $at, $s4
    /* 34DE8 801BDD60 D8942790 */  lbu        $a3, %lo(D_801D94D8)($at)
    /* 34DEC 801BDD64 08000824 */  addiu      $t0, $zero, 0x8
    /* 34DF0 801BDD68 1000A8AF */  sw         $t0, 0x10($sp)
    /* 34DF4 801BDD6C 03000824 */  addiu      $t0, $zero, 0x3
    /* 34DF8 801BDD70 1400A8AF */  sw         $t0, 0x14($sp)
    /* 34DFC 801BDD74 1800B7AF */  sw         $s7, 0x18($sp)
    /* 34E00 801BDD78 7CA2060C */  jal        func_801A89F0
    /* 34E04 801BDD7C 1C00B5AF */   sw        $s5, 0x1C($sp)
    /* 34E08 801BDD80 0A000424 */  addiu      $a0, $zero, 0xA
    /* 34E0C 801BDD84 21282002 */  addu       $a1, $s1, $zero
    /* 34E10 801BDD88 10000624 */  addiu      $a2, $zero, 0x10
    /* 34E14 801BDD8C 1E80013C */  lui        $at, %hi(D_801D94D9)
    /* 34E18 801BDD90 21083400 */  addu       $at, $at, $s4
    /* 34E1C 801BDD94 D9942790 */  lbu        $a3, %lo(D_801D94D9)($at)
    /* 34E20 801BDD98 08000824 */  addiu      $t0, $zero, 0x8
    /* 34E24 801BDD9C 1000A8AF */  sw         $t0, 0x10($sp)
    /* 34E28 801BDDA0 03000824 */  addiu      $t0, $zero, 0x3
    /* 34E2C 801BDDA4 1400A8AF */  sw         $t0, 0x14($sp)
    /* 34E30 801BDDA8 1800B7AF */  sw         $s7, 0x18($sp)
    /* 34E34 801BDDAC 7CA2060C */  jal        func_801A89F0
    /* 34E38 801BDDB0 1C00B5AF */   sw        $s5, 0x1C($sp)
    /* 34E3C 801BDDB4 21200000 */  addu       $a0, $zero, $zero
    /* 34E40 801BDDB8 F8FF0524 */  addiu      $a1, $zero, -0x8
    /* 34E44 801BDDBC D2FF4626 */  addiu      $a2, $s2, -0x2E
    /* 34E48 801BDDC0 10000724 */  addiu      $a3, $zero, 0x10
    /* 34E4C 801BDDC4 08000824 */  addiu      $t0, $zero, 0x8
    /* 34E50 801BDDC8 90000224 */  addiu      $v0, $zero, 0x90
    /* 34E54 801BDDCC 1400A2AF */  sw         $v0, 0x14($sp)
    /* 34E58 801BDDD0 68000224 */  addiu      $v0, $zero, 0x68
    /* 34E5C 801BDDD4 1800A2AF */  sw         $v0, 0x18($sp)
    /* 34E60 801BDDD8 1A000224 */  addiu      $v0, $zero, 0x1A
    /* 34E64 801BDDDC 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 34E68 801BDDE0 91000224 */  addiu      $v0, $zero, 0x91
    /* 34E6C 801BDDE4 1000A8AF */  sw         $t0, 0x10($sp)
    /* 34E70 801BDDE8 2000A2AF */  sw         $v0, 0x20($sp)
    /* 34E74 801BDDEC DE58060C */  jal        func_80196378
    /* 34E78 801BDDF0 2400B7AF */   sw        $s7, 0x24($sp)
  .L801BDDF4:
    /* 34E7C 801BDDF4 02009426 */  addiu      $s4, $s4, 0x2
    /* 34E80 801BDDF8 1300023C */  lui        $v0, (0x130000 >> 16)
    /* 34E84 801BDDFC 04007326 */  addiu      $s3, $s3, 0x4
    /* 34E88 801BDE00 3000A88F */  lw         $t0, 0x30($sp)
    /* 34E8C 801BDE04 1800D626 */  addiu      $s6, $s6, 0x18
    /* 34E90 801BDE08 21400201 */  addu       $t0, $t0, $v0
    /* 34E94 801BDE0C 3000A8AF */  sw         $t0, 0x30($sp)
    /* 34E98 801BDE10 2800A88F */  lw         $t0, 0x28($sp)
    /* 34E9C 801BDE14 0100DE27 */  addiu      $fp, $fp, 0x1
    /* 34EA0 801BDE18 01000825 */  addiu      $t0, $t0, 0x1
    /* 34EA4 801BDE1C 08000229 */  slti       $v0, $t0, 0x8
    /* 34EA8 801BDE20 67FF4014 */  bnez       $v0, .L801BDBC0
    /* 34EAC 801BDE24 2800A8AF */   sw        $t0, 0x28($sp)
    /* 34EB0 801BDE28 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 34EB4 801BDE2C 5800BE8F */  lw         $fp, 0x58($sp)
    /* 34EB8 801BDE30 5400B78F */  lw         $s7, 0x54($sp)
    /* 34EBC 801BDE34 5000B68F */  lw         $s6, 0x50($sp)
    /* 34EC0 801BDE38 4C00B58F */  lw         $s5, 0x4C($sp)
    /* 34EC4 801BDE3C 4800B48F */  lw         $s4, 0x48($sp)
    /* 34EC8 801BDE40 4400B38F */  lw         $s3, 0x44($sp)
    /* 34ECC 801BDE44 4000B28F */  lw         $s2, 0x40($sp)
    /* 34ED0 801BDE48 3C00B18F */  lw         $s1, 0x3C($sp)
    /* 34ED4 801BDE4C 3800B08F */  lw         $s0, 0x38($sp)
    /* 34ED8 801BDE50 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 34EDC 801BDE54 0800E003 */  jr         $ra
    /* 34EE0 801BDE58 00000000 */   nop
endlabel func_801BDB74
