nonmatching func_801BAFBC, 0x184

glabel func_801BAFBC
    /* 32044 801BAFBC D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 32048 801BAFC0 21200000 */  addu       $a0, $zero, $zero
    /* 3204C 801BAFC4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 32050 801BAFC8 1E80123C */  lui        $s2, %hi(D_801D88D8)
    /* 32054 801BAFCC D8885226 */  addiu      $s2, $s2, %lo(D_801D88D8)
    /* 32058 801BAFD0 21284002 */  addu       $a1, $s2, $zero
    /* 3205C 801BAFD4 2400B5AF */  sw         $s5, 0x24($sp)
    /* 32060 801BAFD8 40FF1524 */  addiu      $s5, $zero, -0xC0
    /* 32064 801BAFDC 88FF0224 */  addiu      $v0, $zero, -0x78
    /* 32068 801BAFE0 2000B4AF */  sw         $s4, 0x20($sp)
    /* 3206C 801BAFE4 80011424 */  addiu      $s4, $zero, 0x180
    /* 32070 801BAFE8 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 32074 801BAFEC 78001324 */  addiu      $s3, $zero, 0x78
    /* 32078 801BAFF0 1400B1AF */  sw         $s1, 0x14($sp)
    /* 3207C 801BAFF4 10001124 */  addiu      $s1, $zero, 0x10
    /* 32080 801BAFF8 1000B0AF */  sw         $s0, 0x10($sp)
    /* 32084 801BAFFC 80001024 */  addiu      $s0, $zero, 0x80
    /* 32088 801BB000 2800BFAF */  sw         $ra, 0x28($sp)
    /* 3208C 801BB004 000055A6 */  sh         $s5, 0x0($s2)
    /* 32090 801BB008 1E80013C */  lui        $at, %hi(D_801D88DA)
    /* 32094 801BB00C DA8822A4 */  sh         $v0, %lo(D_801D88DA)($at)
    /* 32098 801BB010 1E80013C */  lui        $at, %hi(D_801D88DC)
    /* 3209C 801BB014 DC8834A4 */  sh         $s4, %lo(D_801D88DC)($at)
    /* 320A0 801BB018 1E80013C */  lui        $at, %hi(D_801D88DE)
    /* 320A4 801BB01C DE8833A4 */  sh         $s3, %lo(D_801D88DE)($at)
    /* 320A8 801BB020 1E80013C */  lui        $at, %hi(D_801D88E0)
    /* 320AC 801BB024 E08831A0 */  sb         $s1, %lo(D_801D88E0)($at)
    /* 320B0 801BB028 1E80013C */  lui        $at, %hi(D_801D88E1)
    /* 320B4 801BB02C E18820A0 */  sb         $zero, %lo(D_801D88E1)($at)
    /* 320B8 801BB030 1E80013C */  lui        $at, %hi(D_801D88E2)
    /* 320BC 801BB034 E28830A0 */  sb         $s0, %lo(D_801D88E2)($at)
    /* 320C0 801BB038 1E80013C */  lui        $at, %hi(D_801D88E3)
    /* 320C4 801BB03C E38831A0 */  sb         $s1, %lo(D_801D88E3)($at)
    /* 320C8 801BB040 1E80013C */  lui        $at, %hi(D_801D88E4)
    /* 320CC 801BB044 E48820A0 */  sb         $zero, %lo(D_801D88E4)($at)
    /* 320D0 801BB048 1E80013C */  lui        $at, %hi(D_801D88E5)
    /* 320D4 801BB04C E58830A0 */  sb         $s0, %lo(D_801D88E5)($at)
    /* 320D8 801BB050 1E80013C */  lui        $at, %hi(D_801D88E6)
    /* 320DC 801BB054 E68820A0 */  sb         $zero, %lo(D_801D88E6)($at)
    /* 320E0 801BB058 1E80013C */  lui        $at, %hi(D_801D88E7)
    /* 320E4 801BB05C E78820A0 */  sb         $zero, %lo(D_801D88E7)($at)
    /* 320E8 801BB060 1E80013C */  lui        $at, %hi(D_801D88E8)
    /* 320EC 801BB064 E88820A0 */  sb         $zero, %lo(D_801D88E8)($at)
    /* 320F0 801BB068 1E80013C */  lui        $at, %hi(D_801D88E9)
    /* 320F4 801BB06C E98820A0 */  sb         $zero, %lo(D_801D88E9)($at)
    /* 320F8 801BB070 1E80013C */  lui        $at, %hi(D_801D88EA)
    /* 320FC 801BB074 EA8820A0 */  sb         $zero, %lo(D_801D88EA)($at)
    /* 32100 801BB078 1E80013C */  lui        $at, %hi(D_801D88EB)
    /* 32104 801BB07C EB8820A0 */  sb         $zero, %lo(D_801D88EB)($at)
    /* 32108 801BB080 985A060C */  jal        func_80196A60
    /* 3210C 801BB084 06000624 */   addiu     $a2, $zero, 0x6
    /* 32110 801BB088 21200000 */  addu       $a0, $zero, $zero
    /* 32114 801BB08C 21284002 */  addu       $a1, $s2, $zero
    /* 32118 801BB090 01000224 */  addiu      $v0, $zero, 0x1
    /* 3211C 801BB094 0000B5A4 */  sh         $s5, 0x0($a1)
    /* 32120 801BB098 1E80013C */  lui        $at, %hi(D_801D88DA)
    /* 32124 801BB09C DA8822A4 */  sh         $v0, %lo(D_801D88DA)($at)
    /* 32128 801BB0A0 1E80013C */  lui        $at, %hi(D_801D88DC)
    /* 3212C 801BB0A4 DC8834A4 */  sh         $s4, %lo(D_801D88DC)($at)
    /* 32130 801BB0A8 1E80013C */  lui        $at, %hi(D_801D88DE)
    /* 32134 801BB0AC DE8833A4 */  sh         $s3, %lo(D_801D88DE)($at)
    /* 32138 801BB0B0 1E80013C */  lui        $at, %hi(D_801D88E0)
    /* 3213C 801BB0B4 E08820A0 */  sb         $zero, %lo(D_801D88E0)($at)
    /* 32140 801BB0B8 1E80013C */  lui        $at, %hi(D_801D88E1)
    /* 32144 801BB0BC E18820A0 */  sb         $zero, %lo(D_801D88E1)($at)
    /* 32148 801BB0C0 1E80013C */  lui        $at, %hi(D_801D88E2)
    /* 3214C 801BB0C4 E28820A0 */  sb         $zero, %lo(D_801D88E2)($at)
    /* 32150 801BB0C8 1E80013C */  lui        $at, %hi(D_801D88E3)
    /* 32154 801BB0CC E38820A0 */  sb         $zero, %lo(D_801D88E3)($at)
    /* 32158 801BB0D0 1E80013C */  lui        $at, %hi(D_801D88E4)
    /* 3215C 801BB0D4 E48820A0 */  sb         $zero, %lo(D_801D88E4)($at)
    /* 32160 801BB0D8 1E80013C */  lui        $at, %hi(D_801D88E5)
    /* 32164 801BB0DC E58820A0 */  sb         $zero, %lo(D_801D88E5)($at)
    /* 32168 801BB0E0 1E80013C */  lui        $at, %hi(D_801D88E6)
    /* 3216C 801BB0E4 E68831A0 */  sb         $s1, %lo(D_801D88E6)($at)
    /* 32170 801BB0E8 1E80013C */  lui        $at, %hi(D_801D88E7)
    /* 32174 801BB0EC E78820A0 */  sb         $zero, %lo(D_801D88E7)($at)
    /* 32178 801BB0F0 1E80013C */  lui        $at, %hi(D_801D88E8)
    /* 3217C 801BB0F4 E88830A0 */  sb         $s0, %lo(D_801D88E8)($at)
    /* 32180 801BB0F8 1E80013C */  lui        $at, %hi(D_801D88E9)
    /* 32184 801BB0FC E98831A0 */  sb         $s1, %lo(D_801D88E9)($at)
    /* 32188 801BB100 1E80013C */  lui        $at, %hi(D_801D88EA)
    /* 3218C 801BB104 EA8820A0 */  sb         $zero, %lo(D_801D88EA)($at)
    /* 32190 801BB108 1E80013C */  lui        $at, %hi(D_801D88EB)
    /* 32194 801BB10C EB8830A0 */  sb         $s0, %lo(D_801D88EB)($at)
    /* 32198 801BB110 985A060C */  jal        func_80196A60
    /* 3219C 801BB114 06000624 */   addiu     $a2, $zero, 0x6
    /* 321A0 801BB118 2800BF8F */  lw         $ra, 0x28($sp)
    /* 321A4 801BB11C 2400B58F */  lw         $s5, 0x24($sp)
    /* 321A8 801BB120 2000B48F */  lw         $s4, 0x20($sp)
    /* 321AC 801BB124 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 321B0 801BB128 1800B28F */  lw         $s2, 0x18($sp)
    /* 321B4 801BB12C 1400B18F */  lw         $s1, 0x14($sp)
    /* 321B8 801BB130 1000B08F */  lw         $s0, 0x10($sp)
    /* 321BC 801BB134 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 321C0 801BB138 0800E003 */  jr         $ra
    /* 321C4 801BB13C 00000000 */   nop
endlabel func_801BAFBC
