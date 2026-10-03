nonmatching func_800C3DB8, 0x5C

glabel func_800C3DB8
    /* B45B8 800C3DB8 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* B45BC 800C3DBC 21288000 */  addu       $a1, $a0, $zero
    /* B45C0 800C3DC0 0700023C */  lui        $v0, (0x7EFE8 >> 16)
    /* B45C4 800C3DC4 E8EF4234 */  ori        $v0, $v0, (0x7EFE8 & 0xFFFF)
    /* B45C8 800C3DC8 F0EFA324 */  addiu      $v1, $a1, -0x1010
    /* B45CC 800C3DCC 2B104300 */  sltu       $v0, $v0, $v1
    /* B45D0 800C3DD0 0B004014 */  bnez       $v0, .L800C3E00
    /* B45D4 800C3DD4 1000BFAF */   sw        $ra, 0x10($sp)
    /* B45D8 800C3DD8 2207030C */  jal        func_800C1C88
    /* B45DC 800C3DDC FFFF0424 */   addiu     $a0, $zero, -0x1
    /* B45E0 800C3DE0 0D80013C */  lui        $at, %hi(D_800D55A4)
    /* B45E4 800C3DE4 A45522A4 */  sh         $v0, %lo(D_800D55A4)($at)
    /* B45E8 800C3DE8 0D80033C */  lui        $v1, %hi(D_800D55A4)
    /* B45EC 800C3DEC A4556394 */  lhu        $v1, %lo(D_800D55A4)($v1)
    /* B45F0 800C3DF0 0D80023C */  lui        $v0, %hi(D_800D55B4)
    /* B45F4 800C3DF4 B455428C */  lw         $v0, %lo(D_800D55B4)($v0)
    /* B45F8 800C3DF8 810F0308 */  j          .L800C3E04
    /* B45FC 800C3DFC 04104300 */   sllv      $v0, $v1, $v0
  .L800C3E00:
    /* B4600 800C3E00 21100000 */  addu       $v0, $zero, $zero
  .L800C3E04:
    /* B4604 800C3E04 1000BF8F */  lw         $ra, 0x10($sp)
    /* B4608 800C3E08 1800BD27 */  addiu      $sp, $sp, 0x18
    /* B460C 800C3E0C 0800E003 */  jr         $ra
    /* B4610 800C3E10 00000000 */   nop
endlabel func_800C3DB8
    /* B4614 800C3E14 00000000 */  nop
