.data
n:     .word 3
array: .space 76

.text
main:
    la t0, n
    lw t1, 0(t0)
    addi t1, t1, 16
    la t2, array
    li t3, 0
read:
    bge t3, t1, output
    li a7, 5
    ecall
    beqz a0, output
    slli t4, t3, 2
    add t4, t2, t4
    sw a0, 0(t4)
    addi t3, t3, 1
    j read
output:
    mv a0, t3
    li a7, 1
    ecall
    li a0, 10
    li a7, 11
    ecall
    li t5, 0
print:
    bge t5, t3, end
    slli t4, t5, 2
    add t4, t2, t4
    lw a0, 0(t4)
    li a7, 1
    ecall
    li a0, 32
    li a7, 11
    ecall
    addi t5, t5, 1
    j print
end:
    li a0, 10
    li a7, 11
    ecall
    li a7, 10
    ecall
