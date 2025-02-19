.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802405F0_8891C0
/* 8891C0 802405F0 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 8891C4 802405F4 AFB3001C */  sw        $s3, 0x1c($sp)
/* 8891C8 802405F8 0080982D */  daddu     $s3, $a0, $zero
/* 8891CC 802405FC AFBF0020 */  sw        $ra, 0x20($sp)
/* 8891D0 80240600 AFB20018 */  sw        $s2, 0x18($sp)
/* 8891D4 80240604 AFB10014 */  sw        $s1, 0x14($sp)
/* 8891D8 80240608 AFB00010 */  sw        $s0, 0x10($sp)
/* 8891DC 8024060C F7BA0040 */  sdc1      $f26, 0x40($sp)
/* 8891E0 80240610 F7B80038 */  sdc1      $f24, 0x38($sp)
/* 8891E4 80240614 F7B60030 */  sdc1      $f22, 0x30($sp)
/* 8891E8 80240618 F7B40028 */  sdc1      $f20, 0x28($sp)
/* 8891EC 8024061C 8E62000C */  lw        $v0, 0xc($s3)
/* 8891F0 80240620 0C0B1EAF */  jal       evt_get_variable
/* 8891F4 80240624 8C450000 */   lw       $a1, ($v0)
/* 8891F8 80240628 2404FFFC */  addiu     $a0, $zero, -4
/* 8891FC 8024062C 0C00EABB */  jal       get_npc_unsafe
/* 889200 80240630 0040802D */   daddu    $s0, $v0, $zero
/* 889204 80240634 0200202D */  daddu     $a0, $s0, $zero
/* 889208 80240638 0C046C04 */  jal       get_model_list_index_from_tree_index
/* 88920C 8024063C 0040802D */   daddu    $s0, $v0, $zero
/* 889210 80240640 0C046B4C */  jal       get_model_from_list_index
/* 889214 80240644 0040202D */   daddu    $a0, $v0, $zero
/* 889218 80240648 3C038011 */  lui       $v1, %hi(gPlayerStatus)
/* 88921C 8024064C 2463EFC8 */  addiu     $v1, $v1, %lo(gPlayerStatus)
/* 889220 80240650 0040902D */  daddu     $s2, $v0, $zero
/* 889224 80240654 AE60008C */  sw        $zero, 0x8c($s3)
/* 889228 80240658 C4620028 */  lwc1      $f2, 0x28($v1)
/* 88922C 8024065C C6400098 */  lwc1      $f0, 0x98($s2)
/* 889230 80240660 46001081 */  sub.s     $f2, $f2, $f0
/* 889234 80240664 46021182 */  mul.s     $f6, $f2, $f2
/* 889238 80240668 00000000 */  nop
/* 88923C 8024066C C64000A0 */  lwc1      $f0, 0xa0($s2)
/* 889240 80240670 C4620030 */  lwc1      $f2, 0x30($v1)
/* 889244 80240674 46001081 */  sub.s     $f2, $f2, $f0
/* 889248 80240678 46021102 */  mul.s     $f4, $f2, $f2
/* 88924C 8024067C 00000000 */  nop
/* 889250 80240680 846200B0 */  lh        $v0, 0xb0($v1)
/* 889254 80240684 C462002C */  lwc1      $f2, 0x2c($v1)
/* 889258 80240688 44820000 */  mtc1      $v0, $f0
/* 88925C 8024068C 00000000 */  nop
/* 889260 80240690 46800020 */  cvt.s.w   $f0, $f0
/* 889264 80240694 46001080 */  add.s     $f2, $f2, $f0
/* 889268 80240698 3C013FC0 */  lui       $at, 0x3fc0
/* 88926C 8024069C 44810000 */  mtc1      $at, $f0
/* 889270 802406A0 00000000 */  nop
/* 889274 802406A4 46001081 */  sub.s     $f2, $f2, $f0
/* 889278 802406A8 46043300 */  add.s     $f12, $f6, $f4
/* 88927C 802406AC C640009C */  lwc1      $f0, 0x9c($s2)
/* 889280 802406B0 46001501 */  sub.s     $f20, $f2, $f0
/* 889284 802406B4 46006084 */  sqrt.s    $f2, $f12
/* 889288 802406B8 46021032 */  c.eq.s    $f2, $f2
/* 88928C 802406BC 00000000 */  nop
/* 889290 802406C0 45010004 */  bc1t      .L802406D4
/* 889294 802406C4 0060882D */   daddu    $s1, $v1, $zero
/* 889298 802406C8 0C0187BC */  jal       sqrtf
/* 88929C 802406CC 00000000 */   nop
/* 8892A0 802406D0 46000086 */  mov.s     $f2, $f0
.L802406D4:
/* 8892A4 802406D4 44800000 */  mtc1      $zero, $f0
/* 8892A8 802406D8 00000000 */  nop
/* 8892AC 802406DC 4614003C */  c.lt.s    $f0, $f20
/* 8892B0 802406E0 00000000 */  nop
/* 8892B4 802406E4 45000016 */  bc1f      .L80240740
/* 8892B8 802406E8 46001106 */   mov.s    $f4, $f2
/* 8892BC 802406EC 862200B0 */  lh        $v0, 0xb0($s1)
/* 8892C0 802406F0 44820000 */  mtc1      $v0, $f0
/* 8892C4 802406F4 00000000 */  nop
/* 8892C8 802406F8 46800020 */  cvt.s.w   $f0, $f0
/* 8892CC 802406FC 4600A03C */  c.lt.s    $f20, $f0
/* 8892D0 80240700 00000000 */  nop
/* 8892D4 80240704 4500000E */  bc1f      .L80240740
/* 8892D8 80240708 00000000 */   nop
/* 8892DC 8024070C 862200B2 */  lh        $v0, 0xb2($s1)
/* 8892E0 80240710 3C013F00 */  lui       $at, 0x3f00
/* 8892E4 80240714 44811000 */  mtc1      $at, $f2
/* 8892E8 80240718 44820000 */  mtc1      $v0, $f0
/* 8892EC 8024071C 00000000 */  nop
/* 8892F0 80240720 46800020 */  cvt.s.w   $f0, $f0
/* 8892F4 80240724 46020002 */  mul.s     $f0, $f0, $f2
/* 8892F8 80240728 00000000 */  nop
/* 8892FC 8024072C 4600203C */  c.lt.s    $f4, $f0
/* 889300 80240730 00000000 */  nop
/* 889304 80240734 45000002 */  bc1f      .L80240740
/* 889308 80240738 24020001 */   addiu    $v0, $zero, 1
/* 88930C 8024073C AE62008C */  sw        $v0, 0x8c($s3)
.L80240740:
/* 889310 80240740 C6020038 */  lwc1      $f2, 0x38($s0)
/* 889314 80240744 C6400098 */  lwc1      $f0, 0x98($s2)
/* 889318 80240748 46001081 */  sub.s     $f2, $f2, $f0
/* 88931C 8024074C 46021182 */  mul.s     $f6, $f2, $f2
/* 889320 80240750 00000000 */  nop
/* 889324 80240754 C64000A0 */  lwc1      $f0, 0xa0($s2)
/* 889328 80240758 C6020040 */  lwc1      $f2, 0x40($s0)
/* 88932C 8024075C 46001081 */  sub.s     $f2, $f2, $f0
/* 889330 80240760 46021102 */  mul.s     $f4, $f2, $f2
/* 889334 80240764 00000000 */  nop
/* 889338 80240768 860200A8 */  lh        $v0, 0xa8($s0)
/* 88933C 8024076C C602003C */  lwc1      $f2, 0x3c($s0)
/* 889340 80240770 44820000 */  mtc1      $v0, $f0
/* 889344 80240774 00000000 */  nop
/* 889348 80240778 46800020 */  cvt.s.w   $f0, $f0
/* 88934C 8024077C 46001080 */  add.s     $f2, $f2, $f0
/* 889350 80240780 3C013FC0 */  lui       $at, 0x3fc0
/* 889354 80240784 44810000 */  mtc1      $at, $f0
/* 889358 80240788 00000000 */  nop
/* 88935C 8024078C 46001081 */  sub.s     $f2, $f2, $f0
/* 889360 80240790 46043300 */  add.s     $f12, $f6, $f4
/* 889364 80240794 C640009C */  lwc1      $f0, 0x9c($s2)
/* 889368 80240798 46001501 */  sub.s     $f20, $f2, $f0
/* 88936C 8024079C 46006084 */  sqrt.s    $f2, $f12
/* 889370 802407A0 46021032 */  c.eq.s    $f2, $f2
/* 889374 802407A4 00000000 */  nop
/* 889378 802407A8 45010004 */  bc1t      .L802407BC
/* 88937C 802407AC 00000000 */   nop
/* 889380 802407B0 0C0187BC */  jal       sqrtf
/* 889384 802407B4 00000000 */   nop
/* 889388 802407B8 46000086 */  mov.s     $f2, $f0
.L802407BC:
/* 88938C 802407BC 44800000 */  mtc1      $zero, $f0
/* 889390 802407C0 00000000 */  nop
/* 889394 802407C4 4614003C */  c.lt.s    $f0, $f20
/* 889398 802407C8 00000000 */  nop
/* 88939C 802407CC 45000016 */  bc1f      .L80240828
/* 8893A0 802407D0 46001106 */   mov.s    $f4, $f2
/* 8893A4 802407D4 860200A8 */  lh        $v0, 0xa8($s0)
/* 8893A8 802407D8 44820000 */  mtc1      $v0, $f0
/* 8893AC 802407DC 00000000 */  nop
/* 8893B0 802407E0 46800020 */  cvt.s.w   $f0, $f0
/* 8893B4 802407E4 4600A03C */  c.lt.s    $f20, $f0
/* 8893B8 802407E8 00000000 */  nop
/* 8893BC 802407EC 4500000F */  bc1f      .L8024082C
/* 8893C0 802407F0 0000882D */   daddu    $s1, $zero, $zero
/* 8893C4 802407F4 860200A6 */  lh        $v0, 0xa6($s0)
/* 8893C8 802407F8 3C013F00 */  lui       $at, 0x3f00
/* 8893CC 802407FC 44811000 */  mtc1      $at, $f2
/* 8893D0 80240800 44820000 */  mtc1      $v0, $f0
/* 8893D4 80240804 00000000 */  nop
/* 8893D8 80240808 46800020 */  cvt.s.w   $f0, $f0
/* 8893DC 8024080C 46020002 */  mul.s     $f0, $f0, $f2
/* 8893E0 80240810 00000000 */  nop
/* 8893E4 80240814 4600203C */  c.lt.s    $f4, $f0
/* 8893E8 80240818 00000000 */  nop
/* 8893EC 8024081C 45000003 */  bc1f      .L8024082C
/* 8893F0 80240820 24020001 */   addiu    $v0, $zero, 1
/* 8893F4 80240824 AE62008C */  sw        $v0, 0x8c($s3)
.L80240828:
/* 8893F8 80240828 0000882D */  daddu     $s1, $zero, $zero
.L8024082C:
/* 8893FC 8024082C 3C013FC0 */  lui       $at, 0x3fc0
/* 889400 80240830 4481D000 */  mtc1      $at, $f26
/* 889404 80240834 4480C000 */  mtc1      $zero, $f24
/* 889408 80240838 3C013F00 */  lui       $at, 0x3f00
/* 88940C 8024083C 4481B000 */  mtc1      $at, $f22
.L80240840:
/* 889410 80240840 0C00EAD2 */  jal       get_npc_safe
/* 889414 80240844 0220202D */   daddu    $a0, $s1, $zero
/* 889418 80240848 0040802D */  daddu     $s0, $v0, $zero
/* 88941C 8024084C 52000035 */  beql      $s0, $zero, .L80240924
/* 889420 80240850 26310001 */   addiu    $s1, $s1, 1
/* 889424 80240854 C6020038 */  lwc1      $f2, 0x38($s0)
/* 889428 80240858 C6400098 */  lwc1      $f0, 0x98($s2)
/* 88942C 8024085C 46001081 */  sub.s     $f2, $f2, $f0
/* 889430 80240860 46021182 */  mul.s     $f6, $f2, $f2
/* 889434 80240864 00000000 */  nop
/* 889438 80240868 C64000A0 */  lwc1      $f0, 0xa0($s2)
/* 88943C 8024086C C6020040 */  lwc1      $f2, 0x40($s0)
/* 889440 80240870 46001081 */  sub.s     $f2, $f2, $f0
/* 889444 80240874 46021102 */  mul.s     $f4, $f2, $f2
/* 889448 80240878 00000000 */  nop
/* 88944C 8024087C 860200A8 */  lh        $v0, 0xa8($s0)
/* 889450 80240880 C602003C */  lwc1      $f2, 0x3c($s0)
/* 889454 80240884 44820000 */  mtc1      $v0, $f0
/* 889458 80240888 00000000 */  nop
/* 88945C 8024088C 46800020 */  cvt.s.w   $f0, $f0
/* 889460 80240890 46001080 */  add.s     $f2, $f2, $f0
/* 889464 80240894 461A1081 */  sub.s     $f2, $f2, $f26
/* 889468 80240898 46043300 */  add.s     $f12, $f6, $f4
/* 88946C 8024089C C640009C */  lwc1      $f0, 0x9c($s2)
/* 889470 802408A0 46001501 */  sub.s     $f20, $f2, $f0
/* 889474 802408A4 46006004 */  sqrt.s    $f0, $f12
/* 889478 802408A8 46000032 */  c.eq.s    $f0, $f0
/* 88947C 802408AC 00000000 */  nop
/* 889480 802408B0 45010003 */  bc1t      .L802408C0
/* 889484 802408B4 00000000 */   nop
/* 889488 802408B8 0C0187BC */  jal       sqrtf
/* 88948C 802408BC 00000000 */   nop
.L802408C0:
/* 889490 802408C0 4614C03C */  c.lt.s    $f24, $f20
/* 889494 802408C4 00000000 */  nop
/* 889498 802408C8 45000015 */  bc1f      .L80240920
/* 88949C 802408CC 46000106 */   mov.s    $f4, $f0
/* 8894A0 802408D0 860200A8 */  lh        $v0, 0xa8($s0)
/* 8894A4 802408D4 44820000 */  mtc1      $v0, $f0
/* 8894A8 802408D8 00000000 */  nop
/* 8894AC 802408DC 46800020 */  cvt.s.w   $f0, $f0
/* 8894B0 802408E0 4600A03C */  c.lt.s    $f20, $f0
/* 8894B4 802408E4 00000000 */  nop
/* 8894B8 802408E8 4500000E */  bc1f      .L80240924
/* 8894BC 802408EC 26310001 */   addiu    $s1, $s1, 1
/* 8894C0 802408F0 860200A6 */  lh        $v0, 0xa6($s0)
/* 8894C4 802408F4 44820000 */  mtc1      $v0, $f0
/* 8894C8 802408F8 00000000 */  nop
/* 8894CC 802408FC 46800020 */  cvt.s.w   $f0, $f0
/* 8894D0 80240900 46160002 */  mul.s     $f0, $f0, $f22
/* 8894D4 80240904 00000000 */  nop
/* 8894D8 80240908 4600203C */  c.lt.s    $f4, $f0
/* 8894DC 8024090C 00000000 */  nop
/* 8894E0 80240910 45000004 */  bc1f      .L80240924
/* 8894E4 80240914 24020001 */   addiu    $v0, $zero, 1
/* 8894E8 80240918 0809024C */  j         .L80240930
/* 8894EC 8024091C AE62008C */   sw       $v0, 0x8c($s3)
.L80240920:
/* 8894F0 80240920 26310001 */  addiu     $s1, $s1, 1
.L80240924:
/* 8894F4 80240924 2A220040 */  slti      $v0, $s1, 0x40
/* 8894F8 80240928 1440FFC5 */  bnez      $v0, .L80240840
/* 8894FC 8024092C 00000000 */   nop
.L80240930:
/* 889500 80240930 8FBF0020 */  lw        $ra, 0x20($sp)
/* 889504 80240934 8FB3001C */  lw        $s3, 0x1c($sp)
/* 889508 80240938 8FB20018 */  lw        $s2, 0x18($sp)
/* 88950C 8024093C 8FB10014 */  lw        $s1, 0x14($sp)
/* 889510 80240940 8FB00010 */  lw        $s0, 0x10($sp)
/* 889514 80240944 D7BA0040 */  ldc1      $f26, 0x40($sp)
/* 889518 80240948 D7B80038 */  ldc1      $f24, 0x38($sp)
/* 88951C 8024094C D7B60030 */  ldc1      $f22, 0x30($sp)
/* 889520 80240950 D7B40028 */  ldc1      $f20, 0x28($sp)
/* 889524 80240954 24020002 */  addiu     $v0, $zero, 2
/* 889528 80240958 03E00008 */  jr        $ra
/* 88952C 8024095C 27BD0048 */   addiu    $sp, $sp, 0x48
