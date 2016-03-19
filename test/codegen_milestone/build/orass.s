	.text   
	.align	2
	.globl f
	.ent f
	.type f, @function
f:
	addiu   $sp, $sp, -24		# Allocate memory on the stack
	sw      $fp, 20($sp)		# Store value of fp on the bottom of the stack
	addiu   $fp, $sp, 16		# Modify fp to point to the the bottom of the available stack memory
	sw      $ra, 0($fp)		# Store the return address for the current subroutine
	sw      $a0, -4($fp)
	sw      $a1, -8($fp)
	sw      $a2, -12($fp)
	addiu   $sp, $sp, -28		# Allocate more memory
	sw      $a3, -16($fp)
	lw      $t0, -12($fp)
	lw      $t1, -8($fp)
	or      $t0, $t0, $t1
	sw      $t0, -12($fp)
	lw      $t0, -12($fp)
	lw      $t1, 24($fp)
	or      $t0, $t0, $t1
	sw      $t0, -12($fp)
	lw      $t0, -12($fp)
	lw      $t1, 28($fp)
	or      $t0, $t0, $t1
	sw      $t0, -12($fp)
	lw      $t0, -12($fp)
	lw      $t1, 32($fp)
	or      $t0, $t0, $t1
	sw      $t0, -12($fp)
	lw      $v0, -12($fp)
	lw      $ra, 0($fp)		# Load return address in register 31
	lw      $fp, 4($fp)		# Restore the value of the frame pointer
	addiu   $sp, $sp, 52		# Restore the value of the stack pointer
	j       $ra
	nop     

	.end f
