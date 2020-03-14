
#include <string.h>
// # include <unistd.h>
// #include <fcntl.h>
// #include <stdlib.h>
# include "libasm.h"

int main()
{
	char s[30];

	printf("ft_strlen = %zu\n", ft_strlen(""));
	printf("ft_strlen = %zu\n", ft_strlen("Hello World"));
	printf("ft_strlen = %zu\n", ft_strlen("Hii bro !"));
	printf("ft_strcpy = %s\n", ft_strcpy(s, ""));
	printf("ft_strcpy = %s\n", ft_strcpy(s ,"Hello World"));
	printf("ft_strcpy = %s\n", ft_strcpy(s, "Hii bro !"));
	printf("ft_strcmp = %d\n", ft_strcmp("hello", ""));
	printf("ft_strcmp = %d\n", ft_strcmp("test" ,"Hello World"));
	printf("ft_strcmp = %d\n", ft_strcmp("Hii bro !", "Hii bro !"));
	printf("ft_write = %zd\n", ft_write(1 , "", 1));
	printf("ft_write = %zd\n", ft_write(1 , "Hello World", 8));
	printf("ft_write = %zd\n", ft_write(1 , "Goooooood !\n", 5));
	printf("ft_read = %zd\n", ft_read(0 , s, 20));
	printf("ft_read = %zd\n", ft_read(0 , s, 8));
	printf("ft_read = %zd\n", ft_read(0 , s, -5));
	printf("ft_strdup = %s\n", ft_strdup(""));
	printf("ft_strdup = %s\n", ft_strdup("Hello World"));
	printf("ft_strdup = %s\n", ft_strdup("Hii bro !"));
}
