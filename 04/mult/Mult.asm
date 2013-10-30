@R0
D=M
@counter
M = D //moves the value of RO into D and them into the M of counter
@0
D = A
@R2
M = D //initialized value of R2 to zero by putting zero in to D and then into M of R2 (not sure if I need this)
(LOOP)
    @counter
    D = M //sets the value of counter in D for the next instruction to evaluate
    @END
    D; JEQ //go to end if counter is zero
    @R1
    D=M // stores value of R1 into D
    @R2
    M=M+D //adds D into whatever is already in R2
    @counter
    M=M-1 //subtracts 1 from the counter
    @LOOP
    0;JMP //always jumps back up to loop
(END)
    @END
    0;JMP //infinite loop