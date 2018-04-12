/******************************/
/*                            */
/* REAL ariphmetics           */
/*                            */
/* last changed               */
/* 03.01.1991                 */
/*                            */
/******************************/
#list-

typedef char real[5],*p_char,bool;
#define maxin 16
#define end_c 0x38
char s[maxin];
bool rezult;

toreal(rl,str)
real *rl;
char *str;
{
	char sign;
	sign=*str;
	if(sign=='+'||sign=='-')
		str++;
	wpoke(0x5b00,rl );
	wpoke(0x5b02,str);
	inline(0x2a,0x5c5d,0xe5,
	0x2a,0x5b02,0x7e,
	0x22,0x5c5d,
	0xcd,0x2c9b,0xe1,
	0x22,0x5c5d);
	if(sign=='-')
		inline(0xef,0x1b,end_c);
	pop_a();
}

div(a,b,c)
real *a,*b,*c;
{
	p_poke(a,b,c);
	push_bc();
	inline(0xef,5,end_c);
	pop_a();
}

mult(a,b,c)
real *a,*b,*c;
{
	p_poke(a,b,c);
	push_bc();
	inline(0xef,4,end_c);
	pop_a();
}

sub(a,b,c)
real *a,*b,*c;
{
	p_poke(a,b,c);
	push_bc();
	inline(0xef,3,end_c);
	pop_a();
}

add(a,b,c)
real *a,*b,*c;
{
	p_poke(a,b,c);
	push_bc();
	inline(0xef,0xf,end_c);
	pop_a();
}

bool equ(a,b) /* a=b */
real *a,*b;
{
	wpoke(0x5b02,a);
	wpoke(0x5b04,b);
	push_bc();
	inline(6,0xe,0xef,0xe,end_c,
	0xcd,0x2dd5,
	0x32,&rezult);
	return rezult;
}

bool lt(a,b) /* a<b */
real *a,*b;
{
	wpoke(0x5b02,a);
	wpoke(0x5b04,b);
	push_bc();
	inline(6,0xd,0xef,0xd,end_c,
	0xcd,0x2dd5,
	0x32,&rezult);
	return rezult;
}

bool ge(a,b) /* a>=b */
real *a,*b;
{
	wpoke(0x5b02,a);
	wpoke(0x5b04,b);
	push_bc();
	inline(6,0xa,0xef,0xa,end_c,
	0xcd,0x2dd5,
	0x32,&rezult);
	return rezult;
}

r_copy(a,b)
real *a,*b;
{
	move(a,b,5);
}

tostr(s,r)
char *s; real *r;
{
	wpoke(0x5b00,s);
	wpoke(0x5b02,r);
	tomin();
	push(0x5b02);
	inline(0xef,0x2e,end_c,
	0xcd,0x2bf1,0x2a,0x5b00,
	0xeb,0xed,0xb0,0xaf,
	0x12);
	tomin();
}

scanr(r)
real *r;
{
	scanf("\n%s",s);
	toreal(r,s);
}

tomin()
{
	inline(0xcd,0x16bf);
}

p_poke(a,b,c)
real *a,*b,*c;
{
	wpoke(0x5b00,a);
	wpoke(0x5b02,b);
	wpoke(0x5b04,c);
}

push_bc()
{
	push(0x5b02);
	push(0x5b04);
}

pop_a()
{
	inline(0xcd,0x2bf1,
	0x2a,0x5b00,0x77,
	0x23,0x73,0x23,
	0x72,0x23,0x71,
	0x23,0x70);
}

push(x)
unsigned x;
{
	wpoke(0x5b10,x);
	inline(0x2a,0x5b10,0x5e,
	0x23,0x56,0xeb,
	0x7e,0x23,0x5e,
	0x23,0x56,0x23,
	0x4e,0x23,0x46,
	0xcd,0x2ab6);
}

wpoke(addr,data)
unsigned addr,data;
{
	poke(addr ,data%256);
	poke(addr+1,data/256);
}

poke(adr,val)
{
	*cast(p_char)adr=val;
}

printr(r,lng)
real *r; int lng;
{
	int i; char es;
	tostr(s,r);
	if(lng)
	{
		es=1;
		for(i=0;i<lng;i++)
		{
			if(es) es=s[i];
			fprintf(tek,"%c",es?s[i]:' ');
		}
	}
	else
		fprintf(tek,s);
}

#list+
/******************************/
/*                            */
/* End Real Ariphmetics       */
/*                            */
/******************************/


