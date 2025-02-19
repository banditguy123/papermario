.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .rodata

glabel D_80242EB0_980980
.double 1.2

.section .text

glabel func_80240230_97DD00
/* 97DD00 80240230 27BDFFA0 */  addiu     $sp, $sp, -0x60
/* 97DD04 80240234 AFB3004C */  sw        $s3, 0x4c($sp)
/* 97DD08 80240238 0080982D */  daddu     $s3, $a0, $zero
/* 97DD0C 8024023C AFBF0054 */  sw        $ra, 0x54($sp)
/* 97DD10 80240240 AFB40050 */  sw        $s4, 0x50($sp)
/* 97DD14 80240244 AFB20048 */  sw        $s2, 0x48($sp)
/* 97DD18 80240248 AFB10044 */  sw        $s1, 0x44($sp)
/* 97DD1C 8024024C AFB00040 */  sw        $s0, 0x40($sp)
/* 97DD20 80240250 F7B40058 */  sdc1      $f20, 0x58($sp)
/* 97DD24 80240254 8E710148 */  lw        $s1, 0x148($s3)
/* 97DD28 80240258 00A0A02D */  daddu     $s4, $a1, $zero
/* 97DD2C 8024025C 86240008 */  lh        $a0, 8($s1)
/* 97DD30 80240260 0C00EABB */  jal       get_npc_unsafe
/* 97DD34 80240264 00C0902D */   daddu    $s2, $a2, $zero
/* 97DD38 80240268 8E830014 */  lw        $v1, 0x14($s4)
/* 97DD3C 8024026C 04600034 */  bltz      $v1, .L80240340
/* 97DD40 80240270 0040802D */   daddu    $s0, $v0, $zero
/* 97DD44 80240274 8E620074 */  lw        $v0, 0x74($s3)
/* 97DD48 80240278 1C400030 */  bgtz      $v0, .L8024033C
/* 97DD4C 8024027C 2442FFFF */   addiu    $v0, $v0, -1
/* 97DD50 80240280 0240202D */  daddu     $a0, $s2, $zero
/* 97DD54 80240284 AE630074 */  sw        $v1, 0x74($s3)
/* 97DD58 80240288 AFA00010 */  sw        $zero, 0x10($sp)
/* 97DD5C 8024028C 8E86000C */  lw        $a2, 0xc($s4)
/* 97DD60 80240290 8E870010 */  lw        $a3, 0x10($s4)
/* 97DD64 80240294 0C01242D */  jal       func_800490B4
/* 97DD68 80240298 0220282D */   daddu    $a1, $s1, $zero
/* 97DD6C 8024029C 10400025 */  beqz      $v0, .L80240334
/* 97DD70 802402A0 0000202D */   daddu    $a0, $zero, $zero
/* 97DD74 802402A4 0200282D */  daddu     $a1, $s0, $zero
/* 97DD78 802402A8 0000302D */  daddu     $a2, $zero, $zero
/* 97DD7C 802402AC 860300A8 */  lh        $v1, 0xa8($s0)
/* 97DD80 802402B0 3C013F80 */  lui       $at, 0x3f80
/* 97DD84 802402B4 44810000 */  mtc1      $at, $f0
/* 97DD88 802402B8 3C014000 */  lui       $at, 0x4000
/* 97DD8C 802402BC 44811000 */  mtc1      $at, $f2
/* 97DD90 802402C0 3C01C1A0 */  lui       $at, 0xc1a0
/* 97DD94 802402C4 44812000 */  mtc1      $at, $f4
/* 97DD98 802402C8 2402000F */  addiu     $v0, $zero, 0xf
/* 97DD9C 802402CC AFA2001C */  sw        $v0, 0x1c($sp)
/* 97DDA0 802402D0 44835000 */  mtc1      $v1, $f10
/* 97DDA4 802402D4 00000000 */  nop
/* 97DDA8 802402D8 468052A0 */  cvt.s.w   $f10, $f10
/* 97DDAC 802402DC 44075000 */  mfc1      $a3, $f10
/* 97DDB0 802402E0 27A20028 */  addiu     $v0, $sp, 0x28
/* 97DDB4 802402E4 AFA20020 */  sw        $v0, 0x20($sp)
/* 97DDB8 802402E8 E7A00010 */  swc1      $f0, 0x10($sp)
/* 97DDBC 802402EC E7A20014 */  swc1      $f2, 0x14($sp)
/* 97DDC0 802402F0 0C01BFA4 */  jal       fx_emote
/* 97DDC4 802402F4 E7A40018 */   swc1     $f4, 0x18($sp)
/* 97DDC8 802402F8 0200202D */  daddu     $a0, $s0, $zero
/* 97DDCC 802402FC 240502F4 */  addiu     $a1, $zero, 0x2f4
/* 97DDD0 80240300 0C012530 */  jal       ai_enemy_play_sound
/* 97DDD4 80240304 3C060020 */   lui      $a2, 0x20
/* 97DDD8 80240308 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* 97DDDC 8024030C 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* 97DDE0 80240310 C60C0038 */  lwc1      $f12, 0x38($s0)
/* 97DDE4 80240314 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 97DDE8 80240318 8C460028 */  lw        $a2, 0x28($v0)
/* 97DDEC 8024031C 0C00A720 */  jal       atan2
/* 97DDF0 80240320 8C470030 */   lw       $a3, 0x30($v0)
/* 97DDF4 80240324 2402000C */  addiu     $v0, $zero, 0xc
/* 97DDF8 80240328 E600000C */  swc1      $f0, 0xc($s0)
/* 97DDFC 8024032C 08090151 */  j         .L80240544
/* 97DE00 80240330 AE620070 */   sw       $v0, 0x70($s3)
.L80240334:
/* 97DE04 80240334 8E620074 */  lw        $v0, 0x74($s3)
/* 97DE08 80240338 2442FFFF */  addiu     $v0, $v0, -1
.L8024033C:
/* 97DE0C 8024033C AE620074 */  sw        $v0, 0x74($s3)
.L80240340:
/* 97DE10 80240340 C6000018 */  lwc1      $f0, 0x18($s0)
/* 97DE14 80240344 44801000 */  mtc1      $zero, $f2
/* 97DE18 80240348 44801800 */  mtc1      $zero, $f3
/* 97DE1C 8024034C 46000021 */  cvt.d.s   $f0, $f0
/* 97DE20 80240350 4620103C */  c.lt.d    $f2, $f0
/* 97DE24 80240354 00000000 */  nop
/* 97DE28 80240358 45000025 */  bc1f      .L802403F0
/* 97DE2C 8024035C 27A5002C */   addiu    $a1, $sp, 0x2c
/* 97DE30 80240360 C6000038 */  lwc1      $f0, 0x38($s0)
/* 97DE34 80240364 860200A6 */  lh        $v0, 0xa6($s0)
/* 97DE38 80240368 3C018024 */  lui       $at, %hi(D_80242EB0_980980)
/* 97DE3C 8024036C D4222EB0 */  ldc1      $f2, %lo(D_80242EB0_980980)($at)
/* 97DE40 80240370 27A60030 */  addiu     $a2, $sp, 0x30
/* 97DE44 80240374 E7A0002C */  swc1      $f0, 0x2c($sp)
/* 97DE48 80240378 44820000 */  mtc1      $v0, $f0
/* 97DE4C 8024037C 00000000 */  nop
/* 97DE50 80240380 46800020 */  cvt.s.w   $f0, $f0
/* 97DE54 80240384 46000021 */  cvt.d.s   $f0, $f0
/* 97DE58 80240388 C604003C */  lwc1      $f4, 0x3c($s0)
/* 97DE5C 8024038C C6060040 */  lwc1      $f6, 0x40($s0)
/* 97DE60 80240390 C6080018 */  lwc1      $f8, 0x18($s0)
/* 97DE64 80240394 860200A8 */  lh        $v0, 0xa8($s0)
/* 97DE68 80240398 46220002 */  mul.d     $f0, $f0, $f2
/* 97DE6C 8024039C 00000000 */  nop
/* 97DE70 802403A0 E7A40030 */  swc1      $f4, 0x30($sp)
/* 97DE74 802403A4 E7A60034 */  swc1      $f6, 0x34($sp)
/* 97DE78 802403A8 E7A80010 */  swc1      $f8, 0x10($sp)
/* 97DE7C 802403AC C604000C */  lwc1      $f4, 0xc($s0)
/* 97DE80 802403B0 44821000 */  mtc1      $v0, $f2
/* 97DE84 802403B4 00000000 */  nop
/* 97DE88 802403B8 468010A0 */  cvt.s.w   $f2, $f2
/* 97DE8C 802403BC E7A20018 */  swc1      $f2, 0x18($sp)
/* 97DE90 802403C0 E7A40014 */  swc1      $f4, 0x14($sp)
/* 97DE94 802403C4 46200020 */  cvt.s.d   $f0, $f0
/* 97DE98 802403C8 E7A0001C */  swc1      $f0, 0x1c($sp)
/* 97DE9C 802403CC 8E040080 */  lw        $a0, 0x80($s0)
/* 97DEA0 802403D0 0C037711 */  jal       npc_test_move_simple_with_slipping
/* 97DEA4 802403D4 27A70034 */   addiu    $a3, $sp, 0x34
/* 97DEA8 802403D8 54400005 */  bnel      $v0, $zero, .L802403F0
/* 97DEAC 802403DC AE000018 */   sw       $zero, 0x18($s0)
/* 97DEB0 802403E0 8E050018 */  lw        $a1, 0x18($s0)
/* 97DEB4 802403E4 8E06000C */  lw        $a2, 0xc($s0)
/* 97DEB8 802403E8 0C00EA95 */  jal       npc_move_heading
/* 97DEBC 802403EC 0200202D */   daddu    $a0, $s0, $zero
.L802403F0:
/* 97DEC0 802403F0 C600001C */  lwc1      $f0, 0x1c($s0)
/* 97DEC4 802403F4 44801000 */  mtc1      $zero, $f2
/* 97DEC8 802403F8 44801800 */  mtc1      $zero, $f3
/* 97DECC 802403FC 46000021 */  cvt.d.s   $f0, $f0
/* 97DED0 80240400 4622003C */  c.lt.d    $f0, $f2
/* 97DED4 80240404 00000000 */  nop
/* 97DED8 80240408 45000047 */  bc1f      .L80240528
/* 97DEDC 8024040C 27A5002C */   addiu    $a1, $sp, 0x2c
/* 97DEE0 80240410 27A60030 */  addiu     $a2, $sp, 0x30
/* 97DEE4 80240414 27A20038 */  addiu     $v0, $sp, 0x38
/* 97DEE8 80240418 C602003C */  lwc1      $f2, 0x3c($s0)
/* 97DEEC 8024041C C6060038 */  lwc1      $f6, 0x38($s0)
/* 97DEF0 80240420 3C01402A */  lui       $at, 0x402a
/* 97DEF4 80240424 4481A800 */  mtc1      $at, $f21
/* 97DEF8 80240428 4480A000 */  mtc1      $zero, $f20
/* 97DEFC 8024042C 460010A1 */  cvt.d.s   $f2, $f2
/* 97DF00 80240430 46341080 */  add.d     $f2, $f2, $f20
/* 97DF04 80240434 C600001C */  lwc1      $f0, 0x1c($s0)
/* 97DF08 80240438 C6040040 */  lwc1      $f4, 0x40($s0)
/* 97DF0C 8024043C 46000005 */  abs.s     $f0, $f0
/* 97DF10 80240440 E7A40034 */  swc1      $f4, 0x34($sp)
/* 97DF14 80240444 3C014030 */  lui       $at, 0x4030
/* 97DF18 80240448 44812800 */  mtc1      $at, $f5
/* 97DF1C 8024044C 44802000 */  mtc1      $zero, $f4
/* 97DF20 80240450 46000021 */  cvt.d.s   $f0, $f0
/* 97DF24 80240454 E7A6002C */  swc1      $f6, 0x2c($sp)
/* 97DF28 80240458 46240000 */  add.d     $f0, $f0, $f4
/* 97DF2C 8024045C 462010A0 */  cvt.s.d   $f2, $f2
/* 97DF30 80240460 E7A20030 */  swc1      $f2, 0x30($sp)
/* 97DF34 80240464 46200020 */  cvt.s.d   $f0, $f0
/* 97DF38 80240468 E7A00038 */  swc1      $f0, 0x38($sp)
/* 97DF3C 8024046C AFA20010 */  sw        $v0, 0x10($sp)
/* 97DF40 80240470 8E040080 */  lw        $a0, 0x80($s0)
/* 97DF44 80240474 0C0372DF */  jal       npc_raycast_down_sides
/* 97DF48 80240478 27A70034 */   addiu    $a3, $sp, 0x34
/* 97DF4C 8024047C 1040002A */  beqz      $v0, .L80240528
/* 97DF50 80240480 00000000 */   nop
/* 97DF54 80240484 C600001C */  lwc1      $f0, 0x1c($s0)
/* 97DF58 80240488 C7A20038 */  lwc1      $f2, 0x38($sp)
/* 97DF5C 8024048C 46000005 */  abs.s     $f0, $f0
/* 97DF60 80240490 46000021 */  cvt.d.s   $f0, $f0
/* 97DF64 80240494 46340000 */  add.d     $f0, $f0, $f20
/* 97DF68 80240498 460010A1 */  cvt.d.s   $f2, $f2
/* 97DF6C 8024049C 4620103E */  c.le.d    $f2, $f0
/* 97DF70 802404A0 00000000 */  nop
/* 97DF74 802404A4 45000020 */  bc1f      .L80240528
/* 97DF78 802404A8 240403E8 */   addiu    $a0, $zero, 0x3e8
/* 97DF7C 802404AC C7A00030 */  lwc1      $f0, 0x30($sp)
/* 97DF80 802404B0 8E020000 */  lw        $v0, ($s0)
/* 97DF84 802404B4 2403F7FF */  addiu     $v1, $zero, -0x801
/* 97DF88 802404B8 AE00001C */  sw        $zero, 0x1c($s0)
/* 97DF8C 802404BC 00431024 */  and       $v0, $v0, $v1
/* 97DF90 802404C0 AE020000 */  sw        $v0, ($s0)
/* 97DF94 802404C4 24020002 */  addiu     $v0, $zero, 2
/* 97DF98 802404C8 E600003C */  swc1      $f0, 0x3c($s0)
/* 97DF9C 802404CC 0C00A67F */  jal       rand_int
/* 97DFA0 802404D0 AE620070 */   sw       $v0, 0x70($s3)
/* 97DFA4 802404D4 3C035555 */  lui       $v1, 0x5555
/* 97DFA8 802404D8 34635556 */  ori       $v1, $v1, 0x5556
/* 97DFAC 802404DC 00430018 */  mult      $v0, $v1
/* 97DFB0 802404E0 000227C3 */  sra       $a0, $v0, 0x1f
/* 97DFB4 802404E4 00004010 */  mfhi      $t0
/* 97DFB8 802404E8 01042023 */  subu      $a0, $t0, $a0
/* 97DFBC 802404EC 00041840 */  sll       $v1, $a0, 1
/* 97DFC0 802404F0 00641821 */  addu      $v1, $v1, $a0
/* 97DFC4 802404F4 00431023 */  subu      $v0, $v0, $v1
/* 97DFC8 802404F8 24430002 */  addiu     $v1, $v0, 2
/* 97DFCC 802404FC AE630074 */  sw        $v1, 0x74($s3)
/* 97DFD0 80240500 8E82002C */  lw        $v0, 0x2c($s4)
/* 97DFD4 80240504 5840000F */  blezl     $v0, .L80240544
/* 97DFD8 80240508 AE600070 */   sw       $zero, 0x70($s3)
/* 97DFDC 8024050C 8E820004 */  lw        $v0, 4($s4)
/* 97DFE0 80240510 5840000C */  blezl     $v0, .L80240544
/* 97DFE4 80240514 AE600070 */   sw       $zero, 0x70($s3)
/* 97DFE8 80240518 1460000A */  bnez      $v1, .L80240544
/* 97DFEC 8024051C 00000000 */   nop
/* 97DFF0 80240520 08090151 */  j         .L80240544
/* 97DFF4 80240524 AE600070 */   sw       $zero, 0x70($s3)
.L80240528:
/* 97DFF8 80240528 C604003C */  lwc1      $f4, 0x3c($s0)
/* 97DFFC 8024052C C600001C */  lwc1      $f0, 0x1c($s0)
/* 97E000 80240530 46002100 */  add.s     $f4, $f4, $f0
/* 97E004 80240534 C6020014 */  lwc1      $f2, 0x14($s0)
/* 97E008 80240538 46020001 */  sub.s     $f0, $f0, $f2
/* 97E00C 8024053C E604003C */  swc1      $f4, 0x3c($s0)
/* 97E010 80240540 E600001C */  swc1      $f0, 0x1c($s0)
.L80240544:
/* 97E014 80240544 8FBF0054 */  lw        $ra, 0x54($sp)
/* 97E018 80240548 8FB40050 */  lw        $s4, 0x50($sp)
/* 97E01C 8024054C 8FB3004C */  lw        $s3, 0x4c($sp)
/* 97E020 80240550 8FB20048 */  lw        $s2, 0x48($sp)
/* 97E024 80240554 8FB10044 */  lw        $s1, 0x44($sp)
/* 97E028 80240558 8FB00040 */  lw        $s0, 0x40($sp)
/* 97E02C 8024055C D7B40058 */  ldc1      $f20, 0x58($sp)
/* 97E030 80240560 03E00008 */  jr        $ra
/* 97E034 80240564 27BD0060 */   addiu    $sp, $sp, 0x60
