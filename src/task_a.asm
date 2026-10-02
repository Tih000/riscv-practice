.data
student: .word 3

.text
main:
    li a7, 5
    ecall
    la t0, student
    lw t1, 0(t0)
    li t2, 0
    bne a0, t1, print
    li t2, 1
print:
    mv a0, t2
    li a7, 1
    ecall
    li a0, 10
    li a7, 11
    ecall
    li a7, 10
    ecall
