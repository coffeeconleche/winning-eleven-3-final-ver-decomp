nonmatching func_801B50F8, 0x2E4

glabel func_801B50F8
    /* 2C180 801B50F8 C8FFBD27 */  addiu      $sp, $sp, -0x38
    /* 2C184 801B50FC 21200000 */  addu       $a0, $zero, $zero
    /* 2C188 801B5100 1800B2AF */  sw         $s2, 0x18($sp)
    /* 2C18C 801B5104 1E80123C */  lui        $s2, %hi(D_801D8D90)
    /* 2C190 801B5108 908D5226 */  addiu      $s2, $s2, %lo(D_801D8D90)
    /* 2C194 801B510C 21284002 */  addu       $a1, $s2, $zero
    /* 2C198 801B5110 2800B6AF */  sw         $s6, 0x28($sp)
    /* 2C19C 801B5114 40FF1624 */  addiu      $s6, $zero, -0xC0
    /* 2C1A0 801B5118 2400B5AF */  sw         $s5, 0x24($sp)
    /* 2C1A4 801B511C 88FF1524 */  addiu      $s5, $zero, -0x78
    /* 2C1A8 801B5120 2C00B7AF */  sw         $s7, 0x2C($sp)
    /* 2C1AC 801B5124 C0001724 */  addiu      $s7, $zero, 0xC0
    /* 2C1B0 801B5128 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 2C1B4 801B512C 28001324 */  addiu      $s3, $zero, 0x28
    /* 2C1B8 801B5130 1000B0AF */  sw         $s0, 0x10($sp)
    /* 2C1BC 801B5134 FF001024 */  addiu      $s0, $zero, 0xFF
    /* 2C1C0 801B5138 1400B1AF */  sw         $s1, 0x14($sp)
    /* 2C1C4 801B513C 40001124 */  addiu      $s1, $zero, 0x40
    /* 2C1C8 801B5140 3000BFAF */  sw         $ra, 0x30($sp)
    /* 2C1CC 801B5144 2000B4AF */  sw         $s4, 0x20($sp)
    /* 2C1D0 801B5148 000056A6 */  sh         $s6, 0x0($s2)
    /* 2C1D4 801B514C 1E80013C */  lui        $at, %hi(D_801D8D92)
    /* 2C1D8 801B5150 928D35A4 */  sh         $s5, %lo(D_801D8D92)($at)
    /* 2C1DC 801B5154 1E80013C */  lui        $at, %hi(D_801D8D94)
    /* 2C1E0 801B5158 948D37A4 */  sh         $s7, %lo(D_801D8D94)($at)
    /* 2C1E4 801B515C 1E80013C */  lui        $at, %hi(D_801D8D96)
    /* 2C1E8 801B5160 968D33A4 */  sh         $s3, %lo(D_801D8D96)($at)
    /* 2C1EC 801B5164 1E80013C */  lui        $at, %hi(D_801D8D98)
    /* 2C1F0 801B5168 988D20A0 */  sb         $zero, %lo(D_801D8D98)($at)
    /* 2C1F4 801B516C 1E80013C */  lui        $at, %hi(D_801D8D99)
    /* 2C1F8 801B5170 998D20A0 */  sb         $zero, %lo(D_801D8D99)($at)
    /* 2C1FC 801B5174 1E80013C */  lui        $at, %hi(D_801D8D9A)
    /* 2C200 801B5178 9A8D30A0 */  sb         $s0, %lo(D_801D8D9A)($at)
    /* 2C204 801B517C 1E80013C */  lui        $at, %hi(D_801D8D9B)
    /* 2C208 801B5180 9B8D30A0 */  sb         $s0, %lo(D_801D8D9B)($at)
    /* 2C20C 801B5184 1E80013C */  lui        $at, %hi(D_801D8D9C)
    /* 2C210 801B5188 9C8D30A0 */  sb         $s0, %lo(D_801D8D9C)($at)
    /* 2C214 801B518C 1E80013C */  lui        $at, %hi(D_801D8D9D)
    /* 2C218 801B5190 9D8D30A0 */  sb         $s0, %lo(D_801D8D9D)($at)
    /* 2C21C 801B5194 1E80013C */  lui        $at, %hi(D_801D8D9E)
    /* 2C220 801B5198 9E8D31A0 */  sb         $s1, %lo(D_801D8D9E)($at)
    /* 2C224 801B519C 1E80013C */  lui        $at, %hi(D_801D8D9F)
    /* 2C228 801B51A0 9F8D31A0 */  sb         $s1, %lo(D_801D8D9F)($at)
    /* 2C22C 801B51A4 1E80013C */  lui        $at, %hi(D_801D8DA0)
    /* 2C230 801B51A8 A08D30A0 */  sb         $s0, %lo(D_801D8DA0)($at)
    /* 2C234 801B51AC 1E80013C */  lui        $at, %hi(D_801D8DA1)
    /* 2C238 801B51B0 A18D30A0 */  sb         $s0, %lo(D_801D8DA1)($at)
    /* 2C23C 801B51B4 1E80013C */  lui        $at, %hi(D_801D8DA2)
    /* 2C240 801B51B8 A28D30A0 */  sb         $s0, %lo(D_801D8DA2)($at)
    /* 2C244 801B51BC 1E80013C */  lui        $at, %hi(D_801D8DA3)
    /* 2C248 801B51C0 A38D30A0 */  sb         $s0, %lo(D_801D8DA3)($at)
    /* 2C24C 801B51C4 985A060C */  jal        func_80196A60
    /* 2C250 801B51C8 01000624 */   addiu     $a2, $zero, 0x1
    /* 2C254 801B51CC 21200000 */  addu       $a0, $zero, $zero
    /* 2C258 801B51D0 21284002 */  addu       $a1, $s2, $zero
    /* 2C25C 801B51D4 000040A6 */  sh         $zero, 0x0($s2)
    /* 2C260 801B51D8 1E80013C */  lui        $at, %hi(D_801D8D98)
    /* 2C264 801B51DC 988D30A0 */  sb         $s0, %lo(D_801D8D98)($at)
    /* 2C268 801B51E0 1E80013C */  lui        $at, %hi(D_801D8D99)
    /* 2C26C 801B51E4 998D30A0 */  sb         $s0, %lo(D_801D8D99)($at)
    /* 2C270 801B51E8 1E80013C */  lui        $at, %hi(D_801D8D9A)
    /* 2C274 801B51EC 9A8D30A0 */  sb         $s0, %lo(D_801D8D9A)($at)
    /* 2C278 801B51F0 1E80013C */  lui        $at, %hi(D_801D8D9B)
    /* 2C27C 801B51F4 9B8D30A0 */  sb         $s0, %lo(D_801D8D9B)($at)
    /* 2C280 801B51F8 1E80013C */  lui        $at, %hi(D_801D8D9C)
    /* 2C284 801B51FC 9C8D31A0 */  sb         $s1, %lo(D_801D8D9C)($at)
    /* 2C288 801B5200 1E80013C */  lui        $at, %hi(D_801D8D9D)
    /* 2C28C 801B5204 9D8D31A0 */  sb         $s1, %lo(D_801D8D9D)($at)
    /* 2C290 801B5208 1E80013C */  lui        $at, %hi(D_801D8D9E)
    /* 2C294 801B520C 9E8D30A0 */  sb         $s0, %lo(D_801D8D9E)($at)
    /* 2C298 801B5210 1E80013C */  lui        $at, %hi(D_801D8D9F)
    /* 2C29C 801B5214 9F8D30A0 */  sb         $s0, %lo(D_801D8D9F)($at)
    /* 2C2A0 801B5218 1E80013C */  lui        $at, %hi(D_801D8DA0)
    /* 2C2A4 801B521C A08D30A0 */  sb         $s0, %lo(D_801D8DA0)($at)
    /* 2C2A8 801B5220 1E80013C */  lui        $at, %hi(D_801D8DA1)
    /* 2C2AC 801B5224 A18D30A0 */  sb         $s0, %lo(D_801D8DA1)($at)
    /* 2C2B0 801B5228 1E80013C */  lui        $at, %hi(D_801D8DA2)
    /* 2C2B4 801B522C A28D20A0 */  sb         $zero, %lo(D_801D8DA2)($at)
    /* 2C2B8 801B5230 1E80013C */  lui        $at, %hi(D_801D8DA3)
    /* 2C2BC 801B5234 A38D20A0 */  sb         $zero, %lo(D_801D8DA3)($at)
    /* 2C2C0 801B5238 985A060C */  jal        func_80196A60
    /* 2C2C4 801B523C 01000624 */   addiu     $a2, $zero, 0x1
    /* 2C2C8 801B5240 21200000 */  addu       $a0, $zero, $zero
    /* 2C2CC 801B5244 21284002 */  addu       $a1, $s2, $zero
    /* 2C2D0 801B5248 80010224 */  addiu      $v0, $zero, 0x180
    /* 2C2D4 801B524C 0000B6A4 */  sh         $s6, 0x0($a1)
    /* 2C2D8 801B5250 1E80013C */  lui        $at, %hi(D_801D8D94)
    /* 2C2DC 801B5254 948D22A4 */  sh         $v0, %lo(D_801D8D94)($at)
    /* 2C2E0 801B5258 E0000224 */  addiu      $v0, $zero, 0xE0
    /* 2C2E4 801B525C 1E80013C */  lui        $at, %hi(D_801D8D92)
    /* 2C2E8 801B5260 928D35A4 */  sh         $s5, %lo(D_801D8D92)($at)
    /* 2C2EC 801B5264 1E80013C */  lui        $at, %hi(D_801D8D96)
    /* 2C2F0 801B5268 968D33A4 */  sh         $s3, %lo(D_801D8D96)($at)
    /* 2C2F4 801B526C 1E80013C */  lui        $at, %hi(D_801D8D98)
    /* 2C2F8 801B5270 988D22A0 */  sb         $v0, %lo(D_801D8D98)($at)
    /* 2C2FC 801B5274 1E80013C */  lui        $at, %hi(D_801D8D99)
    /* 2C300 801B5278 998D22A0 */  sb         $v0, %lo(D_801D8D99)($at)
    /* 2C304 801B527C 1E80013C */  lui        $at, %hi(D_801D8D9A)
    /* 2C308 801B5280 9A8D30A0 */  sb         $s0, %lo(D_801D8D9A)($at)
    /* 2C30C 801B5284 275A060C */  jal        func_8019689C
    /* 2C310 801B5288 01000624 */   addiu     $a2, $zero, 0x1
    /* 2C314 801B528C 21200000 */  addu       $a0, $zero, $zero
    /* 2C318 801B5290 1E80143C */  lui        $s4, %hi(D_801D87C8)
    /* 2C31C 801B5294 C8879426 */  addiu      $s4, $s4, %lo(D_801D87C8)
    /* 2C320 801B5298 21288002 */  addu       $a1, $s4, $zero
    /* 2C324 801B529C 78001324 */  addiu      $s3, $zero, 0x78
    /* 2C328 801B52A0 50001224 */  addiu      $s2, $zero, 0x50
    /* 2C32C 801B52A4 14001124 */  addiu      $s1, $zero, 0x14
    /* 2C330 801B52A8 FC001024 */  addiu      $s0, $zero, 0xFC
    /* 2C334 801B52AC 000096A6 */  sh         $s6, 0x0($s4)
    /* 2C338 801B52B0 1E80013C */  lui        $at, %hi(D_801D87CA)
    /* 2C33C 801B52B4 CA8735A4 */  sh         $s5, %lo(D_801D87CA)($at)
    /* 2C340 801B52B8 1E80013C */  lui        $at, %hi(D_801D87CC)
    /* 2C344 801B52BC CC8737A4 */  sh         $s7, %lo(D_801D87CC)($at)
    /* 2C348 801B52C0 1E80013C */  lui        $at, %hi(D_801D87CE)
    /* 2C34C 801B52C4 CE8735A4 */  sh         $s5, %lo(D_801D87CE)($at)
    /* 2C350 801B52C8 1E80013C */  lui        $at, %hi(D_801D87D0)
    /* 2C354 801B52CC D08737A4 */  sh         $s7, %lo(D_801D87D0)($at)
    /* 2C358 801B52D0 1E80013C */  lui        $at, %hi(D_801D87D2)
    /* 2C35C 801B52D4 D28733A4 */  sh         $s3, %lo(D_801D87D2)($at)
    /* 2C360 801B52D8 1E80013C */  lui        $at, %hi(D_801D87D4)
    /* 2C364 801B52DC D48732A0 */  sb         $s2, %lo(D_801D87D4)($at)
    /* 2C368 801B52E0 1E80013C */  lui        $at, %hi(D_801D87D5)
    /* 2C36C 801B52E4 D58731A0 */  sb         $s1, %lo(D_801D87D5)($at)
    /* 2C370 801B52E8 1E80013C */  lui        $at, %hi(D_801D87D6)
    /* 2C374 801B52EC D68730A0 */  sb         $s0, %lo(D_801D87D6)($at)
    /* 2C378 801B52F0 1E80013C */  lui        $at, %hi(D_801D87D7)
    /* 2C37C 801B52F4 D78720A0 */  sb         $zero, %lo(D_801D87D7)($at)
    /* 2C380 801B52F8 1E80013C */  lui        $at, %hi(D_801D87D8)
    /* 2C384 801B52FC D88720A0 */  sb         $zero, %lo(D_801D87D8)($at)
    /* 2C388 801B5300 1E80013C */  lui        $at, %hi(D_801D87D9)
    /* 2C38C 801B5304 D98720A0 */  sb         $zero, %lo(D_801D87D9)($at)
    /* 2C390 801B5308 1E80013C */  lui        $at, %hi(D_801D87DA)
    /* 2C394 801B530C DA8732A0 */  sb         $s2, %lo(D_801D87DA)($at)
    /* 2C398 801B5310 1E80013C */  lui        $at, %hi(D_801D87DB)
    /* 2C39C 801B5314 DB8731A0 */  sb         $s1, %lo(D_801D87DB)($at)
    /* 2C3A0 801B5318 1E80013C */  lui        $at, %hi(D_801D87DC)
    /* 2C3A4 801B531C DC8730A0 */  sb         $s0, %lo(D_801D87DC)($at)
    /* 2C3A8 801B5320 875B060C */  jal        func_80196E1C
    /* 2C3AC 801B5324 06000624 */   addiu     $a2, $zero, 0x6
    /* 2C3B0 801B5328 21200000 */  addu       $a0, $zero, $zero
    /* 2C3B4 801B532C 21288002 */  addu       $a1, $s4, $zero
    /* 2C3B8 801B5330 0000B6A4 */  sh         $s6, 0x0($a1)
    /* 2C3BC 801B5334 1E80013C */  lui        $at, %hi(D_801D87CA)
    /* 2C3C0 801B5338 CA8735A4 */  sh         $s5, %lo(D_801D87CA)($at)
    /* 2C3C4 801B533C 1E80013C */  lui        $at, %hi(D_801D87CC)
    /* 2C3C8 801B5340 CC8737A4 */  sh         $s7, %lo(D_801D87CC)($at)
    /* 2C3CC 801B5344 1E80013C */  lui        $at, %hi(D_801D87CE)
    /* 2C3D0 801B5348 CE8733A4 */  sh         $s3, %lo(D_801D87CE)($at)
    /* 2C3D4 801B534C 1E80013C */  lui        $at, %hi(D_801D87D0)
    /* 2C3D8 801B5350 D08736A4 */  sh         $s6, %lo(D_801D87D0)($at)
    /* 2C3DC 801B5354 1E80013C */  lui        $at, %hi(D_801D87D2)
    /* 2C3E0 801B5358 D28733A4 */  sh         $s3, %lo(D_801D87D2)($at)
    /* 2C3E4 801B535C 1E80013C */  lui        $at, %hi(D_801D87D4)
    /* 2C3E8 801B5360 D48732A0 */  sb         $s2, %lo(D_801D87D4)($at)
    /* 2C3EC 801B5364 1E80013C */  lui        $at, %hi(D_801D87D5)
    /* 2C3F0 801B5368 D58731A0 */  sb         $s1, %lo(D_801D87D5)($at)
    /* 2C3F4 801B536C 1E80013C */  lui        $at, %hi(D_801D87D6)
    /* 2C3F8 801B5370 D68730A0 */  sb         $s0, %lo(D_801D87D6)($at)
    /* 2C3FC 801B5374 1E80013C */  lui        $at, %hi(D_801D87D7)
    /* 2C400 801B5378 D78732A0 */  sb         $s2, %lo(D_801D87D7)($at)
    /* 2C404 801B537C 1E80013C */  lui        $at, %hi(D_801D87D8)
    /* 2C408 801B5380 D88731A0 */  sb         $s1, %lo(D_801D87D8)($at)
    /* 2C40C 801B5384 1E80013C */  lui        $at, %hi(D_801D87D9)
    /* 2C410 801B5388 D98730A0 */  sb         $s0, %lo(D_801D87D9)($at)
    /* 2C414 801B538C 1E80013C */  lui        $at, %hi(D_801D87DA)
    /* 2C418 801B5390 DA8720A0 */  sb         $zero, %lo(D_801D87DA)($at)
    /* 2C41C 801B5394 1E80013C */  lui        $at, %hi(D_801D87DB)
    /* 2C420 801B5398 DB8720A0 */  sb         $zero, %lo(D_801D87DB)($at)
    /* 2C424 801B539C 1E80013C */  lui        $at, %hi(D_801D87DC)
    /* 2C428 801B53A0 DC8720A0 */  sb         $zero, %lo(D_801D87DC)($at)
    /* 2C42C 801B53A4 875B060C */  jal        func_80196E1C
    /* 2C430 801B53A8 06000624 */   addiu     $a2, $zero, 0x6
    /* 2C434 801B53AC 3000BF8F */  lw         $ra, 0x30($sp)
    /* 2C438 801B53B0 2C00B78F */  lw         $s7, 0x2C($sp)
    /* 2C43C 801B53B4 2800B68F */  lw         $s6, 0x28($sp)
    /* 2C440 801B53B8 2400B58F */  lw         $s5, 0x24($sp)
    /* 2C444 801B53BC 2000B48F */  lw         $s4, 0x20($sp)
    /* 2C448 801B53C0 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 2C44C 801B53C4 1800B28F */  lw         $s2, 0x18($sp)
    /* 2C450 801B53C8 1400B18F */  lw         $s1, 0x14($sp)
    /* 2C454 801B53CC 1000B08F */  lw         $s0, 0x10($sp)
    /* 2C458 801B53D0 3800BD27 */  addiu      $sp, $sp, 0x38
    /* 2C45C 801B53D4 0800E003 */  jr         $ra
    /* 2C460 801B53D8 00000000 */   nop
endlabel func_801B50F8
