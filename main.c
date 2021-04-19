
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
int		ft_strlen(char *str);
char	*ft_strcpy(char *dest, const char *str);
int		ft_strcmp(char *str, char *dst);
int		ft_write(int fd, const void* buf, size_t count);
int		ft_read(int fd, void* buf, size_t count);


void strcmp_test(char *s, char *s2) 
{ 
	char *str = s; 
	char *dst = s2; 
	int ret_true = strcmp(str, dst); 
	int ret = ft_strcmp(str, dst); 
	if (ret != ret_true) 
	{ 
		printf("%s vs %s\n", str, dst); 
		printf("%d vs %d\n", ret, ret_true); 
	} 
	else 
		printf("✔\n"); 
}

int my_cmp(char *s, char*s2, int len) {
	int i = 0;
	while (i< len) {
		if (s[i] != s2[i]) {
			printf("Err at offset %d: %c(%d) vs %c(%d)\n", i, s[i],s[i],s2[i],s2[i]);
		}
		++i;
	}
	return 0;
}

#include<stdlib.h>
void strcpy_test(char *str)
{
	char dst[250];
	char dst2[250];
	int ret;
	memset(dst, 'A', 250);
	memset(dst2, 'A', 250);
	strcpy(dst2, str);
	char *str_ret=ft_strcpy(dst, str);
	/* printf("len is %d, delta ptr is %d\n", strlen(str), str_ret - dst); */
	ret = memcmp(dst, dst2, 250);
	if (ret != 0)
	{
		printf("%d- %s vs %s\n", ret, dst, dst2);
	}
	else
		printf("✔\n");
}

void	write_test(fd, str, len) 
{ 
	int ret_true = write(fd, str, len); 
	int ret = ft_write(fd, str, len); 
	if (ret != ret_true) 
	{ 
		printf("%d vs %d\n", ret, ret_true); 
		printf("Error code: %d\n", errno);  return ;
	} 
	else 
		printf("✔\n"); 
}

#define read_test(fd, str, len) \
{ \
	int ret_true = read(fd, str, len); \
	int ret = ft_read(fd, str, len); \
	if (ret != ret_true) \
	{ \
		printf("%d vs %d\n", ret, ret_true); \
		printf("Error code: %d\n", errno);  return(1);\
	} \
	else \
		printf("✔\n"); \
}

/* int		main() */
/* { */
/* 	char *str = "Hello World"; */
/* 	/1* char *str = ""; *1/ */
/* 	int len; */

/* 	len = ft_strlen(str); */
/* 	printf("%d vs %zu\n", len, strlen(str)); */
/* } */

int		main()
{
	printf("----------STRCPY---------\n");
	strcpy_test("lorem\tipsum\tdolor\nsit\nnamet\n");
	strcpy_test("Hello World!");
	strcpy_test("testing function\0123456789");
	strcpy_test("lorem\tipsum\tdolor\nsit\nnamet\n");
	strcpy_test("");
	strcpy_test("     ");
	strcpy_test("\x01\x02\x03\x04\x05\x06\x07\x08\x09\x0b\x0c\x0d\x0e\x0f");
	printf("----------STRCMP---------\n");
	strcmp_test("Hel", "Hello");
	strcmp_test("Hello", "Hel");
	strcmp_test("Hello", "Hello");
	strcmp_test("Hello", "Hcllo");
	strcmp_test("Hcllo", "Hello");
	strcmp_test("Hello", "");
	strcmp_test("", "Hello");
	strcmp_test("", "");
	strcmp_test("\xff\xff", "\xff");
	printf("----------WRITE---------\n");
	write_test(1, "Hello World\n", 12);
	write_test(1, "Hello World\n", 6);
	write_test(1, "Hello World\n", 14);
	write_test(1, "Hello World\n", 0);
	write_test(1, "", 0);
	write_test(1, "", 2);
	write_test(2, "erreur", 6);
	write_test(4, "erreur", 6);

}

/* int		main() */
/* { */
/* 	/1* char *buff; *1/ */
/* 	/1* read_test(1, buff, 1024); *1/ */
/* } */
