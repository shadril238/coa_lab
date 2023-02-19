.model small
.stack 100h
.data 
msg1 db "o$"
msg2 db "e$"   
.code
main proc  
    mov ax, @data
    mov ds, ax 
   
    mov al,1
    
    cmp al,1
    je PRINT1
    cmp al,3  
    je PRINT1
    
    cmp al,2
    je PRINT2
    cmp al,4
    je PRINT2
    
    PRINT1:
    mov ah,9
    lea dx, msg1
    int 21h  
    jmp END
    
    PRINT2:
    mov ah,9
    lea dx, msg2
    int 21h 
    jmp END    
    
    END:
    mov ah, 4ch
    int 21h
    main endp
end main