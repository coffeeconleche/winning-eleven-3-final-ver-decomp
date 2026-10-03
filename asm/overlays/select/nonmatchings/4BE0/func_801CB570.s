nonmatching func_801CB570, 0x548

glabel func_801CB570
    /* 425F8 801CB570 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 425FC 801CB574 21200000 */  addu       $a0, $zero, $zero
    /* 42600 801CB578 5C00BFAF */  sw         $ra, 0x5C($sp)
    /* 42604 801CB57C 5800B4AF */  sw         $s4, 0x58($sp)
    /* 42608 801CB580 5400B3AF */  sw         $s3, 0x54($sp)
    /* 4260C 801CB584 5000B2AF */  sw         $s2, 0x50($sp)
    /* 42610 801CB588 4C00B1AF */  sw         $s1, 0x4C($sp)
    /* 42614 801CB58C 98BB010C */  jal        func_8006EE60
    /* 42618 801CB590 4800B0AF */   sw        $s0, 0x48($sp)
    /* 4261C 801CB594 1080103C */  lui        $s0, %hi(D_800FF748)
    /* 42620 801CB598 48F71026 */  addiu      $s0, $s0, %lo(D_800FF748)
    /* 42624 801CB59C 801F033C */  lui        $v1, (0x1F80029B >> 16)
    /* 42628 801CB5A0 9B026390 */  lbu        $v1, (0x1F80029B & 0xFFFF)($v1)
    /* 4262C 801CB5A4 1E80143C */  lui        $s4, %hi(D_801D8D90)
    /* 42630 801CB5A8 908D9426 */  addiu      $s4, $s4, %lo(D_801D8D90)
    /* 42634 801CB5AC 1180013C */  lui        $at, %hi(D_8010A5A4)
    /* 42638 801CB5B0 A4A522A4 */  sh         $v0, %lo(D_8010A5A4)($at)
    /* 4263C 801CB5B4 0700622C */  sltiu      $v0, $v1, 0x7
    /* 42640 801CB5B8 36014010 */  beqz       $v0, .L801CBA94
    /* 42644 801CB5BC 801F133C */   lui       $s3, (0x1F80029B >> 16)
    /* 42648 801CB5C0 80100300 */  sll        $v0, $v1, 2
    /* 4264C 801CB5C4 1980013C */  lui        $at, %hi(jtbl_8018D9D4)
    /* 42650 801CB5C8 21082200 */  addu       $at, $at, $v0
    /* 42654 801CB5CC D4D9228C */  lw         $v0, %lo(jtbl_8018D9D4)($at)
    /* 42658 801CB5D0 00000000 */  nop
    /* 4265C 801CB5D4 08004000 */  jr         $v0
    /* 42660 801CB5D8 00000000 */   nop
  jlabel .L801CB5DC
    /* 42664 801CB5DC 86000224 */  addiu      $v0, $zero, 0x86
    /* 42668 801CB5E0 A20262A2 */  sb         $v0, (0x1F8002A2 & 0xFFFF)($s3)
    /* 4266C 801CB5E4 80000224 */  addiu      $v0, $zero, 0x80
    /* 42670 801CB5E8 1D80013C */  lui        $at, %hi(D_801D429A)
    /* 42674 801CB5EC 9A4222A0 */  sb         $v0, %lo(D_801D429A)($at)
    /* 42678 801CB5F0 04000224 */  addiu      $v0, $zero, 0x4
    /* 4267C 801CB5F4 1E80013C */  lui        $at, %hi(D_801D8B16)
    /* 42680 801CB5F8 168B20A0 */  sb         $zero, %lo(D_801D8B16)($at)
    /* 42684 801CB5FC 1E80013C */  lui        $at, %hi(D_801D8A21)
    /* 42688 801CB600 218A20A0 */  sb         $zero, %lo(D_801D8A21)($at)
    /* 4268C 801CB604 1E80013C */  lui        $at, %hi(D_801D8A22)
    /* 42690 801CB608 228A22A0 */  sb         $v0, %lo(D_801D8A22)($at)
    /* 42694 801CB60C 9B026292 */  lbu        $v0, (0x1F80029B & 0xFFFF)($s3)
    /* 42698 801CB610 38036392 */  lbu        $v1, (0x1F800338 & 0xFFFF)($s3)
    /* 4269C 801CB614 01004224 */  addiu      $v0, $v0, 0x1
    /* 426A0 801CB618 1E80013C */  lui        $at, %hi(D_801D8DBC)
    /* 426A4 801CB61C BC8D23A0 */  sb         $v1, %lo(D_801D8DBC)($at)
    /* 426A8 801CB620 1E80013C */  lui        $at, %hi(D_801D8A20)
    /* 426AC 801CB624 208A23A0 */  sb         $v1, %lo(D_801D8A20)($at)
    /* 426B0 801CB628 A52E0708 */  j          .L801CBA94
    /* 426B4 801CB62C 9B0262A2 */   sb        $v0, (0x1F80029B & 0xFFFF)($s3)
  jlabel .L801CB630
    /* 426B8 801CB630 03000424 */  addiu      $a0, $zero, 0x3
    /* 426BC 801CB634 21280000 */  addu       $a1, $zero, $zero
    /* 426C0 801CB638 21300000 */  addu       $a2, $zero, $zero
    /* 426C4 801CB63C 21380000 */  addu       $a3, $zero, $zero
    /* 426C8 801CB640 60000324 */  addiu      $v1, $zero, 0x60
    /* 426CC 801CB644 2800A3AF */  sw         $v1, 0x28($sp)
    /* 426D0 801CB648 3400A3AF */  sw         $v1, 0x34($sp)
    /* 426D4 801CB64C 1E80033C */  lui        $v1, %hi(D_801D8A21)
    /* 426D8 801CB650 218A6390 */  lbu        $v1, %lo(D_801D8A21)($v1)
    /* 426DC 801CB654 1E80083C */  lui        $t0, %hi(D_801D8A22)
    /* 426E0 801CB658 228A0891 */  lbu        $t0, %lo(D_801D8A22)($t0)
    /* 426E4 801CB65C 00010224 */  addiu      $v0, $zero, 0x100
    /* 426E8 801CB660 1000A2AF */  sw         $v0, 0x10($sp)
    /* 426EC 801CB664 22000224 */  addiu      $v0, $zero, 0x22
    /* 426F0 801CB668 1400A2AF */  sw         $v0, 0x14($sp)
    /* 426F4 801CB66C 88FF0224 */  addiu      $v0, $zero, -0x78
    /* 426F8 801CB670 1800A2AF */  sw         $v0, 0x18($sp)
    /* 426FC 801CB674 18000224 */  addiu      $v0, $zero, 0x18
    /* 42700 801CB678 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 42704 801CB67C 20000224 */  addiu      $v0, $zero, 0x20
    /* 42708 801CB680 2000A2AF */  sw         $v0, 0x20($sp)
    /* 4270C 801CB684 2400A2AF */  sw         $v0, 0x24($sp)
    /* 42710 801CB688 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 42714 801CB68C 3000A2AF */  sw         $v0, 0x30($sp)
    /* 42718 801CB690 01000224 */  addiu      $v0, $zero, 0x1
    /* 4271C 801CB694 4000A0AF */  sw         $zero, 0x40($sp)
    /* 42720 801CB698 4400A2AF */  sw         $v0, 0x44($sp)
    /* 42724 801CB69C 3800A3AF */  sw         $v1, 0x38($sp)
    /* 42728 801CB6A0 F813070C */  jal        func_801C4FE0
    /* 4272C 801CB6A4 3C00A8AF */   sw        $t0, 0x3C($sp)
    /* 42730 801CB6A8 1E80033C */  lui        $v1, %hi(D_801D8A21)
    /* 42734 801CB6AC 218A6390 */  lbu        $v1, %lo(D_801D8A21)($v1)
    /* 42738 801CB6B0 1D80023C */  lui        $v0, %hi(D_801D429A)
    /* 4273C 801CB6B4 9A424290 */  lbu        $v0, %lo(D_801D429A)($v0)
    /* 42740 801CB6B8 01006324 */  addiu      $v1, $v1, 0x1
    /* 42744 801CB6BC F8FF4224 */  addiu      $v0, $v0, -0x8
    /* 42748 801CB6C0 1E80013C */  lui        $at, %hi(D_801D8A21)
    /* 4274C 801CB6C4 218A23A0 */  sb         $v1, %lo(D_801D8A21)($at)
    /* 42750 801CB6C8 1D80013C */  lui        $at, %hi(D_801D429A)
    /* 42754 801CB6CC 9A4222A0 */  sb         $v0, %lo(D_801D429A)($at)
    /* 42758 801CB6D0 AF0F070C */  jal        func_801C3EBC
    /* 4275C 801CB6D4 FF004430 */   andi      $a0, $v0, 0xFF
    /* 42760 801CB6D8 1D80023C */  lui        $v0, %hi(D_801D429A)
    /* 42764 801CB6DC 9A424290 */  lbu        $v0, %lo(D_801D429A)($v0)
    /* 42768 801CB6E0 00000000 */  nop
    /* 4276C 801CB6E4 4100422C */  sltiu      $v0, $v0, 0x41
    /* 42770 801CB6E8 EA004010 */  beqz       $v0, .L801CBA94
    /* 42774 801CB6EC 00000000 */   nop
    /* 42778 801CB6F0 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 4277C 801CB6F4 8F2E0708 */  j          .L801CBA3C
    /* 42780 801CB6F8 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CB6FC
    /* 42784 801CB6FC 21200000 */  addu       $a0, $zero, $zero
    /* 42788 801CB700 64FF0624 */  addiu      $a2, $zero, -0x9C
    /* 4278C 801CB704 1D80113C */  lui        $s1, %hi(D_801D586C)
    /* 42790 801CB708 6C583126 */  addiu      $s1, $s1, %lo(D_801D586C)
    /* 42794 801CB70C 3E000724 */  addiu      $a3, $zero, 0x3E
    /* 42798 801CB710 38010224 */  addiu      $v0, $zero, 0x138
    /* 4279C 801CB714 03001224 */  addiu      $s2, $zero, 0x3
    /* 427A0 801CB718 0000258E */  lw         $a1, 0x0($s1)
    /* 427A4 801CB71C 01001024 */  addiu      $s0, $zero, 0x1
    /* 427A8 801CB720 1E80013C */  lui        $at, %hi(D_801D92F7)
    /* 427AC 801CB724 F79220A0 */  sb         $zero, %lo(D_801D92F7)($at)
    /* 427B0 801CB728 1000A2AF */  sw         $v0, 0x10($sp)
    /* 427B4 801CB72C 1400A0AF */  sw         $zero, 0x14($sp)
    /* 427B8 801CB730 1800A0AF */  sw         $zero, 0x18($sp)
    /* 427BC 801CB734 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 427C0 801CB738 2000A0AF */  sw         $zero, 0x20($sp)
    /* 427C4 801CB73C 2400B2AF */  sw         $s2, 0x24($sp)
    /* 427C8 801CB740 2800A0AF */  sw         $zero, 0x28($sp)
    /* 427CC 801CB744 B850060C */  jal        func_801942E0
    /* 427D0 801CB748 2C00B0AF */   sw        $s0, 0x2C($sp)
    /* 427D4 801CB74C 01000424 */  addiu      $a0, $zero, 0x1
    /* 427D8 801CB750 8EFF0624 */  addiu      $a2, $zero, -0x72
    /* 427DC 801CB754 F8FF0724 */  addiu      $a3, $zero, -0x8
    /* 427E0 801CB758 0000258E */  lw         $a1, 0x0($s1)
    /* 427E4 801CB75C 00010224 */  addiu      $v0, $zero, 0x100
    /* 427E8 801CB760 1000A2AF */  sw         $v0, 0x10($sp)
    /* 427EC 801CB764 0C000224 */  addiu      $v0, $zero, 0xC
    /* 427F0 801CB768 1400A0AF */  sw         $zero, 0x14($sp)
    /* 427F4 801CB76C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 427F8 801CB770 1C00A0AF */  sw         $zero, 0x1C($sp)
    /* 427FC 801CB774 2000A0AF */  sw         $zero, 0x20($sp)
    /* 42800 801CB778 2400A2AF */  sw         $v0, 0x24($sp)
    /* 42804 801CB77C 2800B0AF */  sw         $s0, 0x28($sp)
    /* 42808 801CB780 B850060C */  jal        func_801942E0
    /* 4280C 801CB784 2C00B0AF */   sw        $s0, 0x2C($sp)
    /* 42810 801CB788 01000424 */  addiu      $a0, $zero, 0x1
    /* 42814 801CB78C 21280000 */  addu       $a1, $zero, $zero
    /* 42818 801CB790 21308002 */  addu       $a2, $s4, $zero
    /* 4281C 801CB794 21380000 */  addu       $a3, $zero, $zero
    /* 42820 801CB798 00010224 */  addiu      $v0, $zero, 0x100
    /* 42824 801CB79C 0400C2A4 */  sh         $v0, 0x4($a2)
    /* 42828 801CB7A0 22000224 */  addiu      $v0, $zero, 0x22
    /* 4282C 801CB7A4 0600C2A4 */  sh         $v0, 0x6($a2)
    /* 42830 801CB7A8 20000224 */  addiu      $v0, $zero, 0x20
    /* 42834 801CB7AC 0800C2A0 */  sb         $v0, 0x8($a2)
    /* 42838 801CB7B0 0900C2A0 */  sb         $v0, 0x9($a2)
    /* 4283C 801CB7B4 60000224 */  addiu      $v0, $zero, 0x60
    /* 42840 801CB7B8 0200C0A4 */  sh         $zero, 0x2($a2)
    /* 42844 801CB7BC 0000C0A4 */  sh         $zero, 0x0($a2)
    /* 42848 801CB7C0 0A00C2A0 */  sb         $v0, 0xA($a2)
    /* 4284C 801CB7C4 1000B2AF */  sw         $s2, 0x10($sp)
    /* 42850 801CB7C8 7850060C */  jal        func_801941E0
    /* 42854 801CB7CC 1400B0AF */   sw        $s0, 0x14($sp)
    /* 42858 801CB7D0 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 4285C 801CB7D4 01000324 */  addiu      $v1, $zero, 0x1
    /* 42860 801CB7D8 1E80013C */  lui        $at, %hi(D_801D8B16)
    /* 42864 801CB7DC 168B23A0 */  sb         $v1, %lo(D_801D8B16)($at)
    /* 42868 801CB7E0 8F2E0708 */  j          .L801CBA3C
    /* 4286C 801CB7E4 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CB7E8
    /* 42870 801CB7E8 1180033C */  lui        $v1, %hi(D_8010A5A4)
    /* 42874 801CB7EC A4A56394 */  lhu        $v1, %lo(D_8010A5A4)($v1)
    /* 42878 801CB7F0 40000224 */  addiu      $v0, $zero, 0x40
    /* 4287C 801CB7F4 28006210 */  beq        $v1, $v0, .L801CB898
    /* 42880 801CB7F8 41006228 */   slti      $v0, $v1, 0x41
    /* 42884 801CB7FC 05004010 */  beqz       $v0, .L801CB814
    /* 42888 801CB800 20000224 */   addiu     $v0, $zero, 0x20
    /* 4288C 801CB804 1F006210 */  beq        $v1, $v0, .L801CB884
    /* 42890 801CB808 00000000 */   nop
    /* 42894 801CB80C A52E0708 */  j          .L801CBA94
    /* 42898 801CB810 00000000 */   nop
  .L801CB814:
    /* 4289C 801CB814 00200224 */  addiu      $v0, $zero, 0x2000
    /* 428A0 801CB818 0F006210 */  beq        $v1, $v0, .L801CB858
    /* 428A4 801CB81C 00800234 */   ori       $v0, $zero, 0x8000
    /* 428A8 801CB820 9C006214 */  bne        $v1, $v0, .L801CBA94
    /* 428AC 801CB824 01000224 */   addiu     $v0, $zero, 0x1
    /* 428B0 801CB828 1E80033C */  lui        $v1, %hi(D_801D8DBC)
    /* 428B4 801CB82C BC8D6390 */  lbu        $v1, %lo(D_801D8DBC)($v1)
    /* 428B8 801CB830 00000000 */  nop
    /* 428BC 801CB834 04006210 */  beq        $v1, $v0, .L801CB848
    /* 428C0 801CB838 01000224 */   addiu     $v0, $zero, 0x1
    /* 428C4 801CB83C 88AD020C */  jal        func_800AB620
    /* 428C8 801CB840 0D050424 */   addiu     $a0, $zero, 0x50D
    /* 428CC 801CB844 01000224 */  addiu      $v0, $zero, 0x1
  .L801CB848:
    /* 428D0 801CB848 1E80013C */  lui        $at, %hi(D_801D8DBC)
    /* 428D4 801CB84C BC8D22A0 */  sb         $v0, %lo(D_801D8DBC)($at)
    /* 428D8 801CB850 A52E0708 */  j          .L801CBA94
    /* 428DC 801CB854 380362A2 */   sb        $v0, 0x338($s3)
  .L801CB858:
    /* 428E0 801CB858 1E80023C */  lui        $v0, %hi(D_801D8DBC)
    /* 428E4 801CB85C BC8D4290 */  lbu        $v0, %lo(D_801D8DBC)($v0)
    /* 428E8 801CB860 00000000 */  nop
    /* 428EC 801CB864 03004010 */  beqz       $v0, .L801CB874
    /* 428F0 801CB868 00000000 */   nop
    /* 428F4 801CB86C 88AD020C */  jal        func_800AB620
    /* 428F8 801CB870 0D050424 */   addiu     $a0, $zero, 0x50D
  .L801CB874:
    /* 428FC 801CB874 1E80013C */  lui        $at, %hi(D_801D8DBC)
    /* 42900 801CB878 BC8D20A0 */  sb         $zero, %lo(D_801D8DBC)($at)
    /* 42904 801CB87C A52E0708 */  j          .L801CBA94
    /* 42908 801CB880 380360A2 */   sb        $zero, 0x338($s3)
  .L801CB884:
    /* 4290C 801CB884 88AD020C */  jal        func_800AB620
    /* 42910 801CB888 28050424 */   addiu     $a0, $zero, 0x528
    /* 42914 801CB88C 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 42918 801CB890 8F2E0708 */  j          .L801CBA3C
    /* 4291C 801CB894 01004224 */   addiu     $v0, $v0, 0x1
  .L801CB898:
    /* 42920 801CB898 88AD020C */  jal        func_800AB620
    /* 42924 801CB89C 29050424 */   addiu     $a0, $zero, 0x529
    /* 42928 801CB8A0 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 4292C 801CB8A4 1E80033C */  lui        $v1, %hi(D_801D8A20)
    /* 42930 801CB8A8 208A6390 */  lbu        $v1, %lo(D_801D8A20)($v1)
    /* 42934 801CB8AC 01004224 */  addiu      $v0, $v0, 0x1
    /* 42938 801CB8B0 380363A2 */  sb         $v1, 0x338($s3)
    /* 4293C 801CB8B4 A52E0708 */  j          .L801CBA94
    /* 42940 801CB8B8 9B0262A2 */   sb        $v0, 0x29B($s3)
  jlabel .L801CB8BC
    /* 42944 801CB8BC 03000424 */  addiu      $a0, $zero, 0x3
    /* 42948 801CB8C0 21280000 */  addu       $a1, $zero, $zero
    /* 4294C 801CB8C4 21300000 */  addu       $a2, $zero, $zero
    /* 42950 801CB8C8 21380000 */  addu       $a3, $zero, $zero
    /* 42954 801CB8CC 60000324 */  addiu      $v1, $zero, 0x60
    /* 42958 801CB8D0 2800A3AF */  sw         $v1, 0x28($sp)
    /* 4295C 801CB8D4 3400A3AF */  sw         $v1, 0x34($sp)
    /* 42960 801CB8D8 1E80033C */  lui        $v1, %hi(D_801D8A22)
    /* 42964 801CB8DC 228A6390 */  lbu        $v1, %lo(D_801D8A22)($v1)
    /* 42968 801CB8E0 04000224 */  addiu      $v0, $zero, 0x4
    /* 4296C 801CB8E4 1E80013C */  lui        $at, %hi(D_801D8A21)
    /* 42970 801CB8E8 218A22A0 */  sb         $v0, %lo(D_801D8A21)($at)
    /* 42974 801CB8EC 00010224 */  addiu      $v0, $zero, 0x100
    /* 42978 801CB8F0 1000A2AF */  sw         $v0, 0x10($sp)
    /* 4297C 801CB8F4 22000224 */  addiu      $v0, $zero, 0x22
    /* 42980 801CB8F8 1400A2AF */  sw         $v0, 0x14($sp)
    /* 42984 801CB8FC 88FF0224 */  addiu      $v0, $zero, -0x78
    /* 42988 801CB900 1800A2AF */  sw         $v0, 0x18($sp)
    /* 4298C 801CB904 18000224 */  addiu      $v0, $zero, 0x18
    /* 42990 801CB908 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 42994 801CB90C 20000224 */  addiu      $v0, $zero, 0x20
    /* 42998 801CB910 2000A2AF */  sw         $v0, 0x20($sp)
    /* 4299C 801CB914 2400A2AF */  sw         $v0, 0x24($sp)
    /* 429A0 801CB918 2C00A2AF */  sw         $v0, 0x2C($sp)
    /* 429A4 801CB91C 3000A2AF */  sw         $v0, 0x30($sp)
    /* 429A8 801CB920 04000224 */  addiu      $v0, $zero, 0x4
    /* 429AC 801CB924 3800A2AF */  sw         $v0, 0x38($sp)
    /* 429B0 801CB928 01000224 */  addiu      $v0, $zero, 0x1
    /* 429B4 801CB92C 1E80013C */  lui        $at, %hi(D_801D8FB8)
    /* 429B8 801CB930 B88F20A0 */  sb         $zero, %lo(D_801D8FB8)($at)
    /* 429BC 801CB934 1E80013C */  lui        $at, %hi(D_801D92BF)
    /* 429C0 801CB938 BF9220A0 */  sb         $zero, %lo(D_801D92BF)($at)
    /* 429C4 801CB93C 1E80013C */  lui        $at, %hi(D_801D8B16)
    /* 429C8 801CB940 168B20A0 */  sb         $zero, %lo(D_801D8B16)($at)
    /* 429CC 801CB944 4000A0AF */  sw         $zero, 0x40($sp)
    /* 429D0 801CB948 4400A2AF */  sw         $v0, 0x44($sp)
    /* 429D4 801CB94C F813070C */  jal        func_801C4FE0
    /* 429D8 801CB950 3C00A3AF */   sw        $v1, 0x3C($sp)
    /* 429DC 801CB954 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 429E0 801CB958 8F2E0708 */  j          .L801CBA3C
    /* 429E4 801CB95C 01004224 */   addiu     $v0, $v0, 0x1
  jlabel .L801CB960
    /* 429E8 801CB960 03000424 */  addiu      $a0, $zero, 0x3
    /* 429EC 801CB964 21280000 */  addu       $a1, $zero, $zero
    /* 429F0 801CB968 21300000 */  addu       $a2, $zero, $zero
    /* 429F4 801CB96C 21380000 */  addu       $a3, $zero, $zero
    /* 429F8 801CB970 20000324 */  addiu      $v1, $zero, 0x20
    /* 429FC 801CB974 2000A3AF */  sw         $v1, 0x20($sp)
    /* 42A00 801CB978 2800A3AF */  sw         $v1, 0x28($sp)
    /* 42A04 801CB97C 2C00A3AF */  sw         $v1, 0x2C($sp)
    /* 42A08 801CB980 3000A3AF */  sw         $v1, 0x30($sp)
    /* 42A0C 801CB984 3400A3AF */  sw         $v1, 0x34($sp)
    /* 42A10 801CB988 1E80033C */  lui        $v1, %hi(D_801D8A21)
    /* 42A14 801CB98C 218A6390 */  lbu        $v1, %lo(D_801D8A21)($v1)
    /* 42A18 801CB990 1E80083C */  lui        $t0, %hi(D_801D8A22)
    /* 42A1C 801CB994 228A0891 */  lbu        $t0, %lo(D_801D8A22)($t0)
    /* 42A20 801CB998 00010224 */  addiu      $v0, $zero, 0x100
    /* 42A24 801CB99C 1000A2AF */  sw         $v0, 0x10($sp)
    /* 42A28 801CB9A0 22000224 */  addiu      $v0, $zero, 0x22
    /* 42A2C 801CB9A4 1400A2AF */  sw         $v0, 0x14($sp)
    /* 42A30 801CB9A8 88FF0224 */  addiu      $v0, $zero, -0x78
    /* 42A34 801CB9AC 1800A2AF */  sw         $v0, 0x18($sp)
    /* 42A38 801CB9B0 18000224 */  addiu      $v0, $zero, 0x18
    /* 42A3C 801CB9B4 1C00A2AF */  sw         $v0, 0x1C($sp)
    /* 42A40 801CB9B8 40000224 */  addiu      $v0, $zero, 0x40
    /* 42A44 801CB9BC 2400A2AF */  sw         $v0, 0x24($sp)
    /* 42A48 801CB9C0 01000224 */  addiu      $v0, $zero, 0x1
    /* 42A4C 801CB9C4 4000A0AF */  sw         $zero, 0x40($sp)
    /* 42A50 801CB9C8 4400A2AF */  sw         $v0, 0x44($sp)
    /* 42A54 801CB9CC 3800A3AF */  sw         $v1, 0x38($sp)
    /* 42A58 801CB9D0 F813070C */  jal        func_801C4FE0
    /* 42A5C 801CB9D4 3C00A8AF */   sw        $t0, 0x3C($sp)
    /* 42A60 801CB9D8 1E80023C */  lui        $v0, %hi(D_801D8A21)
    /* 42A64 801CB9DC 218A4290 */  lbu        $v0, %lo(D_801D8A21)($v0)
    /* 42A68 801CB9E0 00000000 */  nop
    /* 42A6C 801CB9E4 03004010 */  beqz       $v0, .L801CB9F4
    /* 42A70 801CB9E8 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 42A74 801CB9EC 1E80013C */  lui        $at, %hi(D_801D8A21)
    /* 42A78 801CB9F0 218A22A0 */  sb         $v0, %lo(D_801D8A21)($at)
  .L801CB9F4:
    /* 42A7C 801CB9F4 1D80023C */  lui        $v0, %hi(D_801D429A)
    /* 42A80 801CB9F8 9A424290 */  lbu        $v0, %lo(D_801D429A)($v0)
    /* 42A84 801CB9FC 00000000 */  nop
    /* 42A88 801CBA00 08004224 */  addiu      $v0, $v0, 0x8
    /* 42A8C 801CBA04 1D80013C */  lui        $at, %hi(D_801D429A)
    /* 42A90 801CBA08 9A4222A0 */  sb         $v0, %lo(D_801D429A)($at)
    /* 42A94 801CBA0C AF0F070C */  jal        func_801C3EBC
    /* 42A98 801CBA10 FF004430 */   andi      $a0, $v0, 0xFF
    /* 42A9C 801CBA14 1D80023C */  lui        $v0, %hi(D_801D429A)
    /* 42AA0 801CBA18 9A424290 */  lbu        $v0, %lo(D_801D429A)($v0)
    /* 42AA4 801CBA1C 00000000 */  nop
    /* 42AA8 801CBA20 8000422C */  sltiu      $v0, $v0, 0x80
    /* 42AAC 801CBA24 1B004014 */  bnez       $v0, .L801CBA94
    /* 42AB0 801CBA28 00000000 */   nop
    /* 42AB4 801CBA2C 9B026292 */  lbu        $v0, 0x29B($s3)
    /* 42AB8 801CBA30 1E80013C */  lui        $at, %hi(D_801D92F7)
    /* 42ABC 801CBA34 F79220A0 */  sb         $zero, %lo(D_801D92F7)($at)
    /* 42AC0 801CBA38 01004224 */  addiu      $v0, $v0, 0x1
  .L801CBA3C:
    /* 42AC4 801CBA3C A52E0708 */  j          .L801CBA94
    /* 42AC8 801CBA40 9B0262A2 */   sb        $v0, 0x29B($s3)
  jlabel .L801CBA44
    /* 42ACC 801CBA44 38036392 */  lbu        $v1, 0x338($s3)
    /* 42AD0 801CBA48 1E80023C */  lui        $v0, %hi(D_801D8A20)
    /* 42AD4 801CBA4C 208A4290 */  lbu        $v0, %lo(D_801D8A20)($v0)
    /* 42AD8 801CBA50 00000000 */  nop
    /* 42ADC 801CBA54 09004310 */  beq        $v0, $v1, .L801CBA7C
    /* 42AE0 801CBA58 A20260A2 */   sb        $zero, 0x2A2($s3)
    /* 42AE4 801CBA5C 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42AE8 801CBA60 21080102 */  addu       $at, $s0, $at
    /* 42AEC 801CBA64 148F2290 */  lbu        $v0, -0x70EC($at)
    /* 42AF0 801CBA68 00000000 */  nop
    /* 42AF4 801CBA6C 01004234 */  ori        $v0, $v0, 0x1
    /* 42AF8 801CBA70 0100013C */  lui        $at, (0x10000 >> 16)
    /* 42AFC 801CBA74 21080102 */  addu       $at, $s0, $at
    /* 42B00 801CBA78 148F22A0 */  sb         $v0, -0x70EC($at)
  .L801CBA7C:
    /* 42B04 801CBA7C 9B0E070C */  jal        func_801C3A6C
    /* 42B08 801CBA80 00000000 */   nop
    /* 42B0C 801CBA84 03000224 */  addiu      $v0, $zero, 0x3
    /* 42B10 801CBA88 9B0262A2 */  sb         $v0, 0x29B($s3)
    /* 42B14 801CBA8C 10000224 */  addiu      $v0, $zero, 0x10
    /* 42B18 801CBA90 9A0262A2 */  sb         $v0, 0x29A($s3)
  .L801CBA94:
    /* 42B1C 801CBA94 5C00BF8F */  lw         $ra, 0x5C($sp)
    /* 42B20 801CBA98 5800B48F */  lw         $s4, 0x58($sp)
    /* 42B24 801CBA9C 5400B38F */  lw         $s3, 0x54($sp)
    /* 42B28 801CBAA0 5000B28F */  lw         $s2, 0x50($sp)
    /* 42B2C 801CBAA4 4C00B18F */  lw         $s1, 0x4C($sp)
    /* 42B30 801CBAA8 4800B08F */  lw         $s0, 0x48($sp)
    /* 42B34 801CBAAC 6000BD27 */  addiu      $sp, $sp, 0x60
    /* 42B38 801CBAB0 0800E003 */  jr         $ra
    /* 42B3C 801CBAB4 00000000 */   nop
endlabel func_801CB570
