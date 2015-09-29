	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	push {r3, r4, lr}
	mov r3,r0
	
	cmp r0,#1
	it eq
	popeq {r3,r4,pc}
	
	cmp r0,#0
	itt le
	pople {r3,r4,pc}
	movle r0,#0
	
	sub r0,#1
	bl fibonacci
	
	mov r4,r0
	sub r0,r3,#2
	bl fibonacci

	add r0,r4,r0
	pop {r3,r4,pc}
	

	.size fibonacci, .-fibonacci
	.end
