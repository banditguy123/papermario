.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E00360E4
/* 3455C4 E00360E4 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 3455C8 E00360E8 AFBF0010 */  sw        $ra, 0x10($sp)
/* 3455CC E00360EC 8C85000C */  lw        $a1, 0xc($a0)
/* 3455D0 E00360F0 8CA30014 */  lw        $v1, 0x14($a1)
/* 3455D4 E00360F4 28620064 */  slti      $v0, $v1, 0x64
/* 3455D8 E00360F8 10400007 */  beqz      $v0, .LE0036118
/* 3455DC E00360FC 2462FFFF */   addiu    $v0, $v1, -1
/* 3455E0 E0036100 04410005 */  bgez      $v0, .LE0036118
/* 3455E4 E0036104 ACA20014 */   sw       $v0, 0x14($a1)
/* 3455E8 E0036108 0C080128 */  jal       shim_remove_effect
/* 3455EC E003610C 00000000 */   nop
/* 3455F0 E0036110 0800D873 */  j         .LE00361CC
/* 3455F4 E0036114 00000000 */   nop
.LE0036118:
/* 3455F8 E0036118 8CA40010 */  lw        $a0, 0x10($a1)
/* 3455FC E003611C 8CA30014 */  lw        $v1, 0x14($a1)
/* 345600 E0036120 24820001 */  addiu     $v0, $a0, 1
/* 345604 E0036124 0040302D */  daddu     $a2, $v0, $zero
/* 345608 E0036128 ACA20010 */  sw        $v0, 0x10($a1)
/* 34560C E003612C 28620006 */  slti      $v0, $v1, 6
/* 345610 E0036130 10400012 */  beqz      $v0, .LE003617C
/* 345614 E0036134 24020005 */   addiu    $v0, $zero, 5
/* 345618 E0036138 00431023 */  subu      $v0, $v0, $v1
/* 34561C E003613C 3C01E003 */  lui       $at, %hi(D_E0036648)
/* 345620 E0036140 00220821 */  addu      $at, $at, $v0
/* 345624 E0036144 90226648 */  lbu       $v0, %lo(D_E0036648)($at)
/* 345628 E0036148 3C014316 */  lui       $at, 0x4316
/* 34562C E003614C 44811000 */  mtc1      $at, $f2
/* 345630 E0036150 44820000 */  mtc1      $v0, $f0
/* 345634 E0036154 00000000 */  nop
/* 345638 E0036158 46800020 */  cvt.s.w   $f0, $f0
/* 34563C E003615C 8CA2001C */  lw        $v0, 0x1c($a1)
/* 345640 E0036160 46020003 */  div.s     $f0, $f0, $f2
/* 345644 E0036164 E4A00018 */  swc1      $f0, 0x18($a1)
/* 345648 E0036168 00021FC2 */  srl       $v1, $v0, 0x1f
/* 34564C E003616C 00431021 */  addu      $v0, $v0, $v1
/* 345650 E0036170 00021043 */  sra       $v0, $v0, 1
/* 345654 E0036174 0800D873 */  j         .LE00361CC
/* 345658 E0036178 ACA2001C */   sw       $v0, 0x1c($a1)
.LE003617C:
/* 34565C E003617C 28C20007 */  slti      $v0, $a2, 7
/* 345660 E0036180 1040000B */  beqz      $v0, .LE00361B0
/* 345664 E0036184 00000000 */   nop
/* 345668 E0036188 3C02E003 */  lui       $v0, %hi(D_E0036640)
/* 34566C E003618C 00441021 */  addu      $v0, $v0, $a0
/* 345670 E0036190 90426640 */  lbu       $v0, %lo(D_E0036640)($v0)
/* 345674 E0036194 3C014316 */  lui       $at, 0x4316
/* 345678 E0036198 44811000 */  mtc1      $at, $f2
/* 34567C E003619C 44820000 */  mtc1      $v0, $f0
/* 345680 E00361A0 00000000 */  nop
/* 345684 E00361A4 46800020 */  cvt.s.w   $f0, $f0
/* 345688 E00361A8 0800D86E */  j         .LE00361B8
/* 34568C E00361AC 46020003 */   div.s    $f0, $f0, $f2
.LE00361B0:
/* 345690 E00361B0 3C013F80 */  lui       $at, 0x3f80
/* 345694 E00361B4 44810000 */  mtc1      $at, $f0
.LE00361B8:
/* 345698 E00361B8 28C20007 */  slti      $v0, $a2, 7
/* 34569C E00361BC 14400003 */  bnez      $v0, .LE00361CC
/* 3456A0 E00361C0 E4A00018 */   swc1     $f0, 0x18($a1)
/* 3456A4 E00361C4 24020007 */  addiu     $v0, $zero, 7
/* 3456A8 E00361C8 ACA20010 */  sw        $v0, 0x10($a1)
.LE00361CC:
/* 3456AC E00361CC 8FBF0010 */  lw        $ra, 0x10($sp)
/* 3456B0 E00361D0 03E00008 */  jr        $ra
/* 3456B4 E00361D4 27BD0018 */   addiu    $sp, $sp, 0x18
