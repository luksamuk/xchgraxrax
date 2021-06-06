	global	_start
	section	.text
_start:
	; menor inteiro negativo - 1
	mov	rax,-9223372036854775808
	mov	rdx,-1	; rdx = -1
	add	rax,rdx
	rcr	rax,1	; rotaciona rax + carry como LSB p/ a direita
	
	; maior inteiro positivo + 1
	mov	rax,9223372036854775807
	mov	rdx,1	; rdx = 1
	add	rax,rdx
	rcr	rax,1	; rotaciona rax + carry como LSB p/ a direita
	int	0x80
