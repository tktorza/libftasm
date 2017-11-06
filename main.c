/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ddevico <ddevico@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/10/23 15:13:31 by ddevico           #+#    #+#             */
/*   Updated: 2017/11/06 11:42:03 by davydevico       ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "libftasm.h"

static void print_prog (char * str)
{
	printf("\n\033[33m > %s\033[0m\n\n", str);
};

static void test_ft_toupper (void)
{
	print_prog("ft_toupper");
	printf("%c --> %c\n", 'a', ft_toupper('a'));
}

static void test_ft_tolower (void)
{
	print_prog("ft_tolower");
	printf("%c --> %c\n", 'A', ft_tolower('A'));
}

static void test_ft_isalpha (void)
{
	print_prog("ft_isalpha");
	printf("%c %d\n", 'a', ft_isalpha('a'));
	printf("%c %d\n", 'A', ft_isalpha('A'));
	printf("%c %d\n", 'z', ft_isalpha('z'));
	printf("%c %d\n", 'Z', ft_isalpha('Z'));
	printf("%c %d\n", '@', ft_isalpha('@'));
	printf("%c %d\n", '4', ft_isalpha('4'));
	printf("%c %d\n", '_', ft_isalpha('_'));
	printf("%c %d\n", '!', ft_isalpha('!'));
	printf("%c %d\n", '[', ft_isalpha('['));
	printf("%c %d\n", '{', ft_isalpha('{'));
}

static void test_ft_isascii (void)
{
	print_prog("ft_isascii");
	printf("%c %d\n", 'a', ft_isascii('a'));
	printf("%c %d\n", 209, ft_isascii(209));
	printf("%c %d\n", 0, ft_isascii(0));
	printf("%c %d\n", 127, ft_isascii(127));
	printf("%c %d\n", 128, ft_isascii(128));
}

static void test_ft_isdigit (void)
{
	print_prog("ft_isdigit");
	printf("%c %d\n", '1', ft_isdigit('1'));
	printf("%c %d\n", '5', ft_isdigit('5'));
	printf("%c %d\n", '0', ft_isdigit('0'));
	printf("%c %d\n", '/', ft_isdigit('/'));
	printf("%c %d\n", ':', ft_isdigit(':'));
}

static void test_ft_isprint (void)
{
	print_prog("ft_isprint");
	printf("%c %d\n", 32, ft_isprint(32));
	printf("%c %d\n", 33, ft_isprint(33));
	printf("%c %d\n", 128, ft_isprint(128));
}

static void test_ft_bzero (void)
{
	print_prog("ft_bzero");
	char str[4] = "jui";

	printf("str[0] = %d\n", str[0]);
	printf("str[1] = %d\n", str[1]);
	printf("str[2] = %d\n", str[2]);
	printf("\n");
	ft_bzero(str, 3);
	printf("ft_bzero effectue\n");
	printf("str[0] = %d\n", str[0]);
	printf("str[1] = %d\n", str[1]);
	printf("str[2] = %d\n", str[2]);
	printf("test with null\n");
	ft_bzero(NULL, 5);
	printf("aucun segfault\n");
}

static void test_ft_strcat (void)
{
	print_prog("ft_strcat");
	char		toast[7] = "abc";
	char		chips[4] = "def";

	toast[3] = '\0';
	toast[6] = '\0';

	printf("string 1 = %s\n", toast);
	printf("string 2 = %s\n", chips);
	printf("  result = %s\n", ft_strcat(toast, chips));
}

static void test_ft_isalnum (void)
{
	print_prog("ft_isalnum");
	printf("%c %d\n", 'a', ft_isalnum('a'));
	printf("%c %d\n", 'A', ft_isalnum('A'));

	printf("%c %d\n", 'z', ft_isalnum('z'));
	printf("%c %d\n", 'Z', ft_isalnum('Z'));

	printf("%c %d\n", '@', ft_isalnum('@'));
	printf("%c %d\n", '4', ft_isalnum('4'));
	printf("%c %d\n", '_', ft_isalnum('_'));
	printf("%c %d\n", '!', ft_isalnum('!'));
	printf("%c %d\n", '[', ft_isalnum('['));
	printf("%c %d\n", '{', ft_isalnum('{'));

	printf("%c %d\n", '1', ft_isalnum('1'));
	printf("%c %d\n", '5', ft_isalnum('5'));
	printf("%c %d\n", '0', ft_isalnum('0'));
	printf("%c %d\n", '/', ft_isalnum('/'));
	printf("%c %d\n", ':', ft_isalnum(':'));
}

static void test_ft_puts (void)
{
	print_prog("ft_puts");
	ft_puts("foo bar baz");
}

int		main(void)
{
	test_ft_toupper();
	test_ft_tolower();
	test_ft_isalpha();
	test_ft_isascii();
	test_ft_isdigit();
	test_ft_isprint();
	test_ft_bzero();
	test_ft_strcat();
	test_ft_isalnum();
	test_ft_puts();
}
