.model small
.stack 100h
.data    
.code
main proc  
    
    mov ax, -1
    cmp ax, 0
    jl IF
    
    IF:
    mov bx, -1
    
    mov ah, 4ch
    int 21h
    main endp
end main         
         