	global	_start
	section	.text
_start:
	mov	rax,13
	mov	rbx,17
	mov	rcx,rax
	xor	rcx,rbx
	ror	rcx,0xd

	ror	rax,0xd
	ror	rbx,0xd
	xor	rax,rbx

	cmp	rax,rcx
	int	0x80
