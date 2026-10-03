nonmatching func_8007C09C, 0x1C8

glabel func_8007C09C
    /* 6C89C 8007C09C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 6C8A0 8007C0A0 2400B5AF */  sw         $s5, 0x24($sp)
    /* 6C8A4 8007C0A4 801F153C */  lui        $s5, (0x1F800294 >> 16)
    /* 6C8A8 8007C0A8 2800BFAF */  sw         $ra, 0x28($sp)
    /* 6C8AC 8007C0AC 2000B4AF */  sw         $s4, 0x20($sp)
    /* 6C8B0 8007C0B0 1C00B3AF */  sw         $s3, 0x1C($sp)
    /* 6C8B4 8007C0B4 1800B2AF */  sw         $s2, 0x18($sp)
    /* 6C8B8 8007C0B8 1400B1AF */  sw         $s1, 0x14($sp)
    /* 6C8BC 8007C0BC 573F010C */  jal        func_8004FD5C
    /* 6C8C0 8007C0C0 1000B0AF */   sw        $s0, 0x10($sp)
    /* 6C8C4 8007C0C4 1080133C */  lui        $s3, %hi(D_800FF748)
    /* 6C8C8 8007C0C8 48F77326 */  addiu      $s3, $s3, %lo(D_800FF748)
    /* 6C8CC 8007C0CC E8037226 */  addiu      $s2, $s3, 0x3E8
    /* 6C8D0 8007C0D0 21880000 */  addu       $s1, $zero, $zero
    /* 6C8D4 8007C0D4 32001424 */  addiu      $s4, $zero, 0x32
    /* 6C8D8 8007C0D8 7F077026 */  addiu      $s0, $s3, 0x77F
  .L8007C0DC:
    /* 6C8DC 8007C0DC F44D010C */  jal        func_800537D0
    /* 6C8E0 8007C0E0 21204002 */   addu      $a0, $s2, $zero
    /* 6C8E4 8007C0E4 03004010 */  beqz       $v0, .L8007C0F4
    /* 6C8E8 8007C0E8 00000000 */   nop
    /* 6C8EC 8007C0EC FFFF14A2 */  sb         $s4, -0x1($s0)
    /* 6C8F0 8007C0F0 000000A2 */  sb         $zero, 0x0($s0)
  .L8007C0F4:
    /* 6C8F4 8007C0F4 01003126 */  addiu      $s1, $s1, 0x1
    /* 6C8F8 8007C0F8 E8031026 */  addiu      $s0, $s0, 0x3E8
    /* 6C8FC 8007C0FC 1600222A */  slti       $v0, $s1, 0x16
    /* 6C900 8007C100 F6FF4014 */  bnez       $v0, .L8007C0DC
    /* 6C904 8007C104 E8035226 */   addiu     $s2, $s2, 0x3E8
    /* 6C908 8007C108 AE02A392 */  lbu        $v1, (0x1F8002AE & 0xFFFF)($s5)
    /* 6C90C 8007C10C AAAA023C */  lui        $v0, (0xAAAAAAAB >> 16)
    /* 6C910 8007C110 ABAA4234 */  ori        $v0, $v0, (0xAAAAAAAB & 0xFFFF)
    /* 6C914 8007C114 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6C918 8007C118 19006200 */  multu      $v1, $v0
    /* 6C91C 8007C11C 05000524 */  addiu      $a1, $zero, 0x5
    /* 6C920 8007C120 10300000 */  mfhi       $a2
    /* 6C924 8007C124 02210600 */  srl        $a0, $a2, 4
    /* 6C928 8007C128 40100400 */  sll        $v0, $a0, 1
    /* 6C92C 8007C12C 21104400 */  addu       $v0, $v0, $a0
    /* 6C930 8007C130 C0100200 */  sll        $v0, $v0, 3
    /* 6C934 8007C134 23186200 */  subu       $v1, $v1, $v0
    /* 6C938 8007C138 FF006330 */  andi       $v1, $v1, 0xFF
    /* 6C93C 8007C13C 40210300 */  sll        $a0, $v1, 5
    /* 6C940 8007C140 23208300 */  subu       $a0, $a0, $v1
    /* 6C944 8007C144 80200400 */  sll        $a0, $a0, 2
    /* 6C948 8007C148 21208300 */  addu       $a0, $a0, $v1
    /* 6C94C 8007C14C C0200400 */  sll        $a0, $a0, 3
    /* 6C950 8007C150 E81D010C */  jal        func_800477A0
    /* 6C954 8007C154 21206402 */   addu      $a0, $s3, $a0
    /* 6C958 8007C158 0F8A000C */  jal        func_8002283C
    /* 6C95C 8007C15C 00000000 */   nop
    /* 6C960 8007C160 B428010C */  jal        func_8004A2D0
    /* 6C964 8007C164 00000000 */   nop
    /* 6C968 8007C168 0446010C */  jal        func_80051810
    /* 6C96C 8007C16C 00000000 */   nop
    /* 6C970 8007C170 9402A296 */  lhu        $v0, (0x1F800294 & 0xFFFF)($s5)
    /* 6C974 8007C174 00000000 */  nop
    /* 6C978 8007C178 01004224 */  addiu      $v0, $v0, 0x1
    /* 6C97C 8007C17C FFFF4330 */  andi       $v1, $v0, 0xFFFF
    /* 6C980 8007C180 9402A2A6 */  sh         $v0, (0x1F800294 & 0xFFFF)($s5)
    /* 6C984 8007C184 14000224 */  addiu      $v0, $zero, 0x14
    /* 6C988 8007C188 11006210 */  beq        $v1, $v0, .L8007C1D0
    /* 6C98C 8007C18C 15006228 */   slti      $v0, $v1, 0x15
    /* 6C990 8007C190 05004010 */  beqz       $v0, .L8007C1A8
    /* 6C994 8007C194 10000224 */   addiu     $v0, $zero, 0x10
    /* 6C998 8007C198 08006210 */  beq        $v1, $v0, .L8007C1BC
    /* 6C99C 8007C19C 00000000 */   nop
    /* 6C9A0 8007C1A0 84F00108 */  j          .L8007C210
    /* 6C9A4 8007C1A4 00000000 */   nop
  .L8007C1A8:
    /* 6C9A8 8007C1A8 20000224 */  addiu      $v0, $zero, 0x20
    /* 6C9AC 8007C1AC 14006210 */  beq        $v1, $v0, .L8007C200
    /* 6C9B0 8007C1B0 00000000 */   nop
    /* 6C9B4 8007C1B4 84F00108 */  j          .L8007C210
    /* 6C9B8 8007C1B8 00000000 */   nop
  .L8007C1BC:
    /* 6C9BC 8007C1BC C002A0A2 */  sb         $zero, (0x1F8002C0 & 0xFFFF)($s5)
    /* 6C9C0 8007C1C0 88AD020C */  jal        func_800AB620
    /* 6C9C4 8007C1C4 16050424 */   addiu     $a0, $zero, 0x516
    /* 6C9C8 8007C1C8 8FF00108 */  j          .L8007C23C
    /* 6C9CC 8007C1CC 00000000 */   nop
  .L8007C1D0:
    /* 6C9D0 8007C1D0 AE79000C */  jal        func_8001E6B8
    /* 6C9D4 8007C1D4 02000424 */   addiu     $a0, $zero, 0x2
    /* 6C9D8 8007C1D8 05004010 */  beqz       $v0, .L8007C1F0
    /* 6C9DC 8007C1DC 00000000 */   nop
    /* 6C9E0 8007C1E0 88AD020C */  jal        func_800AB620
    /* 6C9E4 8007C1E4 22050424 */   addiu     $a0, $zero, 0x522
    /* 6C9E8 8007C1E8 8FF00108 */  j          .L8007C23C
    /* 6C9EC 8007C1EC 00000000 */   nop
  .L8007C1F0:
    /* 6C9F0 8007C1F0 88AD020C */  jal        func_800AB620
    /* 6C9F4 8007C1F4 1B050424 */   addiu     $a0, $zero, 0x51B
    /* 6C9F8 8007C1F8 8FF00108 */  j          .L8007C23C
    /* 6C9FC 8007C1FC 00000000 */   nop
  .L8007C200:
    /* 6CA00 8007C200 88AD020C */  jal        func_800AB620
    /* 6CA04 8007C204 17050424 */   addiu     $a0, $zero, 0x517
    /* 6CA08 8007C208 8FF00108 */  j          .L8007C23C
    /* 6CA0C 8007C20C 00000000 */   nop
  .L8007C210:
    /* 6CA10 8007C210 9402A296 */  lhu        $v0, (0x1F800294 & 0xFFFF)($s5)
    /* 6CA14 8007C214 00000000 */  nop
    /* 6CA18 8007C218 4800422C */  sltiu      $v0, $v0, 0x48
    /* 6CA1C 8007C21C 07004014 */  bnez       $v0, .L8007C23C
    /* 6CA20 8007C220 00000000 */   nop
    /* 6CA24 8007C224 F13E010C */  jal        func_8004FBC4
    /* 6CA28 8007C228 21200000 */   addu      $a0, $zero, $zero
    /* 6CA2C 8007C22C 03004010 */  beqz       $v0, .L8007C23C
    /* 6CA30 8007C230 00000000 */   nop
    /* 6CA34 8007C234 775C000C */  jal        func_800171DC
    /* 6CA38 8007C238 00000000 */   nop
  .L8007C23C:
    /* 6CA3C 8007C23C 2800BF8F */  lw         $ra, 0x28($sp)
    /* 6CA40 8007C240 2400B58F */  lw         $s5, 0x24($sp)
    /* 6CA44 8007C244 2000B48F */  lw         $s4, 0x20($sp)
    /* 6CA48 8007C248 1C00B38F */  lw         $s3, 0x1C($sp)
    /* 6CA4C 8007C24C 1800B28F */  lw         $s2, 0x18($sp)
    /* 6CA50 8007C250 1400B18F */  lw         $s1, 0x14($sp)
    /* 6CA54 8007C254 1000B08F */  lw         $s0, 0x10($sp)
    /* 6CA58 8007C258 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 6CA5C 8007C25C 0800E003 */  jr         $ra
    /* 6CA60 8007C260 00000000 */   nop
endlabel func_8007C09C
