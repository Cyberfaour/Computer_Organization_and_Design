# Computer_Organization_and_Design
#MIPS Programs
This repository contains two MIPS programs that perform the following operations:

## Program 1:
assembly code implements a loop that counts the number of 1's in a given binary number stored in register $a0
This MIPS assembly code is a program that counts the number of 1's in a given binary number stored in register $a0. Here's a step-by-step breakdown of the code:

add $v0, $zero, $zero: This instruction initializes the register $v0 to zero, which will be used as a counter for the number of 1's.

addi $t1, $zero, 1: This instruction loads a mask value of 1 into the register $t1, which will be used to check each bit in the binary number.

loop: and $t2, $a0, $t1: This instruction performs a bitwise AND operation between the binary number in register $a0 and the mask value in register $t1, storing the result in register $t2.

bne $t2, $zero, itsaone: This instruction checks if the result of the AND operation in step 3 is not equal to zero. If it is not equal to zero, it means there is a 1 in the current bit, and the program jumps to the itsaone label.

sll $t1, $t1, 1: This instruction shifts the mask value in register $t1 left by one bit, preparing to check the next bit in the binary number.

continue: slt $t2, $t1, $zero: This instruction checks if the mask value in register $t1 is less than zero. If it is, the program jumps to the end label.

bne $t2, $zero, end: This instruction checks if the result of the comparison in step 6 is not equal to zero. If it is not equal to zero, the program jumps to the end label.

j loop: This instruction jumps back to the beginning of the loop to check the next bit in the binary number.

itsaone: sll $t1, $t1, 1: This instruction shifts the mask value in register $t1 left by one bit.

`and $t2, $a0,
## Program 2:
MIPS assembly code is a loop that initializes the register $t0 to zero and then counts down from the value in register $a0 by 1 until it reaches zero. Here's a step-by-step breakdown of the code:

add $t0, $zero, $zero: This instruction initializes the register $t0 to zero.

loop: beq $a0, $zero, end: This instruction checks if the value in register $a0 is equal to zero. If it is, the program jumps to the end label using the branch on equal (beq) instruction.

addi $t0, $t0, 1: This instruction adds 1 to the value in register $t0.

addi $a0, $a0, -1: This instruction subtracts 1 from the value in register $a0.

j loop: This instruction jumps back to the beginning of the loop.

end: nop: This instruction serves as a placeholder for the end label.

The final result is that the register $t0 will contain the number of times the loop ran, which is equal to the original value of $a0.

## Installation
To run these programs, you need to have a MIPS simulator or emulator installed on your computer. One popular MIPS emulator is MARS.

## Usage
Open the MIPS emulator on your computer.
Open the MIPS program file that you want to run.
Assemble the program by clicking on the Assemble button.
Run the program by clicking on the Run button.
Follow the on-screen instructions to input any necessary parameters.
View the output in the console window.
