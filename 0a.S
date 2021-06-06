	global myfunction

myfunction:
	mov	rcx,8	; 64 bits = 8 bytes
	add	byte [rdi],1	; adic. 1 ao byte menos signif. de [rdi]
.loop:
	inc	rdi		; incrementa rdi
	adc	byte [rdi],0	; adic. carry flag ao byte menos sign. de [rdi]
	loop	.loop		; se rcx <> 0, vá para .loop
	ret
