.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802BE520_319270
/* 319270 802BE520 3C02802C */  lui       $v0, %hi(D_802BE928)
/* 319274 802BE524 8C42E928 */  lw        $v0, %lo(D_802BE928)($v0)
/* 319278 802BE528 27BDFF90 */  addiu     $sp, $sp, -0x70
/* 31927C 802BE52C AFB00030 */  sw        $s0, 0x30($sp)
/* 319280 802BE530 AFBF0038 */  sw        $ra, 0x38($sp)
/* 319284 802BE534 AFB10034 */  sw        $s1, 0x34($sp)
/* 319288 802BE538 F7BE0068 */  sdc1      $f30, 0x68($sp)
/* 31928C 802BE53C F7BC0060 */  sdc1      $f28, 0x60($sp)
/* 319290 802BE540 F7BA0058 */  sdc1      $f26, 0x58($sp)
/* 319294 802BE544 F7B80050 */  sdc1      $f24, 0x50($sp)
/* 319298 802BE548 F7B60048 */  sdc1      $f22, 0x48($sp)
/* 31929C 802BE54C F7B40040 */  sdc1      $f20, 0x40($sp)
/* 3192A0 802BE550 14400003 */  bnez      $v0, .L802BE560
/* 3192A4 802BE554 0080802D */   daddu    $s0, $a0, $zero
/* 3192A8 802BE558 080AF9AF */  j         .L802BE6BC
/* 3192AC 802BE55C 0000102D */   daddu    $v0, $zero, $zero
.L802BE560:
/* 3192B0 802BE560 84A200A8 */  lh        $v0, 0xa8($a1)
/* 3192B4 802BE564 3C013FE0 */  lui       $at, 0x3fe0
/* 3192B8 802BE568 44810800 */  mtc1      $at, $f1
/* 3192BC 802BE56C 44800000 */  mtc1      $zero, $f0
/* 3192C0 802BE570 44821000 */  mtc1      $v0, $f2
/* 3192C4 802BE574 00000000 */  nop
/* 3192C8 802BE578 468010A1 */  cvt.d.w   $f2, $f2
/* 3192CC 802BE57C 46201082 */  mul.d     $f2, $f2, $f0
/* 3192D0 802BE580 00000000 */  nop
/* 3192D4 802BE584 84A200A6 */  lh        $v0, 0xa6($a1)
/* 3192D8 802BE588 3C01802C */  lui       $at, %hi(D_802BE910_319660)
/* 3192DC 802BE58C D420E910 */  ldc1      $f0, %lo(D_802BE910_319660)($at)
/* 3192E0 802BE590 44823000 */  mtc1      $v0, $f6
/* 3192E4 802BE594 00000000 */  nop
/* 3192E8 802BE598 468031A1 */  cvt.d.w   $f6, $f6
/* 3192EC 802BE59C 46203182 */  mul.d     $f6, $f6, $f0
/* 3192F0 802BE5A0 00000000 */  nop
/* 3192F4 802BE5A4 C4BA0038 */  lwc1      $f26, 0x38($a1)
/* 3192F8 802BE5A8 C61C0038 */  lwc1      $f28, 0x38($s0)
/* 3192FC 802BE5AC 461CD201 */  sub.s     $f8, $f26, $f28
/* 319300 802BE5B0 46084282 */  mul.s     $f10, $f8, $f8
/* 319304 802BE5B4 00000000 */  nop
/* 319308 802BE5B8 C4A4003C */  lwc1      $f4, 0x3c($a1)
/* 31930C 802BE5BC 462010A0 */  cvt.s.d   $f2, $f2
/* 319310 802BE5C0 46022100 */  add.s     $f4, $f4, $f2
/* 319314 802BE5C4 C600003C */  lwc1      $f0, 0x3c($s0)
/* 319318 802BE5C8 46002101 */  sub.s     $f4, $f4, $f0
/* 31931C 802BE5CC 46042302 */  mul.s     $f12, $f4, $f4
/* 319320 802BE5D0 00000000 */  nop
/* 319324 802BE5D4 C4B60040 */  lwc1      $f22, 0x40($a1)
/* 319328 802BE5D8 C6180040 */  lwc1      $f24, 0x40($s0)
/* 31932C 802BE5DC 4618B001 */  sub.s     $f0, $f22, $f24
/* 319330 802BE5E0 46000082 */  mul.s     $f2, $f0, $f0
/* 319334 802BE5E4 00000000 */  nop
/* 319338 802BE5E8 3C01420C */  lui       $at, 0x420c
/* 31933C 802BE5EC 4481F000 */  mtc1      $at, $f30
/* 319340 802BE5F0 460C5280 */  add.s     $f10, $f10, $f12
/* 319344 802BE5F4 E7A80020 */  swc1      $f8, 0x20($sp)
/* 319348 802BE5F8 46203520 */  cvt.s.d   $f20, $f6
/* 31934C 802BE5FC 46025300 */  add.s     $f12, $f10, $f2
/* 319350 802BE600 E7A00028 */  swc1      $f0, 0x28($sp)
/* 319354 802BE604 46006084 */  sqrt.s    $f2, $f12
/* 319358 802BE608 46021032 */  c.eq.s    $f2, $f2
/* 31935C 802BE60C 00000000 */  nop
/* 319360 802BE610 45010004 */  bc1t      .L802BE624
/* 319364 802BE614 E7A40024 */   swc1     $f4, 0x24($sp)
/* 319368 802BE618 0C0187BC */  jal       sqrtf
/* 31936C 802BE61C 00000000 */   nop
/* 319370 802BE620 46000086 */  mov.s     $f2, $f0
.L802BE624:
/* 319374 802BE624 461EA000 */  add.s     $f0, $f20, $f30
/* 319378 802BE628 4600103C */  c.lt.s    $f2, $f0
/* 31937C 802BE62C 00000000 */  nop
/* 319380 802BE630 45000002 */  bc1f      .L802BE63C
/* 319384 802BE634 0000882D */   daddu    $s1, $zero, $zero
/* 319388 802BE638 24110001 */  addiu     $s1, $zero, 1
.L802BE63C:
/* 31938C 802BE63C 4600D306 */  mov.s     $f12, $f26
/* 319390 802BE640 4406E000 */  mfc1      $a2, $f28
/* 319394 802BE644 4407C000 */  mfc1      $a3, $f24
/* 319398 802BE648 0C00A720 */  jal       atan2
/* 31939C 802BE64C 4600B386 */   mov.s    $f14, $f22
/* 3193A0 802BE650 4600D306 */  mov.s     $f12, $f26
/* 3193A4 802BE654 4600B386 */  mov.s     $f14, $f22
/* 3193A8 802BE658 4406E000 */  mfc1      $a2, $f28
/* 3193AC 802BE65C 4407C000 */  mfc1      $a3, $f24
/* 3193B0 802BE660 0C00A7B5 */  jal       dist2D
/* 3193B4 802BE664 46000506 */   mov.s    $f20, $f0
/* 3193B8 802BE668 27A60024 */  addiu     $a2, $sp, 0x24
/* 3193BC 802BE66C 27A70028 */  addiu     $a3, $sp, 0x28
/* 3193C0 802BE670 0000202D */  daddu     $a0, $zero, $zero
/* 3193C4 802BE674 C6020038 */  lwc1      $f2, 0x38($s0)
/* 3193C8 802BE678 C604003C */  lwc1      $f4, 0x3c($s0)
/* 3193CC 802BE67C C6060040 */  lwc1      $f6, 0x40($s0)
/* 3193D0 802BE680 3C014000 */  lui       $at, 0x4000
/* 3193D4 802BE684 44814000 */  mtc1      $at, $f8
/* 3193D8 802BE688 27A50020 */  addiu     $a1, $sp, 0x20
/* 3193DC 802BE68C E7A20020 */  swc1      $f2, 0x20($sp)
/* 3193E0 802BE690 E7A40024 */  swc1      $f4, 0x24($sp)
/* 3193E4 802BE694 E7A60028 */  swc1      $f6, 0x28($sp)
/* 3193E8 802BE698 E7A00010 */  swc1      $f0, 0x10($sp)
/* 3193EC 802BE69C E7B40014 */  swc1      $f20, 0x14($sp)
/* 3193F0 802BE6A0 E7BE0018 */  swc1      $f30, 0x18($sp)
/* 3193F4 802BE6A4 0C0376B9 */  jal       npc_test_move_taller_with_slipping
/* 3193F8 802BE6A8 E7A8001C */   swc1     $f8, 0x1c($sp)
/* 3193FC 802BE6AC 0040182D */  daddu     $v1, $v0, $zero
/* 319400 802BE6B0 14600002 */  bnez      $v1, .L802BE6BC
/* 319404 802BE6B4 0000102D */   daddu    $v0, $zero, $zero
/* 319408 802BE6B8 0220102D */  daddu     $v0, $s1, $zero
.L802BE6BC:
/* 31940C 802BE6BC 8FBF0038 */  lw        $ra, 0x38($sp)
/* 319410 802BE6C0 8FB10034 */  lw        $s1, 0x34($sp)
/* 319414 802BE6C4 8FB00030 */  lw        $s0, 0x30($sp)
/* 319418 802BE6C8 D7BE0068 */  ldc1      $f30, 0x68($sp)
/* 31941C 802BE6CC D7BC0060 */  ldc1      $f28, 0x60($sp)
/* 319420 802BE6D0 D7BA0058 */  ldc1      $f26, 0x58($sp)
/* 319424 802BE6D4 D7B80050 */  ldc1      $f24, 0x50($sp)
/* 319428 802BE6D8 D7B60048 */  ldc1      $f22, 0x48($sp)
/* 31942C 802BE6DC D7B40040 */  ldc1      $f20, 0x40($sp)
/* 319430 802BE6E0 03E00008 */  jr        $ra
/* 319434 802BE6E4 27BD0070 */   addiu    $sp, $sp, 0x70
