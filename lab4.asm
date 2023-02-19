.model small
.stack 100h
.data  
msg1 db "Hello World$"
msg2 db "Bye World$"
nl equ 0AH
cr equ 0DH 
.code
main proc  
    mov ax, @data
    mov ds, ax   
    mov cx,15 
    
    PRINT:
    mov ah,9
    lea dx, msg1
    int 21h    
    mov ah,2
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h 
    dec cx   
    jnz PRINT
    
    mov ah,2
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h
    
    mov ah,9
    lea dx, msg2
    int 21h
    
    mov ah, 4ch
    int 21h
    main endp
end main         
          
