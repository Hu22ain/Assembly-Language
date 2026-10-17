.386
.model flat, stdcall
INCLUDE Irvine32.inc

.data
    gradeA byte "Grade A", 0
    gradeB byte "Grade B", 0
    gradeC byte "Grade C", 0
    gradeD byte "Grade D", 0
    gradeF byte "Grade F", 0

.code
    main PROC
    cmp eax, 90
    jle Check_b:
        mov edx, offset gradeA
        call writeString 
        jmp done

    Check_B:
        cmp eax, 80
        jle Check_C
        mov edx, offset gradeB
        call writeString
        jmp done
    Check_C:
        cmp eax, 70
        jle Check_D
        mov edx, offset gradeC
        call writeString
        jmp done
    Check_D:
        cmp eax, 60
        jle Check_F
        mov edx, offset gradeD
        call writeString
        jmp done
    Check_F:
        mov edx, offset gradeF  