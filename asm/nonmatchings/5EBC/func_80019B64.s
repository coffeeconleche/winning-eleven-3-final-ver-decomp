nonmatching func_80019B64, 0xD0

glabel func_80019B64
    /* A364 80019B64 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* A368 80019B68 801F053C */  lui        $a1, (0x1F80029F >> 16)
    /* A36C 80019B6C 9F02A590 */  lbu        $a1, (0x1F80029F & 0xFFFF)($a1)
    /* A370 80019B70 01000224 */  addiu      $v0, $zero, 0x1
    /* A374 80019B74 FF00A330 */  andi       $v1, $a1, 0xFF
    /* A378 80019B78 14006210 */  beq        $v1, $v0, .L80019BCC
    /* A37C 80019B7C 1000BFAF */   sw        $ra, 0x10($sp)
    /* A380 80019B80 02006228 */  slti       $v0, $v1, 0x2
    /* A384 80019B84 05004010 */  beqz       $v0, .L80019B9C
    /* A388 80019B88 00000000 */   nop
    /* A38C 80019B8C 08006010 */  beqz       $v1, .L80019BB0
    /* A390 80019B90 0100A424 */   addiu     $a0, $a1, 0x1
    /* A394 80019B94 09670008 */  j          .L80019C24
    /* A398 80019B98 00000000 */   nop
  .L80019B9C:
    /* A39C 80019B9C 02000224 */  addiu      $v0, $zero, 0x2
    /* A3A0 80019BA0 1D006210 */  beq        $v1, $v0, .L80019C18
    /* A3A4 80019BA4 00000000 */   nop
    /* A3A8 80019BA8 09670008 */  j          .L80019C24
    /* A3AC 80019BAC 00000000 */   nop
  .L80019BB0:
    /* A3B0 80019BB0 01000324 */  addiu      $v1, $zero, 0x1
    /* A3B4 80019BB4 0F80013C */  lui        $at, %hi(D_800F106E)
    /* A3B8 80019BB8 6E1023A0 */  sb         $v1, %lo(D_800F106E)($at)
    /* A3BC 80019BBC 801F013C */  lui        $at, (0x1F80029F >> 16)
    /* A3C0 80019BC0 9F0224A0 */  sb         $a0, (0x1F80029F & 0xFFFF)($at)
    /* A3C4 80019BC4 09670008 */  j          .L80019C24
    /* A3C8 80019BC8 21100000 */   addu      $v0, $zero, $zero
  .L80019BCC:
    /* A3CC 80019BCC A15D000C */  jal        func_80017684
    /* A3D0 80019BD0 FF008430 */   andi      $a0, $a0, 0xFF
    /* A3D4 80019BD4 FF004230 */  andi       $v0, $v0, 0xFF
    /* A3D8 80019BD8 0D004010 */  beqz       $v0, .L80019C10
    /* A3DC 80019BDC 00000000 */   nop
    /* A3E0 80019BE0 1180043C */  lui        $a0, %hi(D_80110000)
    /* A3E4 80019BE4 0000848C */  lw         $a0, %lo(D_80110000)($a0)
    /* A3E8 80019BE8 5965000C */  jal        func_80019564
    /* A3EC 80019BEC 21280000 */   addu      $a1, $zero, $zero
    /* A3F0 80019BF0 801F023C */  lui        $v0, (0x1F80029F >> 16)
    /* A3F4 80019BF4 9F024290 */  lbu        $v0, (0x1F80029F & 0xFFFF)($v0)
    /* A3F8 80019BF8 01000324 */  addiu      $v1, $zero, 0x1
    /* A3FC 80019BFC 0F80013C */  lui        $at, %hi(D_800F106E)
    /* A400 80019C00 6E1023A0 */  sb         $v1, %lo(D_800F106E)($at)
    /* A404 80019C04 01004224 */  addiu      $v0, $v0, 0x1
    /* A408 80019C08 801F013C */  lui        $at, (0x1F80029F >> 16)
    /* A40C 80019C0C 9F0222A0 */  sb         $v0, (0x1F80029F & 0xFFFF)($at)
  .L80019C10:
    /* A410 80019C10 09670008 */  j          .L80019C24
    /* A414 80019C14 21100000 */   addu      $v0, $zero, $zero
  .L80019C18:
    /* A418 80019C18 3A66000C */  jal        func_800198E8
    /* A41C 80019C1C 05000424 */   addiu     $a0, $zero, 0x5
    /* A420 80019C20 FF004230 */  andi       $v0, $v0, 0xFF
  .L80019C24:
    /* A424 80019C24 1000BF8F */  lw         $ra, 0x10($sp)
    /* A428 80019C28 1800BD27 */  addiu      $sp, $sp, 0x18
    /* A42C 80019C2C 0800E003 */  jr         $ra
    /* A430 80019C30 00000000 */   nop
endlabel func_80019B64
