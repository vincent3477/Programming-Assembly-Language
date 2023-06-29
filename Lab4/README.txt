Lab 4
Name: Vincent Siu
Year: 2022
Quarter: Spring
CRUZID: vsiu2
Lab no. and description: Lab 4. The purpose of this lab was to get suited to the usage of different register based on what they are used for and and the RISC-V 
register calling conventions. In addition, when writing functions, we had to be careful of each of the register's data as it was very volatile.
    lab4_part1.asm: This file has a function, which is linked to the lab4_v2-1.asm, which will convert cartesian coordinates (user input) to a base address 
    in order the points to be correctly displayed to a graph.
    lab4_part2.asm: This file has a function, which is linked to the lab4_v2-1.asm, which will move the point in the graph depending on the user's keyboard input.
    When a user enter the w,a,s,d,q,e,z,c keys the x/y (in which both values are stored in a register) is incremented or decremented depending. Then after the move 
    is completed, it will jump back to the main program to continue.
    lab4_v2-1.asm: is the main program, which also links the two functions to this one. It also links the keyboard strokes to appropriate moves that would be made 
    on the cartesian graph. This program takes 2 integer inputs (one for x and one for y) and then will go on to what the whole program is intended to do, draw the pixel
    and respond to any keystrokes to make the appropriate moves (a loop) until the user wants to exit the program.