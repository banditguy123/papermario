.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802430E4
/* 136424 802430E4 3C028016 */  lui       $v0, %hi(gWindows)
/* 136428 802430E8 24429D50 */  addiu     $v0, $v0, %lo(gWindows)
/* 13642C 802430EC 00042140 */  sll       $a0, $a0, 5
/* 136430 802430F0 00822021 */  addu      $a0, $a0, $v0
/* 136434 802430F4 9083001C */  lbu       $v1, 0x1c($a0)
/* 136438 802430F8 8FA5002C */  lw        $a1, 0x2c($sp)
/* 13643C 802430FC 14600005 */  bnez      $v1, .L80243114
/* 136440 80243100 28620010 */   slti     $v0, $v1, 0x10
/* 136444 80243104 90820000 */  lbu       $v0, ($a0)
/* 136448 80243108 304200FB */  andi      $v0, $v0, 0xfb
/* 13644C 8024310C A0820000 */  sb        $v0, ($a0)
/* 136450 80243110 28620010 */  slti      $v0, $v1, 0x10
.L80243114:
/* 136454 80243114 10400004 */  beqz      $v0, .L80243128
/* 136458 80243118 240200FF */   addiu    $v0, $zero, 0xff
/* 13645C 8024311C 00031100 */  sll       $v0, $v1, 4
/* 136460 80243120 03E00008 */  jr        $ra
/* 136464 80243124 ACA20000 */   sw       $v0, ($a1)
.L80243128:
/* 136468 80243128 ACA20000 */  sw        $v0, ($a1)
/* 13646C 8024312C 90820000 */  lbu       $v0, ($a0)
/* 136470 80243130 304200F7 */  andi      $v0, $v0, 0xf7
/* 136474 80243134 03E00008 */  jr        $ra
/* 136478 80243138 A0820000 */   sb       $v0, ($a0)
