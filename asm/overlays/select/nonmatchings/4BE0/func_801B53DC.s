nonmatching func_801B53DC, 0x184

glabel func_801B53DC
    /* 2C464 801B53DC C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 2C468 801B53E0 21200000 */  addu       $a0, $zero, $zero
    /* 2C46C 801B53E4 2800B6AF */  sw         $s6, 0x28($sp)
    /* 2C470 801B53E8 1E80163C */  lui        $s6, %hi(D_801D87E8)
    /* 2C474 801B53EC E887D626 */  addiu      $s6, $s6, %lo(D_801D87E8)
    /* 2C478 801B53F0 2128C002 */  addu       $a1, $s6, $zero
    /* 2C47C 801B53F4 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 2C480 801B53F8 40FF1724 */  addiu      $s7, $zero, -0xC0
    /* 2C484 801B53FC 2400B5AF */  sw         $s5, 0x24($sp)
    /* 2C488 801B5400 88FF1524 */  addiu      $s5, $zero, -0x78
    /* 2C48C 801B5404 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2C490 801B5408 C0001424 */  addiu      $s4, $zero, 0xC0
    /* 2C494 801B540C 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2C498 801B5410 78001324 */  addiu      $s3, $zero, 0x78
    /* 2C49C 801B5414 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2C4A0 801B5418 50001224 */  addiu      $s2, $zero, 0x50
    /* 2C4A4 801B541C 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2C4A8 801B5420 14001124 */  addiu      $s1, $zero, 0x14
    /* 2C4AC 801B5424 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2C4B0 801B5428 FC001024 */  addiu      $s0, $zero, 0xFC
    /* 2C4B4 801B542C 3000BFAF */  sw         $ra, 0x30($sp)
    /* 2C4B8 801B5430 0000D7A6 */  sh         $s7, 0x0($s6)
    /* 2C4BC 801B5434 1E80013C */  lui        $at, %hi(D_801D87EA)
    /* 2C4C0 801B5438 EA8735A4 */  sh         $s5, %lo(D_801D87EA)($at)
    /* 2C4C4 801B543C 1E80013C */  lui        $at, %hi(D_801D87EC)
    /* 2C4C8 801B5440 EC8734A4 */  sh         $s4, %lo(D_801D87EC)($at)
    /* 2C4CC 801B5444 1E80013C */  lui        $at, %hi(D_801D87EE)
    /* 2C4D0 801B5448 EE8735A4 */  sh         $s5, %lo(D_801D87EE)($at)
    /* 2C4D4 801B544C 1E80013C */  lui        $at, %hi(D_801D87F0)
    /* 2C4D8 801B5450 F08734A4 */  sh         $s4, %lo(D_801D87F0)($at)
    /* 2C4DC 801B5454 1E80013C */  lui        $at, %hi(D_801D87F2)
    /* 2C4E0 801B5458 F28733A4 */  sh         $s3, %lo(D_801D87F2)($at)
    /* 2C4E4 801B545C 1E80013C */  lui        $at, %hi(D_801D87F4)
    /* 2C4E8 801B5460 F48732A0 */  sb         $s2, %lo(D_801D87F4)($at)
    /* 2C4EC 801B5464 1E80013C */  lui        $at, %hi(D_801D87F5)
    /* 2C4F0 801B5468 F58731A0 */  sb         $s1, %lo(D_801D87F5)($at)
    /* 2C4F4 801B546C 1E80013C */  lui        $at, %hi(D_801D87F6)
    /* 2C4F8 801B5470 F68730A0 */  sb         $s0, %lo(D_801D87F6)($at)
    /* 2C4FC 801B5474 1E80013C */  lui        $at, %hi(D_801D87F7)
    /* 2C500 801B5478 F78720A0 */  sb         $zero, %lo(D_801D87F7)($at)
    /* 2C504 801B547C 1E80013C */  lui        $at, %hi(D_801D87F8)
    /* 2C508 801B5480 F88720A0 */  sb         $zero, %lo(D_801D87F8)($at)
    /* 2C50C 801B5484 1E80013C */  lui        $at, %hi(D_801D87F9)
    /* 2C510 801B5488 F98720A0 */  sb         $zero, %lo(D_801D87F9)($at)
    /* 2C514 801B548C 1E80013C */  lui        $at, %hi(D_801D87FA)
    /* 2C518 801B5490 FA8732A0 */  sb         $s2, %lo(D_801D87FA)($at)
    /* 2C51C 801B5494 1E80013C */  lui        $at, %hi(D_801D87FB)
    /* 2C520 801B5498 FB8731A0 */  sb         $s1, %lo(D_801D87FB)($at)
    /* 2C524 801B549C 1E80013C */  lui        $at, %hi(D_801D87FC)
    /* 2C528 801B54A0 FC8730A0 */  sb         $s0, %lo(D_801D87FC)($at)
    /* 2C52C 801B54A4 875B060C */  jal        func_80196E1C
    /* 2C530 801B54A8 06000624 */   addiu     $a2, $zero, 0x6
    /* 2C534 801B54AC 21200000 */  addu       $a0, $zero, $zero
    /* 2C538 801B54B0 2128C002 */  addu       $a1, $s6, $zero
    /* 2C53C 801B54B4 0000B7A4 */  sh         $s7, 0x0($a1)
    /* 2C540 801B54B8 1E80013C */  lui        $at, %hi(D_801D87EA)
    /* 2C544 801B54BC EA8735A4 */  sh         $s5, %lo(D_801D87EA)($at)
    /* 2C548 801B54C0 1E80013C */  lui        $at, %hi(D_801D87EC)
    /* 2C54C 801B54C4 EC8734A4 */  sh         $s4, %lo(D_801D87EC)($at)
    /* 2C550 801B54C8 1E80013C */  lui        $at, %hi(D_801D87EE)
    /* 2C554 801B54CC EE8733A4 */  sh         $s3, %lo(D_801D87EE)($at)
    /* 2C558 801B54D0 1E80013C */  lui        $at, %hi(D_801D87F0)
    /* 2C55C 801B54D4 F08737A4 */  sh         $s7, %lo(D_801D87F0)($at)
    /* 2C560 801B54D8 1E80013C */  lui        $at, %hi(D_801D87F2)
    /* 2C564 801B54DC F28733A4 */  sh         $s3, %lo(D_801D87F2)($at)
    /* 2C568 801B54E0 1E80013C */  lui        $at, %hi(D_801D87F4)
    /* 2C56C 801B54E4 F48732A0 */  sb         $s2, %lo(D_801D87F4)($at)
    /* 2C570 801B54E8 1E80013C */  lui        $at, %hi(D_801D87F5)
    /* 2C574 801B54EC F58731A0 */  sb         $s1, %lo(D_801D87F5)($at)
    /* 2C578 801B54F0 1E80013C */  lui        $at, %hi(D_801D87F6)
    /* 2C57C 801B54F4 F68730A0 */  sb         $s0, %lo(D_801D87F6)($at)
    /* 2C580 801B54F8 1E80013C */  lui        $at, %hi(D_801D87F7)
    /* 2C584 801B54FC F78732A0 */  sb         $s2, %lo(D_801D87F7)($at)
    /* 2C588 801B5500 1E80013C */  lui        $at, %hi(D_801D87F8)
    /* 2C58C 801B5504 F88731A0 */  sb         $s1, %lo(D_801D87F8)($at)
    /* 2C590 801B5508 1E80013C */  lui        $at, %hi(D_801D87F9)
    /* 2C594 801B550C F98730A0 */  sb         $s0, %lo(D_801D87F9)($at)
    /* 2C598 801B5510 1E80013C */  lui        $at, %hi(D_801D87FA)
    /* 2C59C 801B5514 FA8720A0 */  sb         $zero, %lo(D_801D87FA)($at)
    /* 2C5A0 801B5518 1E80013C */  lui        $at, %hi(D_801D87FB)
    /* 2C5A4 801B551C FB8720A0 */  sb         $zero, %lo(D_801D87FB)($at)
    /* 2C5A8 801B5520 1E80013C */  lui        $at, %hi(D_801D87FC)
    /* 2C5AC 801B5524 FC8720A0 */  sb         $zero, %lo(D_801D87FC)($at)
    /* 2C5B0 801B5528 875B060C */  jal        func_80196E1C
    /* 2C5B4 801B552C 06000624 */   addiu     $a2, $zero, 0x6
    /* 2C5B8 801B5530 3000BF8F */  lw         $ra, 0x30($sp)
    /* 2C5BC 801B5534 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 2C5C0 801B5538 2800B68F */  lw         $s6, 0x28($sp)
    /* 2C5C4 801B553C 2400B58F */  lw         $s5, 0x24($sp)
    /* 2C5C8 801B5540 2000B48F */  lw         $s4, 0x20($sp)
    /* 2C5CC 801B5544 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2C5D0 801B5548 1800B28F */  lw         $s2, 0x18($sp)
    /* 2C5D4 801B554C 1400B18F */  lw         $s1, 0x14($sp)
    /* 2C5D8 801B5550 1000B08F */  lw         $s0, 0x10($sp)
    /* 2C5DC 801B5554 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 2C5E0 801B5558 0800E003 */  jr         $ra
    /* 2C5E4 801B555C 00000000 */   nop
endlabel func_801B53DC
