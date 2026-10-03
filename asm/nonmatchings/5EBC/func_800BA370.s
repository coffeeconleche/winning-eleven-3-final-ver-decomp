nonmatching func_800BA370, 0x1A8

glabel func_800BA370
    /* AAB70 800BA370 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* AAB74 800BA374 1800B0AF */  sw         $s0, 0x18($sp)
    /* AAB78 800BA378 21808000 */  addu       $s0, $a0, $zero
    /* AAB7C 800BA37C 2000B2AF */  sw         $s2, 0x20($sp)
    /* AAB80 800BA380 2190A000 */  addu       $s2, $a1, $zero
    /* AAB84 800BA384 2400B3AF */  sw         $s3, 0x24($sp)
    /* AAB88 800BA388 2198C000 */  addu       $s3, $a2, $zero
    /* AAB8C 800BA38C 2800B4AF */  sw         $s4, 0x28($sp)
    /* AAB90 800BA390 21A0E000 */  addu       $s4, $a3, $zero
    /* AAB94 800BA394 21200000 */  addu       $a0, $zero, $zero
    /* AAB98 800BA398 00291000 */  sll        $a1, $s0, 4
    /* AAB9C 800BA39C 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* AABA0 800BA3A0 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* AABA4 800BA3A4 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* AABA8 800BA3A8 801F023C */  lui        $v0, (0x1F801088 >> 16)
    /* AABAC 800BA3AC 21104500 */  addu       $v0, $v0, $a1
    /* AABB0 800BA3B0 8810428C */  lw         $v0, (0x1F801088 & 0xFFFF)($v0)
    /* AABB4 800BA3B4 4400B193 */  lbu        $s1, 0x44($sp)
    /* AABB8 800BA3B8 24104300 */  and        $v0, $v0, $v1
    /* AABBC 800BA3BC 0A004010 */  beqz       $v0, .L800BA3E8
    /* AABC0 800BA3C0 0100063C */   lui       $a2, (0x10000 >> 16)
  .L800BA3C4:
    /* AABC4 800BA3C4 12008610 */  beq        $a0, $a2, .L800BA410
    /* AABC8 800BA3C8 00000000 */   nop
    /* AABCC 800BA3CC 801F023C */  lui        $v0, (0x1F801088 >> 16)
    /* AABD0 800BA3D0 21104500 */  addu       $v0, $v0, $a1
    /* AABD4 800BA3D4 8810428C */  lw         $v0, (0x1F801088 & 0xFFFF)($v0)
    /* AABD8 800BA3D8 00000000 */  nop
    /* AABDC 800BA3DC 24104300 */  and        $v0, $v0, $v1
    /* AABE0 800BA3E0 F8FF4014 */  bnez       $v0, .L800BA3C4
    /* AABE4 800BA3E4 01008424 */   addiu     $a0, $a0, 0x1
  .L800BA3E8:
    /* AABE8 800BA3E8 01000224 */  addiu      $v0, $zero, 0x1
  .L800BA3EC:
    /* AABEC 800BA3EC 10002216 */  bne        $s1, $v0, .L800BA430
    /* AABF0 800BA3F0 00000000 */   nop
    /* AABF4 800BA3F4 0D80033C */  lui        $v1, %hi(D_800D3D40)
    /* AABF8 800BA3F8 403D638C */  lw         $v1, %lo(D_800D3D40)($v1)
    /* AABFC 800BA3FC 00000000 */  nop
    /* AAC00 800BA400 02006490 */  lbu        $a0, 0x2($v1)
    /* AAC04 800BA404 04100202 */  sllv       $v0, $v0, $s0
    /* AAC08 800BA408 12E90208 */  j          .L800BA448
    /* AAC0C 800BA40C 25108200 */   or        $v0, $a0, $v0
  .L800BA410:
    /* AAC10 800BA410 801F013C */  lui        $at, (0x1F801088 >> 16)
    /* AAC14 800BA414 21082500 */  addu       $at, $at, $a1
    /* AAC18 800BA418 8810258C */  lw         $a1, (0x1F801088 & 0xFFFF)($at)
    /* AAC1C 800BA41C 0180043C */  lui        $a0, %hi(D_8001542C)
    /* AAC20 800BA420 A6B5020C */  jal        func_800AD698
    /* AAC24 800BA424 2C548424 */   addiu     $a0, $a0, %lo(D_8001542C)
    /* AAC28 800BA428 FBE80208 */  j          .L800BA3EC
    /* AAC2C 800BA42C 01000224 */   addiu     $v0, $zero, 0x1
  .L800BA430:
    /* AAC30 800BA430 0D80033C */  lui        $v1, %hi(D_800D3D40)
    /* AAC34 800BA434 403D638C */  lw         $v1, %lo(D_800D3D40)($v1)
    /* AAC38 800BA438 04100202 */  sllv       $v0, $v0, $s0
    /* AAC3C 800BA43C 02006490 */  lbu        $a0, 0x2($v1)
    /* AAC40 800BA440 27100200 */  nor        $v0, $zero, $v0
    /* AAC44 800BA444 24108200 */  and        $v0, $a0, $v0
  .L800BA448:
    /* AAC48 800BA448 020062A0 */  sb         $v0, 0x2($v1)
    /* AAC4C 800BA44C 0D80023C */  lui        $v0, %hi(D_800D3D40)
    /* AAC50 800BA450 403D428C */  lw         $v0, %lo(D_800D3D40)($v0)
    /* AAC54 800BA454 00000000 */  nop
    /* AAC58 800BA458 0000428C */  lw         $v0, 0x0($v0)
    /* AAC5C 800BA45C 00000000 */  nop
    /* AAC60 800BA460 1000A2AF */  sw         $v0, 0x10($sp)
    /* AAC64 800BA464 80301000 */  sll        $a2, $s0, 2
    /* AAC68 800BA468 0300C624 */  addiu      $a2, $a2, 0x3
    /* AAC6C 800BA46C 01000324 */  addiu      $v1, $zero, 0x1
    /* AAC70 800BA470 0418C300 */  sllv       $v1, $v1, $a2
    /* AAC74 800BA474 801F053C */  lui        $a1, (0x1F801080 >> 16)
    /* AAC78 800BA478 8010A534 */  ori        $a1, $a1, (0x1F801080 & 0xFFFF)
    /* AAC7C 800BA47C 00111000 */  sll        $v0, $s0, 4
    /* AAC80 800BA480 21284500 */  addu       $a1, $v0, $a1
    /* AAC84 800BA484 0D80043C */  lui        $a0, %hi(D_800D3D3C)
    /* AAC88 800BA488 3C3D848C */  lw         $a0, %lo(D_800D3D3C)($a0)
    /* AAC8C 800BA48C 00141300 */  sll        $v0, $s3, 16
    /* AAC90 800BA490 0000868C */  lw         $a2, 0x0($a0)
    /* AAC94 800BA494 25105400 */  or         $v0, $v0, $s4
    /* AAC98 800BA498 2530C300 */  or         $a2, $a2, $v1
    /* AAC9C 800BA49C 000086AC */  sw         $a2, 0x0($a0)
    /* AACA0 800BA4A0 0000B2AC */  sw         $s2, 0x0($a1)
    /* AACA4 800BA4A4 0400A524 */  addiu      $a1, $a1, 0x4
    /* AACA8 800BA4A8 0000A2AC */  sw         $v0, 0x0($a1)
    /* AACAC 800BA4AC 0D80033C */  lui        $v1, %hi(D_800D3D24)
    /* AACB0 800BA4B0 243D638C */  lw         $v1, %lo(D_800D3D24)($v1)
    /* AACB4 800BA4B4 00000000 */  nop
    /* AACB8 800BA4B8 00006290 */  lbu        $v0, 0x0($v1)
    /* AACBC 800BA4BC 00000000 */  nop
    /* AACC0 800BA4C0 40004230 */  andi       $v0, $v0, 0x40
    /* AACC4 800BA4C4 06004014 */  bnez       $v0, .L800BA4E0
    /* AACC8 800BA4C8 0400A524 */   addiu     $a1, $a1, 0x4
  .L800BA4CC:
    /* AACCC 800BA4CC 00006290 */  lbu        $v0, 0x0($v1)
    /* AACD0 800BA4D0 00000000 */  nop
    /* AACD4 800BA4D4 40004230 */  andi       $v0, $v0, 0x40
    /* AACD8 800BA4D8 FCFF4010 */  beqz       $v0, .L800BA4CC
    /* AACDC 800BA4DC 00000000 */   nop
  .L800BA4E0:
    /* AACE0 800BA4E0 4000A28F */  lw         $v0, 0x40($sp)
    /* AACE4 800BA4E4 00000000 */  nop
    /* AACE8 800BA4E8 0000A2AC */  sw         $v0, 0x0($a1)
    /* AACEC 800BA4EC 0000A28C */  lw         $v0, 0x0($a1)
    /* AACF0 800BA4F0 00000000 */  nop
    /* AACF4 800BA4F4 1000A2AF */  sw         $v0, 0x10($sp)
    /* AACF8 800BA4F8 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* AACFC 800BA4FC 2800B48F */  lw         $s4, 0x28($sp)
    /* AAD00 800BA500 2400B38F */  lw         $s3, 0x24($sp)
    /* AAD04 800BA504 2000B28F */  lw         $s2, 0x20($sp)
    /* AAD08 800BA508 1C00B18F */  lw         $s1, 0x1C($sp)
    /* AAD0C 800BA50C 1800B08F */  lw         $s0, 0x18($sp)
    /* AAD10 800BA510 0800E003 */  jr         $ra
    /* AAD14 800BA514 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_800BA370
