nonmatching func_800A7C2C, 0x12C

glabel func_800A7C2C
    /* 9842C 800A7C2C E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 98430 800A7C30 801F043C */  lui        $a0, (0x1F8002F4 >> 16)
    /* 98434 800A7C34 F402848C */  lw         $a0, (0x1F8002F4 & 0xFFFF)($a0)
    /* 98438 800A7C38 05000224 */  addiu      $v0, $zero, 0x5
    /* 9843C 800A7C3C 1400BFAF */  sw         $ra, 0x14($sp)
    /* 98440 800A7C40 1000B0AF */  sw         $s0, 0x10($sp)
    /* 98444 800A7C44 02008384 */  lh         $v1, 0x2($a0)
    /* 98448 800A7C48 0D80013C */  lui        $at, %hi(D_800CB690)
    /* 9844C 800A7C4C 90B622A0 */  sb         $v0, %lo(D_800CB690)($at)
    /* 98450 800A7C50 02006104 */  bgez       $v1, .L800A7C5C
    /* 98454 800A7C54 21106000 */   addu      $v0, $v1, $zero
    /* 98458 800A7C58 23100200 */  negu       $v0, $v0
  .L800A7C5C:
    /* 9845C 800A7C5C 20334228 */  slti       $v0, $v0, 0x3320
    /* 98460 800A7C60 05004010 */  beqz       $v0, .L800A7C78
    /* 98464 800A7C64 801F103C */   lui       $s0, (0x1F8002A9 >> 16)
    /* 98468 800A7C68 02006104 */  bgez       $v1, .L800A7C74
    /* 9846C 800A7C6C 20330224 */   addiu     $v0, $zero, 0x3320
    /* 98470 800A7C70 E0CC0224 */  addiu      $v0, $zero, -0x3320
  .L800A7C74:
    /* 98474 800A7C74 020082A4 */  sh         $v0, 0x2($a0)
  .L800A7C78:
    /* 98478 800A7C78 F402048E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 9847C 800A7C7C 00000000 */  nop
    /* 98480 800A7C80 02008384 */  lh         $v1, 0x2($a0)
    /* 98484 800A7C84 00000000 */  nop
    /* 98488 800A7C88 02006104 */  bgez       $v1, .L800A7C94
    /* 9848C 800A7C8C 21106000 */   addu      $v0, $v1, $zero
    /* 98490 800A7C90 23100200 */  negu       $v0, $v0
  .L800A7C94:
    /* 98494 800A7C94 61334228 */  slti       $v0, $v0, 0x3361
    /* 98498 800A7C98 05004014 */  bnez       $v0, .L800A7CB0
    /* 9849C 800A7C9C 00000000 */   nop
    /* 984A0 800A7CA0 02006104 */  bgez       $v1, .L800A7CAC
    /* 984A4 800A7CA4 60330224 */   addiu     $v0, $zero, 0x3360
    /* 984A8 800A7CA8 A0CC0224 */  addiu      $v0, $zero, -0x3360
  .L800A7CAC:
    /* 984AC 800A7CAC 020082A4 */  sh         $v0, 0x2($a0)
  .L800A7CB0:
    /* 984B0 800A7CB0 F402038E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s0)
    /* 984B4 800A7CB4 00000000 */  nop
    /* 984B8 800A7CB8 A4036290 */  lbu        $v0, 0x3A4($v1)
    /* 984BC 800A7CBC 00000000 */  nop
    /* 984C0 800A7CC0 23100200 */  negu       $v0, $v0
    /* 984C4 800A7CC4 A40362A0 */  sb         $v0, 0x3A4($v1)
    /* 984C8 800A7CC8 F402038E */  lw         $v1, (0x1F8002F4 & 0xFFFF)($s0)
    /* 984CC 800A7CCC 00000000 */  nop
    /* 984D0 800A7CD0 A003628C */  lw         $v0, 0x3A0($v1)
    /* 984D4 800A7CD4 15050424 */  addiu      $a0, $zero, 0x515
    /* 984D8 800A7CD8 42100200 */  srl        $v0, $v0, 1
    /* 984DC 800A7CDC E8034224 */  addiu      $v0, $v0, 0x3E8
    /* 984E0 800A7CE0 88AD020C */  jal        func_800AB620
    /* 984E4 800A7CE4 A00362AC */   sw        $v0, 0x3A0($v1)
    /* 984E8 800A7CE8 A9020292 */  lbu        $v0, (0x1F8002A9 & 0xFFFF)($s0)
    /* 984EC 800A7CEC 00000000 */  nop
    /* 984F0 800A7CF0 05004014 */  bnez       $v0, .L800A7D08
    /* 984F4 800A7CF4 00000000 */   nop
    /* 984F8 800A7CF8 8668010C */  jal        func_8005A218
    /* 984FC 800A7CFC 00000000 */   nop
    /* 98500 800A7D00 4B9F0208 */  j          .L800A7D2C
    /* 98504 800A7D04 0D000224 */   addiu     $v0, $zero, 0xD
  .L800A7D08:
    /* 98508 800A7D08 F402048E */  lw         $a0, (0x1F8002F4 & 0xFFFF)($s0)
    /* 9850C 800A7D0C 00000000 */  nop
    /* 98510 800A7D10 02008284 */  lh         $v0, 0x2($a0)
    /* 98514 800A7D14 00000000 */  nop
    /* 98518 800A7D18 02004104 */  bgez       $v0, .L800A7D24
    /* 9851C 800A7D1C 61330324 */   addiu     $v1, $zero, 0x3361
    /* 98520 800A7D20 9FCC0324 */  addiu      $v1, $zero, -0x3361
  .L800A7D24:
    /* 98524 800A7D24 020083A4 */  sh         $v1, 0x2($a0)
    /* 98528 800A7D28 0D000224 */  addiu      $v0, $zero, 0xD
  .L800A7D2C:
    /* 9852C 800A7D2C B00202AE */  sw         $v0, (0x1F8002B0 & 0xFFFF)($s0)
    /* 98530 800A7D30 08000224 */  addiu      $v0, $zero, 0x8
    /* 98534 800A7D34 1C0302A6 */  sh         $v0, (0x1F80031C & 0xFFFF)($s0)
    /* 98538 800A7D38 FF7F0224 */  addiu      $v0, $zero, 0x7FFF
    /* 9853C 800A7D3C F20200A2 */  sb         $zero, (0x1F8002F2 & 0xFFFF)($s0)
    /* 98540 800A7D40 B80202A6 */  sh         $v0, (0x1F8002B8 & 0xFFFF)($s0)
    /* 98544 800A7D44 1400BF8F */  lw         $ra, 0x14($sp)
    /* 98548 800A7D48 1000B08F */  lw         $s0, 0x10($sp)
    /* 9854C 800A7D4C 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 98550 800A7D50 0800E003 */  jr         $ra
    /* 98554 800A7D54 00000000 */   nop
endlabel func_800A7C2C
