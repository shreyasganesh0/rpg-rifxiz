#include <stdlib.h>
#include <stdio.h>
#include <unistd.h> 

int main(void) {

	int i = 0;
	while (i < 100) {

		printf("tick\n");
		while (usleep(1000) == -1);
		i++;
	}
	return 0;
}
