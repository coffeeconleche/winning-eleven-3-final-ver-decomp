nonmatching func_8001DD50, 0x80

glabel func_8001DD50
    /* E550 8001DD50 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* E554 8001DD54 801F033C */  lui        $v1, (0x1F800298 >> 16)
    /* E558 8001DD58 98026390 */  lbu        $v1, (0x1F800298 & 0xFFFF)($v1)
    /* E55C 8001DD5C 0F80023C */  lui        $v0, %hi(D_800F3568)
    /* E560 8001DD60 68354224 */  addiu      $v0, $v0, %lo(D_800F3568)
    /* E564 8001DD64 0F80013C */  lui        $at, %hi(D_800F101C)
    /* E568 8001DD68 1C1022AC */  sw         $v0, %lo(D_800F101C)($at)
    /* E56C 8001DD6C 00404224 */  addiu      $v0, $v0, 0x4000
    /* E570 8001DD70 0F80013C */  lui        $at, %hi(D_800F1030)
    /* E574 8001DD74 301022AC */  sw         $v0, %lo(D_800F1030)($at)
    /* E578 8001DD78 03000224 */  addiu      $v0, $zero, 0x3
    /* E57C 8001DD7C 1000BFAF */  sw         $ra, 0x10($sp)
    /* E580 8001DD80 801F013C */  lui        $at, (0x1F800000 >> 16)
    /* E584 8001DD84 000024AC */  sw         $a0, (0x1F800000 & 0xFFFF)($at)
    /* E588 8001DD88 0F80013C */  lui        $at, %hi(D_800F1018)
    /* E58C 8001DD8C 181024AC */  sw         $a0, %lo(D_800F1018)($at)
    /* E590 8001DD90 0F80013C */  lui        $at, %hi(D_800F102C)
    /* E594 8001DD94 2C1024AC */  sw         $a0, %lo(D_800F102C)($at)
    /* E598 8001DD98 07006210 */  beq        $v1, $v0, .L8001DDB8
    /* E59C 8001DD9C 03006228 */   slti      $v0, $v1, 0x3
    /* E5A0 8001DDA0 07004014 */  bnez       $v0, .L8001DDC0
    /* E5A4 8001DDA4 07006228 */   slti      $v0, $v1, 0x7
    /* E5A8 8001DDA8 05004010 */  beqz       $v0, .L8001DDC0
    /* E5AC 8001DDAC 05006228 */   slti      $v0, $v1, 0x5
    /* E5B0 8001DDB0 03004014 */  bnez       $v0, .L8001DDC0
    /* E5B4 8001DDB4 00000000 */   nop
  .L8001DDB8:
    /* E5B8 8001DDB8 F17D000C */  jal        func_8001F7C4
    /* E5BC 8001DDBC 00000000 */   nop
  .L8001DDC0:
    /* E5C0 8001DDC0 1000BF8F */  lw         $ra, 0x10($sp)
    /* E5C4 8001DDC4 1800BD27 */  addiu      $sp, $sp, 0x18
    /* E5C8 8001DDC8 0800E003 */  jr         $ra
    /* E5CC 8001DDCC 00000000 */   nop
endlabel func_8001DD50
