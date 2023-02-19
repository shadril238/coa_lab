;Character Conversion
.model small
.stack 100h
.data
var db ?      
msg1 db "Enter a lower case letter: $"
msg2 db "In upper letter it is: $"
nl equ 0AH
cr equ 0DH 
.code
main proc  
    mov ax, @data
    mov ds, ax  
    
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
    sub var,20h
    mov dl,var 
    int 21h 
    
    mov ah, 4ch
    int 21h
    main endp
end main         
          
