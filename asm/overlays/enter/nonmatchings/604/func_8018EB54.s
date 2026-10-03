nonmatching func_8018EB54, 0xD4

glabel func_8018EB54
    /* 5BDC 8018EB54 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 5BE0 8018EB58 2800B2AF */  sw         $s2, 0x28($sp)
    /* 5BE4 8018EB5C 21908000 */  addu       $s2, $a0, $zero
    /* 5BE8 8018EB60 2000B0AF */  sw         $s0, 0x20($sp)
    /* 5BEC 8018EB64 2180A000 */  addu       $s0, $a1, $zero
    /* 5BF0 8018EB68 FF000532 */  andi       $a1, $s0, 0xFF
    /* 5BF4 8018EB6C 0100A424 */  addiu      $a0, $a1, 0x1
    /* 5BF8 8018EB70 50000224 */  addiu      $v0, $zero, 0x50
    /* 5BFC 8018EB74 1000A2AF */  sw         $v0, 0x10($sp)
    /* 5C00 8018EB78 07000224 */  addiu      $v0, $zero, 0x7
    /* 5C04 8018EB7C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 5C08 8018EB80 01000224 */  addiu      $v0, $zero, 0x1
    /* 5C0C 8018EB84 2400B1AF */  sw         $s1, 0x24($sp)
    /* 5C10 8018EB88 00A01134 */  ori        $s1, $zero, 0xA000
    /* 5C14 8018EB8C 2528B100 */  or         $a1, $a1, $s1
    /* 5C18 8018EB90 21300000 */  addu       $a2, $zero, $zero
    /* 5C1C 8018EB94 21380000 */  addu       $a3, $zero, $zero
    /* 5C20 8018EB98 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* 5C24 8018EB9C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 5C28 8018EBA0 B873000C */  jal        func_8001CEE0
    /* 5C2C 8018EBA4 1C00A2AF */   sw        $v0, 0x1C($sp)
    /* 5C30 8018EBA8 FF001032 */  andi       $s0, $s0, 0xFF
    /* 5C34 8018EBAC 25201102 */  or         $a0, $s0, $s1
    /* 5C38 8018EBB0 92035092 */  lbu        $s0, 0x392($s2)
    /* 5C3C 8018EBB4 0174000C */  jal        func_8001D004
    /* 5C40 8018EBB8 FF001032 */   andi      $s0, $s0, 0xFF
    /* 5C44 8018EBBC 2EBA033C */  lui        $v1, (0xBA2E8BA3 >> 16)
    /* 5C48 8018EBC0 A38B6334 */  ori        $v1, $v1, (0xBA2E8BA3 & 0xFFFF)
    /* 5C4C 8018EBC4 19000302 */  multu      $s0, $v1
    /* 5C50 8018EBC8 98034392 */  lbu        $v1, 0x398($s2)
    /* 5C54 8018EBCC 00000000 */  nop
    /* 5C58 8018EBD0 C0190300 */  sll        $v1, $v1, 7
    /* 5C5C 8018EBD4 10400000 */  mfhi       $t0
    /* 5C60 8018EBD8 C2280800 */  srl        $a1, $t0, 3
    /* 5C64 8018EBDC FF00A430 */  andi       $a0, $a1, 0xFF
    /* 5C68 8018EBE0 80210400 */  sll        $a0, $a0, 6
    /* 5C6C 8018EBE4 21208300 */  addu       $a0, $a0, $v1
    /* 5C70 8018EBE8 40180500 */  sll        $v1, $a1, 1
    /* 5C74 8018EBEC 21186500 */  addu       $v1, $v1, $a1
    /* 5C78 8018EBF0 80180300 */  sll        $v1, $v1, 2
    /* 5C7C 8018EBF4 23186500 */  subu       $v1, $v1, $a1
    /* 5C80 8018EBF8 23800302 */  subu       $s0, $s0, $v1
    /* 5C84 8018EBFC FF001032 */  andi       $s0, $s0, 0xFF
    /* 5C88 8018EC00 00811000 */  sll        $s0, $s0, 4
    /* 5C8C 8018EC04 030044A0 */  sb         $a0, 0x3($v0)
    /* 5C90 8018EC08 040050A0 */  sb         $s0, 0x4($v0)
    /* 5C94 8018EC0C 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* 5C98 8018EC10 2800B28F */  lw         $s2, 0x28($sp)
    /* 5C9C 8018EC14 2400B18F */  lw         $s1, 0x24($sp)
    /* 5CA0 8018EC18 2000B08F */  lw         $s0, 0x20($sp)
    /* 5CA4 8018EC1C 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 5CA8 8018EC20 0800E003 */  jr         $ra
    /* 5CAC 8018EC24 00000000 */   nop
endlabel func_8018EB54
