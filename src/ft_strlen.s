; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2017/11/05 19:39:39 by ddevico           #+#    #+#              ;
;    Updated: 2017/11/07 17:08:02 by ddevico          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global	_ft_strlen

section	.text

_ft_strlen:
	mov	rax, 0
	cmp	rdi, 0
	je	return

len:
	cmp	byte[rdi], 0
	je	return
	inc	rdi
	inc	rax
	jmp	len

return:
	ret
