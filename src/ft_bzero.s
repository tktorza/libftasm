; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/04/13 19:38:52 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/09 10:42:01 by ddevico          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

section .text
global _ft_bzero

_ft_bzero:
	cmp rdi, 0
	jz end
	mov rbx, rdi
	mov rax, rsi

bzero:
	cmp rax, 0
	jle end
	mov byte[rbx], 0
	inc rbx
	dec rax
	jmp bzero

end:
	ret
