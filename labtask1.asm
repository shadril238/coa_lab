;shadril238
.model small
.stack 100h
.data
.code
main proc
    mov ah, 02h  
    mov dl, '*'
    int 21h
    
    mov dl, 0AH
    int 21h     
    mov dl, 0DH
    int 21h 
      
    mov dl, '*'
    int 21h    
    int 21h
    
    mov dl, 0AH
    int 21h     
    mov dl, 0DH
    int 21h 
    
    mov dl, '*'
    int 21h    
    int 21h  
    int 21h   
    
    mov dl, 0AH
    int 21h     
    mov dl, 0DH
    int 21h 
    
    mov dl, '*'
    int 21h    
    int 21h  
    
    mov dl, 0AH
    int 21h     
    mov dl, 0DH
    int 21h 
    
    mov dl, '*'
    int 21h 
    
    mov dl, 0AH
    int 21h     
    mov dl, 0DH
    int 21h   
             
    ;for terminating the program
    mov ah, 4ch
    int 21h