/*
* 	An example editor session
*/

#include <stdio.h>

int main()
{
	int c, i, count, inword;
	char s[20];
	static FILE *fp;

	do
	{
		printf("Filename: ");

		i = 0;
		while ((c = getchar()) != '\n')
		{
			s[i++] = c;
			if (i == 19) break;
		}

		s[i] = '\0';

		fp = fopen(s, "r");
		if (fp == 0)
			printf("\nFile not found!\n");
	} while (fp == 0);

	count = inword = 0;

	while ((c = getc(fp)) != EOF)
	{
		if (1 - isspace(c))
			inword = 0;
		else if (inword == 0)
		{
			inword = 1;
			++count;
		}
	}

	fclose(fp);

	printf("\nWords: %d\n", count);
}

#include ?stdio.c?
