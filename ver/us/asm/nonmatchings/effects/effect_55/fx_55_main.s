.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel fx_55_main
/* 372790 E006E000 27BDFF90 */  addiu     $sp, $sp, -0x70
/* 372794 E006E004 F7B40040 */  sdc1      $f20, 0x40($sp)
/* 372798 E006E008 4485A000 */  mtc1      $a1, $f20
/* 37279C E006E00C F7B80050 */  sdc1      $f24, 0x50($sp)
/* 3727A0 E006E010 4486C000 */  mtc1      $a2, $f24
/* 3727A4 E006E014 F7BC0060 */  sdc1      $f28, 0x60($sp)
/* 3727A8 E006E018 4487E000 */  mtc1      $a3, $f28
/* 3727AC E006E01C F7B60048 */  sdc1      $f22, 0x48($sp)
/* 3727B0 E006E020 C7B60080 */  lwc1      $f22, 0x80($sp)
/* 3727B4 E006E024 F7BA0058 */  sdc1      $f26, 0x58($sp)
/* 3727B8 E006E028 C7BA0084 */  lwc1      $f26, 0x84($sp)
/* 3727BC E006E02C F7BE0068 */  sdc1      $f30, 0x68($sp)
/* 3727C0 E006E030 C7BE0088 */  lwc1      $f30, 0x88($sp)
/* 3727C4 E006E034 AFB30034 */  sw        $s3, 0x34($sp)
/* 3727C8 E006E038 0080982D */  daddu     $s3, $a0, $zero
/* 3727CC E006E03C AFB1002C */  sw        $s1, 0x2c($sp)
/* 3727D0 E006E040 8FB10090 */  lw        $s1, 0x90($sp)
/* 3727D4 E006E044 27A40010 */  addiu     $a0, $sp, 0x10
/* 3727D8 E006E048 AFB40038 */  sw        $s4, 0x38($sp)
/* 3727DC E006E04C 8FB40094 */  lw        $s4, 0x94($sp)
/* 3727E0 E006E050 3C02E007 */  lui       $v0, %hi(func_E006E354)
/* 3727E4 E006E054 2442E354 */  addiu     $v0, $v0, %lo(func_E006E354)
/* 3727E8 E006E058 AFA20018 */  sw        $v0, 0x18($sp)
/* 3727EC E006E05C 3C02E007 */  lui       $v0, %hi(func_E006E35C)
/* 3727F0 E006E060 2442E35C */  addiu     $v0, $v0, %lo(func_E006E35C)
/* 3727F4 E006E064 AFA2001C */  sw        $v0, 0x1c($sp)
/* 3727F8 E006E068 3C02E007 */  lui       $v0, %hi(func_E006E6E4)
/* 3727FC E006E06C 2442E6E4 */  addiu     $v0, $v0, %lo(func_E006E6E4)
/* 372800 E006E070 AFA20020 */  sw        $v0, 0x20($sp)
/* 372804 E006E074 24020037 */  addiu     $v0, $zero, 0x37
/* 372808 E006E078 AFBF003C */  sw        $ra, 0x3c($sp)
/* 37280C E006E07C AFB20030 */  sw        $s2, 0x30($sp)
/* 372810 E006E080 AFB00028 */  sw        $s0, 0x28($sp)
/* 372814 E006E084 AFA00010 */  sw        $zero, 0x10($sp)
/* 372818 E006E088 AFA00024 */  sw        $zero, 0x24($sp)
/* 37281C E006E08C 0C080124 */  jal       shim_create_effect_instance
/* 372820 E006E090 AFA20014 */   sw       $v0, 0x14($sp)
/* 372824 E006E094 2404007C */  addiu     $a0, $zero, 0x7c
/* 372828 E006E098 24030001 */  addiu     $v1, $zero, 1
/* 37282C E006E09C 0040902D */  daddu     $s2, $v0, $zero
/* 372830 E006E0A0 0C08012C */  jal       shim_general_heap_malloc
/* 372834 E006E0A4 AE430008 */   sw       $v1, 8($s2)
/* 372838 E006E0A8 0040802D */  daddu     $s0, $v0, $zero
/* 37283C E006E0AC 16000003 */  bnez      $s0, .LE006E0BC
/* 372840 E006E0B0 AE42000C */   sw       $v0, 0xc($s2)
.LE006E0B4:
/* 372844 E006E0B4 0801B82D */  j         .LE006E0B4
/* 372848 E006E0B8 00000000 */   nop
.LE006E0BC:
/* 37284C E006E0BC AE130000 */  sw        $s3, ($s0)
/* 372850 E006E0C0 8FA2008C */  lw        $v0, 0x8c($sp)
/* 372854 E006E0C4 AE110008 */  sw        $s1, 8($s0)
/* 372858 E006E0C8 E614000C */  swc1      $f20, 0xc($s0)
/* 37285C E006E0CC E6180010 */  swc1      $f24, 0x10($s0)
/* 372860 E006E0D0 E61C0014 */  swc1      $f28, 0x14($s0)
/* 372864 E006E0D4 E6140018 */  swc1      $f20, 0x18($s0)
/* 372868 E006E0D8 E618001C */  swc1      $f24, 0x1c($s0)
/* 37286C E006E0DC E61C0020 */  swc1      $f28, 0x20($s0)
/* 372870 E006E0E0 E6160024 */  swc1      $f22, 0x24($s0)
/* 372874 E006E0E4 E61A0028 */  swc1      $f26, 0x28($s0)
/* 372878 E006E0E8 E61E002C */  swc1      $f30, 0x2c($s0)
/* 37287C E006E0EC 16600006 */  bnez      $s3, .LE006E108
/* 372880 E006E0F0 AE020004 */   sw       $v0, 4($s0)
/* 372884 E006E0F4 3C013D4C */  lui       $at, 0x3d4c
/* 372888 E006E0F8 3421CCCD */  ori       $at, $at, 0xcccd
/* 37288C E006E0FC 44810000 */  mtc1      $at, $f0
/* 372890 E006E100 0801B847 */  j         .LE006E11C
/* 372894 E006E104 E6000038 */   swc1     $f0, 0x38($s0)
.LE006E108:
/* 372898 E006E108 3C013D23 */  lui       $at, 0x3d23
/* 37289C E006E10C 3421D70A */  ori       $at, $at, 0xd70a
/* 3728A0 E006E110 44810000 */  mtc1      $at, $f0
/* 3728A4 E006E114 00000000 */  nop
/* 3728A8 E006E118 E6000038 */  swc1      $f0, 0x38($s0)
.LE006E11C:
/* 3728AC E006E11C C6000038 */  lwc1      $f0, 0x38($s0)
/* 3728B0 E006E120 E6000030 */  swc1      $f0, 0x30($s0)
/* 3728B4 E006E124 3C013DCC */  lui       $at, 0x3dcc
/* 3728B8 E006E128 3421CCCD */  ori       $at, $at, 0xcccd
/* 3728BC E006E12C 44810000 */  mtc1      $at, $f0
/* 3728C0 E006E130 C6020030 */  lwc1      $f2, 0x30($s0)
/* 3728C4 E006E134 240200FF */  addiu     $v0, $zero, 0xff
/* 3728C8 E006E138 AE140044 */  sw        $s4, 0x44($s0)
/* 3728CC E006E13C AE140048 */  sw        $s4, 0x48($s0)
/* 3728D0 E006E140 AE00004C */  sw        $zero, 0x4c($s0)
/* 3728D4 E006E144 AE020040 */  sw        $v0, 0x40($s0)
/* 3728D8 E006E148 AE00005C */  sw        $zero, 0x5c($s0)
/* 3728DC E006E14C E600003C */  swc1      $f0, 0x3c($s0)
/* 3728E0 E006E150 16600036 */  bnez      $s3, .LE006E22C
/* 3728E4 E006E154 E6020034 */   swc1     $f2, 0x34($s0)
/* 3728E8 E006E158 2404000A */  addiu     $a0, $zero, 0xa
/* 3728EC E006E15C 0C080011 */  jal       func_E0200044
/* 3728F0 E006E160 0220282D */   daddu    $a1, $s1, $zero
/* 3728F4 E006E164 4614B001 */  sub.s     $f0, $f22, $f20
/* 3728F8 E006E168 3C01E007 */  lui       $at, %hi(D_E006EC20)
/* 3728FC E006E16C D434EC20 */  ldc1      $f20, %lo(D_E006EC20)($at)
/* 372900 E006E170 46000021 */  cvt.d.s   $f0, $f0
/* 372904 E006E174 46340002 */  mul.d     $f0, $f0, $f20
/* 372908 E006E178 00000000 */  nop
/* 37290C E006E17C 2442FFFB */  addiu     $v0, $v0, -5
/* 372910 E006E180 44821000 */  mtc1      $v0, $f2
/* 372914 E006E184 00000000 */  nop
/* 372918 E006E188 468010A1 */  cvt.d.w   $f2, $f2
/* 37291C E006E18C 46220002 */  mul.d     $f0, $f0, $f2
/* 372920 E006E190 00000000 */  nop
/* 372924 E006E194 46340002 */  mul.d     $f0, $f0, $f20
/* 372928 E006E198 00000000 */  nop
/* 37292C E006E19C 2404000A */  addiu     $a0, $zero, 0xa
/* 372930 E006E1A0 26250001 */  addiu     $a1, $s1, 1
/* 372934 E006E1A4 46200020 */  cvt.s.d   $f0, $f0
/* 372938 E006E1A8 0C080011 */  jal       func_E0200044
/* 37293C E006E1AC E6000050 */   swc1     $f0, 0x50($s0)
/* 372940 E006E1B0 4618D001 */  sub.s     $f0, $f26, $f24
/* 372944 E006E1B4 46000021 */  cvt.d.s   $f0, $f0
/* 372948 E006E1B8 46340002 */  mul.d     $f0, $f0, $f20
/* 37294C E006E1BC 00000000 */  nop
/* 372950 E006E1C0 2442FFFB */  addiu     $v0, $v0, -5
/* 372954 E006E1C4 44821000 */  mtc1      $v0, $f2
/* 372958 E006E1C8 00000000 */  nop
/* 37295C E006E1CC 468010A1 */  cvt.d.w   $f2, $f2
/* 372960 E006E1D0 46220002 */  mul.d     $f0, $f0, $f2
/* 372964 E006E1D4 00000000 */  nop
/* 372968 E006E1D8 46340002 */  mul.d     $f0, $f0, $f20
/* 37296C E006E1DC 00000000 */  nop
/* 372970 E006E1E0 2404000A */  addiu     $a0, $zero, 0xa
/* 372974 E006E1E4 26250002 */  addiu     $a1, $s1, 2
/* 372978 E006E1E8 46200020 */  cvt.s.d   $f0, $f0
/* 37297C E006E1EC 0C080011 */  jal       func_E0200044
/* 372980 E006E1F0 E6000054 */   swc1     $f0, 0x54($s0)
/* 372984 E006E1F4 461CF001 */  sub.s     $f0, $f30, $f28
/* 372988 E006E1F8 46000021 */  cvt.d.s   $f0, $f0
/* 37298C E006E1FC 46340002 */  mul.d     $f0, $f0, $f20
/* 372990 E006E200 00000000 */  nop
/* 372994 E006E204 2442FFFB */  addiu     $v0, $v0, -5
/* 372998 E006E208 44821000 */  mtc1      $v0, $f2
/* 37299C E006E20C 00000000 */  nop
/* 3729A0 E006E210 468010A1 */  cvt.d.w   $f2, $f2
/* 3729A4 E006E214 46220002 */  mul.d     $f0, $f0, $f2
/* 3729A8 E006E218 00000000 */  nop
/* 3729AC E006E21C 46340002 */  mul.d     $f0, $f0, $f20
/* 3729B0 E006E220 00000000 */  nop
/* 3729B4 E006E224 0801B8B9 */  j         .LE006E2E4
/* 3729B8 E006E228 46200020 */   cvt.s.d  $f0, $f0
.LE006E22C:
/* 3729BC E006E22C 2404000A */  addiu     $a0, $zero, 0xa
/* 3729C0 E006E230 0C080011 */  jal       func_E0200044
/* 3729C4 E006E234 26250003 */   addiu    $a1, $s1, 3
/* 3729C8 E006E238 4614B001 */  sub.s     $f0, $f22, $f20
/* 3729CC E006E23C 3C01E007 */  lui       $at, %hi(D_E006EC28)
/* 3729D0 E006E240 D434EC28 */  ldc1      $f20, %lo(D_E006EC28)($at)
/* 3729D4 E006E244 46000021 */  cvt.d.s   $f0, $f0
/* 3729D8 E006E248 46340002 */  mul.d     $f0, $f0, $f20
/* 3729DC E006E24C 00000000 */  nop
/* 3729E0 E006E250 2442FFFB */  addiu     $v0, $v0, -5
/* 3729E4 E006E254 44821000 */  mtc1      $v0, $f2
/* 3729E8 E006E258 00000000 */  nop
/* 3729EC E006E25C 468010A1 */  cvt.d.w   $f2, $f2
/* 3729F0 E006E260 46220002 */  mul.d     $f0, $f0, $f2
/* 3729F4 E006E264 00000000 */  nop
/* 3729F8 E006E268 2404000A */  addiu     $a0, $zero, 0xa
/* 3729FC E006E26C 26250004 */  addiu     $a1, $s1, 4
/* 372A00 E006E270 46200020 */  cvt.s.d   $f0, $f0
/* 372A04 E006E274 0C080011 */  jal       func_E0200044
/* 372A08 E006E278 E6000050 */   swc1     $f0, 0x50($s0)
/* 372A0C E006E27C 4618D001 */  sub.s     $f0, $f26, $f24
/* 372A10 E006E280 46000021 */  cvt.d.s   $f0, $f0
/* 372A14 E006E284 46340002 */  mul.d     $f0, $f0, $f20
/* 372A18 E006E288 00000000 */  nop
/* 372A1C E006E28C 2442FFFB */  addiu     $v0, $v0, -5
/* 372A20 E006E290 44821000 */  mtc1      $v0, $f2
/* 372A24 E006E294 00000000 */  nop
/* 372A28 E006E298 468010A1 */  cvt.d.w   $f2, $f2
/* 372A2C E006E29C 46220002 */  mul.d     $f0, $f0, $f2
/* 372A30 E006E2A0 00000000 */  nop
/* 372A34 E006E2A4 2404000A */  addiu     $a0, $zero, 0xa
/* 372A38 E006E2A8 26250005 */  addiu     $a1, $s1, 5
/* 372A3C E006E2AC 46200020 */  cvt.s.d   $f0, $f0
/* 372A40 E006E2B0 0C080011 */  jal       func_E0200044
/* 372A44 E006E2B4 E6000054 */   swc1     $f0, 0x54($s0)
/* 372A48 E006E2B8 461CF001 */  sub.s     $f0, $f30, $f28
/* 372A4C E006E2BC 46000021 */  cvt.d.s   $f0, $f0
/* 372A50 E006E2C0 46340002 */  mul.d     $f0, $f0, $f20
/* 372A54 E006E2C4 00000000 */  nop
/* 372A58 E006E2C8 2442FFFB */  addiu     $v0, $v0, -5
/* 372A5C E006E2CC 44821000 */  mtc1      $v0, $f2
/* 372A60 E006E2D0 00000000 */  nop
/* 372A64 E006E2D4 468010A1 */  cvt.d.w   $f2, $f2
/* 372A68 E006E2D8 46220002 */  mul.d     $f0, $f0, $f2
/* 372A6C E006E2DC 00000000 */  nop
/* 372A70 E006E2E0 46200020 */  cvt.s.d   $f0, $f0
.LE006E2E4:
/* 372A74 E006E2E4 E6000058 */  swc1      $f0, 0x58($s0)
/* 372A78 E006E2E8 0240102D */  daddu     $v0, $s2, $zero
/* 372A7C E006E2EC 240300FF */  addiu     $v1, $zero, 0xff
/* 372A80 E006E2F0 AE030064 */  sw        $v1, 0x64($s0)
/* 372A84 E006E2F4 240300AA */  addiu     $v1, $zero, 0xaa
/* 372A88 E006E2F8 AE030068 */  sw        $v1, 0x68($s0)
/* 372A8C E006E2FC 2403002A */  addiu     $v1, $zero, 0x2a
/* 372A90 E006E300 AE03006C */  sw        $v1, 0x6c($s0)
/* 372A94 E006E304 240300F3 */  addiu     $v1, $zero, 0xf3
/* 372A98 E006E308 AE030070 */  sw        $v1, 0x70($s0)
/* 372A9C E006E30C 24030030 */  addiu     $v1, $zero, 0x30
/* 372AA0 E006E310 AE000060 */  sw        $zero, 0x60($s0)
/* 372AA4 E006E314 AE030074 */  sw        $v1, 0x74($s0)
/* 372AA8 E006E318 AE000078 */  sw        $zero, 0x78($s0)
/* 372AAC E006E31C 8FBF003C */  lw        $ra, 0x3c($sp)
/* 372AB0 E006E320 8FB40038 */  lw        $s4, 0x38($sp)
/* 372AB4 E006E324 8FB30034 */  lw        $s3, 0x34($sp)
/* 372AB8 E006E328 8FB20030 */  lw        $s2, 0x30($sp)
/* 372ABC E006E32C 8FB1002C */  lw        $s1, 0x2c($sp)
/* 372AC0 E006E330 8FB00028 */  lw        $s0, 0x28($sp)
/* 372AC4 E006E334 D7BE0068 */  ldc1      $f30, 0x68($sp)
/* 372AC8 E006E338 D7BC0060 */  ldc1      $f28, 0x60($sp)
/* 372ACC E006E33C D7BA0058 */  ldc1      $f26, 0x58($sp)
/* 372AD0 E006E340 D7B80050 */  ldc1      $f24, 0x50($sp)
/* 372AD4 E006E344 D7B60048 */  ldc1      $f22, 0x48($sp)
/* 372AD8 E006E348 D7B40040 */  ldc1      $f20, 0x40($sp)
/* 372ADC E006E34C 03E00008 */  jr        $ra
/* 372AE0 E006E350 27BD0070 */   addiu    $sp, $sp, 0x70
