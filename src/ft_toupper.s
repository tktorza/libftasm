; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/11/05 19:39:39 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/09 13:18:13 by ddevico          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_toupper

section .text
_ft_toupper:
	mov rax, rdi
	cmp	rdi, 97
	jl return
	cmp	rdi, 122
	jg return

upper:
	sub rax, 32
	jmp return

return:
	ret
