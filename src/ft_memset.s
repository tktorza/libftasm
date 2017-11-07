; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/13 23:39:14 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/07 21:51:52 by davydevico       ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
global _ft_memset

_ft_memset:
	push rbx
	mov rbx, rdi	;save void *s addr
	cmp	rdx, 0		;cmp size to 0
	jle	return		;if lower or egual return
	cmp rdi, byte 0 ;check if ptr is NULL
	je return
	mov	rax, rsi	;cp int in rax for stosb can use it
	mov rcx, rdx ;copy size in cmpt for stosb
	cld
	rep stosb ;while rcx(size(rdx)) > 0 copy byte (rax(int c(rsi))) in rdi
	jmp return

return:
	mov rax, rbx
	pop rbx
	ret
