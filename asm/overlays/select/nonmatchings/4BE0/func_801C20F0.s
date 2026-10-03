nonmatching func_801C20F0, 0x11C

glabel func_801C20F0
    /* 39178 801C20F0 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 3917C 801C20F4 5800BFAF */  sw         $ra, 0x58($sp)
    /* 39180 801C20F8 5400B3AF */  sw         $s3, 0x54($sp)
    /* 39184 801C20FC 5000B2AF */  sw         $s2, 0x50($sp)
    /* 39188 801C2100 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 3918C 801C2104 2B06070C */  jal        func_801C18AC
    /* 39190 801C2108 4800B0AF */   sw        $s0, 0x48($sp)
    /* 39194 801C210C 82A3060C */  jal        func_801A8E08
    /* 39198 801C2110 0C001224 */   addiu     $s2, $zero, 0xC
    /* 3919C 801C2114 04000424 */  addiu      $a0, $zero, 0x4
    /* 391A0 801C2118 27310524 */  addiu      $a1, $zero, 0x3127
    /* 391A4 801C211C 21300000 */  addu       $a2, $zero, $zero
    /* 391A8 801C2120 21380000 */  addu       $a3, $zero, $zero
    /* 391AC 801C2124 00101124 */  addiu      $s1, $zero, 0x1000
    /* 391B0 801C2128 80001024 */  addiu      $s0, $zero, 0x80
    /* 391B4 801C212C 03001324 */  addiu      $s3, $zero, 0x3
    /* 391B8 801C2130 01000224 */  addiu      $v0, $zero, 0x1
    /* 391BC 801C2134 1000A0AF */  sw         $zero, 0x10($sp)
    /* 391C0 801C2138 1400B2AF */  sw         $s2, 0x14($sp)
    /* 391C4 801C213C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 391C8 801C2140 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 391CC 801C2144 2000B1AF */  sw         $s1, 0x20($sp)
    /* 391D0 801C2148 2400A0AF */  sw         $zero, 0x24($sp)
    /* 391D4 801C214C 2800A0AF */  sw         $zero, 0x28($sp)
    /* 391D8 801C2150 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 391DC 801C2154 3000B0AF */  sw         $s0, 0x30($sp)
    /* 391E0 801C2158 3400B0AF */  sw         $s0, 0x34($sp)
    /* 391E4 801C215C 3800A0AF */  sw         $zero, 0x38($sp)
    /* 391E8 801C2160 3C00B3AF */  sw         $s3, 0x3C($sp)
    /* 391EC 801C2164 ED4F060C */  jal        func_80193FB4
    /* 391F0 801C2168 4000A2AF */   sw        $v0, 0x40($sp)
    /* 391F4 801C216C 05000424 */  addiu      $a0, $zero, 0x5
    /* 391F8 801C2170 28310524 */  addiu      $a1, $zero, 0x3128
    /* 391FC 801C2174 21300000 */  addu       $a2, $zero, $zero
    /* 39200 801C2178 21380000 */  addu       $a3, $zero, $zero
    /* 39204 801C217C 1E80033C */  lui        $v1, %hi(D_801D8B17)
    /* 39208 801C2180 178B6390 */  lbu        $v1, %lo(D_801D8B17)($v1)
    /* 3920C 801C2184 05000224 */  addiu      $v0, $zero, 0x5
    /* 39210 801C2188 1000A0AF */  sw         $zero, 0x10($sp)
    /* 39214 801C218C 1400B2AF */  sw         $s2, 0x14($sp)
    /* 39218 801C2190 1800A0AF */  sw         $zero, 0x18($sp)
    /* 3921C 801C2194 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* 39220 801C2198 2000B1AF */  sw         $s1, 0x20($sp)
    /* 39224 801C219C 2400A0AF */  sw         $zero, 0x24($sp)
    /* 39228 801C21A0 2800A0AF */  sw         $zero, 0x28($sp)
    /* 3922C 801C21A4 2C00B0AF */  sw         $s0, 0x2C($sp)
    /* 39230 801C21A8 3000B0AF */  sw         $s0, 0x30($sp)
    /* 39234 801C21AC 3400B0AF */  sw         $s0, 0x34($sp)
    /* 39238 801C21B0 3800A0AF */  sw         $zero, 0x38($sp)
    /* 3923C 801C21B4 3C00A2AF */  sw         $v0, 0x3C($sp)
    /* 39240 801C21B8 ED4F060C */  jal        func_80193FB4
    /* 39244 801C21BC 4000A3AF */   sw        $v1, 0x40($sp)
    /* 39248 801C21C0 1180023C */  lui        $v0, %hi(D_80108668)
    /* 3924C 801C21C4 68864290 */  lbu        $v0, %lo(D_80108668)($v0)
    /* 39250 801C21C8 1080033C */  lui        $v1, %hi(D_801055B4)
    /* 39254 801C21CC B455638C */  lw         $v1, %lo(D_801055B4)($v1)
    /* 39258 801C21D0 03005314 */  bne        $v0, $s3, .L801C21E0
    /* 3925C 801C21D4 FF000224 */   addiu     $v0, $zero, 0xFF
    /* 39260 801C21D8 79080708 */  j          .L801C21E4
    /* 39264 801C21DC 600062A0 */   sb        $v0, 0x60($v1)
  .L801C21E0:
    /* 39268 801C21E0 600060A0 */  sb         $zero, 0x60($v1)
  .L801C21E4:
    /* 3926C 801C21E4 34A3060C */  jal        func_801A8CD0
    /* 39270 801C21E8 00000000 */   nop
    /* 39274 801C21EC 5800BF8F */  lw         $ra, 0x58($sp)
    /* 39278 801C21F0 5400B38F */  lw         $s3, 0x54($sp)
    /* 3927C 801C21F4 5000B28F */  lw         $s2, 0x50($sp)
    /* 39280 801C21F8 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 39284 801C21FC 4800B08F */  lw         $s0, 0x48($sp)
    /* 39288 801C2200 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 3928C 801C2204 0800E003 */  jr         $ra
    /* 39290 801C2208 00000000 */   nop
endlabel func_801C20F0
