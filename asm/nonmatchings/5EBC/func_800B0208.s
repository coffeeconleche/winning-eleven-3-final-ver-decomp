nonmatching func_800B0208, 0x40

glabel func_800B0208
    /* A0A08 800B0208 FFFFA624 */  addiu      $a2, $a1, -0x1
    /* A0A0C 800B020C 0D80033C */  lui        $v1, %hi(D_800CEB9C)
    /* A0A10 800B0210 9CEB638C */  lw         $v1, %lo(D_800CEB9C)($v1)
    /* A0A14 800B0214 0004023C */  lui        $v0, (0x4000000 >> 16)
    /* A0A18 800B0218 0900A010 */  beqz       $a1, .L800B0240
    /* A0A1C 800B021C 000062AC */   sw        $v0, 0x0($v1)
    /* A0A20 800B0220 FFFF0524 */  addiu      $a1, $zero, -0x1
  .L800B0224:
    /* A0A24 800B0224 0000838C */  lw         $v1, 0x0($a0)
    /* A0A28 800B0228 04008424 */  addiu      $a0, $a0, 0x4
    /* A0A2C 800B022C 0D80023C */  lui        $v0, %hi(D_800CEB98)
    /* A0A30 800B0230 98EB428C */  lw         $v0, %lo(D_800CEB98)($v0)
    /* A0A34 800B0234 FFFFC624 */  addiu      $a2, $a2, -0x1
    /* A0A38 800B0238 FAFFC514 */  bne        $a2, $a1, .L800B0224
    /* A0A3C 800B023C 000043AC */   sw        $v1, 0x0($v0)
  .L800B0240:
    /* A0A40 800B0240 0800E003 */  jr         $ra
    /* A0A44 800B0244 21100000 */   addu      $v0, $zero, $zero
endlabel func_800B0208
