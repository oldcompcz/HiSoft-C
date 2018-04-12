/*****************************/
/* Hisoft C                  */
/* Standard Function Library */
/* Version for ZX Spectrum   */
/*                           */
/* Copyright (C) 1984 Hisoft */
/* Last changed 20 Nov 1984  */
/*****************************/
#list-

/* Some arithmetic functions */
/* min and max are in "stdio.h" because they are varia-
dic */

int
abs(n)
{
	return n<0 ? -n : n ;
}

int
sign(n)
{
	return n ? ( n<0 ? -1 : 1 ) : 0 ;
}

/* An illustration of how to grub around in the store */

typedef char * __char_ptr;

int
peek(address)
{
	return * cast(__char_ptr) address;
}

void
poke(address, value)
{
	* cast(__char_ptr) address = value;
}

/* Format conversion routine - ASCII to binary integer */

int
atoi(s)
char *s;
{
	static int c, value, sign;
	while (isspace(*s))
		++s;
	value = 0;
	sign = 1;
	if (*s == '-') { ++s; sign = -1; }
	else if (*s == '+' ++s;
	while (isdigit(c = *s++))
		value = 10 * value + c - '0';
	return sign * value;
}

/* Sorting function - a Shell sort */

void
qsort(list, num_items, size, cmp_func)
char *list;
int num_items, size;
int (*cmp_func)();
{
	static unsigned gap, byte_gap, i;
	static char *p;
	for (gap = num_items >> 1; gap > 0; gap >>= 1)
	{
		byte_gap = gap * size;
		for (i = gap; i < num_items; ++i)
			for (p = list + i * size - byte_gap; p >= list; p -=
			by-te_gap)
			{
				if ((*cmp_func)(p, p + byte_gap) <= 0)
					break;
				swap(p, p + byte_gap, size);
			}
	}
}

/* String Handling Functions */

char
*strcat(base, add)
char *base, *add;
{
	static char *result;
	result = base;
	while (*base)
		++base;
	while (*base++ = *add++);
	return result;
}

int
strcmp(s, t)
char *s, *t;
{
	while (*s == *t)
	{
		if (! *s) return 0;
		++s; ++t;
	}
	return *s - *t;
}

char *
strcpy(dest, source)
char *dest, *source;
{
	static char *result;
	result = dest;
	while (*dest++ = *source++) ;
	return result;
}

unsigned
strlen(s)
char *s;
{
	static unsigned length;
	length = 0;
	while (*s++) ++length;
	return length;
}

/* Character Test and Manipulate Functions */
/* NB - the common ones are built-in for efficiency */

int
ispunct(c)
char c;
{
	return isprint(c) & ! isalnum(c);
}

int
isalnum(c)
char c;
{
	return isalpha(c) | isdigit(c) ;
}

int isascii(c)
char c;
{
	return c < 0x80 ;
}

int
iscntrl(c)
char c;
{
	return c < ' ' | c == '\177' ;
}

int
isprint(c)
char c;
{
	return c >= ' ' & c < '\177' ;
}

/****** FILE SYSTEM ******/

char *
fgets(s, n, fp)
char *s;
int n;
FILE *fp;
{
	static int c;
	static char *cs;
	cs = s;
	while (--n > 0 && (c = getc(fp)) != EOF)
		if ((*cs++ = c) == '\n')
			break;
		*cs = '\0';
	return ((c == EOF && cs == s) ? NULL : s);
}

char *
gets(s)
char *s;
{
	static int c;
	static char *cs;
	cs = s;
	while ((c = getchar()) !=EOF && c!='\n')
		*cs++ = c;
	*cs = 0;
	return ((c==-1 && cs==s) ? NULL : s );
}

void
fputs(s, fp)
char *s;
FILE *fp;
{
	static int c;
	while (c = *s++) putc(c, fp);
}

void
puts(s)
char *s;
{
	while (putchar(*s++));
}

/* Storage Allocation and Freeing (Heap Management) */

char *
calloc(n, size)
unsigned n, size;
{
	static HEADER *p, *q;
	static unsigned nbytes;
	nbytes = (n * size + (sizeof(HEADER) - 1)) / sizeof(HEADER) + 1;
	if ((q = _allocp) == NULL) /* no free list */
	{
		_base._ptr = _allocp = q = &_base;
		_base._size = 0;
	}
	p = q->_ptr;
	while (TRUE)
	{
		if (p->_size >= nbytes) /* big enough */
		{
			if (p->_size == nbytes)
				q->_ptr = p->_ptr;
				/*just right size */
			else
			{
				/* split block and allocate tail */
				p->_size -= nbytes;
				p+= p->_size;
				p->_size = nbytes;
			}
			_allocp = q;
			return cast(__char_ptr) (p+1);
		}
		if (p == _allocp) /* wrapped around free list */
		{
			if ((p = cast(HEADER_PTR) sbrk(nbytes
				* sizeof(HEADER))) == ERROR)
					return NULL;

			p->_size = nbytes;
			free(p+1);
			p = _allocp;
		}
		q = p;
		p = p->_ptr;
	} /* end while TRUE */
}

void
free(block)
char *block;
{
	static HEADER *p, *q;
	p = cast(HEADER_PTR) (block - 1);
	for (q = _allocp; !(p > q && p < q->_ptr); q = q->_ptr)
		if (q >= q->_ptr && (p > q || p < q->_ptr)) break;

	if (p + p->_size == q->_ptr)
	{
		p->_size += q->_ptr->_size;
		p->_ptr = q->_ptr->_ptr;
	}
	else p->_ptr = q->_ptr;

	if (q + q->_size == p)
	{
		q->_size += p->_size;
		q->_ptr = p->_ptr;
	}
	else q->_ptr = p;

	_allocp = q;
}

#define HEAPSIZE 1000

char *
sbrk(n)
unsigned n;
{
	static char p,
	heap[HEAPSIZE],
	heap_ptr=heap;

	if (heap_ptr+n > heap+HEAPSIZE)
		return ERROR;

	p=heap_ptr;
	heap_ptr += n;
	return p;
}
/* Pseudo-Random Number Generator */
/* Adapted from "Learning to Program in C" by Thomas Plum. */

char _rnum[4];

void
srand(n)
{
	long_init(_rnum, 0,n);
}

int
rand()
{
	static char k[4];
	long_init(k, 0x41c6,0x4e6d);
	long_multiply(_rnum, _rnum, k);
	long_init(k,0,0x3039);
	long_add(_rnum, _rnum, k);
	return (_rnum[1] << 8) + _rnum[0];
}

/* Some Functions for 32 bit integer arithmetic */

void
long_multiply(c, a, b)
char *a, *b, *c;
{
	static char x[4], product[4];
	int i, j;
	long_set(product, 0,0);
	for (i = 0; i < 4; ++i)
		for (j = i; j >= 0; --j)
		{
			long_set(x, a[i-j] * b[j], i);
			long_add(product, product, x);
		}
		long_copy(c, product);
}

void
long_add(c, a, b)
char *a, *b, *c;
{
	unsigned u, i;
	u = 0;
	for (i = 0; i < 4; ++i)
	{
		u += *a++ + *b++;
		*c++ = u & 0xff;
		u >>= 8;
	}
}

void
long_init(a, n1, n0)
char *a;
unsigned n1,n0;
{
	a[0] = n0 & 0xff;
	a[1] = n0 >> 8;
	a[2] = n1 & 0xff;
	a[3] = n1 >> 8;
}

void
long_set(a, n, d)
char *a;
unsigned n, d;
{
	static int i;
	for (i=0; i<4; ++i)
		a[i] = 0;
	a[d] = n & 0xff;
	if (d < 3)
		a[d+1] = n >> 8;
}

void
long_copy(c, a)
char *a, *c;
{
	move(c, a, 4);
}

/*** System Interface ***/

exit(n)
{
	inline(0xcd,25236);
	_exit(n);
}

_exit(n)
{
	inline(0xe1,0xe1,0xe1,
	0x2b,0xc3,0x55,0);
}

/* Spectrum Graphics and Sound Functions */

plot(on,x,y)
{
	_setover(on);
	inline(0xdd,0x46,4,
	0xdd,0x4e,6,
	0xcd,0x22e5);
}

line(on,dx,dy)
{
	static sx,sy,de,bc;
	_setover(on);
	sx=sy=1;
	if (dx<0)
	{
		dx= -dx;
		sx= -1;
	}
	if (dy<0)
	{
		dy= -dy;
		sy= -1;
	}
	de= (sy<<8)+sx;
	bc=(dy<<8)+dx;
	inline(0xed,0x5b,&de,
	0xed,0x4b,&bc,
	0xcd,0x24ba);
}

beep(duration,pitch)
unsigned duration,pitch;
{
	static ft;
	if ( ! pitch)
		for(ft=0;ft<duration;++ft)
			for(pitch=4630;++pitch;);
	else
	{
		ft=duration*pitch/10;
		pitch=pitch/10;
		_beep(ft,cast(unsigned)43750/pitch-30);
	}
}

paper(i)
{
	return _colour(17,i);
}

ink(i)
{
	return _colour(16,i);
}

cls()
{
	inline(0xCD,0xD6B);
}

_setover(on)
{
	printf("\025%c",on?0:1);
}

_beep(DE,HL)
{
	static de,hl;
	de=DE;
	hl=HL;
	inline(0xdd,0xe5,
	0xed,0x5b,&de,
	0x2a,&hl,
	0xcd,0x3b5,
	0xdd,0xe1);
}

_colour(h,i)
{
	if (i<0 | i>7) return -1;
	putc(h,2);
	putc(i,2);
	return i;
}

#list+
/*****************************/
/* Hisoft C                  */
/* Standard Function Library */
/* End                       */
/*****************************/
