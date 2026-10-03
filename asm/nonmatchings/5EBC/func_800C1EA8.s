nonmatching func_800C1EA8, 0x54

glabel func_800C1EA8
    /* B26A8 800C1EA8 21108000 */  addu       $v0, $a0, $zero
    /* B26AC 800C1EAC 0300401C */  bgtz       $v0, .L800C1EBC
    /* B26B0 800C1EB0 0040033C */   lui       $v1, (0x40001010 >> 16)
    /* B26B4 800C1EB4 BD070308 */  j          .L800C1EF4
    /* B26B8 800C1EB8 21100000 */   addu      $v0, $zero, $zero
  .L800C1EBC:
    /* B26BC 800C1EBC 0D80043C */  lui        $a0, %hi(D_800D55B4)
    /* B26C0 800C1EC0 B455848C */  lw         $a0, %lo(D_800D55B4)($a0)
    /* B26C4 800C1EC4 10106334 */  ori        $v1, $v1, (0x40001010 & 0xFFFF)
    /* B26C8 800C1EC8 0000A3AC */  sw         $v1, 0x0($a1)
    /* B26CC 800C1ECC 0100033C */  lui        $v1, (0x10000 >> 16)
    /* B26D0 800C1ED0 0D80013C */  lui        $at, %hi(D_800D55F4)
    /* B26D4 800C1ED4 F45525AC */  sw         $a1, %lo(D_800D55F4)($at)
    /* B26D8 800C1ED8 0D80013C */  lui        $at, %hi(D_800D55F0)
    /* B26DC 800C1EDC F05520AC */  sw         $zero, %lo(D_800D55F0)($at)
    /* B26E0 800C1EE0 0D80013C */  lui        $at, %hi(D_800D55EC)
    /* B26E4 800C1EE4 EC5522AC */  sw         $v0, %lo(D_800D55EC)($at)
    /* B26E8 800C1EE8 04188300 */  sllv       $v1, $v1, $a0
    /* B26EC 800C1EEC F0EF6324 */  addiu      $v1, $v1, -0x1010
    /* B26F0 800C1EF0 0400A3AC */  sw         $v1, 0x4($a1)
  .L800C1EF4:
    /* B26F4 800C1EF4 0800E003 */  jr         $ra
    /* B26F8 800C1EF8 00000000 */   nop
endlabel func_800C1EA8
    /* B26FC 800C1EFC 00000000 */  nop
    /* B2700 800C1F00 00000000 */  nop
    /* B2704 800C1F04 00000000 */  nop
