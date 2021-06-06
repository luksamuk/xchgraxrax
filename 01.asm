	global	_start
	section	.text
_start:
	mov	rax,1
	mov	rdx,0
	mov	rcx,5
.loop:
	xadd	rax,rdx ; temp <- rax + rdx, rdx <- rax, rax <- temp
	loop	.loop	; Itera decrementando rcx até rcx = 0
