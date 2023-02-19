.model small
.stack 100h
.data    
.code
main proc  
    
    mov ax, 3
    cmp ax, 0
    jl IF 
    jge ELSE
    
    IF:
    mov ah, 0FFh 
    
    ELSE:
    mov ah, 30h
    
    mov ah, 4ch
    int 21h
    main endp
end main   