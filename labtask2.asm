;LabTask-2: Take 3 user input and show the outputs in different line.
;shadril238

.model small
.stack 100h
.data  

a db ? 
b db ?
c db ?
                            
inputMsg dw "Give your input: $" 
outputMsg dw "Outputs are : $"   

nl equ 0AH
cr equ 0DH    

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah,9
    lea dx, inputMsg
    int 21h
    
    mov ah,1 
    int 21h  
    mov a, al  
    mov ah,2
    mov dl,20h
    int 21h   
    
    mov ah,1
    int 21h  
    mov b, al 
    mov ah,2
    mov dl,20h
    int 21h 
    
    mov ah,1
    int 21h  
    mov c, al    
    mov ah,2
    mov dl,20h
    int 21h  
    
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h
    
    mov ah, 9
    lea dx, outputMsg
    int 21h  
    
    mov ah, 2
    mov dl, a
    int 21h  
    
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h
    
    mov dl, b
    int 21h
    
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h
    
    mov dl, c
    int 21h
    
    mov dl, nl
    int 21h
    mov dl, cr
    int 21h
    
    mov ah, 4ch
    int 21h
    main endp
end main