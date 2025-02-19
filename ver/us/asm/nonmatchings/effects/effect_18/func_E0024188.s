.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E0024188
/* 3393D8 E0024188 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 3393DC E002418C AFBF0028 */  sw        $ra, 0x28($sp)
/* 3393E0 E0024190 AFB10024 */  sw        $s1, 0x24($sp)
/* 3393E4 E0024194 AFB00020 */  sw        $s0, 0x20($sp)
/* 3393E8 E0024198 8C830000 */  lw        $v1, ($a0)
/* 3393EC E002419C 8C90000C */  lw        $s0, 0xc($a0)
/* 3393F0 E00241A0 30620010 */  andi      $v0, $v1, 0x10
/* 3393F4 E00241A4 10400004 */  beqz      $v0, .LE00241B8
/* 3393F8 E00241A8 2402FFEF */   addiu    $v0, $zero, -0x11
/* 3393FC E00241AC 00621024 */  and       $v0, $v1, $v0
/* 339400 E00241B0 AC820000 */  sw        $v0, ($a0)
/* 339404 E00241B4 AE000030 */  sw        $zero, 0x30($s0)
.LE00241B8:
/* 339408 E00241B8 8E020030 */  lw        $v0, 0x30($s0)
/* 33940C E00241BC 2442FFFF */  addiu     $v0, $v0, -1
/* 339410 E00241C0 AE020030 */  sw        $v0, 0x30($s0)
/* 339414 E00241C4 8E02002C */  lw        $v0, 0x2c($s0)
/* 339418 E00241C8 8E030030 */  lw        $v1, 0x30($s0)
/* 33941C E00241CC 24420001 */  addiu     $v0, $v0, 1
/* 339420 E00241D0 04610005 */  bgez      $v1, .LE00241E8
/* 339424 E00241D4 AE02002C */   sw       $v0, 0x2c($s0)
/* 339428 E00241D8 0C080128 */  jal       shim_remove_effect
/* 33942C E00241DC 00000000 */   nop
/* 339430 E00241E0 080090B3 */  j         .LE00242CC
/* 339434 E00241E4 00000000 */   nop
.LE00241E8:
/* 339438 E00241E8 8E110000 */  lw        $s1, ($s0)
/* 33943C E00241EC 16200019 */  bnez      $s1, .LE0024254
/* 339440 E00241F0 24020001 */   addiu    $v0, $zero, 1
/* 339444 E00241F4 14600017 */  bnez      $v1, .LE0024254
/* 339448 E00241F8 24040001 */   addiu    $a0, $zero, 1
/* 33944C E00241FC C6020004 */  lwc1      $f2, 4($s0)
/* 339450 E0024200 C6000010 */  lwc1      $f0, 0x10($s0)
/* 339454 E0024204 C606000C */  lwc1      $f6, 0xc($s0)
/* 339458 E0024208 46001080 */  add.s     $f2, $f2, $f0
/* 33945C E002420C C6040018 */  lwc1      $f4, 0x18($s0)
/* 339460 E0024210 46043180 */  add.s     $f6, $f6, $f4
/* 339464 E0024214 C6000014 */  lwc1      $f0, 0x14($s0)
/* 339468 E0024218 44051000 */  mfc1      $a1, $f2
/* 33946C E002421C C6020008 */  lwc1      $f2, 8($s0)
/* 339470 E0024220 46001080 */  add.s     $f2, $f2, $f0
/* 339474 E0024224 44073000 */  mfc1      $a3, $f6
/* 339478 E0024228 44061000 */  mfc1      $a2, $f2
/* 33947C E002422C 24020018 */  addiu     $v0, $zero, 0x18
/* 339480 E0024230 AFA00010 */  sw        $zero, 0x10($sp)
/* 339484 E0024234 AFA00014 */  sw        $zero, 0x14($sp)
/* 339488 E0024238 AFA00018 */  sw        $zero, 0x18($sp)
/* 33948C E002423C 0C009000 */  jal       fx_18_main
/* 339490 E0024240 AFA2001C */   sw       $v0, 0x1c($sp)
/* 339494 E0024244 8C42000C */  lw        $v0, 0xc($v0)
/* 339498 E0024248 C6000028 */  lwc1      $f0, 0x28($s0)
/* 33949C E002424C E4400028 */  swc1      $f0, 0x28($v0)
/* 3394A0 E0024250 24020001 */  addiu     $v0, $zero, 1
.LE0024254:
/* 3394A4 E0024254 16220011 */  bne       $s1, $v0, .LE002429C
/* 3394A8 E0024258 00000000 */   nop
/* 3394AC E002425C 3C01E002 */  lui       $at, %hi(D_E0024CF0)
/* 3394B0 E0024260 D4204CF0 */  ldc1      $f0, %lo(D_E0024CF0)($at)
/* 3394B4 E0024264 C6020034 */  lwc1      $f2, 0x34($s0)
/* 3394B8 E0024268 468010A1 */  cvt.d.w   $f2, $f2
/* 3394BC E002426C 46201082 */  mul.d     $f2, $f2, $f0
/* 3394C0 E0024270 00000000 */  nop
/* 3394C4 E0024274 C600001C */  lwc1      $f0, 0x1c($s0)
/* 3394C8 E0024278 3C01E002 */  lui       $at, %hi(D_E0024CF8)
/* 3394CC E002427C D4244CF8 */  ldc1      $f4, %lo(D_E0024CF8)($at)
/* 3394D0 E0024280 46000021 */  cvt.d.s   $f0, $f0
/* 3394D4 E0024284 46240002 */  mul.d     $f0, $f0, $f4
/* 3394D8 E0024288 00000000 */  nop
/* 3394DC E002428C 4620120D */  trunc.w.d $f8, $f2
/* 3394E0 E0024290 E6080034 */  swc1      $f8, 0x34($s0)
/* 3394E4 E0024294 46200020 */  cvt.s.d   $f0, $f0
/* 3394E8 E0024298 E600001C */  swc1      $f0, 0x1c($s0)
.LE002429C:
/* 3394EC E002429C C6060010 */  lwc1      $f6, 0x10($s0)
/* 3394F0 E00242A0 C600001C */  lwc1      $f0, 0x1c($s0)
/* 3394F4 E00242A4 C6040014 */  lwc1      $f4, 0x14($s0)
/* 3394F8 E00242A8 46003180 */  add.s     $f6, $f6, $f0
/* 3394FC E00242AC C6000020 */  lwc1      $f0, 0x20($s0)
/* 339500 E00242B0 C6020018 */  lwc1      $f2, 0x18($s0)
/* 339504 E00242B4 46002100 */  add.s     $f4, $f4, $f0
/* 339508 E00242B8 C6000024 */  lwc1      $f0, 0x24($s0)
/* 33950C E00242BC 46001080 */  add.s     $f2, $f2, $f0
/* 339510 E00242C0 E6060010 */  swc1      $f6, 0x10($s0)
/* 339514 E00242C4 E6040014 */  swc1      $f4, 0x14($s0)
/* 339518 E00242C8 E6020018 */  swc1      $f2, 0x18($s0)
.LE00242CC:
/* 33951C E00242CC 8FBF0028 */  lw        $ra, 0x28($sp)
/* 339520 E00242D0 8FB10024 */  lw        $s1, 0x24($sp)
/* 339524 E00242D4 8FB00020 */  lw        $s0, 0x20($sp)
/* 339528 E00242D8 03E00008 */  jr        $ra
/* 33952C E00242DC 27BD0030 */   addiu    $sp, $sp, 0x30
