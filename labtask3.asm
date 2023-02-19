.model small
.stack 100h
.data  

a1 db ?
a2 db ?
a3 db ?
a4 db ?
  
msg1 db 'Enter 4 alphabet: $'
msg2 db "Output: $"
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
    add a1, al
    
    mov ah,2
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h  
    
    mov ah,1
    int 21h
    add a2, al
    
    mov ah,2
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h      
    
    mov ah,1
    int 21h
    add a3, al   
    
    mov ah,2
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h
    
    mov ah,1
    int 21h
    add a4, al   
    
    mov ah,2
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h 
    
    mov ah,9
    lea dx, msg2
    int 21h  
    
    mov ah,2
    mov dl, a1
    int 21h
    mov dl,a2
    int 21h
    mov dl,a3
    int 21h  
    mov dl,a4
    int 21h 
    
    mov ah, 4ch
    int 21h
    main endp
end main         
          
