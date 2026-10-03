nonmatching func_800B4978, 0x70

glabel func_800B4978
    /* A5178 800B4978 2138A000 */  addu       $a3, $a1, $zero
    /* A517C 800B497C 1080063C */  lui        $a2, %hi(D_800FB5B0)
    /* A5180 800B4980 B0B5C624 */  addiu      $a2, $a2, %lo(D_800FB5B0)
    /* A5184 800B4984 0000C28C */  lw         $v0, 0x0($a2)
    /* A5188 800B4988 0400C38C */  lw         $v1, 0x4($a2)
    /* A518C 800B498C 0800C58C */  lw         $a1, 0x8($a2)
    /* A5190 800B4990 0400E2AC */  sw         $v0, 0x4($a3)
    /* A5194 800B4994 0800E3AC */  sw         $v1, 0x8($a3)
    /* A5198 800B4998 0C00E5AC */  sw         $a1, 0xC($a3)
    /* A519C 800B499C 0C00C28C */  lw         $v0, 0xC($a2)
    /* A51A0 800B49A0 1000C38C */  lw         $v1, 0x10($a2)
    /* A51A4 800B49A4 1400C58C */  lw         $a1, 0x14($a2)
    /* A51A8 800B49A8 1000E2AC */  sw         $v0, 0x10($a3)
    /* A51AC 800B49AC 1400E3AC */  sw         $v1, 0x14($a3)
    /* A51B0 800B49B0 1800E5AC */  sw         $a1, 0x18($a3)
    /* A51B4 800B49B4 1800C28C */  lw         $v0, 0x18($a2)
    /* A51B8 800B49B8 1C00C38C */  lw         $v1, 0x1C($a2)
    /* A51BC 800B49BC 1C00E2AC */  sw         $v0, 0x1C($a3)
    /* A51C0 800B49C0 2000E3AC */  sw         $v1, 0x20($a3)
    /* A51C4 800B49C4 4800E4AC */  sw         $a0, 0x48($a3)
    /* A51C8 800B49C8 0200842C */  sltiu      $a0, $a0, 0x2
    /* A51CC 800B49CC 04008014 */  bnez       $a0, .L800B49E0
    /* A51D0 800B49D0 0000E0AC */   sw        $zero, 0x0($a3)
    /* A51D4 800B49D4 4800E28C */  lw         $v0, 0x48($a3)
    /* A51D8 800B49D8 00000000 */  nop
    /* A51DC 800B49DC 4C0047AC */  sw         $a3, 0x4C($v0)
  .L800B49E0:
    /* A51E0 800B49E0 0800E003 */  jr         $ra
    /* A51E4 800B49E4 00000000 */   nop
endlabel func_800B4978
