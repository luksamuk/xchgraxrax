	global	_start
	section	.text
_start:
	; menor inteiro negativo - 1
	mov	rax,-9223372036854775808
	mov	rdx,-1	; rdx = -1
	add	rax,rdx
	rcr	rax,1
	
	; maior inteiro positivo + 1
	mov	rax,9223372036854775807
	mov	rdx,1	; rdx = 1
	add	rax,rdx
	rcr	rax,1
	int	0x80
