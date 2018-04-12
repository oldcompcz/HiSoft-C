/*****************************/
/* Hisoft C                  */
/* Standard Function Library */
/* Header for ZX Spectrum    */
/*                           */
/* Copyright (C) 1984 Hisoft */
/* Last changed 10 Dec 1984  */
/*****************************/
#list-

#define NULL 0    /* for use with pointers  */
#define FALSE 0   /* for Boolean operations */
#define TRUE 1    /*    "                   */
#define EOF -1    /* end of file value      */
#define ERROR -1
#define void int  /* to use for type of functions which re-
		     turn no value */

/* File system Structure */
typedef int FILE;

/* Storage Allocation Structure and Variables */
struct _header
{
	struct _header * _ptr;
	unsigned _size;
};
typedef struct _header HEADER, * HEADER_PTR;
HEADER _base, *_allocp;

/* Function type forward declarations for non-int library
functions */

extern char *strcat(), *strcpy(), *calloc(),
*fgets(),*gets(),*sbrk();
extern unsigned strlen();

/*two arithmetic functions vhich need to be declared
BEFORE they are used, because they are vari-
adic (take any number of arguments). This
means that if you include "stdio.h" these func-
tions will always be compiled into your program.
You may wish to make a version of this file witho-
ut these two routines if you want to compile a lar-
ge amount of code and don't need them.*/

int
max(param_byte_count) auto
{
	static int argc, *argv, max;
	argc = param_byte_count/2 - 1;
	argv = &param_byte_count + argc;
	max = -32767;
	while (argc--)
	{
		if (*argv > max) max = *argv;
			--argv;
	}
	return max;
}

int
min(param_byte_count) auto
{
	static int argc, *argv, min;
	argc = param_byte_count/2 - 1;
	argv = &param_byte_count + argc;
	min = 32767;
	while (argc--)
	{
		if (*argv < min) min = *argv;
			--argv;
	}
return min;
}

#list+
/*****************************/
/* Hisoft C                  */
/* Standard Function Library */
/* End Header                */
/*****************************/
