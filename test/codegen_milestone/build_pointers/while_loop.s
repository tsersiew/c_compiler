	.globl  glob1
	.data   
	.align  2
	.type   glob1, @object
	.size   glob1, 4
glob1:
	.word   10

	.globl  glob2
	.align  2
	.type   glob2, @object
	.size   glob2, 4
glob2:
	.word   67

	.globl  glob3
	.align  2
	.type   glob3, @object
	.size   glob3, 4
glob3:
	.word   80

	.globl  glob4
	.align  2
	.type   glob4, @object
	.size   glob4, 4
glob4:
	.word   0

	.text   
	.align	2
	.globl fn
	.ent fn
	.type fn, @function
fn:
	addiu   $sp, $sp, -40		# Allocate memory on the stack
	sw      $fp, 36($sp)		# Store value of $fp on the bottom of the stack
	addiu   $fp, $sp, 32		# Point $fp to the bottom of the available memory
	sw      $ra, 0($fp)		# Store the return address for the current subroutine
	sw      $a0, -4($fp)
	sw      $a1, -8($fp)
	sw      $a2, -12($fp)
	sw      $a3, -16($fp)
	li      $t0, 0
	sw      $t0, -20($fp)
	li      $t2, 0
	sw      $t2, -4($fp)
	b       $LKDHGF3
	nop     
$LKDHGF4:
	lw      $t0, -20($fp)
	lw      $t1, -4($fp)
	addu    $t2, $t0, $t1
	sw      $t2, -20($fp)
	lw      $t0, -4($fp)
	addiu   $t0, $t0, 1
	sw      $t0, -4($fp)
$LKDHGF3:
	lw      $t0, -4($fp)
	lui     $t9, %hi(glob2)
	lw      $t1, %lo(glob2)($t9)
	subu    $t2, $t0, $t1
	bltz    $t2, $LKDHGF5
	move    $t2, $0
	sw      $t2, -24($fp)
	b       $LKDHGF6
$LKDHGF5:
	li      $t2, 1
	sw      $t2, -24($fp)
$LKDHGF6:
	lw      $t5, -24($fp)
	bne     $0, $t5, $LKDHGF4
	nop     
	lw      $v0, -20($fp)
	lw      $ra, 0($fp)		# Load return address in register 31
	lw      $fp, 4($fp)		# Restore the value of the frame pointer
	addiu   $sp, $sp, 40		# Restore the value of the stack pointer
	j       $ra
	nop     

	.end fn

	.align	2
	.globl fncall
	.ent fncall
	.type fncall, @function
fncall:
	addiu   $sp, $sp, -40		# Allocate memory on the stack
	sw      $fp, 36($sp)		# Store value of $fp on the bottom of the stack
	addiu   $fp, $sp, 32		# Point $fp to the bottom of the available memory
	sw      $ra, 0($fp)		# Store the return address for the current subroutine
	sw      $a0, -4($fp)
	sw      $a1, -8($fp)
	sw      $a2, -12($fp)
	sw      $a3, -16($fp)
	addiu   $t0, $fp, -16
	sw      $t0, -20($fp)
	lw      $a0, -4($fp)
	lw      $a1, -8($fp)
	lw      $a2, -12($fp)
	lw      $a3, 32($fp)
	addiu   $sp, $sp, -36		# Allocate more memory
	lw      $t6, 24($fp)
	lw      $t7, 0($t6)
	sw      $t7, 16($sp)
	lw      $t0, 28($fp)
	sw      $t0, 20($sp)
	lw      $t7, -20($fp)
	sw      $t7, 24($sp)
	la      $t0, fn
	jalr    $t0
	nop     
	sw      $v0, -24($fp)
	lw      $v0, -24($fp)
	lw      $ra, 0($fp)		# Load return address in register 31
	lw      $fp, 4($fp)		# Restore the value of the frame pointer
	addiu   $sp, $sp, 76		# Restore the value of the stack pointer
	j       $ra
	nop     

	.end fncall

