 .data
     AH: .half 0x1234, 0x8899, 0x5555
     AW: .word 0x66667777, 0x00ABCDEF
 .text 
  main:
     la t0, AH
     lw t1, 0(t0) 
     lb t2, 1(t0) 
     lb t3, 2(t0) 
     lbu t4, 3(t0) 
     lw t5, 8(t0)
     ...