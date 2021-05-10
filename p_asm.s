TEXT main·GetBackRbp+0(SB), $0-8
    MOVQ   a+0(FP),BX
    LEAQ   (BP),AX
    XORQ   CX,CX
    CMPQ   CX,BX
    JGE    4(PC)
    MOVQ   (AX),AX
    DECQ   BX
    JMP    -4(PC)
    MOVQ   AX,res+8(FP)
    RET

TEXT main·SetRbp+0(SB), $0-8
    MOVQ   BP,AX
    MOVQ   a+0(FP),BP
    MOVQ   AX,res+0(FP)
    RET

TEXT main·BackRbp+0(SB), $0-8
    MOVQ  a+0(FP),BP
    RET



