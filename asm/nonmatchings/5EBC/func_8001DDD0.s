nonmatching func_8001DDD0, 0x1A4

glabel func_8001DDD0
    /* E5D0 8001DDD0 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* E5D4 8001DDD4 1800A427 */  addiu      $a0, $sp, 0x18
    /* E5D8 8001DDD8 21280000 */  addu       $a1, $zero, $zero
    /* E5DC 8001DDDC 21300000 */  addu       $a2, $zero, $zero
    /* E5E0 8001DDE0 21380000 */  addu       $a3, $zero, $zero
    /* E5E4 8001DDE4 00040224 */  addiu      $v0, $zero, 0x400
    /* E5E8 8001DDE8 1C00A2A7 */  sh         $v0, 0x1C($sp)
    /* E5EC 8001DDEC E0010224 */  addiu      $v0, $zero, 0x1E0
    /* E5F0 8001DDF0 2000BFAF */  sw         $ra, 0x20($sp)
    /* E5F4 8001DDF4 1800A0A7 */  sh         $zero, 0x18($sp)
    /* E5F8 8001DDF8 1A00A0A7 */  sh         $zero, 0x1A($sp)
    /* E5FC 8001DDFC AEB9020C */  jal        func_800AE6B8
    /* E600 8001DE00 1E00A2A7 */   sh        $v0, 0x1E($sp)
    /* E604 8001DE04 4DB9020C */  jal        func_800AE534
    /* E608 8001DE08 21200000 */   addu      $a0, $zero, $zero
    /* E60C 8001DE0C 21200000 */  addu       $a0, $zero, $zero
    /* E610 8001DE10 21280000 */  addu       $a1, $zero, $zero
    /* E614 8001DE14 4E78000C */  jal        func_8001E138
    /* E618 8001DE18 21300000 */   addu      $a2, $zero, $zero
    /* E61C 8001DE1C 80010424 */  addiu      $a0, $zero, 0x180
    /* E620 8001DE20 F0000524 */  addiu      $a1, $zero, 0xF0
    /* E624 8001DE24 04000624 */  addiu      $a2, $zero, 0x4
    /* E628 8001DE28 21380000 */  addu       $a3, $zero, $zero
    /* E62C 8001DE2C 4ED0020C */  jal        func_800B4138
    /* E630 8001DE30 1000A0AF */   sw        $zero, 0x10($sp)
    /* E634 8001DE34 21200000 */  addu       $a0, $zero, $zero
    /* E638 8001DE38 21280000 */  addu       $a1, $zero, $zero
    /* E63C 8001DE3C 21300000 */  addu       $a2, $zero, $zero
    /* E640 8001DE40 92D4020C */  jal        func_800B5248
    /* E644 8001DE44 F0000724 */   addiu     $a3, $zero, 0xF0
    /* E648 8001DE48 BAD4020C */  jal        func_800B52E8
    /* E64C 8001DE4C 00000000 */   nop
    /* E650 8001DE50 C0000424 */  addiu      $a0, $zero, 0xC0
    /* E654 8001DE54 56D2020C */  jal        func_800B4958
    /* E658 8001DE58 78000524 */   addiu     $a1, $zero, 0x78
    /* E65C 8001DE5C 01000324 */  addiu      $v1, $zero, 0x1
    /* E660 8001DE60 1080013C */  lui        $at, %hi(D_800FB580)
    /* E664 8001DE64 80B523AC */  sw         $v1, %lo(D_800FB580)($at)
    /* E668 8001DE68 1080013C */  lui        $at, %hi(D_800FB594)
    /* E66C 8001DE6C 94B523AC */  sw         $v1, %lo(D_800FB594)($at)
    /* E670 8001DE70 801F033C */  lui        $v1, (0x1F800000 >> 16)
    /* E674 8001DE74 0000638C */  lw         $v1, (0x1F800000 & 0xFFFF)($v1)
    /* E678 8001DE78 0F80023C */  lui        $v0, %hi(D_800F3568)
    /* E67C 8001DE7C 68354224 */  addiu      $v0, $v0, %lo(D_800F3568)
    /* E680 8001DE80 0F80013C */  lui        $at, %hi(D_800F101C)
    /* E684 8001DE84 1C1022AC */  sw         $v0, %lo(D_800F101C)($at)
    /* E688 8001DE88 00404224 */  addiu      $v0, $v0, 0x4000
    /* E68C 8001DE8C 0F80013C */  lui        $at, %hi(D_800F1030)
    /* E690 8001DE90 301022AC */  sw         $v0, %lo(D_800F1030)($at)
    /* E694 8001DE94 1080023C */  lui        $v0, %hi(D_800FF688)
    /* E698 8001DE98 88F64224 */  addiu      $v0, $v0, %lo(D_800FF688)
    /* E69C 8001DE9C 1080013C */  lui        $at, %hi(D_800FB584)
    /* E6A0 8001DEA0 84B522AC */  sw         $v0, %lo(D_800FB584)($at)
    /* E6A4 8001DEA4 08004224 */  addiu      $v0, $v0, 0x8
    /* E6A8 8001DEA8 1080013C */  lui        $at, %hi(D_800FB598)
    /* E6AC 8001DEAC 98B522AC */  sw         $v0, %lo(D_800FB598)($at)
    /* E6B0 8001DEB0 80FF0224 */  addiu      $v0, $zero, -0x80
    /* E6B4 8001DEB4 801F013C */  lui        $at, (0x1F8001F8 >> 16)
    /* E6B8 8001DEB8 F80122AC */  sw         $v0, (0x1F8001F8 & 0xFFFF)($at)
    /* E6BC 8001DEBC 00040224 */  addiu      $v0, $zero, 0x400
    /* E6C0 8001DEC0 801F013C */  lui        $at, (0x1F800204 >> 16)
    /* E6C4 8001DEC4 040220AC */  sw         $zero, (0x1F800204 & 0xFFFF)($at)
    /* E6C8 8001DEC8 801F013C */  lui        $at, (0x1F800200 >> 16)
    /* E6CC 8001DECC 000220AC */  sw         $zero, (0x1F800200 & 0xFFFF)($at)
    /* E6D0 8001DED0 801F013C */  lui        $at, (0x1F8001FC >> 16)
    /* E6D4 8001DED4 FC0120AC */  sw         $zero, (0x1F8001FC & 0xFFFF)($at)
    /* E6D8 8001DED8 801F013C */  lui        $at, (0x1F8001F0 >> 16)
    /* E6DC 8001DEDC F00120AC */  sw         $zero, (0x1F8001F0 & 0xFFFF)($at)
    /* E6E0 8001DEE0 801F013C */  lui        $at, (0x1F8001F4 >> 16)
    /* E6E4 8001DEE4 F40120AC */  sw         $zero, (0x1F8001F4 & 0xFFFF)($at)
    /* E6E8 8001DEE8 801F013C */  lui        $at, (0x1F80032C >> 16)
    /* E6EC 8001DEEC 2C0322AC */  sw         $v0, (0x1F80032C & 0xFFFF)($at)
    /* E6F0 8001DEF0 0F80013C */  lui        $at, %hi(D_800F1018)
    /* E6F4 8001DEF4 181023AC */  sw         $v1, %lo(D_800F1018)($at)
    /* E6F8 8001DEF8 0F80013C */  lui        $at, %hi(D_800F102C)
    /* E6FC 8001DEFC 2C1023AC */  sw         $v1, %lo(D_800F102C)($at)
    /* E700 8001DF00 F6D4020C */  jal        func_800B53D8
    /* E704 8001DF04 00040424 */   addiu     $a0, $zero, 0x400
    /* E708 8001DF08 801F043C */  lui        $a0, (0x1F8001F0 >> 16)
    /* E70C 8001DF0C EAD7020C */  jal        func_800B5FA8
    /* E710 8001DF10 F0018434 */   ori       $a0, $a0, (0x1F8001F0 & 0xFFFF)
    /* E714 8001DF14 1080053C */  lui        $a1, %hi(D_800FF6B0)
    /* E718 8001DF18 B0F6A524 */  addiu      $a1, $a1, %lo(D_800FF6B0)
    /* E71C 8001DF1C 801F043C */  lui        $a0, (0x1F8001C8 >> 16)
    /* E720 8001DF20 C8018434 */  ori        $a0, $a0, (0x1F8001C8 & 0xFFFF)
    /* E724 8001DF24 0000A28C */  lw         $v0, 0x0($a1)
    /* E728 8001DF28 0400A38C */  lw         $v1, 0x4($a1)
    /* E72C 8001DF2C 000082AC */  sw         $v0, 0x0($a0)
    /* E730 8001DF30 040083AC */  sw         $v1, 0x4($a0)
    /* E734 8001DF34 0800A28C */  lw         $v0, 0x8($a1)
    /* E738 8001DF38 0C00A38C */  lw         $v1, 0xC($a1)
    /* E73C 8001DF3C 080082AC */  sw         $v0, 0x8($a0)
    /* E740 8001DF40 0C0083AC */  sw         $v1, 0xC($a0)
    /* E744 8001DF44 1000A28C */  lw         $v0, 0x10($a1)
    /* E748 8001DF48 1400A38C */  lw         $v1, 0x14($a1)
    /* E74C 8001DF4C 100082AC */  sw         $v0, 0x10($a0)
    /* E750 8001DF50 140083AC */  sw         $v1, 0x14($a0)
    /* E754 8001DF54 1800A28C */  lw         $v0, 0x18($a1)
    /* E758 8001DF58 1C00A38C */  lw         $v1, 0x1C($a1)
    /* E75C 8001DF5C 180082AC */  sw         $v0, 0x18($a0)
    /* E760 8001DF60 1C0083AC */  sw         $v1, 0x1C($a0)
    /* E764 8001DF64 2000BF8F */  lw         $ra, 0x20($sp)
    /* E768 8001DF68 2800BD27 */  addiu      $sp, $sp, 0x28
    /* E76C 8001DF6C 0800E003 */  jr         $ra
    /* E770 8001DF70 00000000 */   nop
endlabel func_8001DDD0
