.model small
.stack 100h
.data  

msg1 db "Name: $" 
msg2 db "ID: $"  
msg3 db "Email: $"  
msg4 db "Address: $"   

var1 db "Shadril Hassan Shifat$"
var2 db "20-42451-1$"
var3 db "shadrilhassan@outlook.com$"
var4 db "Bashundhara R/A, Dhaka$"

nl equ 0AH
cr equ 0DH 
.code
main proc  
    mov ax, @data
    mov ds, ax
    
    mov ah,9
    lea dx, msg1
    int 21h 
    lea dx, var1
    int 21h
    
    mov ah,2
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h   
    
    mov ah,9
    lea dx, msg2
    int 21h 
    lea dx, var2
    int 21h
    
    mov ah,2
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h 
    
    mov ah,9
    lea dx, msg3
    int 21h 
    lea dx, var3
    int 21h
    
    mov ah,2
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h
    
    mov ah,9
    lea dx, msg4
    int 21h 
    lea dx, var4
    int 21h
    
    mov ah,2
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h
      
    
    
    mov ah, 4ch
    int 21h
    main endp
end main   