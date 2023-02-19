.model small
.stack 100h
.data   
cnt db 26
nl equ 0AH
cr equ 0DH  
.code
main proc  
    mov ax, @data
    mov ds, ax 
    
    mov bl, 41h  
    jmp PRINT
    
    PRINT:
    mov ah,2 
    mov dl, bl
    int 21h 
    
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h
    
    inc bl
    dec cnt   
    cmp cnt, 0
    jnz PRINT
    
    mov ah, 4ch
    int 21h
    main endp
end main         
         