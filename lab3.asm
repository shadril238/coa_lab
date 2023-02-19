.model small
.stack 100h
.data  

sm db 0
  
msg1 db "Enter 3 numbers. $" 
msg2 db "First input is: $"  
msg3 db "Second input is: $"  
msg4 db "Third input is: $"  
msg5 db "The summation is: $"
nl equ 0AH
cr equ 0DH 
.code
main proc  
    mov ax, @data
    mov ds, ax
    
    mov ah,9
    lea dx, msg1
    int 21h  
      
    mov ah,2
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h  
    
    mov ah,9
    lea dx, msg2
    int 21h 
    
    mov ah,1 
    int 21h
    add sm, al
      
    mov ah,2
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h
    
    mov ah,9
    lea dx, msg3
    int 21h 
    
    mov ah,1 
    int 21h
    add sm, al
      
    mov ah,2
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h 
           
    mov ah,9
    lea dx, msg4
    int 21h 
    
    mov ah,1 
    int 21h
    add sm, al
      
    mov ah,2
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h
          
    mov ah,9
    lea dx, msg5
    int 21h
    
    mov ah,2  
    sub sm,60h
    mov dl, sm
    int 21h
    
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h  
    
    mov ah, 4ch
    int 21h
    main endp
end main         
          
