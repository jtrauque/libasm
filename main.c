
#include <stdio.h>
#include <string.h>
#include <unistd.h>

#define strcmp_test(s, s2) \
{ \
	char *str = s; \
	char *dst = s2; \
	int ret_true = strcmp(str, dst); \
	int ret = ft_strcmp(str, dst); \
	if (ret != ret_true) \
	{ \
		printf("%s vs %s\n", str, dst); \
		printf("%d vs %d\n", ret, ret_true); \
	} \
	else \
		printf("✔\n"); \
}

#define write_test(fd, str, len) \
{ \
	int ret_true = write(fd, str, len); \
	int ret = ft_write(fd, str, len); \
	if (ret != ret_true) \
	{ \
		printf("%d vs %d\n", ret, ret_true); \
	} \
	else \
		printf("✔\n"); \
}
int		ft_strlen(char *str);
char	*ft_strcpy(char *dest, const char *str);
int		ft_strcmp(char *str, char *dst);
int		ft_write(int fd, const void* buf, size_t count);

/* int		main() */
/* { */
/* 	char *str = "Hello World"; */
/* 	int len; */

/* 	len = ft_strlen(str); */
/* 	printf("%d vs %zu\n", len, strlen(str)); */
/* } */

/* int		main() */
/* { */
/* 	char *str = "Hello World"; */
/* 	char *dst; */

/* 	ft_strcpy(dst, str); */
/* 	printf("%s\n", dst); */
/* } */

/* int		main() */
/* { */
/* 	strcmp_test("Hel", "Hello"); */
/* 	strcmp_test("Hello", "Hel"); */
/* 	strcmp_test("Hello", "Hello"); */
/* 	strcmp_test("Hello", "Hcllo"); */
/* 	strcmp_test("Hcllo", "Hello"); */
/* 	strcmp_test("Hello", ""); */
/* 	strcmp_test("", "Hello"); */
/* 	strcmp_test("", ""); */
/* } */

int		main()
{
	write_test(1, "Hello World\n", 12);
	write_test(1, "Hello World\n", 6);
	write_test(1, "Hello World\n", 14);
	write_test(1, "Hello World\n", 0);
	write_test(1, "", 0);
	write_test(1, "", 2);
	write_test(2, "erreur", 6);
}
