/*
*	c2tap.c
*	Jaroslav Beran - jaroslav.beran@gmail.com
*	28.10.2014
*	redistributable under the terms of the GNU/GPLv3
*/

#include <stdio.h>
#include <errno.h>
#include <string.h>

#define VERSION "20141030"

static void print_help();
static void write_header(FILE *fout, char *filename);
static void write_data(FILE *fout, FILE *fin);
static int fputc_xor(int c, FILE *fout, int xor);

int 
main(int argc, char **argv)
{
	char *file_name, out_name[13], *p1, *p2;
	int len;
	FILE *fin, *fout;

	if (argc != 2) {
		print_help();
		return -1;
	}

	file_name = argv[1];
	if (strlen(file_name) > 10) {
		printf("Error: filename cannot be longer than 10 characters\n");
		return -1;
	}

	printf("Opening file %s\n", file_name);
	if ((fin = fopen(file_name, "rb")) == NULL) {
		perror(argv[0]);
		return -1;
	}

	p1 = file_name;
	p2 = out_name;
	len = 8;

	while ((*p1 != '\0') && (len != 0)) {
		if (*p1 != '.') {
			*p2 = *p1;
			p2++;
			len--;
		} 
		p1++;
	}
	*p2 = '\0';
	strcat(out_name, ".tap");

	printf("Creating file %s\n", out_name);
	if ((fout = fopen(out_name, "wb")) == NULL) {
		perror(argv[0]);
		return -1;
	}

	write_header(fout, file_name);
	write_data(fout, fin);

	fclose(fin);
	fclose(fout);

	return 0;
}


void 
print_help()
{
	printf("\n");
	printf("c2tap - utility for converting c files to ZX Spectrum tap\n");
	printf("Version: %s\n", VERSION);
	printf("\n");
	printf("Usage:\n");
	printf("c2tap <c file>\n\n");
}


void 
write_header(FILE *fout, char *filename)
{
	int xor, i;

	fputc_xor(0x13, fout, 0x00);
	xor = 0x00;
	xor = fputc_xor(0x00, fout, xor);
	xor = fputc_xor(0x00, fout, xor);
	xor = fputc_xor(0x03, fout, xor);

	for (i = 0; i < 10; i++) {
		if (*filename != '\0') {
			xor = fputc_xor(*filename, fout, xor);
			filename++;
		} else {
			xor = fputc_xor(0x20, fout, xor);
		}
	}

	xor = fputc_xor(0x00, fout, xor);
	xor = fputc_xor(0x00, fout, xor);
	xor = fputc_xor(0x00, fout, xor);
	xor = fputc_xor(0x00, fout, xor);
	xor = fputc_xor(0x00, fout, xor);
	xor = fputc_xor(0x00, fout, xor);
	fputc_xor(xor, fout, xor);
}


void 
write_data(FILE *fout, FILE *fin)
{
	int xor, c, last_bit;
	long fsize, bsize, bdata, cs;

	fseek(fin, 0, SEEK_END);
	fsize = ftell(fin);
	fseek(fin, 0, SEEK_SET);

	bsize = 512;

	while (fsize != 0) {
		fputc_xor((int) (bsize + 4) % 0x100, fout, 0x00);
		fputc_xor((int) (bsize + 4) / 0x100, fout, 0x00);

		if (fsize > bsize) {
			bdata = bsize;
			last_bit = 0x00;
		} else {
			bdata = fsize;
			last_bit = 0x80;
		}
		fsize -= bdata;

		xor = 0x00;
		xor = fputc_xor(0xff, fout, xor);
		xor = fputc_xor((int) bdata % 0x100, fout, xor);
		xor = fputc_xor((int) bdata / 0x100 + last_bit, fout, xor);
	
		for (cs = 0; cs < bsize; cs++) {
			if ((c = fgetc(fin))!= EOF) {
				if (strchr("\r\t\x1a", c) != NULL)
					c = ' ';
				xor = fputc_xor(c, fout, xor);
			} else {
				xor = fputc_xor(0x00, fout, xor);
			}
		}

		fputc_xor(xor, fout, xor);
	}
}

int 
fputc_xor(int c, FILE *fout, int xor)
{
	fputc(c, fout);
	xor ^= c;

	return xor;
}

