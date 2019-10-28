;Calculate the sum of 1 to n

org 100h
jmp main    ;Jump to the label: main

;A recursive subroutine to calculate the sum
;of numbers 1 to n (CX contains n)
;Ax should be 0 on the first call
;Results are returned in AX (Passed by register)
recur:
    or cx, cx   ;Is CX = 0?
    jz return   ;Yes, return
    add ax, cx  ;AX holds the sum
    dec cx      ;CX = CX-1
    call recur  ;Recursive call
    
return:
    ret         ;Return to main
    
main:
    mov cx, 6   ;Assume n=6
    mov ax, 0   ;Initialise AX to 0
    call recur  ;Call recursion sum
    int 20h     ;Terminate the program

ret