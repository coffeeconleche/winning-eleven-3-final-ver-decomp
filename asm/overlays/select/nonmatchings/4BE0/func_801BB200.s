nonmatching func_801BB200, 0x18C

glabel func_801BB200
    /* 32288 801BB200 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* 3228C 801BB204 1180033C */  lui        $v1, %hi(D_8010A322)
    /* 32290 801BB208 22A36390 */  lbu        $v1, %lo(D_8010A322)($v1)
    /* 32294 801BB20C 1080053C */  lui        $a1, %hi(D_800FF748)
    /* 32298 801BB210 48F7A524 */  addiu      $a1, $a1, %lo(D_800FF748)
    /* 3229C 801BB214 0B006010 */  beqz       $v1, .L801BB244
    /* 322A0 801BB218 1000BFAF */   sw        $ra, 0x10($sp)
    /* 322A4 801BB21C 0A000224 */  addiu      $v0, $zero, 0xA
    /* 322A8 801BB220 4E006210 */  beq        $v1, $v0, .L801BB35C
    /* 322AC 801BB224 10000424 */   addiu     $a0, $zero, 0x10
    /* 322B0 801BB228 DFEC0608 */  j          .L801BB37C
    /* 322B4 801BB22C 00000000 */   nop
  .L801BB230:
    /* 322B8 801BB230 0100013C */  lui        $at, (0x10000 >> 16)
    /* 322BC 801BB234 2108A100 */  addu       $at, $a1, $at
    /* 322C0 801BB238 218F24A0 */  sb         $a0, -0x70DF($at)
    /* 322C4 801BB23C BEEC0608 */  j          .L801BB2F8
    /* 322C8 801BB240 0C000224 */   addiu     $v0, $zero, 0xC
  .L801BB244:
    /* 322CC 801BB244 21200000 */  addu       $a0, $zero, $zero
    /* 322D0 801BB248 80AB0634 */  ori        $a2, $zero, 0xAB80
    /* 322D4 801BB24C 01000224 */  addiu      $v0, $zero, 0x1
    /* 322D8 801BB250 1180013C */  lui        $at, %hi(D_8010866A)
    /* 322DC 801BB254 6A8620A0 */  sb         $zero, %lo(D_8010866A)($at)
    /* 322E0 801BB258 1180013C */  lui        $at, %hi(D_8010866B)
    /* 322E4 801BB25C 6B8622A0 */  sb         $v0, %lo(D_8010866B)($at)
    /* 322E8 801BB260 1180013C */  lui        $at, %hi(D_8010A2F0)
    /* 322EC 801BB264 F0A220A0 */  sb         $zero, %lo(D_8010A2F0)($at)
    /* 322F0 801BB268 1180013C */  lui        $at, %hi(D_8010865D)
    /* 322F4 801BB26C 5D8620A0 */  sb         $zero, %lo(D_8010865D)($at)
    /* 322F8 801BB270 1E80013C */  lui        $at, %hi(D_801DA2F0)
    /* 322FC 801BB274 F0A220A0 */  sb         $zero, %lo(D_801DA2F0)($at)
    /* 32300 801BB278 1E80013C */  lui        $at, %hi(D_801D8DFC)
    /* 32304 801BB27C FC8D22A0 */  sb         $v0, %lo(D_801D8DFC)($at)
    /* 32308 801BB280 1E80013C */  lui        $at, %hi(D_801D8DFB)
    /* 3230C 801BB284 FB8D20A0 */  sb         $zero, %lo(D_801D8DFB)($at)
    /* 32310 801BB288 0B80013C */  lui        $at, %hi(D_800AD638)
    /* 32314 801BB28C 38D620A4 */  sh         $zero, %lo(D_800AD638)($at)
    /* 32318 801BB290 1E80013C */  lui        $at, %hi(D_801DA2F8)
    /* 3231C 801BB294 F8A220A0 */  sb         $zero, %lo(D_801DA2F8)($at)
    /* 32320 801BB298 1180013C */  lui        $at, %hi(D_8010A2E9)
    /* 32324 801BB29C E9A220A0 */  sb         $zero, %lo(D_8010A2E9)($at)
    /* 32328 801BB2A0 1180013C */  lui        $at, %hi(D_8010A2E8)
    /* 3232C 801BB2A4 E8A220A0 */  sb         $zero, %lo(D_8010A2E8)($at)
    /* 32330 801BB2A8 2110A400 */  addu       $v0, $a1, $a0
  .L801BB2AC:
    /* 32334 801BB2AC 21104600 */  addu       $v0, $v0, $a2
    /* 32338 801BB2B0 00004390 */  lbu        $v1, 0x0($v0)
    /* 3233C 801BB2B4 00000000 */  nop
    /* 32340 801BB2B8 C0100300 */  sll        $v0, $v1, 3
    /* 32344 801BB2BC 21104300 */  addu       $v0, $v0, $v1
    /* 32348 801BB2C0 80100200 */  sll        $v0, $v0, 2
    /* 3234C 801BB2C4 2110A200 */  addu       $v0, $a1, $v0
    /* 32350 801BB2C8 0100013C */  lui        $at, (0x10000 >> 16)
    /* 32354 801BB2CC 21084100 */  addu       $at, $v0, $at
    /* 32358 801BB2D0 248F2290 */  lbu        $v0, -0x70DC($at)
    /* 3235C 801BB2D4 00000000 */  nop
    /* 32360 801BB2D8 C0004230 */  andi       $v0, $v0, 0xC0
    /* 32364 801BB2DC D4FF4010 */  beqz       $v0, .L801BB230
    /* 32368 801BB2E0 00000000 */   nop
    /* 3236C 801BB2E4 01008424 */  addiu      $a0, $a0, 0x1
    /* 32370 801BB2E8 10008228 */  slti       $v0, $a0, 0x10
    /* 32374 801BB2EC EFFF4014 */  bnez       $v0, .L801BB2AC
    /* 32378 801BB2F0 2110A400 */   addu      $v0, $a1, $a0
    /* 3237C 801BB2F4 0C000224 */  addiu      $v0, $zero, 0xC
  .L801BB2F8:
    /* 32380 801BB2F8 1E80013C */  lui        $at, %hi(D_801DA5D4)
    /* 32384 801BB2FC D4A522A4 */  sh         $v0, %lo(D_801DA5D4)($at)
    /* 32388 801BB300 10000224 */  addiu      $v0, $zero, 0x10
    /* 3238C 801BB304 1E80013C */  lui        $at, %hi(D_801DA5D6)
    /* 32390 801BB308 D6A522A4 */  sh         $v0, %lo(D_801DA5D6)($at)
    /* 32394 801BB30C 0A000224 */  addiu      $v0, $zero, 0xA
    /* 32398 801BB310 1E80013C */  lui        $at, %hi(D_801DA06B)
    /* 3239C 801BB314 6BA020A0 */  sb         $zero, %lo(D_801DA06B)($at)
    /* 323A0 801BB318 1E80013C */  lui        $at, %hi(D_801DA069)
    /* 323A4 801BB31C 69A020A0 */  sb         $zero, %lo(D_801DA069)($at)
    /* 323A8 801BB320 1E80013C */  lui        $at, %hi(D_801DA06A)
    /* 323AC 801BB324 6AA020A0 */  sb         $zero, %lo(D_801DA06A)($at)
    /* 323B0 801BB328 1E80013C */  lui        $at, %hi(D_801DA068)
    /* 323B4 801BB32C 68A020A0 */  sb         $zero, %lo(D_801DA068)($at)
    /* 323B8 801BB330 1E80013C */  lui        $at, %hi(D_801DA5D0)
    /* 323BC 801BB334 D0A520A4 */  sh         $zero, %lo(D_801DA5D0)($at)
    /* 323C0 801BB338 1E80013C */  lui        $at, %hi(D_801DA5D2)
    /* 323C4 801BB33C D2A520A4 */  sh         $zero, %lo(D_801DA5D2)($at)
    /* 323C8 801BB340 1E80013C */  lui        $at, %hi(D_801DA060)
    /* 323CC 801BB344 60A020AC */  sw         $zero, %lo(D_801DA060)($at)
    /* 323D0 801BB348 0100013C */  lui        $at, (0x10000 >> 16)
    /* 323D4 801BB34C 2108A100 */  addu       $at, $a1, $at
    /* 323D8 801BB350 DAAB22A0 */  sb         $v0, -0x5426($at)
    /* 323DC 801BB354 DFEC0608 */  j          .L801BB37C
    /* 323E0 801BB358 00000000 */   nop
  .L801BB35C:
    /* 323E4 801BB35C 37BC010C */  jal        func_8006F0DC
    /* 323E8 801BB360 21280000 */   addu      $a1, $zero, $zero
    /* 323EC 801BB364 05004010 */  beqz       $v0, .L801BB37C
    /* 323F0 801BB368 00000000 */   nop
    /* 323F4 801BB36C 775C000C */  jal        func_800171DC
    /* 323F8 801BB370 00000000 */   nop
    /* 323FC 801BB374 1180013C */  lui        $at, %hi(D_8010A322)
    /* 32400 801BB378 22A320A0 */  sb         $zero, %lo(D_8010A322)($at)
  .L801BB37C:
    /* 32404 801BB37C 1000BF8F */  lw         $ra, 0x10($sp)
    /* 32408 801BB380 1800BD27 */  addiu      $sp, $sp, 0x18
    /* 3240C 801BB384 0800E003 */  jr         $ra
    /* 32410 801BB388 00000000 */   nop
endlabel func_801BB200
