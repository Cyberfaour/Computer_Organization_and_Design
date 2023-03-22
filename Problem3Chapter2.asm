	add $t0,$zero,$zero
loop:	beq $a0,$zero,end
	addi $t0,$t0,1
	addi $a0,$a0,-1
	j loop
end:	nop