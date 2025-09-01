# Hang Hang (NU ID: 002148205)
# HW4 Q4: Remove spaces from input string

.data 
    s: .space 100 	 	   # 99 chars + terminator
    prompt: .asciz "Enter string: "
    result: .asciz "New string: "			

.text
.globl main
main:
###################################################################### read string (syscall uses a0/a1/a7)
    la a0, prompt          # a0 = &"Enter string: "                   
    li a7, 4               # PrintString
    ecall

    la a0, s                # a0 = &s[0]  (destination buffer)
    li a1, 100              # a1=buffer capacity
    li a7, 8     	    # ReadString
    ecall
###################################################################### remove spaces
    la s0, s		   # s0=base addr of s (persists across loop)
    li s1, 0	           # s1=old_index
    li s2, 0 		   # s2=new_index

###################################################################### loop body
loop:
    # c = s[old_index];
    add t1, s0, s1         # t1 = s + old_index   (compute address)
    lbu t0, 0(t1)          # t0 = byte at that address (c = s[old_index])
    addi s1, s1, 1         # old_index++
    
    beq t0, x0, done       # if c == '\0', exit loop

    li t1, ' '             # Load space character into t1
    beq t0, t1, loop       # if c == ' ', skip copying
    # Copy character c to s[new_index]
    add t1, s0, s2         # t1 = s + new_index
    sb t0, 0(t1)           # s[new_index] = c
    addi s2, s2, 1         # new_index++

    j loop                 # Repeat loop

###################################################################### result print
done:
    add  t1, s0, s2        # t1 = s + new_index
    sb   x0, 0(t1)         # s[new_index] = '\0'
  	
    # Display the result 
    la a0, result	   # address of "New string: "
    li a7, 4
    ecall
    
    li a7, 4              
    la a0, s               # address of resulting string s
    ecall
         
    li a7, 10
    ecall              
