.model small
.stack 100h
.data

.code
main proc
    mov ah, 01h
    int 21h
    mov bl, al
    mov ah, 02h
    ;for new line
    mov dl, 0AH
    int 21h
    ;for carriage return      
    mov dl, 0DH
    int 21h
    mov dl, bl
    int 21h             
    ;for terminating the program
    mov ah, 4ch
    int 21h