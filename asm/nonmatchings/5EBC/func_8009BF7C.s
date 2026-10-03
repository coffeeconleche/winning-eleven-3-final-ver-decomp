/* Handwritten function */
nonmatching func_8009BF7C, 0x76C

glabel func_8009BF7C
    /* 8C77C 8009BF7C 78FFBD27 */  addiu      $sp, $sp, -0x88
    /* 8C780 8009BF80 9800A38F */  lw         $v1, 0x98($sp)
    /* 8C784 8009BF84 9C00A993 */  lbu        $t1, 0x9C($sp)
    /* 8C788 8009BF88 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 8C78C 8009BF8C 6C00B3AF */  sw         $s3, 0x6C($sp)
    /* 8C790 8009BF90 801F133C */  lui        $s3, (0x1F80029D >> 16)
    /* 8C794 8009BF94 8400BFAF */  sw         $ra, 0x84($sp)
    /* 8C798 8009BF98 8000BEAF */  sw         $fp, 0x80($sp)
    /* 8C79C 8009BF9C 7C00B7AF */  sw         $s7, 0x7C($sp)
    /* 8C7A0 8009BFA0 7800B6AF */  sw         $s6, 0x78($sp)
    /* 8C7A4 8009BFA4 7400B5AF */  sw         $s5, 0x74($sp)
    /* 8C7A8 8009BFA8 7000B4AF */  sw         $s4, 0x70($sp)
    /* 8C7AC 8009BFAC 6800B2AF */  sw         $s2, 0x68($sp)
    /* 8C7B0 8009BFB0 6400B1AF */  sw         $s1, 0x64($sp)
    /* 8C7B4 8009BFB4 6000B0AF */  sw         $s0, 0x60($sp)
    /* 8C7B8 8009BFB8 1000A4A7 */  sh         $a0, 0x10($sp)
    /* 8C7BC 8009BFBC 1800A5A7 */  sh         $a1, 0x18($sp)
    /* 8C7C0 8009BFC0 2000A6A7 */  sh         $a2, 0x20($sp)
    /* 8C7C4 8009BFC4 2800A7A3 */  sb         $a3, 0x28($sp)
    /* 8C7C8 8009BFC8 00006590 */  lbu        $a1, 0x0($v1)
    /* 8C7CC 8009BFCC 24000224 */  addiu      $v0, $zero, 0x24
    /* 8C7D0 8009BFD0 23104500 */  subu       $v0, $v0, $a1
    /* 8C7D4 8009BFD4 02004104 */  bgez       $v0, .L8009BFE0
    /* 8C7D8 8009BFD8 00000000 */   nop
    /* 8C7DC 8009BFDC 23100200 */  negu       $v0, $v0
  .L8009BFE0:
    /* 8C7E0 8009BFE0 0C004228 */  slti       $v0, $v0, 0xC
    /* 8C7E4 8009BFE4 14004010 */  beqz       $v0, .L8009C038
    /* 8C7E8 8009BFE8 3000A9A3 */   sb        $t1, 0x30($sp)
    /* 8C7EC 8009BFEC DCFFA224 */  addiu      $v0, $a1, -0x24
    /* 8C7F0 8009BFF0 02004104 */  bgez       $v0, .L8009BFFC
    /* 8C7F4 8009BFF4 00000000 */   nop
    /* 8C7F8 8009BFF8 23100200 */  negu       $v0, $v0
  .L8009BFFC:
    /* 8C7FC 8009BFFC 00140200 */  sll        $v0, $v0, 16
    /* 8C800 8009C000 03240200 */  sra        $a0, $v0, 16
    /* 8C804 8009C004 0B008228 */  slti       $v0, $a0, 0xB
    /* 8C808 8009C008 5F004010 */  beqz       $v0, .L8009C188
    /* 8C80C 8009C00C 28000224 */   addiu     $v0, $zero, 0x28
    /* 8C810 8009C010 2F00A210 */  beq        $a1, $v0, .L8009C0D0
    /* 8C814 8009C014 0A008228 */   slti      $v0, $a0, 0xA
    /* 8C818 8009C018 4D004010 */  beqz       $v0, .L8009C150
    /* 8C81C 8009C01C 09008228 */   slti      $v0, $a0, 0x9
    /* 8C820 8009C020 4F004010 */  beqz       $v0, .L8009C160
    /* 8C824 8009C024 08008228 */   slti      $v0, $a0, 0x8
    /* 8C828 8009C028 31004010 */  beqz       $v0, .L8009C0F0
    /* 8C82C 8009C02C 07008228 */   slti      $v0, $a0, 0x7
    /* 8C830 8009C030 3E700208 */  j          .L8009C0F8
    /* 8C834 8009C034 00000000 */   nop
  .L8009C038:
    /* 8C838 8009C038 3F000224 */  addiu      $v0, $zero, 0x3F
    /* 8C83C 8009C03C 23104500 */  subu       $v0, $v0, $a1
    /* 8C840 8009C040 02004104 */  bgez       $v0, .L8009C04C
    /* 8C844 8009C044 00000000 */   nop
    /* 8C848 8009C048 23100200 */  negu       $v0, $v0
  .L8009C04C:
    /* 8C84C 8009C04C 0B004228 */  slti       $v0, $v0, 0xB
    /* 8C850 8009C050 0D004010 */  beqz       $v0, .L8009C088
    /* 8C854 8009C054 C1FFA224 */   addiu     $v0, $a1, -0x3F
    /* 8C858 8009C058 02004104 */  bgez       $v0, .L8009C064
    /* 8C85C 8009C05C 00000000 */   nop
    /* 8C860 8009C060 23100200 */  negu       $v0, $v0
  .L8009C064:
    /* 8C864 8009C064 00140200 */  sll        $v0, $v0, 16
    /* 8C868 8009C068 03240200 */  sra        $a0, $v0, 16
    /* 8C86C 8009C06C 09008228 */  slti       $v0, $a0, 0x9
    /* 8C870 8009C070 45004010 */  beqz       $v0, .L8009C188
    /* 8C874 8009C074 06008228 */   slti      $v0, $a0, 0x6
    /* 8C878 8009C078 35004010 */  beqz       $v0, .L8009C150
    /* 8C87C 8009C07C 04008228 */   slti      $v0, $a0, 0x4
    /* 8C880 8009C080 56700208 */  j          .L8009C158
    /* 8C884 8009C084 00000000 */   nop
  .L8009C088:
    /* 8C888 8009C088 5B000224 */  addiu      $v0, $zero, 0x5B
    /* 8C88C 8009C08C 23104500 */  subu       $v0, $v0, $a1
    /* 8C890 8009C090 02004104 */  bgez       $v0, .L8009C09C
    /* 8C894 8009C094 00000000 */   nop
    /* 8C898 8009C098 23100200 */  negu       $v0, $v0
  .L8009C09C:
    /* 8C89C 8009C09C 0C004228 */  slti       $v0, $v0, 0xC
    /* 8C8A0 8009C0A0 19004010 */  beqz       $v0, .L8009C108
    /* 8C8A4 8009C0A4 A5FFA224 */   addiu     $v0, $a1, -0x5B
    /* 8C8A8 8009C0A8 02004104 */  bgez       $v0, .L8009C0B4
    /* 8C8AC 8009C0AC 00000000 */   nop
    /* 8C8B0 8009C0B0 23100200 */  negu       $v0, $v0
  .L8009C0B4:
    /* 8C8B4 8009C0B4 00140200 */  sll        $v0, $v0, 16
    /* 8C8B8 8009C0B8 03240200 */  sra        $a0, $v0, 16
    /* 8C8BC 8009C0BC 0B008228 */  slti       $v0, $a0, 0xB
    /* 8C8C0 8009C0C0 31004010 */  beqz       $v0, .L8009C188
    /* 8C8C4 8009C0C4 5F000224 */   addiu     $v0, $zero, 0x5F
    /* 8C8C8 8009C0C8 0300A214 */  bne        $a1, $v0, .L8009C0D8
    /* 8C8CC 8009C0CC 0A008228 */   slti      $v0, $a0, 0xA
  .L8009C0D0:
    /* 8C8D0 8009C0D0 63700208 */  j          .L8009C18C
    /* 8C8D4 8009C0D4 06000824 */   addiu     $t0, $zero, 0x6
  .L8009C0D8:
    /* 8C8D8 8009C0D8 1D004010 */  beqz       $v0, .L8009C150
    /* 8C8DC 8009C0DC 09008228 */   slti      $v0, $a0, 0x9
    /* 8C8E0 8009C0E0 1F004010 */  beqz       $v0, .L8009C160
    /* 8C8E4 8009C0E4 08008228 */   slti      $v0, $a0, 0x8
    /* 8C8E8 8009C0E8 03004014 */  bnez       $v0, .L8009C0F8
    /* 8C8EC 8009C0EC 07008228 */   slti      $v0, $a0, 0x7
  .L8009C0F0:
    /* 8C8F0 8009C0F0 63700208 */  j          .L8009C18C
    /* 8C8F4 8009C0F4 03000824 */   addiu     $t0, $zero, 0x3
  .L8009C0F8:
    /* 8C8F8 8009C0F8 24004014 */  bnez       $v0, .L8009C18C
    /* 8C8FC 8009C0FC 05000824 */   addiu     $t0, $zero, 0x5
    /* 8C900 8009C100 63700208 */  j          .L8009C18C
    /* 8C904 8009C104 04000824 */   addiu     $t0, $zero, 0x4
  .L8009C108:
    /* 8C908 8009C108 08000224 */  addiu      $v0, $zero, 0x8
    /* 8C90C 8009C10C 23104500 */  subu       $v0, $v0, $a1
    /* 8C910 8009C110 02004104 */  bgez       $v0, .L8009C11C
    /* 8C914 8009C114 00000000 */   nop
    /* 8C918 8009C118 23100200 */  negu       $v0, $v0
  .L8009C11C:
    /* 8C91C 8009C11C 0B004228 */  slti       $v0, $v0, 0xB
    /* 8C920 8009C120 11004010 */  beqz       $v0, .L8009C168
    /* 8C924 8009C124 F8FFA224 */   addiu     $v0, $a1, -0x8
    /* 8C928 8009C128 02004104 */  bgez       $v0, .L8009C134
    /* 8C92C 8009C12C 00000000 */   nop
    /* 8C930 8009C130 23100200 */  negu       $v0, $v0
  .L8009C134:
    /* 8C934 8009C134 00140200 */  sll        $v0, $v0, 16
    /* 8C938 8009C138 03240200 */  sra        $a0, $v0, 16
    /* 8C93C 8009C13C 09008228 */  slti       $v0, $a0, 0x9
    /* 8C940 8009C140 11004010 */  beqz       $v0, .L8009C188
    /* 8C944 8009C144 06008228 */   slti      $v0, $a0, 0x6
    /* 8C948 8009C148 03004014 */  bnez       $v0, .L8009C158
    /* 8C94C 8009C14C 04008228 */   slti      $v0, $a0, 0x4
  .L8009C150:
    /* 8C950 8009C150 63700208 */  j          .L8009C18C
    /* 8C954 8009C154 01000824 */   addiu     $t0, $zero, 0x1
  .L8009C158:
    /* 8C958 8009C158 0C004014 */  bnez       $v0, .L8009C18C
    /* 8C95C 8009C15C 03000824 */   addiu     $t0, $zero, 0x3
  .L8009C160:
    /* 8C960 8009C160 63700208 */  j          .L8009C18C
    /* 8C964 8009C164 02000824 */   addiu     $t0, $zero, 0x2
  .L8009C168:
    /* 8C968 8009C168 6D000224 */  addiu      $v0, $zero, 0x6D
    /* 8C96C 8009C16C 23104500 */  subu       $v0, $v0, $a1
    /* 8C970 8009C170 02004104 */  bgez       $v0, .L8009C17C
    /* 8C974 8009C174 00000000 */   nop
    /* 8C978 8009C178 23100200 */  negu       $v0, $v0
  .L8009C17C:
    /* 8C97C 8009C17C 02004228 */  slti       $v0, $v0, 0x2
    /* 8C980 8009C180 03004010 */  beqz       $v0, .L8009C190
    /* 8C984 8009C184 21A80000 */   addu      $s5, $zero, $zero
  .L8009C188:
    /* 8C988 8009C188 21400000 */  addu       $t0, $zero, $zero
  .L8009C18C:
    /* 8C98C 8009C18C 21A80000 */  addu       $s5, $zero, $zero
  .L8009C190:
    /* 8C990 8009C190 00140800 */  sll        $v0, $t0, 16
    /* 8C994 8009C194 03F40200 */  sra        $fp, $v0, 16
    /* 8C998 8009C198 80481E00 */  sll        $t1, $fp, 2
    /* 8C99C 8009C19C 04017426 */  addiu      $s4, $s3, %lo(D_1F800104)
    /* 8C9A0 8009C1A0 00007190 */  lbu        $s1, 0x0($v1)
    /* 8C9A4 8009C1A4 0D80163C */  lui        $s6, %hi(D_800CB30C)
    /* 8C9A8 8009C1A8 0CB3D626 */  addiu      $s6, $s6, %lo(D_800CB30C)
    /* 8C9AC 8009C1AC 5800A9AF */  sw         $t1, 0x58($sp)
  .L8009C1B0:
    /* 8C9B0 8009C1B0 3000A993 */  lbu        $t1, 0x30($sp)
    /* 8C9B4 8009C1B4 00000000 */  nop
    /* 8C9B8 8009C1B8 2118A902 */  addu       $v1, $s5, $t1
    /* 8C9BC 8009C1BC 00140300 */  sll        $v0, $v1, 16
    /* 8C9C0 8009C1C0 03240200 */  sra        $a0, $v0, 16
    /* 8C9C4 8009C1C4 21108000 */  addu       $v0, $a0, $zero
    /* 8C9C8 8009C1C8 02008104 */  bgez       $a0, .L8009C1D4
    /* 8C9CC 8009C1CC 21B86000 */   addu      $s7, $v1, $zero
    /* 8C9D0 8009C1D0 07008224 */  addiu      $v0, $a0, 0x7
  .L8009C1D4:
    /* 8C9D4 8009C1D4 C3100200 */  sra        $v0, $v0, 3
    /* 8C9D8 8009C1D8 C0100200 */  sll        $v0, $v0, 3
    /* 8C9DC 8009C1DC 23908200 */  subu       $s2, $a0, $v0
    /* 8C9E0 8009C1E0 FF002332 */  andi       $v1, $s1, 0xFF
    /* 8C9E4 8009C1E4 80100300 */  sll        $v0, $v1, 2
    /* 8C9E8 8009C1E8 0D80013C */  lui        $at, %hi(D_800CADF0)
    /* 8C9EC 8009C1EC 21082200 */  addu       $at, $at, $v0
    /* 8C9F0 8009C1F0 F0AD258C */  lw         $a1, %lo(D_800CADF0)($at)
    /* 8C9F4 8009C1F4 02006014 */  bnez       $v1, .L8009C200
    /* 8C9F8 8009C1F8 FFFF3126 */   addiu     $s1, $s1, -0x1
    /* 8C9FC 8009C1FC 6D001124 */  addiu      $s1, $zero, 0x6D
  .L8009C200:
    /* 8CA00 8009C200 FF002332 */  andi       $v1, $s1, 0xFF
    /* 8CA04 8009C204 6D000224 */  addiu      $v0, $zero, 0x6D
    /* 8CA08 8009C208 4F006210 */  beq        $v1, $v0, .L8009C348
    /* 8CA0C 8009C20C 0700C22F */   sltiu     $v0, $fp, 0x7
    /* 8CA10 8009C210 4D004010 */  beqz       $v0, .L8009C348
    /* 8CA14 8009C214 00000000 */   nop
    /* 8CA18 8009C218 5800A98F */  lw         $t1, 0x58($sp)
    /* 8CA1C 8009C21C 0180013C */  lui        $at, %hi(jtbl_80014264)
    /* 8CA20 8009C220 21082900 */  addu       $at, $at, $t1
    /* 8CA24 8009C224 6442228C */  lw         $v0, %lo(jtbl_80014264)($at)
    /* 8CA28 8009C228 00000000 */  nop
    /* 8CA2C 8009C22C 08004000 */  jr         $v0
    /* 8CA30 8009C230 00000000 */   nop
  jlabel .L8009C234
    /* 8CA34 8009C234 00141200 */  sll        $v0, $s2, 16
    /* 8CA38 8009C238 43004014 */  bnez       $v0, .L8009C348
    /* 8CA3C 8009C23C 00000000 */   nop
    /* 8CA40 8009C240 D2700208 */  j          .L8009C348
    /* 8CA44 8009C244 01003126 */   addiu     $s1, $s1, 0x1
  jlabel .L8009C248
    /* 8CA48 8009C248 00141200 */  sll        $v0, $s2, 16
    /* 8CA4C 8009C24C 031C0200 */  sra        $v1, $v0, 16
    /* 8CA50 8009C250 3C006010 */  beqz       $v1, .L8009C344
    /* 8CA54 8009C254 06000224 */   addiu     $v0, $zero, 0x6
    /* 8CA58 8009C258 3B006214 */  bne        $v1, $v0, .L8009C348
    /* 8CA5C 8009C25C 00000000 */   nop
    /* 8CA60 8009C260 D2700208 */  j          .L8009C348
    /* 8CA64 8009C264 01003126 */   addiu     $s1, $s1, 0x1
  jlabel .L8009C268
    /* 8CA68 8009C268 00141200 */  sll        $v0, $s2, 16
    /* 8CA6C 8009C26C 031C0200 */  sra        $v1, $v0, 16
    /* 8CA70 8009C270 34006010 */  beqz       $v1, .L8009C344
    /* 8CA74 8009C274 00000000 */   nop
    /* 8CA78 8009C278 33006004 */  bltz       $v1, .L8009C348
    /* 8CA7C 8009C27C 07006228 */   slti      $v0, $v1, 0x7
    /* 8CA80 8009C280 31004010 */  beqz       $v0, .L8009C348
    /* 8CA84 8009C284 05006228 */   slti      $v0, $v1, 0x5
    /* 8CA88 8009C288 2F004014 */  bnez       $v0, .L8009C348
    /* 8CA8C 8009C28C 00000000 */   nop
    /* 8CA90 8009C290 D2700208 */  j          .L8009C348
    /* 8CA94 8009C294 01003126 */   addiu     $s1, $s1, 0x1
  jlabel .L8009C298
    /* 8CA98 8009C298 00141200 */  sll        $v0, $s2, 16
    /* 8CA9C 8009C29C 031C0200 */  sra        $v1, $v0, 16
    /* 8CAA0 8009C2A0 29006004 */  bltz       $v1, .L8009C348
    /* 8CAA4 8009C2A4 02006228 */   slti      $v0, $v1, 0x2
    /* 8CAA8 8009C2A8 26004014 */  bnez       $v0, .L8009C344
    /* 8CAAC 8009C2AC 07006228 */   slti      $v0, $v1, 0x7
    /* 8CAB0 8009C2B0 25004010 */  beqz       $v0, .L8009C348
    /* 8CAB4 8009C2B4 05006228 */   slti      $v0, $v1, 0x5
    /* 8CAB8 8009C2B8 23004014 */  bnez       $v0, .L8009C348
    /* 8CABC 8009C2BC 00000000 */   nop
    /* 8CAC0 8009C2C0 D2700208 */  j          .L8009C348
    /* 8CAC4 8009C2C4 01003126 */   addiu     $s1, $s1, 0x1
  jlabel .L8009C2C8
    /* 8CAC8 8009C2C8 00141200 */  sll        $v0, $s2, 16
    /* 8CACC 8009C2CC 031C0200 */  sra        $v1, $v0, 16
    /* 8CAD0 8009C2D0 1D006004 */  bltz       $v1, .L8009C348
    /* 8CAD4 8009C2D4 02006228 */   slti      $v0, $v1, 0x2
    /* 8CAD8 8009C2D8 1A004014 */  bnez       $v0, .L8009C344
    /* 8CADC 8009C2DC 07006228 */   slti      $v0, $v1, 0x7
    /* 8CAE0 8009C2E0 19004010 */  beqz       $v0, .L8009C348
    /* 8CAE4 8009C2E4 04006228 */   slti      $v0, $v1, 0x4
    /* 8CAE8 8009C2E8 17004014 */  bnez       $v0, .L8009C348
    /* 8CAEC 8009C2EC 00000000 */   nop
    /* 8CAF0 8009C2F0 D2700208 */  j          .L8009C348
    /* 8CAF4 8009C2F4 01003126 */   addiu     $s1, $s1, 0x1
  jlabel .L8009C2F8
    /* 8CAF8 8009C2F8 00141200 */  sll        $v0, $s2, 16
    /* 8CAFC 8009C2FC 031C0200 */  sra        $v1, $v0, 16
    /* 8CB00 8009C300 11006004 */  bltz       $v1, .L8009C348
    /* 8CB04 8009C304 03006228 */   slti      $v0, $v1, 0x3
    /* 8CB08 8009C308 0E004014 */  bnez       $v0, .L8009C344
    /* 8CB0C 8009C30C 07006228 */   slti      $v0, $v1, 0x7
    /* 8CB10 8009C310 0D004010 */  beqz       $v0, .L8009C348
    /* 8CB14 8009C314 04006228 */   slti      $v0, $v1, 0x4
    /* 8CB18 8009C318 0B004014 */  bnez       $v0, .L8009C348
    /* 8CB1C 8009C31C 00000000 */   nop
    /* 8CB20 8009C320 D2700208 */  j          .L8009C348
    /* 8CB24 8009C324 01003126 */   addiu     $s1, $s1, 0x1
  jlabel .L8009C328
    /* 8CB28 8009C328 00141200 */  sll        $v0, $s2, 16
    /* 8CB2C 8009C32C 031C0200 */  sra        $v1, $v0, 16
    /* 8CB30 8009C330 07006228 */  slti       $v0, $v1, 0x7
    /* 8CB34 8009C334 04004010 */  beqz       $v0, .L8009C348
    /* 8CB38 8009C338 00000000 */   nop
    /* 8CB3C 8009C33C 02006004 */  bltz       $v1, .L8009C348
    /* 8CB40 8009C340 00000000 */   nop
  .L8009C344:
    /* 8CB44 8009C344 01003126 */  addiu      $s1, $s1, 0x1
  .L8009C348:
    /* 8CB48 8009C348 0000A294 */  lhu        $v0, 0x0($a1)
    /* 8CB4C 8009C34C 00000000 */  nop
    /* 8CB50 8009C350 240162A6 */  sh         $v0, (0x1F800124 & 0xFFFF)($s3)
    /* 8CB54 8009C354 0200A294 */  lhu        $v0, 0x2($a1)
    /* 8CB58 8009C358 00000000 */  nop
    /* 8CB5C 8009C35C 260162A6 */  sh         $v0, (0x1F800126 & 0xFFFF)($s3)
    /* 8CB60 8009C360 0400A394 */  lhu        $v1, 0x4($a1)
    /* 8CB64 8009C364 1000A997 */  lhu        $t1, 0x10($sp)
    /* 8CB68 8009C368 24016426 */  addiu      $a0, $s3, %lo(D_1F800124)
    /* 8CB6C 8009C36C 2C0169A6 */  sh         $t1, (0x1F80012C & 0xFFFF)($s3)
    /* 8CB70 8009C370 1800A997 */  lhu        $t1, 0x18($sp)
    /* 8CB74 8009C374 21288002 */  addu       $a1, $s4, $zero
    /* 8CB78 8009C378 2E0169A6 */  sh         $t1, (0x1F80012E & 0xFFFF)($s3)
    /* 8CB7C 8009C37C 2000A997 */  lhu        $t1, 0x20($sp)
    /* 8CB80 8009C380 00100224 */  addiu      $v0, $zero, 0x1000
    /* 8CB84 8009C384 4C0162AE */  sw         $v0, (0x1F80014C & 0xFFFF)($s3)
    /* 8CB88 8009C388 500162AE */  sw         $v0, (0x1F800150 & 0xFFFF)($s3)
    /* 8CB8C 8009C38C 540162AE */  sw         $v0, (0x1F800154 & 0xFFFF)($s3)
    /* 8CB90 8009C390 280163A6 */  sh         $v1, (0x1F800128 & 0xFFFF)($s3)
    /* 8CB94 8009C394 6AC6020C */  jal        func_800B19A8
    /* 8CB98 8009C398 300169A6 */   sh        $t1, (0x1F800130 & 0xFFFF)($s3)
    /* 8CB9C 8009C39C 2800A293 */  lbu        $v0, 0x28($sp)
    /* 8CBA0 8009C3A0 00000000 */  nop
    /* 8CBA4 8009C3A4 05004014 */  bnez       $v0, .L8009C3BC
    /* 8CBA8 8009C3A8 00FC0424 */   addiu     $a0, $zero, -0x400
    /* 8CBAC 8009C3AC 0EC7020C */  jal        func_800B1C38
    /* 8CBB0 8009C3B0 21288002 */   addu      $a1, $s4, $zero
    /* 8CBB4 8009C3B4 F3700208 */  j          .L8009C3CC
    /* 8CBB8 8009C3B8 00030424 */   addiu     $a0, $zero, 0x300
  .L8009C3BC:
    /* 8CBBC 8009C3BC 00040424 */  addiu      $a0, $zero, 0x400
    /* 8CBC0 8009C3C0 0EC7020C */  jal        func_800B1C38
    /* 8CBC4 8009C3C4 21288002 */   addu      $a1, $s4, $zero
    /* 8CBC8 8009C3C8 00FD0424 */  addiu      $a0, $zero, -0x300
  .L8009C3CC:
    /* 8CBCC 8009C3CC 76C7020C */  jal        func_800B1DD8
    /* 8CBD0 8009C3D0 21288002 */   addu      $a1, $s4, $zero
    /* 8CBD4 8009C3D4 21208002 */  addu       $a0, $s4, $zero
    /* 8CBD8 8009C3D8 D2C4020C */  jal        func_800B1348
    /* 8CBDC 8009C3DC 4C016526 */   addiu     $a1, $s3, %lo(D_1F80014C)
    /* 8CBE0 8009C3E0 A8017026 */  addiu      $s0, $s3, %lo(D_1F8001A8)
    /* 8CBE4 8009C3E4 21200002 */  addu       $a0, $s0, $zero
    /* 8CBE8 8009C3E8 6EC4020C */  jal        func_800B11B8
    /* 8CBEC 8009C3EC 21288002 */   addu      $a1, $s4, $zero
    /* 8CBF0 8009C3F0 21200002 */  addu       $a0, $s0, $zero
    /* 8CBF4 8009C3F4 2C016526 */  addiu      $a1, $s3, %lo(D_1F80012C)
    /* 8CBF8 8009C3F8 B2C4020C */  jal        func_800B12C8
    /* 8CBFC 8009C3FC 3C016626 */   addiu     $a2, $s3, %lo(D_1F80013C)
    /* 8CC00 8009C400 3C01628E */  lw         $v0, (0x1F80013C & 0xFFFF)($s3)
    /* 8CC04 8009C404 BC01638E */  lw         $v1, (0x1F8001BC & 0xFFFF)($s3)
    /* 8CC08 8009C408 C001648E */  lw         $a0, (0x1F8001C0 & 0xFFFF)($s3)
    /* 8CC0C 8009C40C C401658E */  lw         $a1, (0x1F8001C4 & 0xFFFF)($s3)
    /* 8CC10 8009C410 21104300 */  addu       $v0, $v0, $v1
    /* 8CC14 8009C414 180162AE */  sw         $v0, (0x1F800118 & 0xFFFF)($s3)
    /* 8CC18 8009C418 4001628E */  lw         $v0, (0x1F800140 & 0xFFFF)($s3)
    /* 8CC1C 8009C41C 4401638E */  lw         $v1, (0x1F800144 & 0xFFFF)($s3)
    /* 8CC20 8009C420 21104400 */  addu       $v0, $v0, $a0
    /* 8CC24 8009C424 21186500 */  addu       $v1, $v1, $a1
    /* 8CC28 8009C428 1C0162AE */  sw         $v0, (0x1F80011C & 0xFFFF)($s3)
    /* 8CC2C 8009C42C 200163AE */  sw         $v1, (0x1F800120 & 0xFFFF)($s3)
    /* 8CC30 8009C430 00008C8E */  lw         $t4, 0x0($s4)
    /* 8CC34 8009C434 04008D8E */  lw         $t5, 0x4($s4)
    /* 8CC38 8009C438 0000CC48 */  ctc2       $t4, $0 /* handwritten instruction */
    /* 8CC3C 8009C43C 0008CD48 */  ctc2       $t5, $1 /* handwritten instruction */
    /* 8CC40 8009C440 08008C8E */  lw         $t4, 0x8($s4)
    /* 8CC44 8009C444 0C008D8E */  lw         $t5, 0xC($s4)
    /* 8CC48 8009C448 10008E8E */  lw         $t6, 0x10($s4)
    /* 8CC4C 8009C44C 0010CC48 */  ctc2       $t4, $2 /* handwritten instruction */
    /* 8CC50 8009C450 0018CD48 */  ctc2       $t5, $3 /* handwritten instruction */
    /* 8CC54 8009C454 0020CE48 */  ctc2       $t6, $4 /* handwritten instruction */
    /* 8CC58 8009C458 14008C8E */  lw         $t4, 0x14($s4)
    /* 8CC5C 8009C45C 18008D8E */  lw         $t5, 0x18($s4)
    /* 8CC60 8009C460 0028CC48 */  ctc2       $t4, $5 /* handwritten instruction */
    /* 8CC64 8009C464 1C008E8E */  lw         $t6, 0x1C($s4)
    /* 8CC68 8009C468 0030CD48 */  ctc2       $t5, $6 /* handwritten instruction */
    /* 8CC6C 8009C46C 0038CE48 */  ctc2       $t6, $7 /* handwritten instruction */
    /* 8CC70 8009C470 0F80043C */  lui        $a0, %hi(D_800E8208)
    /* 8CC74 8009C474 08828424 */  addiu      $a0, $a0, %lo(D_800E8208)
    /* 8CC78 8009C478 002C1200 */  sll        $a1, $s2, 16
    /* 8CC7C 8009C47C 9D026292 */  lbu        $v0, (0x1F80029D & 0xFFFF)($s3)
    /* 8CC80 8009C480 032C0500 */  sra        $a1, $a1, 16
    /* 8CC84 8009C484 900164AE */  sw         $a0, (0x1F800190 & 0xFFFF)($s3)
    /* 8CC88 8009C488 FF004230 */  andi       $v0, $v0, 0xFF
    /* 8CC8C 8009C48C 00190200 */  sll        $v1, $v0, 4
    /* 8CC90 8009C490 23186200 */  subu       $v1, $v1, $v0
    /* 8CC94 8009C494 80180300 */  sll        $v1, $v1, 2
    /* 8CC98 8009C498 23186200 */  subu       $v1, $v1, $v0
    /* 8CC9C 8009C49C 80180300 */  sll        $v1, $v1, 2
    /* 8CCA0 8009C4A0 23186200 */  subu       $v1, $v1, $v0
    /* 8CCA4 8009C4A4 80190300 */  sll        $v1, $v1, 6
    /* 8CCA8 8009C4A8 21186400 */  addu       $v1, $v1, $a0
    /* 8CCAC 8009C4AC 00141700 */  sll        $v0, $s7, 16
    /* 8CCB0 8009C4B0 03140200 */  sra        $v0, $v0, 16
    /* 8CCB4 8009C4B4 80200200 */  sll        $a0, $v0, 2
    /* 8CCB8 8009C4B8 21208200 */  addu       $a0, $a0, $v0
    /* 8CCBC 8009C4BC C0200400 */  sll        $a0, $a0, 3
    /* 8CCC0 8009C4C0 302A8424 */  addiu      $a0, $a0, 0x2A30
    /* 8CCC4 8009C4C4 80100500 */  sll        $v0, $a1, 2
    /* 8CCC8 8009C4C8 0D80013C */  lui        $at, %hi(D_800CB3DC)
    /* 8CCCC 8009C4CC 21082200 */  addu       $at, $at, $v0
    /* 8CCD0 8009C4D0 DCB32290 */  lbu        $v0, %lo(D_800CB3DC)($at)
    /* 8CCD4 8009C4D4 21386400 */  addu       $a3, $v1, $a0
    /* 8CCD8 8009C4D8 C0100200 */  sll        $v0, $v0, 3
    /* 8CCDC 8009C4DC 21105600 */  addu       $v0, $v0, $s6
    /* 8CCE0 8009C4E0 000040C8 */  lwc2       $0, 0x0($v0)
    /* 8CCE4 8009C4E4 040041C8 */  lwc2       $1, 0x4($v0)
    /* 8CCE8 8009C4E8 00000000 */  nop
    /* 8CCEC 8009C4EC 00000000 */  nop
    /* 8CCF0 8009C4F0 0100184A */  rtps
    /* 8CCF4 8009C4F4 0800E224 */  addiu      $v0, $a3, 0x8
    /* 8CCF8 8009C4F8 00004EE8 */  swc2       $14, 0x0($v0)
    /* 8CCFC 8009C4FC 0F00A014 */  bnez       $a1, .L8009C53C
    /* 8CD00 8009C500 001C1200 */   sll       $v1, $s2, 16
    /* 8CD04 8009C504 0D80023C */  lui        $v0, %hi(D_800CB3DD)
    /* 8CD08 8009C508 DDB34290 */  lbu        $v0, %lo(D_800CB3DD)($v0)
    /* 8CD0C 8009C50C 00000000 */  nop
    /* 8CD10 8009C510 C0100200 */  sll        $v0, $v0, 3
    /* 8CD14 8009C514 21105600 */  addu       $v0, $v0, $s6
    /* 8CD18 8009C518 000040C8 */  lwc2       $0, 0x0($v0)
    /* 8CD1C 8009C51C 040041C8 */  lwc2       $1, 0x4($v0)
    /* 8CD20 8009C520 00000000 */  nop
    /* 8CD24 8009C524 00000000 */  nop
    /* 8CD28 8009C528 0100184A */  rtps
    /* 8CD2C 8009C52C 1000E224 */  addiu      $v0, $a3, 0x10
    /* 8CD30 8009C530 00004EE8 */  swc2       $14, 0x0($v0)
    /* 8CD34 8009C534 55710208 */  j          .L8009C554
    /* 8CD38 8009C538 00000000 */   nop
  .L8009C53C:
    /* 8CD3C 8009C53C 3800A997 */  lhu        $t1, 0x38($sp)
    /* 8CD40 8009C540 00000000 */  nop
    /* 8CD44 8009C544 1000E9A4 */  sh         $t1, 0x10($a3)
    /* 8CD48 8009C548 4000A997 */  lhu        $t1, 0x40($sp)
    /* 8CD4C 8009C54C 00000000 */  nop
    /* 8CD50 8009C550 1200E9A4 */  sh         $t1, 0x12($a3)
  .L8009C554:
    /* 8CD54 8009C554 031C0300 */  sra        $v1, $v1, 16
    /* 8CD58 8009C558 80100300 */  sll        $v0, $v1, 2
    /* 8CD5C 8009C55C 0D80013C */  lui        $at, %hi(D_800CB3DE)
    /* 8CD60 8009C560 21082200 */  addu       $at, $at, $v0
    /* 8CD64 8009C564 DEB32290 */  lbu        $v0, %lo(D_800CB3DE)($at)
    /* 8CD68 8009C568 00000000 */  nop
    /* 8CD6C 8009C56C C0100200 */  sll        $v0, $v0, 3
    /* 8CD70 8009C570 21105600 */  addu       $v0, $v0, $s6
    /* 8CD74 8009C574 000040C8 */  lwc2       $0, 0x0($v0)
    /* 8CD78 8009C578 040041C8 */  lwc2       $1, 0x4($v0)
    /* 8CD7C 8009C57C 00000000 */  nop
    /* 8CD80 8009C580 00000000 */  nop
    /* 8CD84 8009C584 0100184A */  rtps
    /* 8CD88 8009C588 1800E224 */  addiu      $v0, $a3, 0x18
    /* 8CD8C 8009C58C 00004EE8 */  swc2       $14, 0x0($v0)
    /* 8CD90 8009C590 0F006014 */  bnez       $v1, .L8009C5D0
    /* 8CD94 8009C594 00000000 */   nop
    /* 8CD98 8009C598 0D80023C */  lui        $v0, %hi(D_800CB3DF)
    /* 8CD9C 8009C59C DFB34290 */  lbu        $v0, %lo(D_800CB3DF)($v0)
    /* 8CDA0 8009C5A0 00000000 */  nop
    /* 8CDA4 8009C5A4 C0100200 */  sll        $v0, $v0, 3
    /* 8CDA8 8009C5A8 21105600 */  addu       $v0, $v0, $s6
    /* 8CDAC 8009C5AC 000040C8 */  lwc2       $0, 0x0($v0)
    /* 8CDB0 8009C5B0 040041C8 */  lwc2       $1, 0x4($v0)
    /* 8CDB4 8009C5B4 00000000 */  nop
    /* 8CDB8 8009C5B8 00000000 */  nop
    /* 8CDBC 8009C5BC 0100184A */  rtps
    /* 8CDC0 8009C5C0 2000E224 */  addiu      $v0, $a3, 0x20
    /* 8CDC4 8009C5C4 00004EE8 */  swc2       $14, 0x0($v0)
    /* 8CDC8 8009C5C8 7A710208 */  j          .L8009C5E8
    /* 8CDCC 8009C5CC 00000000 */   nop
  .L8009C5D0:
    /* 8CDD0 8009C5D0 4800A997 */  lhu        $t1, 0x48($sp)
    /* 8CDD4 8009C5D4 00000000 */  nop
    /* 8CDD8 8009C5D8 2000E9A4 */  sh         $t1, 0x20($a3)
    /* 8CDDC 8009C5DC 5000A997 */  lhu        $t1, 0x50($sp)
    /* 8CDE0 8009C5E0 00000000 */  nop
    /* 8CDE4 8009C5E4 2200E9A4 */  sh         $t1, 0x22($a3)
  .L8009C5E8:
    /* 8CDE8 8009C5E8 0800E994 */  lhu        $t1, 0x8($a3)
    /* 8CDEC 8009C5EC 00000000 */  nop
    /* 8CDF0 8009C5F0 3800A9A7 */  sh         $t1, 0x38($sp)
    /* 8CDF4 8009C5F4 0A00E994 */  lhu        $t1, 0xA($a3)
    /* 8CDF8 8009C5F8 00000000 */  nop
    /* 8CDFC 8009C5FC 4000A9A7 */  sh         $t1, 0x40($sp)
    /* 8CE00 8009C600 1800E994 */  lhu        $t1, 0x18($a3)
    /* 8CE04 8009C604 00000000 */  nop
    /* 8CE08 8009C608 4800A9A7 */  sh         $t1, 0x48($sp)
    /* 8CE0C 8009C60C 1A00E994 */  lhu        $t1, 0x1A($a3)
    /* 8CE10 8009C610 EC006226 */  addiu      $v0, $s3, %lo(D_1F8000EC)
    /* 8CE14 8009C614 5000A9A7 */  sh         $t1, 0x50($sp)
    /* 8CE18 8009C618 00980C48 */  mfc2       $t4, $19 /* handwritten instruction */
    /* 8CE1C 8009C61C 00000000 */  nop
    /* 8CE20 8009C620 83600C00 */  sra        $t4, $t4, 2
    /* 8CE24 8009C624 00004CAC */  sw         $t4, 0x0($v0)
    /* 8CE28 8009C628 EC00658E */  lw         $a1, (0x1F8000EC & 0xFFFF)($s3)
    /* 8CE2C 8009C62C 00000000 */  nop
    /* 8CE30 8009C630 1A00A018 */  blez       $a1, .L8009C69C
    /* 8CE34 8009C634 0100A226 */   addiu     $v0, $s5, 0x1
    /* 8CE38 8009C638 6666043C */  lui        $a0, (0x66666667 >> 16)
    /* 8CE3C 8009C63C 67668434 */  ori        $a0, $a0, (0x66666667 & 0xFFFF)
    /* 8CE40 8009C640 0000638E */  lw         $v1, (0x1F800000 & 0xFFFF)($s3)
    /* 8CE44 8009C644 0E000224 */  addiu      $v0, $zero, 0xE
    /* 8CE48 8009C648 23104300 */  subu       $v0, $v0, $v1
    /* 8CE4C 8009C64C 07104500 */  srav       $v0, $a1, $v0
    /* 8CE50 8009C650 80180200 */  sll        $v1, $v0, 2
    /* 8CE54 8009C654 21186200 */  addu       $v1, $v1, $v0
    /* 8CE58 8009C658 80180300 */  sll        $v1, $v1, 2
    /* 8CE5C 8009C65C 23186200 */  subu       $v1, $v1, $v0
    /* 8CE60 8009C660 18006400 */  mult       $v1, $a0
    /* 8CE64 8009C664 9D026692 */  lbu        $a2, (0x1F80029D & 0xFFFF)($s3)
    /* 8CE68 8009C668 2128E000 */  addu       $a1, $a3, $zero
    /* 8CE6C 8009C66C 80330600 */  sll        $a2, $a2, 14
    /* 8CE70 8009C670 C31F0300 */  sra        $v1, $v1, 31
    /* 8CE74 8009C674 0F80023C */  lui        $v0, %hi(D_800F3568)
    /* 8CE78 8009C678 68354224 */  addiu      $v0, $v0, %lo(D_800F3568)
    /* 8CE7C 8009C67C 10480000 */  mfhi       $t1
    /* 8CE80 8009C680 C3200900 */  sra        $a0, $t1, 3
    /* 8CE84 8009C684 23208300 */  subu       $a0, $a0, $v1
    /* 8CE88 8009C688 80200400 */  sll        $a0, $a0, 2
    /* 8CE8C 8009C68C 21208200 */  addu       $a0, $a0, $v0
    /* 8CE90 8009C690 01B7020C */  jal        func_800ADC04
    /* 8CE94 8009C694 2120C400 */   addu      $a0, $a2, $a0
    /* 8CE98 8009C698 0100A226 */  addiu      $v0, $s5, 0x1
  .L8009C69C:
    /* 8CE9C 8009C69C 21A84000 */  addu       $s5, $v0, $zero
    /* 8CEA0 8009C6A0 00140200 */  sll        $v0, $v0, 16
    /* 8CEA4 8009C6A4 03140200 */  sra        $v0, $v0, 16
    /* 8CEA8 8009C6A8 08004228 */  slti       $v0, $v0, 0x8
    /* 8CEAC 8009C6AC C0FE4014 */  bnez       $v0, .L8009C1B0
    /* 8CEB0 8009C6B0 00000000 */   nop
    /* 8CEB4 8009C6B4 8400BF8F */  lw         $ra, 0x84($sp)
    /* 8CEB8 8009C6B8 8000BE8F */  lw         $fp, 0x80($sp)
    /* 8CEBC 8009C6BC 7C00B78F */  lw         $s7, 0x7C($sp)
    /* 8CEC0 8009C6C0 7800B68F */  lw         $s6, 0x78($sp)
    /* 8CEC4 8009C6C4 7400B58F */  lw         $s5, 0x74($sp)
    /* 8CEC8 8009C6C8 7000B48F */  lw         $s4, 0x70($sp)
    /* 8CECC 8009C6CC 6C00B38F */  lw         $s3, 0x6C($sp)
    /* 8CED0 8009C6D0 6800B28F */  lw         $s2, 0x68($sp)
    /* 8CED4 8009C6D4 6400B18F */  lw         $s1, 0x64($sp)
    /* 8CED8 8009C6D8 6000B08F */  lw         $s0, 0x60($sp)
    /* 8CEDC 8009C6DC 8800BD27 */  addiu      $sp, $sp, 0x88
    /* 8CEE0 8009C6E0 0800E003 */  jr         $ra
    /* 8CEE4 8009C6E4 00000000 */   nop
endlabel func_8009BF7C
