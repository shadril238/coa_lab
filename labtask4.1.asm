;Number Conversion
.model small
.stack 100h
.data
var db ?      
msg db "Number Conversion$"
msg1 db "Input: $"
msg2 db "Output: $"
nl equ 0AH
cr equ 0DH 
.code
main proc  
    mov ax, @data
    mov ds, ax 
    
    mov ah,9
    lea dx, msg
    int 21h 
    mov ah, 2    
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h
     
    
    mov ah,9
    lea dx, msg1
    int 21h 
    
    mov ah,1  
    int 21h
    mov var, al      
    
    mov ah, 2    
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h
     
    mov ah,9
    lea dx, msg2
    int 21h  
          
    mov ah,2  
    sub var,30h
    mov dl,var 
    int 21h 
    
    mov ah, 4ch
    int 21h
    main endp
end main         
          
