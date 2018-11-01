#include <stdio.h>	/* For printf function. */
#include <stdlib.h> /* For atol function. */
#include <ctype.h>  /* For isdigit function. */


/* Function declaration. */
long fibonacci(long n);

/* Main function body. */
int main(int argc, char *argv[])
{
	/* Using command line input. */
	long iter = 0;
	long limit = 0;

	if (argc < 2) /* First argument is the program name (argv[0]), which is "main". */
	{
		printf("Not enough arguments.\n");
		return 1;
	}

	if (!isdigit( (int)argv[1][0]) )
	{
		printf("Invalid input.\n");
		return 2;
	}

	/* Convert ascii to long. */
	limit = atol(argv[1]);

	printf("Fibonacci Sequence: ");
	
	for (iter = 0; iter <= limit; iter++)
	{
		printf("%d, ", fibonacci(iter));
	}
	printf("\n");
	
	return 0;

} /* End main. */

/* Function definition. */
long fibonacci(long n)
{ 
	if (n == 0) 
		return 0;
    if (n <= 2) 
    	return 1;
	else 
        return fibonacci(n - 1) + fibonacci(n - 2);
} /* End fibonacci. */