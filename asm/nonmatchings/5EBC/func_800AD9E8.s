nonmatching func_800AD9E8, 0xB4

glabel func_800AD9E8
    /* 9E1E8 800AD9E8 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 9E1EC 800AD9EC 1800B2AF */  sw         $s2, 0x18($sp)
    /* 9E1F0 800AD9F0 3800B28F */  lw         $s2, 0x38($sp)
    /* 9E1F4 800AD9F4 1400B1AF */  sw         $s1, 0x14($sp)
    /* 9E1F8 800AD9F8 21888000 */  addu       $s1, $a0, $zero
    /* 9E1FC 800AD9FC 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 9E200 800ADA00 2198A000 */  addu       $s3, $a1, $zero
    /* 9E204 800ADA04 2000B4AF */  sw         $s4, 0x20($sp)
    /* 9E208 800ADA08 21A0C000 */  addu       $s4, $a2, $zero
    /* 9E20C 800ADA0C 1000B0AF */  sw         $s0, 0x10($sp)
    /* 9E210 800ADA10 2400BFAF */  sw         $ra, 0x24($sp)
    /* 9E214 800ADA14 8BEC020C */  jal        func_800BB22C
    /* 9E218 800ADA18 2180E000 */   addu      $s0, $a3, $zero
    /* 9E21C 800ADA1C 01000324 */  addiu      $v1, $zero, 0x1
    /* 9E220 800ADA20 000033A6 */  sh         $s3, 0x0($s1)
    /* 9E224 800ADA24 020034A6 */  sh         $s4, 0x2($s1)
    /* 9E228 800ADA28 040030A6 */  sh         $s0, 0x4($s1)
    /* 9E22C 800ADA2C 0C0020A6 */  sh         $zero, 0xC($s1)
    /* 9E230 800ADA30 0E0020A6 */  sh         $zero, 0xE($s1)
    /* 9E234 800ADA34 100020A6 */  sh         $zero, 0x10($s1)
    /* 9E238 800ADA38 120020A6 */  sh         $zero, 0x12($s1)
    /* 9E23C 800ADA3C 190020A2 */  sb         $zero, 0x19($s1)
    /* 9E240 800ADA40 1A0020A2 */  sb         $zero, 0x1A($s1)
    /* 9E244 800ADA44 1B0020A2 */  sb         $zero, 0x1B($s1)
    /* 9E248 800ADA48 160023A2 */  sb         $v1, 0x16($s1)
    /* 9E24C 800ADA4C 03004010 */  beqz       $v0, .L800ADA5C
    /* 9E250 800ADA50 060032A6 */   sh        $s2, 0x6($s1)
    /* 9E254 800ADA54 98B60208 */  j          .L800ADA60
    /* 9E258 800ADA58 2101422A */   slti      $v0, $s2, 0x121
  .L800ADA5C:
    /* 9E25C 800ADA5C 0101422A */  slti       $v0, $s2, 0x101
  .L800ADA60:
    /* 9E260 800ADA60 170022A2 */  sb         $v0, 0x17($s1)
    /* 9E264 800ADA64 21102002 */  addu       $v0, $s1, $zero
    /* 9E268 800ADA68 0A000324 */  addiu      $v1, $zero, 0xA
    /* 9E26C 800ADA6C 080053A4 */  sh         $s3, 0x8($v0)
    /* 9E270 800ADA70 0A0054A4 */  sh         $s4, 0xA($v0)
    /* 9E274 800ADA74 140043A4 */  sh         $v1, 0x14($v0)
    /* 9E278 800ADA78 180040A0 */  sb         $zero, 0x18($v0)
    /* 9E27C 800ADA7C 2400BF8F */  lw         $ra, 0x24($sp)
    /* 9E280 800ADA80 2000B48F */  lw         $s4, 0x20($sp)
    /* 9E284 800ADA84 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 9E288 800ADA88 1800B28F */  lw         $s2, 0x18($sp)
    /* 9E28C 800ADA8C 1400B18F */  lw         $s1, 0x14($sp)
    /* 9E290 800ADA90 1000B08F */  lw         $s0, 0x10($sp)
    /* 9E294 800ADA94 0800E003 */  jr         $ra
    /* 9E298 800ADA98 2800BD27 */   addiu     $sp, $sp, 0x28
endlabel func_800AD9E8
