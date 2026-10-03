nonmatching func_80017414, 0xCC

glabel func_80017414
    /* 7C14 80017414 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 7C18 80017418 801F033C */  lui        $v1, (0x1F800298 >> 16)
    /* 7C1C 8001741C 98026390 */  lbu        $v1, (0x1F800298 & 0xFFFF)($v1)
    /* 7C20 80017420 05000224 */  addiu      $v0, $zero, 0x5
    /* 7C24 80017424 04006210 */  beq        $v1, $v0, .L80017438
    /* 7C28 80017428 1000BFAF */   sw        $ra, 0x10($sp)
    /* 7C2C 8001742C 03000224 */  addiu      $v0, $zero, 0x3
    /* 7C30 80017430 27006214 */  bne        $v1, $v0, .L800174D0
    /* 7C34 80017434 00000000 */   nop
  .L80017438:
    /* 7C38 80017438 801F033C */  lui        $v1, (0x1F80029A >> 16)
    /* 7C3C 8001743C 9A026390 */  lbu        $v1, (0x1F80029A & 0xFFFF)($v1)
    /* 7C40 80017440 0B000224 */  addiu      $v0, $zero, 0xB
    /* 7C44 80017444 22006210 */  beq        $v1, $v0, .L800174D0
    /* 7C48 80017448 21200000 */   addu      $a0, $zero, $zero
    /* 7C4C 8001744C 01000524 */  addiu      $a1, $zero, 0x1
    /* 7C50 80017450 385D000C */  jal        func_800174E0
    /* 7C54 80017454 00010624 */   addiu     $a2, $zero, 0x100
    /* 7C58 80017458 1D004010 */  beqz       $v0, .L800174D0
    /* 7C5C 8001745C 21200000 */   addu      $a0, $zero, $zero
    /* 7C60 80017460 01000524 */  addiu      $a1, $zero, 0x1
    /* 7C64 80017464 385D000C */  jal        func_800174E0
    /* 7C68 80017468 00080624 */   addiu     $a2, $zero, 0x800
    /* 7C6C 8001746C 18004010 */  beqz       $v0, .L800174D0
    /* 7C70 80017470 00000000 */   nop
    /* 7C74 80017474 88AD020C */  jal        func_800AB620
    /* 7C78 80017478 02000424 */   addiu     $a0, $zero, 0x2
    /* 7C7C 8001747C 453F010C */  jal        func_8004FD14
    /* 7C80 80017480 01000424 */   addiu     $a0, $zero, 0x1
    /* 7C84 80017484 01000224 */  addiu      $v0, $zero, 0x1
    /* 7C88 80017488 801F013C */  lui        $at, (0x1F8002C0 >> 16)
    /* 7C8C 8001748C C00220A0 */  sb         $zero, (0x1F8002C0 & 0xFFFF)($at)
    /* 7C90 80017490 801F013C */  lui        $at, (0x1F8002A1 >> 16)
    /* 7C94 80017494 A10220A0 */  sb         $zero, (0x1F8002A1 & 0xFFFF)($at)
    /* 7C98 80017498 801F013C */  lui        $at, (0x1F8002A0 >> 16)
    /* 7C9C 8001749C A00220A0 */  sb         $zero, (0x1F8002A0 & 0xFFFF)($at)
    /* 7CA0 800174A0 801F013C */  lui        $at, (0x1F8002C2 >> 16)
    /* 7CA4 800174A4 C20220A0 */  sb         $zero, (0x1F8002C2 & 0xFFFF)($at)
    /* 7CA8 800174A8 801F013C */  lui        $at, (0x1F8001EC >> 16)
    /* 7CAC 800174AC EC0120A0 */  sb         $zero, (0x1F8001EC & 0xFFFF)($at)
    /* 7CB0 800174B0 801F013C */  lui        $at, (0x1F8001E8 >> 16)
    /* 7CB4 800174B4 E80122A0 */  sb         $v0, (0x1F8001E8 & 0xFFFF)($at)
    /* 7CB8 800174B8 801F013C */  lui        $at, (0x1F800234 >> 16)
    /* 7CBC 800174BC 340220A4 */  sh         $zero, (0x1F800234 & 0xFFFF)($at)
    /* 7CC0 800174C0 0F80013C */  lui        $at, %hi(D_800EF9C8)
    /* 7CC4 800174C4 C8F920A0 */  sb         $zero, %lo(D_800EF9C8)($at)
    /* 7CC8 800174C8 715C000C */  jal        func_800171C4
    /* 7CCC 800174CC 0B000424 */   addiu     $a0, $zero, 0xB
  .L800174D0:
    /* 7CD0 800174D0 1000BF8F */  lw         $ra, 0x10($sp)
    /* 7CD4 800174D4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 7CD8 800174D8 0800E003 */  jr         $ra
    /* 7CDC 800174DC 00000000 */   nop
endlabel func_80017414
