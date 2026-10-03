nonmatching func_800B8940, 0x168

glabel func_800B8940
    /* A9140 800B8940 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* A9144 800B8944 2000B2AF */  sw         $s2, 0x20($sp)
    /* A9148 800B8948 21908000 */  addu       $s2, $a0, $zero
    /* A914C 800B894C FFFF0424 */  addiu      $a0, $zero, -0x1
    /* A9150 800B8950 2C00BFAF */  sw         $ra, 0x2C($sp)
    /* A9154 800B8954 2800B4AF */  sw         $s4, 0x28($sp)
    /* A9158 800B8958 2400B3AF */  sw         $s3, 0x24($sp)
    /* A915C 800B895C 1C00B1AF */  sw         $s1, 0x1C($sp)
    /* A9160 800B8960 46E9020C */  jal        func_800BA518
    /* A9164 800B8964 1800B0AF */   sw        $s0, 0x18($sp)
    /* A9168 800B8968 3C00143C */  lui        $s4, (0x3C0000 >> 16)
    /* A916C 800B896C 0D80133C */  lui        $s3, %hi(D_800D3974)
    /* A9170 800B8970 74397326 */  addiu      $s3, $s3, %lo(D_800D3974)
    /* A9174 800B8974 0D80113C */  lui        $s1, %hi(D_800D3C2C)
    /* A9178 800B8978 2C3C3126 */  addiu      $s1, $s1, %lo(D_800D3C2C)
    /* A917C 800B897C 0D80103C */  lui        $s0, %hi(D_800D39F4)
    /* A9180 800B8980 F4391026 */  addiu      $s0, $s0, %lo(D_800D39F4)
    /* A9184 800B8984 C0034224 */  addiu      $v0, $v0, 0x3C0
    /* A9188 800B8988 0E80013C */  lui        $at, %hi(D_800E71E0)
    /* A918C 800B898C E07122AC */  sw         $v0, %lo(D_800E71E0)($at)
    /* A9190 800B8990 0180023C */  lui        $v0, %hi(D_800153D0)
    /* A9194 800B8994 D0534224 */  addiu      $v0, $v0, %lo(D_800153D0)
    /* A9198 800B8998 0E80013C */  lui        $at, %hi(D_800E71E4)
    /* A919C 800B899C E47120AC */  sw         $zero, %lo(D_800E71E4)($at)
    /* A91A0 800B89A0 0E80013C */  lui        $at, %hi(D_800E71E8)
    /* A91A4 800B89A4 E87122AC */  sw         $v0, %lo(D_800E71E8)($at)
  .L800B89A8:
    /* A91A8 800B89A8 46E9020C */  jal        func_800BA518
    /* A91AC 800B89AC FFFF0424 */   addiu     $a0, $zero, -0x1
    /* A91B0 800B89B0 0E80033C */  lui        $v1, %hi(D_800E71E0)
    /* A91B4 800B89B4 E071638C */  lw         $v1, %lo(D_800E71E0)($v1)
    /* A91B8 800B89B8 00000000 */  nop
    /* A91BC 800B89BC 2A186200 */  slt        $v1, $v1, $v0
    /* A91C0 800B89C0 0A006014 */  bnez       $v1, .L800B89EC
    /* A91C4 800B89C4 00000000 */   nop
    /* A91C8 800B89C8 0E80023C */  lui        $v0, %hi(D_800E71E4)
    /* A91CC 800B89CC E471428C */  lw         $v0, %lo(D_800E71E4)($v0)
    /* A91D0 800B89D0 00000000 */  nop
    /* A91D4 800B89D4 21184000 */  addu       $v1, $v0, $zero
    /* A91D8 800B89D8 01004224 */  addiu      $v0, $v0, 0x1
    /* A91DC 800B89DC 2A188302 */  slt        $v1, $s4, $v1
    /* A91E0 800B89E0 0E80013C */  lui        $at, %hi(D_800E71E4)
    /* A91E4 800B89E4 1B006010 */  beqz       $v1, .L800B8A54
    /* A91E8 800B89E8 E47122AC */   sw        $v0, %lo(D_800E71E4)($at)
  .L800B89EC:
    /* A91EC 800B89EC 0180043C */  lui        $a0, %hi(D_800152C8)
    /* A91F0 800B89F0 60E3020C */  jal        func_800B8D80
    /* A91F4 800B89F4 C8528424 */   addiu     $a0, $a0, %lo(D_800152C8)
    /* A91F8 800B89F8 00002492 */  lbu        $a0, 0x0($s1)
    /* A91FC 800B89FC 01002292 */  lbu        $v0, 0x1($s1)
    /* A9200 800B8A00 0E80053C */  lui        $a1, %hi(D_800E71E8)
    /* A9204 800B8A04 E871A58C */  lw         $a1, %lo(D_800E71E8)($a1)
    /* A9208 800B8A08 80100200 */  sll        $v0, $v0, 2
    /* A920C 800B8A0C 21105000 */  addu       $v0, $v0, $s0
    /* A9210 800B8A10 80200400 */  sll        $a0, $a0, 2
    /* A9214 800B8A14 0000438C */  lw         $v1, 0x0($v0)
    /* A9218 800B8A18 0D80023C */  lui        $v0, %hi(D_800D396D)
    /* A921C 800B8A1C 6D394290 */  lbu        $v0, %lo(D_800D396D)($v0)
    /* A9220 800B8A20 21209000 */  addu       $a0, $a0, $s0
    /* A9224 800B8A24 80100200 */  sll        $v0, $v0, 2
    /* A9228 800B8A28 21105300 */  addu       $v0, $v0, $s3
    /* A922C 800B8A2C 1000A3AF */  sw         $v1, 0x10($sp)
    /* A9230 800B8A30 0000468C */  lw         $a2, 0x0($v0)
    /* A9234 800B8A34 0000878C */  lw         $a3, 0x0($a0)
    /* A9238 800B8A38 0180043C */  lui        $a0, %hi(D_800152D8)
    /* A923C 800B8A3C A6B5020C */  jal        func_800AD698
    /* A9240 800B8A40 D8528424 */   addiu     $a0, $a0, %lo(D_800152D8)
    /* A9244 800B8A44 54E1020C */  jal        func_800B8550
    /* A9248 800B8A48 00000000 */   nop
    /* A924C 800B8A4C 96E20208 */  j          .L800B8A58
    /* A9250 800B8A50 FFFF0224 */   addiu     $v0, $zero, -0x1
  .L800B8A54:
    /* A9254 800B8A54 21100000 */  addu       $v0, $zero, $zero
  .L800B8A58:
    /* A9258 800B8A58 0B004014 */  bnez       $v0, .L800B8A88
    /* A925C 800B8A5C FFFF0224 */   addiu     $v0, $zero, -0x1
    /* A9260 800B8A60 0D80023C */  lui        $v0, %hi(D_800D3C58)
    /* A9264 800B8A64 583C428C */  lw         $v0, %lo(D_800D3C58)($v0)
    /* A9268 800B8A68 00000000 */  nop
    /* A926C 800B8A6C 0000428C */  lw         $v0, 0x0($v0)
    /* A9270 800B8A70 0001033C */  lui        $v1, (0x1000000 >> 16)
    /* A9274 800B8A74 24104300 */  and        $v0, $v0, $v1
    /* A9278 800B8A78 03004010 */  beqz       $v0, .L800B8A88
    /* A927C 800B8A7C 21100000 */   addu      $v0, $zero, $zero
    /* A9280 800B8A80 C9FF4012 */  beqz       $s2, .L800B89A8
    /* A9284 800B8A84 01000224 */   addiu     $v0, $zero, 0x1
  .L800B8A88:
    /* A9288 800B8A88 2C00BF8F */  lw         $ra, 0x2C($sp)
    /* A928C 800B8A8C 2800B48F */  lw         $s4, 0x28($sp)
    /* A9290 800B8A90 2400B38F */  lw         $s3, 0x24($sp)
    /* A9294 800B8A94 2000B28F */  lw         $s2, 0x20($sp)
    /* A9298 800B8A98 1C00B18F */  lw         $s1, 0x1C($sp)
    /* A929C 800B8A9C 1800B08F */  lw         $s0, 0x18($sp)
    /* A92A0 800B8AA0 0800E003 */  jr         $ra
    /* A92A4 800B8AA4 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_800B8940
