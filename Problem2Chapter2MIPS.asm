	add 	$v0,$zero,$zero 	#loads zero into $v0
	addi 	$t1,$zero,1 		#loads mask to 1
loop:
	and 	$t2,$a0,$t1		#check if there's is a 1
	bne	$t2,$zero, itsaone 	#branch to check for a zero (true)
	sll 	$t1,$t1,1 		#shift the mask left one time
	
continue:
	 slt	$t2,$t1,$zero
	 bne	$t2,$zero,end
	 j	loop	
itsaone: 
	 sll 	$t1,$t1,1 		#shift the mask left one time
	 and 	$t2,$a0,$t1		#check if there's is a 1
	 bne 	$t2,$zero,continue	#False, branch to itsaone
	 addi 	$v0,$v0,1		#increment counter v0
	 j 	loop		        #if true end operation
	 

	 
end: nop
