.data
group: .word 126
step:  .word 3

.text
main:
    li a7, 5
    ecall
    la t0, group
    lw t1, 0(t0)
    la t0, step
    lw t2, 0(t0)
    mv t3, a0
    mv t4, t1
    ble t3, t4, loop
    mv t3, t1
    mv t4, a0
loop:
    bgt t3, t4, end
    mv a0, t3
    li a7, 1
    ecall
    li a0, 10
    li a7, 11
    ecall
    add t3, t3, t2
    j loop
end:
    li a7, 10
    ecall
