
#Note that this file only contains a function xyCoordinatesToAddress
#As such, this function should work independent of any caller funmction which calls it
#When using regisetrs, you HAVE to make sure they follow the register usage convention in RISC-V as discussed in lectures.
#Else, your function can potentially fail when used by the autograder and in such a context, you will receive a 0 score for this part

xyCoordinatesToAddress:
	#(x,y) in (a0,a1) arguments
	#a2 argument contains base address
	#returns pixel address in a0
	
	#make sure to return to calling function after putting correct value in a0!
	#Enter code below!DO NOT MODIFY ANYTHING BEFORE THIS COMMENT LINE!
	
	#translate the corrdinates to the base address using some equation.
	#store the values in the register a0.
	#dimentions should be 32 * 32
	#a0, a1 serves as function arguments and RETURN VALUES.
	#a2 - a7 serves as the function arguments.
	#a0 is x coordinate (NOT AN ADDRESS)
	#a1 is y coordinate (NOT AN ADDRESS)
	#a2 is the base address, which MUST BE ADDED WITH THE ADDRESS OF X AND Y COORDINATES AND RETURN TO A0
	
	addi sp, sp, -4
	sw a3, 0(sp)
	
	init_X:
	li a3, 0 # used to track the number of interatiojns
	loop_condition_X:
	beq a3, a0, true_condition_X
	loop_body_X:
	addi a2, a2, 4
	update_X:
	addi a3, a3, 1
	j loop_condition_X
	true_condition_X:
	nop
	
	init_Y:
	li a3, 0 # used to track the number of interatiojns
	loop_condition_Y:
	beq a3, a1, true_condition_Y
	loop_body_Y:
	addi a2, a2, 128
	update_Y:
	addi a3, a3, 1
	j loop_condition_Y
	true_condition_Y:
	nop
	
	lw a3, 0(sp)
	addi sp, sp, 4
	 
	li a0, 0
	addi a0, a2, 0
 	
 	ret
	
	
	
	
	
	
		
					
