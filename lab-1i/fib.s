	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	push {r3,r4,lr}
	cmp r0,#1
	it eq
	popeq {r3,r4,pc}

	cmp r0,#0
	itt le
	movle r0,#0
	pople {r3,r4,pc}
	
	mov r4,r0
	mov r0,#2
	mov r1,#0
	mov r2,#1
.loop:	add r3,r1,r2
	mov r1,r2
	mov r2,r3
	adds r0,#1
	cmp r0,r4
	ble .loop
	mov r0,r2
	pop {r3,r4,pc}
	
	.size fibonacci, .-fibonacci
	.end
