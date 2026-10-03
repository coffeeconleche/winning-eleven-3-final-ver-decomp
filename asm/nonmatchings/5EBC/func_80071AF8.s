nonmatching func_80071AF8, 0x29C

glabel func_80071AF8
    /* 622F8 80071AF8 98FFBD27 */  addiu      $sp, $sp, -0x68
    /* 622FC 80071AFC 4800B2AF */  sw         $s2, 0x48($sp)
    /* 62300 80071B00 21908000 */  addu       $s2, $a0, $zero
    /* 62304 80071B04 01000424 */  addiu      $a0, $zero, 0x1
    /* 62308 80071B08 FF00C530 */  andi       $a1, $a2, 0xFF
    /* 6230C 80071B0C 21300000 */  addu       $a2, $zero, $zero
    /* 62310 80071B10 4400B1AF */  sw         $s1, 0x44($sp)
    /* 62314 80071B14 2188E000 */  addu       $s1, $a3, $zero
    /* 62318 80071B18 5C00B7AF */  sw         $s7, 0x5C($sp)
    /* 6231C 80071B1C 7800B793 */  lbu        $s7, 0x78($sp)
    /* 62320 80071B20 21380000 */  addu       $a3, $zero, $zero
    /* 62324 80071B24 5800B6AF */  sw         $s6, 0x58($sp)
    /* 62328 80071B28 08001624 */  addiu      $s6, $zero, 0x8
    /* 6232C 80071B2C 6000BEAF */  sw         $fp, 0x60($sp)
    /* 62330 80071B30 00101E24 */  addiu      $fp, $zero, 0x1000
    /* 62334 80071B34 4000B0AF */  sw         $s0, 0x40($sp)
    /* 62338 80071B38 80001024 */  addiu      $s0, $zero, 0x80
    /* 6233C 80071B3C 5400B5AF */  sw         $s5, 0x54($sp)
    /* 62340 80071B40 01001524 */  addiu      $s5, $zero, 0x1
    /* 62344 80071B44 6400BFAF */  sw         $ra, 0x64($sp)
    /* 62348 80071B48 5000B4AF */  sw         $s4, 0x50($sp)
    /* 6234C 80071B4C 4C00B3AF */  sw         $s3, 0x4C($sp)
    /* 62350 80071B50 0E80013C */  lui        $at, %hi(D_800E6D52)
    /* 62354 80071B54 526D20A0 */  sb         $zero, %lo(D_800E6D52)($at)
    /* 62358 80071B58 1000A0AF */  sw         $zero, 0x10($sp)
    /* 6235C 80071B5C 1400B6AF */  sw         $s6, 0x14($sp)
    /* 62360 80071B60 1800A0AF */  sw         $zero, 0x18($sp)
    /* 62364 80071B64 1C00BEAF */  sw         $fp, 0x1C($sp)
    /* 62368 80071B68 2000A0AF */  sw         $zero, 0x20($sp)
    /* 6236C 80071B6C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 62370 80071B70 2800A0AF */  sw         $zero, 0x28($sp)
    /* 62374 80071B74 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 62378 80071B78 3000B0AF */  sw         $s0, 0x30($sp)
    /* 6237C 80071B7C 3400B0AF */  sw         $s0, 0x34($sp)
    /* 62380 80071B80 3800A0AF */  sw         $zero, 0x38($sp)
    /* 62384 80071B84 6B73000C */  jal        func_8001CDAC
    /* 62388 80071B88 3C00B5AF */   sw        $s5, 0x3C($sp)
    /* 6238C 80071B8C 02000424 */  addiu      $a0, $zero, 0x2
    /* 62390 80071B90 FF002532 */  andi       $a1, $s1, 0xFF
    /* 62394 80071B94 21300000 */  addu       $a2, $zero, $zero
    /* 62398 80071B98 21380000 */  addu       $a3, $zero, $zero
    /* 6239C 80071B9C 1000A0AF */  sw         $zero, 0x10($sp)
    /* 623A0 80071BA0 1400B6AF */  sw         $s6, 0x14($sp)
    /* 623A4 80071BA4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 623A8 80071BA8 1C00BEAF */  sw         $fp, 0x1C($sp)
    /* 623AC 80071BAC 2000A0AF */  sw         $zero, 0x20($sp)
    /* 623B0 80071BB0 2400A0AF */  sw         $zero, 0x24($sp)
    /* 623B4 80071BB4 2800A0AF */  sw         $zero, 0x28($sp)
    /* 623B8 80071BB8 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 623BC 80071BBC 3000B0AF */  sw         $s0, 0x30($sp)
    /* 623C0 80071BC0 3400B0AF */  sw         $s0, 0x34($sp)
    /* 623C4 80071BC4 3800A0AF */  sw         $zero, 0x38($sp)
    /* 623C8 80071BC8 6B73000C */  jal        func_8001CDAC
    /* 623CC 80071BCC 3C00B5AF */   sw        $s5, 0x3C($sp)
    /* 623D0 80071BD0 03000424 */  addiu      $a0, $zero, 0x3
    /* 623D4 80071BD4 69000524 */  addiu      $a1, $zero, 0x69
    /* 623D8 80071BD8 0040063C */  lui        $a2, (0x40000000 >> 16)
    /* 623DC 80071BDC 21380000 */  addu       $a3, $zero, $zero
    /* 623E0 80071BE0 FF005232 */  andi       $s2, $s2, 0xFF
    /* 623E4 80071BE4 008B1200 */  sll        $s1, $s2, 12
    /* 623E8 80071BE8 1400B6AF */  sw         $s6, 0x14($sp)
    /* 623EC 80071BEC 1800A0AF */  sw         $zero, 0x18($sp)
    /* 623F0 80071BF0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 623F4 80071BF4 2000A0AF */  sw         $zero, 0x20($sp)
    /* 623F8 80071BF8 2400A0AF */  sw         $zero, 0x24($sp)
    /* 623FC 80071BFC 2800A0AF */  sw         $zero, 0x28($sp)
    /* 62400 80071C00 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 62404 80071C04 3000B0AF */  sw         $s0, 0x30($sp)
    /* 62408 80071C08 3400B0AF */  sw         $s0, 0x34($sp)
    /* 6240C 80071C0C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 62410 80071C10 3C00B5AF */  sw         $s5, 0x3C($sp)
    /* 62414 80071C14 FF00F732 */  andi       $s7, $s7, 0xFF
    /* 62418 80071C18 6B73000C */  jal        func_8001CDAC
    /* 6241C 80071C1C 1000B7AF */   sw        $s7, 0x10($sp)
    /* 62420 80071C20 04000424 */  addiu      $a0, $zero, 0x4
    /* 62424 80071C24 66000524 */  addiu      $a1, $zero, 0x66
    /* 62428 80071C28 0040063C */  lui        $a2, (0x40000000 >> 16)
    /* 6242C 80071C2C 21380000 */  addu       $a3, $zero, $zero
    /* 62430 80071C30 1000B7AF */  sw         $s7, 0x10($sp)
    /* 62434 80071C34 1400B6AF */  sw         $s6, 0x14($sp)
    /* 62438 80071C38 1800A0AF */  sw         $zero, 0x18($sp)
    /* 6243C 80071C3C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 62440 80071C40 2000A0AF */  sw         $zero, 0x20($sp)
    /* 62444 80071C44 2400A0AF */  sw         $zero, 0x24($sp)
    /* 62448 80071C48 2800A0AF */  sw         $zero, 0x28($sp)
    /* 6244C 80071C4C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 62450 80071C50 3000B0AF */  sw         $s0, 0x30($sp)
    /* 62454 80071C54 3400B0AF */  sw         $s0, 0x34($sp)
    /* 62458 80071C58 3800A0AF */  sw         $zero, 0x38($sp)
    /* 6245C 80071C5C 6B73000C */  jal        func_8001CDAC
    /* 62460 80071C60 3C00B5AF */   sw        $s5, 0x3C($sp)
    /* 62464 80071C64 0174000C */  jal        func_8001D004
    /* 62468 80071C68 66000424 */   addiu     $a0, $zero, 0x66
    /* 6246C 80071C6C 21184000 */  addu       $v1, $v0, $zero
    /* 62470 80071C70 05000424 */  addiu      $a0, $zero, 0x5
    /* 62474 80071C74 67000524 */  addiu      $a1, $zero, 0x67
    /* 62478 80071C78 0040063C */  lui        $a2, (0x40000000 >> 16)
    /* 6247C 80071C7C 21380000 */  addu       $a3, $zero, $zero
    /* 62480 80071C80 F0FF1324 */  addiu      $s3, $zero, -0x10
    /* 62484 80071C84 08001424 */  addiu      $s4, $zero, 0x8
    /* 62488 80071C88 080073A4 */  sh         $s3, 0x8($v1)
    /* 6248C 80071C8C 140074A4 */  sh         $s4, 0x14($v1)
    /* 62490 80071C90 1000B7AF */  sw         $s7, 0x10($sp)
    /* 62494 80071C94 1400B6AF */  sw         $s6, 0x14($sp)
    /* 62498 80071C98 1800A0AF */  sw         $zero, 0x18($sp)
    /* 6249C 80071C9C 1C00BEAF */  sw         $fp, 0x1C($sp)
    /* 624A0 80071CA0 2000A0AF */  sw         $zero, 0x20($sp)
    /* 624A4 80071CA4 2400A0AF */  sw         $zero, 0x24($sp)
    /* 624A8 80071CA8 2800A0AF */  sw         $zero, 0x28($sp)
    /* 624AC 80071CAC 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 624B0 80071CB0 3000B0AF */  sw         $s0, 0x30($sp)
    /* 624B4 80071CB4 3400B0AF */  sw         $s0, 0x34($sp)
    /* 624B8 80071CB8 3800A0AF */  sw         $zero, 0x38($sp)
    /* 624BC 80071CBC 6B73000C */  jal        func_8001CDAC
    /* 624C0 80071CC0 3C00B5AF */   sw        $s5, 0x3C($sp)
    /* 624C4 80071CC4 0174000C */  jal        func_8001D004
    /* 624C8 80071CC8 67000424 */   addiu     $a0, $zero, 0x67
    /* 624CC 80071CCC 21184000 */  addu       $v1, $v0, $zero
    /* 624D0 80071CD0 06000424 */  addiu      $a0, $zero, 0x6
    /* 624D4 80071CD4 68000524 */  addiu      $a1, $zero, 0x68
    /* 624D8 80071CD8 0040063C */  lui        $a2, (0x40000000 >> 16)
    /* 624DC 80071CDC 21380000 */  addu       $a3, $zero, $zero
    /* 624E0 80071CE0 00911200 */  sll        $s2, $s2, 4
    /* 624E4 80071CE4 F8FF1124 */  addiu      $s1, $zero, -0x8
    /* 624E8 80071CE8 23883202 */  subu       $s1, $s1, $s2
    /* 624EC 80071CEC F8FF0224 */  addiu      $v0, $zero, -0x8
    /* 624F0 80071CF0 060071A4 */  sh         $s1, 0x6($v1)
    /* 624F4 80071CF4 120072A4 */  sh         $s2, 0x12($v1)
    /* 624F8 80071CF8 080062A4 */  sh         $v0, 0x8($v1)
    /* 624FC 80071CFC 140062A4 */  sh         $v0, 0x14($v1)
    /* 62500 80071D00 1000B7AF */  sw         $s7, 0x10($sp)
    /* 62504 80071D04 1400B6AF */  sw         $s6, 0x14($sp)
    /* 62508 80071D08 1800A0AF */  sw         $zero, 0x18($sp)
    /* 6250C 80071D0C 1C00BEAF */  sw         $fp, 0x1C($sp)
    /* 62510 80071D10 2000A0AF */  sw         $zero, 0x20($sp)
    /* 62514 80071D14 2400A0AF */  sw         $zero, 0x24($sp)
    /* 62518 80071D18 2800A0AF */  sw         $zero, 0x28($sp)
    /* 6251C 80071D1C 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 62520 80071D20 3000B0AF */  sw         $s0, 0x30($sp)
    /* 62524 80071D24 3400B0AF */  sw         $s0, 0x34($sp)
    /* 62528 80071D28 3800A0AF */  sw         $zero, 0x38($sp)
    /* 6252C 80071D2C 6B73000C */  jal        func_8001CDAC
    /* 62530 80071D30 3C00B5AF */   sw        $s5, 0x3C($sp)
    /* 62534 80071D34 0174000C */  jal        func_8001D004
    /* 62538 80071D38 68000424 */   addiu     $a0, $zero, 0x68
    /* 6253C 80071D3C 21184000 */  addu       $v1, $v0, $zero
    /* 62540 80071D40 060071A4 */  sh         $s1, 0x6($v1)
    /* 62544 80071D44 1E0071A4 */  sh         $s1, 0x1E($v1)
    /* 62548 80071D48 120072A4 */  sh         $s2, 0x12($v1)
    /* 6254C 80071D4C 2A0072A4 */  sh         $s2, 0x2A($v1)
    /* 62550 80071D50 080073A4 */  sh         $s3, 0x8($v1)
    /* 62554 80071D54 140073A4 */  sh         $s3, 0x14($v1)
    /* 62558 80071D58 200074A4 */  sh         $s4, 0x20($v1)
    /* 6255C 80071D5C 2C0074A4 */  sh         $s4, 0x2C($v1)
    /* 62560 80071D60 6400BF8F */  lw         $ra, 0x64($sp)
    /* 62564 80071D64 6000BE8F */  lw         $fp, 0x60($sp)
    /* 62568 80071D68 5C00B78F */  lw         $s7, 0x5C($sp)
    /* 6256C 80071D6C 5800B68F */  lw         $s6, 0x58($sp)
    /* 62570 80071D70 5400B58F */  lw         $s5, 0x54($sp)
    /* 62574 80071D74 5000B48F */  lw         $s4, 0x50($sp)
    /* 62578 80071D78 4C00B38F */  lw         $s3, 0x4C($sp)
    /* 6257C 80071D7C 4800B28F */  lw         $s2, 0x48($sp)
    /* 62580 80071D80 4400B18F */  lw         $s1, 0x44($sp)
    /* 62584 80071D84 4000B08F */  lw         $s0, 0x40($sp)
    /* 62588 80071D88 6800BD27 */  addiu      $sp, $sp, 0x68
    /* 6258C 80071D8C 0800E003 */  jr         $ra
    /* 62590 80071D90 00000000 */   nop
endlabel func_80071AF8
