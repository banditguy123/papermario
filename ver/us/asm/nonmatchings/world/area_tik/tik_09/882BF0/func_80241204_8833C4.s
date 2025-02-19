.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241204_8833C4
/* 8833C4 80241204 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 8833C8 80241208 0000502D */  daddu     $t2, $zero, $zero
/* 8833CC 8024120C 3C03800B */  lui       $v1, %hi(gCurrentEncounter)
/* 8833D0 80241210 24630F10 */  addiu     $v1, $v1, %lo(gCurrentEncounter)
/* 8833D4 80241214 AFBF0010 */  sw        $ra, 0x10($sp)
/* 8833D8 80241218 8062001C */  lb        $v0, 0x1c($v1)
/* 8833DC 8024121C 8C85000C */  lw        $a1, 0xc($a0)
/* 8833E0 80241220 18400016 */  blez      $v0, .L8024127C
/* 8833E4 80241224 0140302D */   daddu    $a2, $t2, $zero
/* 8833E8 80241228 0040582D */  daddu     $t3, $v0, $zero
/* 8833EC 8024122C 0060482D */  daddu     $t1, $v1, $zero
.L80241230:
/* 8833F0 80241230 8D220028 */  lw        $v0, 0x28($t1)
/* 8833F4 80241234 5040000E */  beql      $v0, $zero, .L80241270
/* 8833F8 80241238 254A0001 */   addiu    $t2, $t2, 1
/* 8833FC 8024123C 8C430000 */  lw        $v1, ($v0)
/* 883400 80241240 1860000A */  blez      $v1, .L8024126C
/* 883404 80241244 0000382D */   daddu    $a3, $zero, $zero
/* 883408 80241248 0060402D */  daddu     $t0, $v1, $zero
/* 88340C 8024124C 0040182D */  daddu     $v1, $v0, $zero
.L80241250:
/* 883410 80241250 8C620004 */  lw        $v0, 4($v1)
/* 883414 80241254 54400001 */  bnel      $v0, $zero, .L8024125C
/* 883418 80241258 24C60001 */   addiu    $a2, $a2, 1
.L8024125C:
/* 88341C 8024125C 24E70001 */  addiu     $a3, $a3, 1
/* 883420 80241260 00E8102A */  slt       $v0, $a3, $t0
/* 883424 80241264 1440FFFA */  bnez      $v0, .L80241250
/* 883428 80241268 24630004 */   addiu    $v1, $v1, 4
.L8024126C:
/* 88342C 8024126C 254A0001 */  addiu     $t2, $t2, 1
.L80241270:
/* 883430 80241270 014B102A */  slt       $v0, $t2, $t3
/* 883434 80241274 1440FFEE */  bnez      $v0, .L80241230
/* 883438 80241278 25290004 */   addiu    $t1, $t1, 4
.L8024127C:
/* 88343C 8024127C 8CA50000 */  lw        $a1, ($a1)
/* 883440 80241280 0C0B2026 */  jal       evt_set_variable
/* 883444 80241284 00000000 */   nop
/* 883448 80241288 8FBF0010 */  lw        $ra, 0x10($sp)
/* 88344C 8024128C 24020002 */  addiu     $v0, $zero, 2
/* 883450 80241290 03E00008 */  jr        $ra
/* 883454 80241294 27BD0018 */   addiu    $sp, $sp, 0x18
/* 883458 80241298 00000000 */  nop
/* 88345C 8024129C 00000000 */  nop
