nonmatching func_800BDD88, 0xAC

glabel func_800BDD88
    /* AE588 800BDD88 E8FFBD27 */  addiu      $sp, $sp, -0x18
    /* AE58C 800BDD8C 21280000 */  addu       $a1, $zero, $zero
    /* AE590 800BDD90 21188000 */  addu       $v1, $a0, $zero
    /* AE594 800BDD94 00140400 */  sll        $v0, $a0, 16
    /* AE598 800BDD98 1400BFAF */  sw         $ra, 0x14($sp)
    /* AE59C 800BDD9C 03004104 */  bgez       $v0, .L800BDDAC
    /* AE5A0 800BDDA0 1000B0AF */   sw        $s0, 0x10($sp)
    /* AE5A4 800BDDA4 01000524 */  addiu      $a1, $zero, 0x1
    /* AE5A8 800BDDA8 23180400 */  negu       $v1, $a0
  .L800BDDAC:
    /* AE5AC 800BDDAC FFFF6230 */  andi       $v0, $v1, 0xFFFF
    /* AE5B0 800BDDB0 0A00422C */  sltiu      $v0, $v0, 0xA
    /* AE5B4 800BDDB4 16004010 */  beqz       $v0, .L800BDE10
    /* AE5B8 800BDDB8 01000224 */   addiu     $v0, $zero, 0x1
    /* AE5BC 800BDDBC 0F80043C */  lui        $a0, %hi(D_800E81B8)
    /* AE5C0 800BDDC0 B8818424 */  addiu      $a0, $a0, %lo(D_800E81B8)
    /* AE5C4 800BDDC4 0400A010 */  beqz       $a1, .L800BDDD8
    /* AE5C8 800BDDC8 000082AC */   sw        $v0, 0x0($a0)
    /* AE5CC 800BDDCC 00016234 */  ori        $v0, $v1, 0x100
    /* AE5D0 800BDDD0 77F70208 */  j          .L800BDDDC
    /* AE5D4 800BDDD4 00140200 */   sll       $v0, $v0, 16
  .L800BDDD8:
    /* AE5D8 800BDDD8 00140300 */  sll        $v0, $v1, 16
  .L800BDDDC:
    /* AE5DC 800BDDDC 03140200 */  sra        $v0, $v0, 16
    /* AE5E0 800BDDE0 040082AC */  sw         $v0, 0x4($a0)
    /* AE5E4 800BDDE4 00140300 */  sll        $v0, $v1, 16
    /* AE5E8 800BDDE8 03840200 */  sra        $s0, $v0, 16
    /* AE5EC 800BDDEC 03000016 */  bnez       $s0, .L800BDDFC
    /* AE5F0 800BDDF0 00000000 */   nop
    /* AE5F4 800BDDF4 8A0B030C */  jal        func_800C2E28
    /* AE5F8 800BDDF8 21200000 */   addu      $a0, $zero, $zero
  .L800BDDFC:
    /* AE5FC 800BDDFC 0F80043C */  lui        $a0, %hi(D_800E81B8)
    /* AE600 800BDE00 020C030C */  jal        func_800C3008
    /* AE604 800BDE04 B8818424 */   addiu     $a0, $a0, %lo(D_800E81B8)
    /* AE608 800BDE08 85F70208 */  j          .L800BDE14
    /* AE60C 800BDE0C 21100002 */   addu      $v0, $s0, $zero
  .L800BDE10:
    /* AE610 800BDE10 FFFF0224 */  addiu      $v0, $zero, -0x1
  .L800BDE14:
    /* AE614 800BDE14 1400BF8F */  lw         $ra, 0x14($sp)
    /* AE618 800BDE18 1000B08F */  lw         $s0, 0x10($sp)
    /* AE61C 800BDE1C 0800E003 */  jr         $ra
    /* AE620 800BDE20 1800BD27 */   addiu     $sp, $sp, 0x18
    /* AE624 800BDE24 0F80023C */  lui        $v0, %hi(D_800E81BC)
    /* AE628 800BDE28 BC814284 */  lh         $v0, %lo(D_800E81BC)($v0)
    /* AE62C 800BDE2C 0800E003 */  jr         $ra
    /* AE630 800BDE30 00000000 */   nop
endlabel func_800BDD88
    /* AE634 800BDE34 00000000 */  nop
