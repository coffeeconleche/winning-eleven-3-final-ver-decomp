nonmatching func_800B42C8, 0x68

glabel func_800B42C8
    /* A4AC8 800B42C8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A4ACC 800B42CC 0F80023C */  lui        $v0, %hi(D_800F0F8C)
    /* A4AD0 800B42D0 8C0F4224 */  addiu      $v0, $v0, %lo(D_800F0F8C)
    /* A4AD4 800B42D4 2800A897 */  lhu        $t0, 0x28($sp)
    /* A4AD8 800B42D8 0F80033C */  lui        $v1, %hi(D_800F0FDC)
    /* A4ADC 800B42DC DC0F6324 */  addiu      $v1, $v1, %lo(D_800F0FDC)
    /* A4AE0 800B42E0 1000BFAF */  sw         $ra, 0x10($sp)
    /* A4AE4 800B42E4 000040A4 */  sh         $zero, 0x0($v0)
    /* A4AE8 800B42E8 020047A0 */  sb         $a3, 0x2($v0)
    /* A4AEC 800B42EC 030040A0 */  sb         $zero, 0x3($v0)
    /* A4AF0 800B42F0 040040A0 */  sb         $zero, 0x4($v0)
    /* A4AF4 800B42F4 0100C230 */  andi       $v0, $a2, 0x1
    /* A4AF8 800B42F8 0400C630 */  andi       $a2, $a2, 0x4
    /* A4AFC 800B42FC 000064A4 */  sh         $a0, 0x0($v1)
    /* A4B00 800B4300 FFFF8430 */  andi       $a0, $a0, 0xFFFF
    /* A4B04 800B4304 020065A4 */  sh         $a1, 0x2($v1)
    /* A4B08 800B4308 FFFFA530 */  andi       $a1, $a1, 0xFFFF
    /* A4B0C 800B430C 0C0062A0 */  sb         $v0, 0xC($v1)
    /* A4B10 800B4310 1180013C */  lui        $at, %hi(D_8010CD80)
    /* A4B14 800B4314 80CD26A4 */  sh         $a2, %lo(D_8010CD80)($at)
    /* A4B18 800B4318 CCD0020C */  jal        func_800B4330
    /* A4B1C 800B431C 0D0068A0 */   sb        $t0, 0xD($v1)
    /* A4B20 800B4320 1000BF8F */  lw         $ra, 0x10($sp)
    /* A4B24 800B4324 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A4B28 800B4328 0800E003 */  jr         $ra
    /* A4B2C 800B432C 00000000 */   nop
endlabel func_800B42C8
