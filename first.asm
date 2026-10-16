.386
.model flat, stdcall
INCLUDE Irvine32.inc
.data
    msg1 BYTE "EAX is greater", 0
    msg2 BYTE "EBX is greater or equal", 0
.code
    main PROC
        mov eax, 30
        mov ebx, 20
        cmp eax, ebx
        jg IF_PART
        ; ELSE
        mov edx, OFFSET msg2
        call WriteString
        jmp DONE
        IF_PART:
        mov edx, OFFSET msg1
        call WriteString
        DONE:
        call Crlf
    exit
    main ENDP
    END main