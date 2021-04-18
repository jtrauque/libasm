
#include <stdio.h>
#include <string.h>

int		ft_strlen(char *str);
char	*ft_strcpy(char *dest, const char *str);
int		ft_strcmp(char *str, char *dst);

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

int		main()
{
	char *str = "Hello World";
	char *dst = "Hcllo World";
	int ret;

	ret = ft_strcmp(str, dst);
	printf("%d vs %d\n", ret, strcmp(str, dst));
}
