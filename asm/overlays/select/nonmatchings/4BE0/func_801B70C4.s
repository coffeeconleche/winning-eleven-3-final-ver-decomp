nonmatching func_801B70C4, 0x740

glabel func_801B70C4
    /* 2E14C 801B70C4 D8FFBD27 */  addiu      $sp, $sp, -0x28
    /* 2E150 801B70C8 1180033C */  lui        $v1, %hi(D_8010A322)
    /* 2E154 801B70CC 22A36390 */  lbu        $v1, %lo(D_8010A322)($v1)
    /* 2E158 801B70D0 01000224 */  addiu      $v0, $zero, 0x1
    /* 2E15C 801B70D4 1800B0AF */  sw         $s0, 0x18($sp)
    /* 2E160 801B70D8 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 2E164 801B70DC 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 2E168 801B70E0 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 2E16C 801B70E4 2000BFAF */  sw         $ra, 0x20($sp)
    /* 2E170 801B70E8 1E80013C */  lui        $at, %hi(D_801D8A48)
    /* 2E174 801B70EC 488A22A0 */  sb         $v0, %lo(D_801D8A48)($at)
    /* 2E178 801B70F0 4800622C */  sltiu      $v0, $v1, 0x48
    /* 2E17C 801B70F4 BD014010 */  beqz       $v0, .L801B77EC
    /* 2E180 801B70F8 801F113C */   lui       $s1, (0x1F800000 >> 16)
    /* 2E184 801B70FC 80100300 */  sll        $v0, $v1, 2
    /* 2E188 801B7100 1980013C */  lui        $at, %hi(jtbl_8018B0FC)
    /* 2E18C 801B7104 21082200 */  addu       $at, $at, $v0
    /* 2E190 801B7108 FCB0228C */  lw         $v0, %lo(jtbl_8018B0FC)($at)
    /* 2E194 801B710C 00000000 */  nop
    /* 2E198 801B7110 08004000 */  jr         $v0
    /* 2E19C 801B7114 00000000 */   nop
  jlabel .L801B7118
    /* 2E1A0 801B7118 01000224 */  addiu      $v0, $zero, 0x1
    /* 2E1A4 801B711C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E1A8 801B7120 21080102 */  addu       $at, $s0, $at
    /* 2E1AC 801B7124 228F20A0 */  sb         $zero, -0x70DE($at)
    /* 2E1B0 801B7128 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E1B4 801B712C 21080102 */  addu       $at, $s0, $at
    /* 2E1B8 801B7130 238F20A0 */  sb         $zero, -0x70DD($at)
    /* 2E1BC 801B7134 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E1C0 801B7138 21080102 */  addu       $at, $s0, $at
    /* 2E1C4 801B713C A8AB20A0 */  sb         $zero, -0x5458($at)
    /* 2E1C8 801B7140 1E80013C */  lui        $at, %hi(D_801D8B18)
    /* 2E1CC 801B7144 188B22A0 */  sb         $v0, %lo(D_801D8B18)($at)
    /* 2E1D0 801B7148 01000224 */  addiu      $v0, $zero, 0x1
    /* 2E1D4 801B714C 1E80013C */  lui        $at, %hi(D_801D8DFC)
    /* 2E1D8 801B7150 FC8D20A0 */  sb         $zero, %lo(D_801D8DFC)($at)
    /* 2E1DC 801B7154 1E80013C */  lui        $at, %hi(D_801D8DFB)
    /* 2E1E0 801B7158 FB8D20A0 */  sb         $zero, %lo(D_801D8DFB)($at)
    /* 2E1E4 801B715C 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 2E1E8 801B7160 F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 2E1EC 801B7164 1E80013C */  lui        $at, %hi(D_801DADB6)
    /* 2E1F0 801B7168 B6AD20A0 */  sb         $zero, %lo(D_801DADB6)($at)
    /* 2E1F4 801B716C 1E80013C */  lui        $at, %hi(D_801DA5D0)
    /* 2E1F8 801B7170 D0A520A4 */  sh         $zero, %lo(D_801DA5D0)($at)
    /* 2E1FC 801B7174 1E80013C */  lui        $at, %hi(D_801DA5D2)
    /* 2E200 801B7178 D2A520A4 */  sh         $zero, %lo(D_801DA5D2)($at)
    /* 2E204 801B717C 1E80013C */  lui        $at, %hi(D_801DA5D4)
    /* 2E208 801B7180 D4A522A4 */  sh         $v0, %lo(D_801DA5D4)($at)
    /* 2E20C 801B7184 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E210 801B7188 21080102 */  addu       $at, $s0, $at
    /* 2E214 801B718C DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 2E218 801B7190 04000224 */  addiu      $v0, $zero, 0x4
    /* 2E21C 801B7194 1E80013C */  lui        $at, %hi(D_801DA5D6)
    /* 2E220 801B7198 D6A522A4 */  sh         $v0, %lo(D_801DA5D6)($at)
    /* 2E224 801B719C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E228 801B71A0 21080102 */  addu       $at, $s0, $at
    /* 2E22C 801B71A4 A1AB20A0 */  sb         $zero, -0x545F($at)
    /* 2E230 801B71A8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E234 801B71AC 21080102 */  addu       $at, $s0, $at
    /* 2E238 801B71B0 A0AB20A0 */  sb         $zero, -0x5460($at)
    /* 2E23C 801B71B4 E1DD0608 */  j          .L801B7784
    /* 2E240 801B71B8 01006324 */   addiu     $v1, $v1, 0x1
  jlabel .L801B71BC
    /* 2E244 801B71BC 36E1060C */  jal        func_801B84D8
    /* 2E248 801B71C0 01000424 */   addiu     $a0, $zero, 0x1
    /* 2E24C 801B71C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E250 801B71C8 21080102 */  addu       $at, $s0, $at
    /* 2E254 801B71CC DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2E258 801B71D0 BBDD0608 */  j          .L801B76EC
    /* 2E25C 801B71D4 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B71D8
    /* 2E260 801B71D8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E264 801B71DC 21080102 */  addu       $at, $s0, $at
    /* 2E268 801B71E0 208F2390 */  lbu        $v1, -0x70E0($at)
    /* 2E26C 801B71E4 00000000 */  nop
    /* 2E270 801B71E8 15006010 */  beqz       $v1, .L801B7240
    /* 2E274 801B71EC 21200000 */   addu      $a0, $zero, $zero
    /* 2E278 801B71F0 1980073C */  lui        $a3, %hi(D_8018B1F0)
    /* 2E27C 801B71F4 F0B1E724 */  addiu      $a3, $a3, %lo(D_8018B1F0)
    /* 2E280 801B71F8 03000624 */  addiu      $a2, $zero, 0x3
    /* 2E284 801B71FC FF000524 */  addiu      $a1, $zero, 0xFF
    /* 2E288 801B7200 80190300 */  sll        $v1, $v1, 6
  .L801B7204:
    /* 2E28C 801B7204 21186700 */  addu       $v1, $v1, $a3
    /* 2E290 801B7208 80100400 */  sll        $v0, $a0, 2
    /* 2E294 801B720C 21104300 */  addu       $v0, $v0, $v1
    /* 2E298 801B7210 0000428C */  lw         $v0, 0x0($v0)
    /* 2E29C 801B7214 00000000 */  nop
    /* 2E2A0 801B7218 060046A0 */  sb         $a2, 0x6($v0)
    /* 2E2A4 801B721C 070044A0 */  sb         $a0, 0x7($v0)
    /* 2E2A8 801B7220 080045A0 */  sb         $a1, 0x8($v0)
    /* 2E2AC 801B7224 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E2B0 801B7228 21080102 */  addu       $at, $s0, $at
    /* 2E2B4 801B722C 208F2390 */  lbu        $v1, -0x70E0($at)
    /* 2E2B8 801B7230 01008424 */  addiu      $a0, $a0, 0x1
    /* 2E2BC 801B7234 2A108300 */  slt        $v0, $a0, $v1
    /* 2E2C0 801B7238 F2FF4014 */  bnez       $v0, .L801B7204
    /* 2E2C4 801B723C 80190300 */   sll       $v1, $v1, 6
  .L801B7240:
    /* 2E2C8 801B7240 36E1060C */  jal        func_801B84D8
    /* 2E2CC 801B7244 21200000 */   addu      $a0, $zero, $zero
    /* 2E2D0 801B7248 0A000224 */  addiu      $v0, $zero, 0xA
    /* 2E2D4 801B724C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E2D8 801B7250 21080102 */  addu       $at, $s0, $at
    /* 2E2DC 801B7254 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 2E2E0 801B7258 FBDD0608 */  j          .L801B77EC
    /* 2E2E4 801B725C 00000000 */   nop
  jlabel .L801B7260
    /* 2E2E8 801B7260 C2E1060C */  jal        func_801B8708
    /* 2E2EC 801B7264 21200000 */   addu      $a0, $zero, $zero
    /* 2E2F0 801B7268 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E2F4 801B726C 21080102 */  addu       $at, $s0, $at
    /* 2E2F8 801B7270 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2E2FC 801B7274 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E300 801B7278 21080102 */  addu       $at, $s0, $at
    /* 2E304 801B727C 238F20A0 */  sb         $zero, -0x70DD($at)
    /* 2E308 801B7280 1E80013C */  lui        $at, %hi(D_801DADB6)
    /* 2E30C 801B7284 B6AD20A0 */  sb         $zero, %lo(D_801DADB6)($at)
    /* 2E310 801B7288 BBDD0608 */  j          .L801B76EC
    /* 2E314 801B728C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B7290
    /* 2E318 801B7290 35E3060C */  jal        func_801B8CD4
    /* 2E31C 801B7294 00000000 */   nop
    /* 2E320 801B7298 1E80023C */  lui        $v0, %hi(D_801DA618)
    /* 2E324 801B729C 18A64290 */  lbu        $v0, %lo(D_801DA618)($v0)
    /* 2E328 801B72A0 00000000 */  nop
    /* 2E32C 801B72A4 06004010 */  beqz       $v0, .L801B72C0
    /* 2E330 801B72A8 00000000 */   nop
    /* 2E334 801B72AC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E338 801B72B0 21080102 */  addu       $at, $s0, $at
    /* 2E33C 801B72B4 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2E340 801B72B8 BBDD0608 */  j          .L801B76EC
    /* 2E344 801B72BC 01004224 */   addiu     $v0, $v0, 0x1
  .L801B72C0:
    /* 2E348 801B72C0 88E2060C */  jal        func_801B8A20
    /* 2E34C 801B72C4 00000000 */   nop
    /* 2E350 801B72C8 01000424 */  addiu      $a0, $zero, 0x1
    /* 2E354 801B72CC ECE2060C */  jal        func_801B8BB0
    /* 2E358 801B72D0 02000524 */   addiu     $a1, $zero, 0x2
    /* 2E35C 801B72D4 05000424 */  addiu      $a0, $zero, 0x5
    /* 2E360 801B72D8 ECE2060C */  jal        func_801B8BB0
    /* 2E364 801B72DC 03000524 */   addiu     $a1, $zero, 0x3
    /* 2E368 801B72E0 36E1060C */  jal        func_801B84D8
    /* 2E36C 801B72E4 21200000 */   addu      $a0, $zero, $zero
    /* 2E370 801B72E8 FBDD0608 */  j          .L801B77EC
    /* 2E374 801B72EC 00000000 */   nop
  jlabel .L801B72F0
    /* 2E378 801B72F0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E37C 801B72F4 21080102 */  addu       $at, $s0, $at
    /* 2E380 801B72F8 158F20A0 */  sb         $zero, -0x70EB($at)
    /* 2E384 801B72FC 82A6060C */  jal        func_801A9A08
    /* 2E388 801B7300 00000000 */   nop
    /* 2E38C 801B7304 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E390 801B7308 21080102 */  addu       $at, $s0, $at
    /* 2E394 801B730C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2E398 801B7310 BBDD0608 */  j          .L801B76EC
    /* 2E39C 801B7314 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B7318
    /* 2E3A0 801B7318 36E1060C */  jal        func_801B84D8
    /* 2E3A4 801B731C 21200000 */   addu      $a0, $zero, $zero
    /* 2E3A8 801B7320 F1A9060C */  jal        func_801AA7C4
    /* 2E3AC 801B7324 01000424 */   addiu     $a0, $zero, 0x1
    /* 2E3B0 801B7328 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E3B4 801B732C 21080102 */  addu       $at, $s0, $at
    /* 2E3B8 801B7330 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2E3BC 801B7334 BBDD0608 */  j          .L801B76EC
    /* 2E3C0 801B7338 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B733C
    /* 2E3C4 801B733C C2E1060C */  jal        func_801B8708
    /* 2E3C8 801B7340 21200000 */   addu      $a0, $zero, $zero
    /* 2E3CC 801B7344 35E3060C */  jal        func_801B8CD4
    /* 2E3D0 801B7348 00000000 */   nop
    /* 2E3D4 801B734C 15A7060C */  jal        func_801A9C54
    /* 2E3D8 801B7350 00000000 */   nop
    /* 2E3DC 801B7354 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E3E0 801B7358 21080102 */  addu       $at, $s0, $at
    /* 2E3E4 801B735C A0AB2390 */  lbu        $v1, -0x5460($at)
    /* 2E3E8 801B7360 00000000 */  nop
    /* 2E3EC 801B7364 C0100300 */  sll        $v0, $v1, 3
    /* 2E3F0 801B7368 21104300 */  addu       $v0, $v0, $v1
    /* 2E3F4 801B736C 80100200 */  sll        $v0, $v0, 2
    /* 2E3F8 801B7370 21100202 */  addu       $v0, $s0, $v0
    /* 2E3FC 801B7374 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E400 801B7378 21084100 */  addu       $at, $v0, $at
    /* 2E404 801B737C 268F2390 */  lbu        $v1, -0x70DA($at)
    /* 2E408 801B7380 00000000 */  nop
    /* 2E40C 801B7384 01006324 */  addiu      $v1, $v1, 0x1
    /* 2E410 801B7388 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E414 801B738C 21084100 */  addu       $at, $v0, $at
    /* 2E418 801B7390 268F23A0 */  sb         $v1, -0x70DA($at)
    /* 2E41C 801B7394 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E420 801B7398 21080102 */  addu       $at, $s0, $at
    /* 2E424 801B739C A1AB2390 */  lbu        $v1, -0x545F($at)
    /* 2E428 801B73A0 00000000 */  nop
    /* 2E42C 801B73A4 C0100300 */  sll        $v0, $v1, 3
    /* 2E430 801B73A8 21104300 */  addu       $v0, $v0, $v1
    /* 2E434 801B73AC 80100200 */  sll        $v0, $v0, 2
    /* 2E438 801B73B0 21100202 */  addu       $v0, $s0, $v0
    /* 2E43C 801B73B4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E440 801B73B8 21084100 */  addu       $at, $v0, $at
    /* 2E444 801B73BC 268F2390 */  lbu        $v1, -0x70DA($at)
    /* 2E448 801B73C0 00000000 */  nop
    /* 2E44C 801B73C4 01006324 */  addiu      $v1, $v1, 0x1
    /* 2E450 801B73C8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E454 801B73CC 21084100 */  addu       $at, $v0, $at
    /* 2E458 801B73D0 268F23A0 */  sb         $v1, -0x70DA($at)
    /* 2E45C 801B73D4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E460 801B73D8 21080102 */  addu       $at, $s0, $at
    /* 2E464 801B73DC A0AB2390 */  lbu        $v1, -0x5460($at)
    /* 2E468 801B73E0 00000000 */  nop
    /* 2E46C 801B73E4 C0100300 */  sll        $v0, $v1, 3
    /* 2E470 801B73E8 21104300 */  addu       $v0, $v0, $v1
    /* 2E474 801B73EC 1E80033C */  lui        $v1, %hi(D_801D8A4C)
    /* 2E478 801B73F0 4C8A638C */  lw         $v1, %lo(D_801D8A4C)($v1)
    /* 2E47C 801B73F4 80100200 */  sll        $v0, $v0, 2
    /* 2E480 801B73F8 05006390 */  lbu        $v1, 0x5($v1)
    /* 2E484 801B73FC 21100202 */  addu       $v0, $s0, $v0
    /* 2E488 801B7400 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E48C 801B7404 21084100 */  addu       $at, $v0, $at
    /* 2E490 801B7408 378F23A0 */  sb         $v1, -0x70C9($at)
    /* 2E494 801B740C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E498 801B7410 21080102 */  addu       $at, $s0, $at
    /* 2E49C 801B7414 A1AB2390 */  lbu        $v1, -0x545F($at)
    /* 2E4A0 801B7418 00000000 */  nop
    /* 2E4A4 801B741C C0100300 */  sll        $v0, $v1, 3
    /* 2E4A8 801B7420 21104300 */  addu       $v0, $v0, $v1
    /* 2E4AC 801B7424 1E80033C */  lui        $v1, %hi(D_801D8A4C)
    /* 2E4B0 801B7428 4C8A638C */  lw         $v1, %lo(D_801D8A4C)($v1)
    /* 2E4B4 801B742C 80100200 */  sll        $v0, $v0, 2
    /* 2E4B8 801B7430 05006390 */  lbu        $v1, 0x5($v1)
    /* 2E4BC 801B7434 21100202 */  addu       $v0, $s0, $v0
    /* 2E4C0 801B7438 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E4C4 801B743C 21084100 */  addu       $at, $v0, $at
    /* 2E4C8 801B7440 378F23A0 */  sb         $v1, -0x70C9($at)
    /* 2E4CC 801B7444 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E4D0 801B7448 21080102 */  addu       $at, $s0, $at
    /* 2E4D4 801B744C DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2E4D8 801B7450 BBDD0608 */  j          .L801B76EC
    /* 2E4DC 801B7454 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B7458
    /* 2E4E0 801B7458 D1022292 */  lbu        $v0, 0x2D1($s1)
    /* 2E4E4 801B745C D2022392 */  lbu        $v1, 0x2D2($s1)
    /* 2E4E8 801B7460 1E80013C */  lui        $at, %hi(D_801DA333)
    /* 2E4EC 801B7464 33A322A0 */  sb         $v0, %lo(D_801DA333)($at)
    /* 2E4F0 801B7468 2B104300 */  sltu       $v0, $v0, $v1
    /* 2E4F4 801B746C 1E80013C */  lui        $at, %hi(D_801DA334)
    /* 2E4F8 801B7470 34A323A0 */  sb         $v1, %lo(D_801DA334)($at)
    /* 2E4FC 801B7474 09004014 */  bnez       $v0, .L801B749C
    /* 2E500 801B7478 00000000 */   nop
    /* 2E504 801B747C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E508 801B7480 21080102 */  addu       $at, $s0, $at
    /* 2E50C 801B7484 A0AB2290 */  lbu        $v0, -0x5460($at)
    /* 2E510 801B7488 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E514 801B748C 21080102 */  addu       $at, $s0, $at
    /* 2E518 801B7490 A1AB2390 */  lbu        $v1, -0x545F($at)
    /* 2E51C 801B7494 2DDD0608 */  j          .L801B74B4
    /* 2E520 801B7498 00000000 */   nop
  .L801B749C:
    /* 2E524 801B749C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E528 801B74A0 21080102 */  addu       $at, $s0, $at
    /* 2E52C 801B74A4 A1AB2290 */  lbu        $v0, -0x545F($at)
    /* 2E530 801B74A8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E534 801B74AC 21080102 */  addu       $at, $s0, $at
    /* 2E538 801B74B0 A0AB2390 */  lbu        $v1, -0x5460($at)
  .L801B74B4:
    /* 2E53C 801B74B4 1E80013C */  lui        $at, %hi(D_801D8803)
    /* 2E540 801B74B8 038822A0 */  sb         $v0, %lo(D_801D8803)($at)
    /* 2E544 801B74BC 1E80013C */  lui        $at, %hi(D_801D8804)
    /* 2E548 801B74C0 048823A0 */  sb         $v1, %lo(D_801D8804)($at)
    /* 2E54C 801B74C4 1E80033C */  lui        $v1, %hi(D_801D8A4C)
    /* 2E550 801B74C8 4C8A638C */  lw         $v1, %lo(D_801D8A4C)($v1)
    /* 2E554 801B74CC 03000224 */  addiu      $v0, $zero, 0x3
    /* 2E558 801B74D0 060062A0 */  sb         $v0, 0x6($v1)
    /* 2E55C 801B74D4 1E80033C */  lui        $v1, %hi(D_801D8A4C)
    /* 2E560 801B74D8 4C8A638C */  lw         $v1, %lo(D_801D8A4C)($v1)
    /* 2E564 801B74DC 1E80023C */  lui        $v0, %hi(D_801D8803)
    /* 2E568 801B74E0 03884290 */  lbu        $v0, %lo(D_801D8803)($v0)
    /* 2E56C 801B74E4 00000000 */  nop
    /* 2E570 801B74E8 070062A0 */  sb         $v0, 0x7($v1)
    /* 2E574 801B74EC 1E80033C */  lui        $v1, %hi(D_801D8A4C)
    /* 2E578 801B74F0 4C8A638C */  lw         $v1, %lo(D_801D8A4C)($v1)
    /* 2E57C 801B74F4 1E80023C */  lui        $v0, %hi(D_801D8804)
    /* 2E580 801B74F8 04884290 */  lbu        $v0, %lo(D_801D8804)($v0)
    /* 2E584 801B74FC 00000000 */  nop
    /* 2E588 801B7500 080062A0 */  sb         $v0, 0x8($v1)
    /* 2E58C 801B7504 14000224 */  addiu      $v0, $zero, 0x14
    /* 2E590 801B7508 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E594 801B750C 21080102 */  addu       $at, $s0, $at
    /* 2E598 801B7510 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 2E59C 801B7514 FBDD0608 */  j          .L801B77EC
    /* 2E5A0 801B7518 00000000 */   nop
  jlabel .L801B751C
    /* 2E5A4 801B751C 36E1060C */  jal        func_801B84D8
    /* 2E5A8 801B7520 21200000 */   addu      $a0, $zero, $zero
    /* 2E5AC 801B7524 1E80023C */  lui        $v0, %hi(D_801D8A4C)
    /* 2E5B0 801B7528 4C8A428C */  lw         $v0, %lo(D_801D8A4C)($v0)
    /* 2E5B4 801B752C 00000000 */  nop
    /* 2E5B8 801B7530 04004390 */  lbu        $v1, 0x4($v0)
    /* 2E5BC 801B7534 FF000224 */  addiu      $v0, $zero, 0xFF
    /* 2E5C0 801B7538 12006214 */  bne        $v1, $v0, .L801B7584
    /* 2E5C4 801B753C 0A000324 */   addiu     $v1, $zero, 0xA
    /* 2E5C8 801B7540 88E2060C */  jal        func_801B8A20
    /* 2E5CC 801B7544 00000000 */   nop
    /* 2E5D0 801B7548 1E80023C */  lui        $v0, %hi(D_801D8803)
    /* 2E5D4 801B754C 03884290 */  lbu        $v0, %lo(D_801D8803)($v0)
    /* 2E5D8 801B7550 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E5DC 801B7554 21080102 */  addu       $at, $s0, $at
    /* 2E5E0 801B7558 A8AB22A0 */  sb         $v0, -0x5458($at)
    /* 2E5E4 801B755C CEE3060C */  jal        func_801B8F38
    /* 2E5E8 801B7560 00000000 */   nop
    /* 2E5EC 801B7564 1E000224 */  addiu      $v0, $zero, 0x1E
    /* 2E5F0 801B7568 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 2E5F4 801B756C F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 2E5F8 801B7570 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E5FC 801B7574 21080102 */  addu       $at, $s0, $at
    /* 2E600 801B7578 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 2E604 801B757C FBDD0608 */  j          .L801B77EC
    /* 2E608 801B7580 00000000 */   nop
  .L801B7584:
    /* 2E60C 801B7584 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E610 801B7588 21080102 */  addu       $at, $s0, $at
    /* 2E614 801B758C 228F2290 */  lbu        $v0, -0x70DE($at)
    /* 2E618 801B7590 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E61C 801B7594 21080102 */  addu       $at, $s0, $at
    /* 2E620 801B7598 DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 2E624 801B759C 01004224 */  addiu      $v0, $v0, 0x1
    /* 2E628 801B75A0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E62C 801B75A4 21080102 */  addu       $at, $s0, $at
    /* 2E630 801B75A8 228F22A0 */  sb         $v0, -0x70DE($at)
    /* 2E634 801B75AC FBDD0608 */  j          .L801B77EC
    /* 2E638 801B75B0 00000000 */   nop
  jlabel .L801B75B4
    /* 2E63C 801B75B4 40E4060C */  jal        func_801B9100
    /* 2E640 801B75B8 00000000 */   nop
    /* 2E644 801B75BC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E648 801B75C0 21080102 */  addu       $at, $s0, $at
    /* 2E64C 801B75C4 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2E650 801B75C8 01000324 */  addiu      $v1, $zero, 0x1
    /* 2E654 801B75CC 1E80013C */  lui        $at, %hi(D_801DADB6)
    /* 2E658 801B75D0 B6AD23A0 */  sb         $v1, %lo(D_801DADB6)($at)
    /* 2E65C 801B75D4 BBDD0608 */  j          .L801B76EC
    /* 2E660 801B75D8 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B75DC
    /* 2E664 801B75DC 1FBC010C */  jal        func_8006F07C
    /* 2E668 801B75E0 10000424 */   addiu     $a0, $zero, 0x10
    /* 2E66C 801B75E4 81004010 */  beqz       $v0, .L801B77EC
    /* 2E670 801B75E8 00000000 */   nop
    /* 2E674 801B75EC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E678 801B75F0 21080102 */  addu       $at, $s0, $at
    /* 2E67C 801B75F4 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2E680 801B75F8 BBDD0608 */  j          .L801B76EC
    /* 2E684 801B75FC 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801B7600
    /* 2E688 801B7600 01000424 */  addiu      $a0, $zero, 0x1
    /* 2E68C 801B7604 A33A060C */  jal        func_8018EA8C
    /* 2E690 801B7608 21280000 */   addu      $a1, $zero, $zero
    /* 2E694 801B760C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E698 801B7610 21080102 */  addu       $at, $s0, $at
    /* 2E69C 801B7614 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 2E6A0 801B7618 00000000 */  nop
    /* 2E6A4 801B761C 21186200 */  addu       $v1, $v1, $v0
    /* 2E6A8 801B7620 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E6AC 801B7624 21080102 */  addu       $at, $s0, $at
    /* 2E6B0 801B7628 DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 2E6B4 801B762C FBDD0608 */  j          .L801B77EC
    /* 2E6B8 801B7630 00000000 */   nop
  jlabel .L801B7634
    /* 2E6BC 801B7634 40000424 */  addiu      $a0, $zero, 0x40
    /* 2E6C0 801B7638 37BC010C */  jal        func_8006F0DC
    /* 2E6C4 801B763C 21280000 */   addu      $a1, $zero, $zero
    /* 2E6C8 801B7640 6A004010 */  beqz       $v0, .L801B77EC
    /* 2E6CC 801B7644 28000224 */   addiu     $v0, $zero, 0x28
    /* 2E6D0 801B7648 AFDD0608 */  j          .L801B76BC
    /* 2E6D4 801B764C 00000000 */   nop
  jlabel .L801B7650
    /* 2E6D8 801B7650 01DE060C */  jal        func_801B7804
    /* 2E6DC 801B7654 00000000 */   nop
    /* 2E6E0 801B7658 21184000 */  addu       $v1, $v0, $zero
    /* 2E6E4 801B765C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2E6E8 801B7660 05006210 */  beq        $v1, $v0, .L801B7678
    /* 2E6EC 801B7664 02000224 */   addiu     $v0, $zero, 0x2
    /* 2E6F0 801B7668 60006214 */  bne        $v1, $v0, .L801B77EC
    /* 2E6F4 801B766C 32000224 */   addiu     $v0, $zero, 0x32
    /* 2E6F8 801B7670 CEDD0608 */  j          .L801B7738
    /* 2E6FC 801B7674 00000000 */   nop
  .L801B7678:
    /* 2E700 801B7678 1E000224 */  addiu      $v0, $zero, 0x1E
    /* 2E704 801B767C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E708 801B7680 21080102 */  addu       $at, $s0, $at
    /* 2E70C 801B7684 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 2E710 801B7688 FBDD0608 */  j          .L801B77EC
    /* 2E714 801B768C 00000000 */   nop
  jlabel .L801B7690
    /* 2E718 801B7690 A5B8060C */  jal        func_801AE294
    /* 2E71C 801B7694 21200000 */   addu      $a0, $zero, $zero
    /* 2E720 801B7698 21184000 */  addu       $v1, $v0, $zero
    /* 2E724 801B769C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2E728 801B76A0 05006210 */  beq        $v1, $v0, .L801B76B8
    /* 2E72C 801B76A4 02000224 */   addiu     $v0, $zero, 0x2
    /* 2E730 801B76A8 50006214 */  bne        $v1, $v0, .L801B77EC
    /* 2E734 801B76AC 3C000224 */   addiu     $v0, $zero, 0x3C
    /* 2E738 801B76B0 F1DD0608 */  j          .L801B77C4
    /* 2E73C 801B76B4 00000000 */   nop
  .L801B76B8:
    /* 2E740 801B76B8 28000224 */  addiu      $v0, $zero, 0x28
  .L801B76BC:
    /* 2E744 801B76BC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E748 801B76C0 21080102 */  addu       $at, $s0, $at
    /* 2E74C 801B76C4 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 2E750 801B76C8 FBDD0608 */  j          .L801B77EC
    /* 2E754 801B76CC 00000000 */   nop
  jlabel .L801B76D0
    /* 2E758 801B76D0 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E75C 801B76D4 21080102 */  addu       $at, $s0, $at
    /* 2E760 801B76D8 DAAB2290 */  lbu        $v0, -0x5426($at)
    /* 2E764 801B76DC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E768 801B76E0 21080102 */  addu       $at, $s0, $at
    /* 2E76C 801B76E4 D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 2E770 801B76E8 01004224 */  addiu      $v0, $v0, 0x1
  .L801B76EC:
    /* 2E774 801B76EC 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E778 801B76F0 21080102 */  addu       $at, $s0, $at
    /* 2E77C 801B76F4 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 2E780 801B76F8 FBDD0608 */  j          .L801B77EC
    /* 2E784 801B76FC 00000000 */   nop
    /* 2E788 801B7700 A5B8060C */  jal        func_801AE294
    /* 2E78C 801B7704 01000424 */   addiu     $a0, $zero, 0x1
    /* 2E790 801B7708 21184000 */  addu       $v1, $v0, $zero
    /* 2E794 801B770C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2E798 801B7710 08006210 */  beq        $v1, $v0, .L801B7734
    /* 2E79C 801B7714 02000224 */   addiu     $v0, $zero, 0x2
    /* 2E7A0 801B7718 34006214 */  bne        $v1, $v0, .L801B77EC
    /* 2E7A4 801B771C 46000224 */   addiu     $v0, $zero, 0x46
    /* 2E7A8 801B7720 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E7AC 801B7724 21080102 */  addu       $at, $s0, $at
    /* 2E7B0 801B7728 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 2E7B4 801B772C FBDD0608 */  j          .L801B77EC
    /* 2E7B8 801B7730 00000000 */   nop
  .L801B7734:
    /* 2E7BC 801B7734 32000224 */  addiu      $v0, $zero, 0x32
  .L801B7738:
    /* 2E7C0 801B7738 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E7C4 801B773C 21080102 */  addu       $at, $s0, $at
    /* 2E7C8 801B7740 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 2E7CC 801B7744 FBDD0608 */  j          .L801B77EC
    /* 2E7D0 801B7748 00000000 */   nop
    /* 2E7D4 801B774C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2E7D8 801B7750 1E80013C */  lui        $at, %hi(D_801D8DFC)
    /* 2E7DC 801B7754 FC8D20A0 */  sb         $zero, %lo(D_801D8DFC)($at)
    /* 2E7E0 801B7758 1E80013C */  lui        $at, %hi(D_801D8DFB)
    /* 2E7E4 801B775C FB8D22A0 */  sb         $v0, %lo(D_801D8DFB)($at)
    /* 2E7E8 801B7760 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E7EC 801B7764 21080102 */  addu       $at, $s0, $at
    /* 2E7F0 801B7768 DAAB2390 */  lbu        $v1, -0x5426($at)
    /* 2E7F4 801B776C 41000224 */  addiu      $v0, $zero, 0x41
    /* 2E7F8 801B7770 A20222A2 */  sb         $v0, 0x2A2($s1)
    /* 2E7FC 801B7774 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E800 801B7778 21080102 */  addu       $at, $s0, $at
    /* 2E804 801B777C D8AB20A0 */  sb         $zero, -0x5428($at)
    /* 2E808 801B7780 01006324 */  addiu      $v1, $v1, 0x1
  .L801B7784:
    /* 2E80C 801B7784 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E810 801B7788 21080102 */  addu       $at, $s0, $at
    /* 2E814 801B778C DAAB23A0 */  sb         $v1, -0x5426($at)
    /* 2E818 801B7790 FBDD0608 */  j          .L801B77EC
    /* 2E81C 801B7794 00000000 */   nop
    /* 2E820 801B7798 8BB3060C */  jal        func_801ACE2C
    /* 2E824 801B779C 03000424 */   addiu     $a0, $zero, 0x3
    /* 2E828 801B77A0 21184000 */  addu       $v1, $v0, $zero
    /* 2E82C 801B77A4 01000224 */  addiu      $v0, $zero, 0x1
    /* 2E830 801B77A8 05006210 */  beq        $v1, $v0, .L801B77C0
    /* 2E834 801B77AC 03000224 */   addiu     $v0, $zero, 0x3
    /* 2E838 801B77B0 09006210 */  beq        $v1, $v0, .L801B77D8
    /* 2E83C 801B77B4 00000000 */   nop
    /* 2E840 801B77B8 FBDD0608 */  j          .L801B77EC
    /* 2E844 801B77BC 00000000 */   nop
  .L801B77C0:
    /* 2E848 801B77C0 3C000224 */  addiu      $v0, $zero, 0x3C
  .L801B77C4:
    /* 2E84C 801B77C4 0100013C */  lui        $at, (0x10000 >> 16)
    /* 2E850 801B77C8 21080102 */  addu       $at, $s0, $at
    /* 2E854 801B77CC DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 2E858 801B77D0 FBDD0608 */  j          .L801B77EC
    /* 2E85C 801B77D4 00000000 */   nop
  .L801B77D8:
    /* 2E860 801B77D8 C2E1060C */  jal        func_801B8708
    /* 2E864 801B77DC 01000424 */   addiu     $a0, $zero, 0x1
    /* 2E868 801B77E0 9F0220A2 */  sb         $zero, 0x29F($s1)
    /* 2E86C 801B77E4 715C000C */  jal        func_800171C4
    /* 2E870 801B77E8 FF000424 */   addiu     $a0, $zero, 0xFF
  jlabel .L801B77EC
    /* 2E874 801B77EC 2000BF8F */  lw         $ra, 0x20($sp)
    /* 2E878 801B77F0 1C00B18F */  lw         $s1, 0x1C($sp)
    /* 2E87C 801B77F4 1800B08F */  lw         $s0, 0x18($sp)
    /* 2E880 801B77F8 2800BD27 */  addiu      $sp, $sp, 0x28
    /* 2E884 801B77FC 0800E003 */  jr         $ra
    /* 2E888 801B7800 00000000 */   nop
endlabel func_801B70C4
