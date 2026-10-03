nonmatching func_800B49E8, 0x2C

glabel func_800B49E8
    /* A51E8 800B49E8 00100224 */  addiu      $v0, $zero, 0x1000
    /* A51EC 800B49EC 140080A4 */  sh         $zero, 0x14($a0)
    /* A51F0 800B49F0 120080A4 */  sh         $zero, 0x12($a0)
    /* A51F4 800B49F4 100080A4 */  sh         $zero, 0x10($a0)
    /* A51F8 800B49F8 080082AC */  sw         $v0, 0x8($a0)
    /* A51FC 800B49FC 040082AC */  sw         $v0, 0x4($a0)
    /* A5200 800B4A00 000082AC */  sw         $v0, 0x0($a0)
    /* A5204 800B4A04 200080AC */  sw         $zero, 0x20($a0)
    /* A5208 800B4A08 1C0080AC */  sw         $zero, 0x1C($a0)
    /* A520C 800B4A0C 0800E003 */  jr         $ra
    /* A5210 800B4A10 180080AC */   sw        $zero, 0x18($a0)
endlabel func_800B49E8
