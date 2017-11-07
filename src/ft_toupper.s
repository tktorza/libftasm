; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/11/05 19:39:39 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/07 18:08:07 by ddevico          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_toupper

section .text
_ft_toupper:
	mov rax, rdi
	cmp rdi, 96
	jl return
	cmp rdi, 123
	jg return

upper:
	sub rax, 16
	jmp return

return:
	ret
