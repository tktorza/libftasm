; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/11/05 19:39:39 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/08 14:35:03 by davydevico       ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strlen

section .text
_ft_strlen:
	cmp	rdi, 0		;check if str is NULL
	je return
	mov al, 0		;if (rdi[x] == al)
	mov rcx, 0
	not rcx			;0101 0011 -> 1010 1100
	cld
	repne scasb		;if (rdi[x] != al) goto while

endwhile:
	not rcx
	dec rcx
	mov rax, rcx
	ret

return:
	ret
