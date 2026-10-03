nonmatching func_801C18AC, 0x140

glabel func_801C18AC
    /* 38934 801C18AC 1180023C */  lui        $v0, %hi(D_8010866B)
    /* 38938 801C18B0 6B864290 */  lbu        $v0, %lo(D_8010866B)($v0)
    /* 3893C 801C18B4 00000000 */  nop
    /* 38940 801C18B8 02210200 */  srl        $a0, $v0, 4
    /* 38944 801C18BC CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 38948 801C18C0 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 3894C 801C18C4 19008200 */  multu      $a0, $v0
    /* 38950 801C18C8 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 38954 801C18CC 1D80053C */  lui        $a1, %hi(D_801D4292)
    /* 38958 801C18D0 9242A524 */  addiu      $a1, $a1, %lo(D_801D4292)
    /* 3895C 801C18D4 10400000 */  mfhi       $t0
    /* 38960 801C18D8 C2180800 */  srl        $v1, $t0, 3
    /* 38964 801C18DC FF006230 */  andi       $v0, $v1, 0xFF
    /* 38968 801C18E0 03004010 */  beqz       $v0, .L801C18F0
    /* 3896C 801C18E4 4800BFAF */   sw        $ra, 0x48($sp)
    /* 38970 801C18E8 3D060708 */  j          .L801C18F4
    /* 38974 801C18EC 30006224 */   addiu     $v0, $v1, 0x30
  .L801C18F0:
    /* 38978 801C18F0 20000224 */  addiu      $v0, $zero, 0x20
  .L801C18F4:
    /* 3897C 801C18F4 0000A2A0 */  sb         $v0, 0x0($a1)
    /* 38980 801C18F8 FF008430 */  andi       $a0, $a0, 0xFF
    /* 38984 801C18FC CCCC023C */  lui        $v0, (0xCCCCCCCD >> 16)
    /* 38988 801C1900 CDCC4234 */  ori        $v0, $v0, (0xCCCCCCCD & 0xFFFF)
    /* 3898C 801C1904 19008200 */  multu      $a0, $v0
    /* 38990 801C1908 1D80053C */  lui        $a1, %hi(D_801D4292 + 0x1)
    /* 38994 801C190C 9342A524 */  addiu      $a1, $a1, %lo(D_801D4292 + 0x1)
    /* 38998 801C1910 10400000 */  mfhi       $t0
    /* 3899C 801C1914 C2180800 */  srl        $v1, $t0, 3
    /* 389A0 801C1918 80100300 */  sll        $v0, $v1, 2
    /* 389A4 801C191C 21104300 */  addu       $v0, $v0, $v1
    /* 389A8 801C1920 40100200 */  sll        $v0, $v0, 1
    /* 389AC 801C1924 23208200 */  subu       $a0, $a0, $v0
    /* 389B0 801C1928 801F023C */  lui        $v0, (0x1F80029B >> 16)
    /* 389B4 801C192C 9B024290 */  lbu        $v0, (0x1F80029B & 0xFFFF)($v0)
    /* 389B8 801C1930 30008424 */  addiu      $a0, $a0, 0x30
    /* 389BC 801C1934 12004010 */  beqz       $v0, .L801C1980
    /* 389C0 801C1938 0000A4A0 */   sb        $a0, 0x0($a1)
    /* 389C4 801C193C 03000424 */  addiu      $a0, $zero, 0x3
    /* 389C8 801C1940 F9FFA524 */  addiu      $a1, $a1, -0x7
    /* 389CC 801C1944 72FF0624 */  addiu      $a2, $zero, -0x8E
    /* 389D0 801C1948 D1FF0724 */  addiu      $a3, $zero, -0x2F
    /* 389D4 801C194C 68000224 */  addiu      $v0, $zero, 0x68
    /* 389D8 801C1950 1000A2AF */  sw         $v0, 0x10($sp)
    /* 389DC 801C1954 03000224 */  addiu      $v0, $zero, 0x3
    /* 389E0 801C1958 01000324 */  addiu      $v1, $zero, 0x1
    /* 389E4 801C195C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 389E8 801C1960 02000224 */  addiu      $v0, $zero, 0x2
    /* 389EC 801C1964 1800A3AF */  sw         $v1, 0x18($sp)
    /* 389F0 801C1968 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 389F4 801C196C 2000A0AF */  sw         $zero, 0x20($sp)
    /* 389F8 801C1970 2400A2AF */  sw         $v0, 0x24($sp)
    /* 389FC 801C1974 2800A3AF */  sw         $v1, 0x28($sp)
    /* 38A00 801C1978 B850060C */  jal        func_801942E0
    /* 38A04 801C197C 2C00A3AF */   sw        $v1, 0x2C($sp)
  .L801C1980:
    /* 38A08 801C1980 03000424 */  addiu      $a0, $zero, 0x3
    /* 38A0C 801C1984 25310524 */  addiu      $a1, $zero, 0x3125
    /* 38A10 801C1988 21300000 */  addu       $a2, $zero, $zero
    /* 38A14 801C198C 21380000 */  addu       $a3, $zero, $zero
    /* 38A18 801C1990 0C000224 */  addiu      $v0, $zero, 0xC
    /* 38A1C 801C1994 1400A2AF */  sw         $v0, 0x14($sp)
    /* 38A20 801C1998 00100224 */  addiu      $v0, $zero, 0x1000
    /* 38A24 801C199C 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 38A28 801C19A0 2000A2AF */  sw         $v0, 0x20($sp)
    /* 38A2C 801C19A4 80000224 */  addiu      $v0, $zero, 0x80
    /* 38A30 801C19A8 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 38A34 801C19AC 3000A2AF */  sw         $v0, 0x30($sp)
    /* 38A38 801C19B0 3400A2AF */  sw         $v0, 0x34($sp)
    /* 38A3C 801C19B4 02000224 */  addiu      $v0, $zero, 0x2
    /* 38A40 801C19B8 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 38A44 801C19BC 01000224 */  addiu      $v0, $zero, 0x1
    /* 38A48 801C19C0 1000A0AF */  sw         $zero, 0x10($sp)
    /* 38A4C 801C19C4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 38A50 801C19C8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 38A54 801C19CC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 38A58 801C19D0 3800A0AF */  sw         $zero, 0x38($sp)
    /* 38A5C 801C19D4 ED4F060C */  jal        func_80193FB4
    /* 38A60 801C19D8 4000A2AF */   sw        $v0, 0x40($sp)
    /* 38A64 801C19DC 4800BF8F */  lw         $ra, 0x48($sp)
    /* 38A68 801C19E0 5000BD27 */  addiu      $sp, $sp, 0x50
    /* 38A6C 801C19E4 0800E003 */  jr         $ra
    /* 38A70 801C19E8 00000000 */   nop
endlabel func_801C18AC
