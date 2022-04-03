

start:
    sta $c050       ; set graphics
    sta $c052       ; no mixed mode
    sta $c057       ; set hires

    ldx #0
loop:
    inc $2000,x     ; increment hgr byte
    inx
    bne loop
    lda loop+2     ; increment hi byte of instruction
    clc
    adc #1
    sta loop+2     ; self-modifying code
    cmp #$40
    bne loop
    lda #$20        ; reset to $2000
    sta loop+2
    jmp start
