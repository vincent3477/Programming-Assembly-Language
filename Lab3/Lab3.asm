.macro exit				#
	li a7, 10			# 
	ecall				#
	.end_macro			#
					#
.macro print_str(%str1)			# Source of this code: Sample RARS file as provided in
					# CSE_12 Class Google Drive Folder: 'multiply.asm'
	li a7,4				#
	la a0 %str1			#
	ecall				#
	.end_macro			#

.data
	#t0, being the user input.
	prompt_1: .asciz "Enter the height of the pattern (must be greater than 0):"
	out_1: .asciz "Invalid Entry!\n"
	newline: .asciz "\n"
	stars_and_asterisks: .asciz "$*"
	last: .asciz "$"
.text

init:
	print_str(prompt_1)
	li a7, 5
	ecall
	addi t0, a0,0
	
loop_start:
	bgtz t0, true_condition
loop_body:
	print_str(out_1)
	print_str(prompt_1)
	li a7, 5
	ecall
	addi t0, a0,0		
update:
	j loop_start	
true_condition: 
	nop
	
#start of making the stars and astrisks.

#t1 = number of lines
#t2 = the odd number (as printed at the end of each line of output.)

init_outer_loop:
	li t1,0
	li t2,1
check_line_counter_equal_user_input:
	beq t1, t0, program_finish
		
check_line_counter_equal_zero: #THIS WILL ONLY HAPPEN ONCE!
	beq t1, zero, update_lines
star_loop_body:

init_inner_loop:
	li t3,0
inner_loop_condition:
	beq t3, t1, update_lines #this checks if the LINE COUNTER is EQUAL TO the number of elements BEFORE THE LAST '$' SIGN.
print_elements:					#
	print_str(stars_and_asterisks)		# this will print the the '$*' until the t3(number of the elements) = the line counter(t1).
	addi t3, t3, 1				#
	j inner_loop_condition			#
update_lines:
	print_str(last)
	li a7, 1
	addi a0, t2, 0
	ecall
	print_str(newline)
	addi t1, t1, 1				#increment the line counter (t1) and the odd number (t2).
	addi t2, t2, 2
	j check_line_counter_equal_user_input		
program_finish:
	exit

	
	
	

	
	
	
		
		
	
	
	


