nonmatching func_800B59A8, 0x7C

glabel func_800B59A8
    /* A61A8 800B59A8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A61AC 800B59AC 21288000 */  addu       $a1, $a0, $zero
    /* A61B0 800B59B0 01000224 */  addiu      $v0, $zero, 0x1
    /* A61B4 800B59B4 1100A210 */  beq        $a1, $v0, .L800B59FC
    /* A61B8 800B59B8 1000BFAF */   sw        $ra, 0x10($sp)
    /* A61BC 800B59BC 0200A228 */  slti       $v0, $a1, 0x2
    /* A61C0 800B59C0 05004010 */  beqz       $v0, .L800B59D8
    /* A61C4 800B59C4 02000224 */   addiu     $v0, $zero, 0x2
    /* A61C8 800B59C8 0900A010 */  beqz       $a1, .L800B59F0
    /* A61CC 800B59CC 00000000 */   nop
    /* A61D0 800B59D0 82D60208 */  j          .L800B5A08
    /* A61D4 800B59D4 00000000 */   nop
  .L800B59D8:
    /* A61D8 800B59D8 0800A210 */  beq        $a1, $v0, .L800B59FC
    /* A61DC 800B59DC 03000224 */   addiu     $v0, $zero, 0x3
    /* A61E0 800B59E0 0600A210 */  beq        $a1, $v0, .L800B59FC
    /* A61E4 800B59E4 00000000 */   nop
    /* A61E8 800B59E8 82D60208 */  j          .L800B5A08
    /* A61EC 800B59EC 00000000 */   nop
  .L800B59F0:
    /* A61F0 800B59F0 1180013C */  lui        $at, %hi(D_8010C298)
    /* A61F4 800B59F4 85D60208 */  j          .L800B5A14
    /* A61F8 800B59F8 98C220AC */   sw        $zero, %lo(D_8010C298)($at)
  .L800B59FC:
    /* A61FC 800B59FC 1180013C */  lui        $at, %hi(D_8010C298)
    /* A6200 800B5A00 85D60208 */  j          .L800B5A14
    /* A6204 800B5A04 98C225AC */   sw        $a1, %lo(D_8010C298)($at)
  .L800B5A08:
    /* A6208 800B5A08 0180043C */  lui        $a0, %hi(D_800150AC)
    /* A620C 800B5A0C A6B5020C */  jal        func_800AD698
    /* A6210 800B5A10 AC508424 */   addiu     $a0, $a0, %lo(D_800150AC)
  .L800B5A14:
    /* A6214 800B5A14 1000BF8F */  lw         $ra, 0x10($sp)
    /* A6218 800B5A18 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A621C 800B5A1C 0800E003 */  jr         $ra
    /* A6220 800B5A20 00000000 */   nop
endlabel func_800B59A8
    /* A6224 800B5A24 00000000 */  nop
