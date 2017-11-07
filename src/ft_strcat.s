; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcat.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/13 23:39:14 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/07 17:56:28 by ddevico          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global	_ft_strcat

section .text
_ft_strcat:
	push rbp
	mov	rbp, rsp
	mov	rbx, rdi
	mov	rcx, rsi

loop1:
	cmp	byte [rbx], 0
	je	loop2
	inc	rbx
	jmp	loop1

loop2:
	cmp	byte [rcx], 0
	je	end
	mov	al, byte [rcx]
	mov	byte [rbx], al
	inc	rcx
	inc	rbx
	jmp	loop2

end:
	mov	rax, rdi
	leave
	ret
