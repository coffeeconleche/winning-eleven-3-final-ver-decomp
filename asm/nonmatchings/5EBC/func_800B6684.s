nonmatching func_800B6684, 0x90

glabel func_800B6684
    /* A6E84 800B6684 01088228 */  slti       $v0, $a0, 0x801
    /* A6E88 800B6688 10004010 */  beqz       $v0, .L800B66CC
    /* A6E8C 800B668C 01048228 */   slti      $v0, $a0, 0x401
    /* A6E90 800B6690 06004010 */  beqz       $v0, .L800B66AC
    /* A6E94 800B6694 40100400 */   sll       $v0, $a0, 1
    /* A6E98 800B6698 0D80013C */  lui        $at, %hi(D_800D3094)
    /* A6E9C 800B669C 21082200 */  addu       $at, $at, $v0
    /* A6EA0 800B66A0 94302284 */  lh         $v0, %lo(D_800D3094)($at)
    /* A6EA4 800B66A4 C3D90208 */  j          .L800B670C
    /* A6EA8 800B66A8 00000000 */   nop
  .L800B66AC:
    /* A6EAC 800B66AC 00080224 */  addiu      $v0, $zero, 0x800
    /* A6EB0 800B66B0 23104400 */  subu       $v0, $v0, $a0
    /* A6EB4 800B66B4 40100200 */  sll        $v0, $v0, 1
    /* A6EB8 800B66B8 0D80013C */  lui        $at, %hi(D_800D3094)
    /* A6EBC 800B66BC 21082200 */  addu       $at, $at, $v0
    /* A6EC0 800B66C0 94302284 */  lh         $v0, %lo(D_800D3094)($at)
    /* A6EC4 800B66C4 C3D90208 */  j          .L800B670C
    /* A6EC8 800B66C8 00000000 */   nop
  .L800B66CC:
    /* A6ECC 800B66CC 010C8228 */  slti       $v0, $a0, 0xC01
    /* A6ED0 800B66D0 09004014 */  bnez       $v0, .L800B66F8
    /* A6ED4 800B66D4 40100400 */   sll       $v0, $a0, 1
    /* A6ED8 800B66D8 00100224 */  addiu      $v0, $zero, 0x1000
    /* A6EDC 800B66DC 23104400 */  subu       $v0, $v0, $a0
    /* A6EE0 800B66E0 40100200 */  sll        $v0, $v0, 1
    /* A6EE4 800B66E4 0D80013C */  lui        $at, %hi(D_800D3094)
    /* A6EE8 800B66E8 21082200 */  addu       $at, $at, $v0
    /* A6EEC 800B66EC 94302284 */  lh         $v0, %lo(D_800D3094)($at)
    /* A6EF0 800B66F0 C3D90208 */  j          .L800B670C
    /* A6EF4 800B66F4 23100200 */   negu      $v0, $v0
  .L800B66F8:
    /* A6EF8 800B66F8 0D80013C */  lui        $at, %hi(D_800D2094)
    /* A6EFC 800B66FC 21082200 */  addu       $at, $at, $v0
    /* A6F00 800B6700 94202284 */  lh         $v0, %lo(D_800D2094)($at)
    /* A6F04 800B6704 00000000 */  nop
    /* A6F08 800B6708 23100200 */  negu       $v0, $v0
  .L800B670C:
    /* A6F0C 800B670C 0800E003 */  jr         $ra
    /* A6F10 800B6710 00000000 */   nop
endlabel func_800B6684
    /* A6F14 800B6714 00000000 */  nop
