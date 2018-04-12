; z80dasm 1.1.4
; command line: z80dasm -a -t -l -g 25200 -b blocks.txt code.bin

	org	06270h

l6270h:
	jp l7480h		;6270	c3 80 74 	. . t 
l6273h:
	jp l7480h		;6273	c3 80 74 	. . t 
sub_6276h:
	jp l6ad2h		;6276	c3 d2 6a 	. . j 
sub_6279h:
	jp l69c6h		;6279	c3 c6 69 	. . i 
sub_627ch:
	jp l6976h		;627c	c3 76 69 	. v i 
sub_627fh:
	jp l6a77h		;627f	c3 77 6a 	. w j 
sub_6282h:
	jp l68b5h		;6282	c3 b5 68 	. . h 
sub_6285h:
	jp l6943h		;6285	c3 43 69 	. C i 
	jp l7480h		;6288	c3 80 74 	. . t 
	jp l6955h		;628b	c3 55 69 	. U i 
sub_628eh:
	jp l6820h		;628e	c3 20 68 	.   h 
	jp l68cdh		;6291	c3 cd 68 	. . h 
sub_6294h:
	jp l6abch		;6294	c3 bc 6a 	. . j 
sub_6297h:
	jp l695fh		;6297	c3 5f 69 	. _ i 
sub_629ah:
	jp l6a65h		;629a	c3 65 6a 	. e j 
sub_629dh:
	jp l7741h		;629d	c3 41 77 	. A w 
sub_62a0h:
	jp l6920h		;62a0	c3 20 69 	.   i 
sub_62a3h:
	jp l6922h		;62a3	c3 22 69 	. " i 
l62a6h:
	jp l68d1h		;62a6	c3 d1 68 	. . h 
l62a9h:
	jp l6867h		;62a9	c3 67 68 	. g h 
sub_62ach:
	cp 030h		;62ac	fe 30 	. 0 
	ccf			;62ae	3f 	? 
	ret nc			;62af	d0 	. 
	cp 03ah		;62b0	fe 3a 	. : 
	ret			;62b2	c9 	. 
	ld a,l			;62b3	7d 	} 
	or e			;62b4	b3 	. 
	ld l,a			;62b5	6f 	o 
	ld a,h			;62b6	7c 	| 
	or d			;62b7	b2 	. 
	ld h,a			;62b8	67 	g 
	ret			;62b9	c9 	. 
	ld a,l			;62ba	7d 	} 
	xor e			;62bb	ab 	. 
	ld l,a			;62bc	6f 	o 
	ld a,h			;62bd	7c 	| 
	xor d			;62be	aa 	. 
	ld h,a			;62bf	67 	g 
	ret			;62c0	c9 	. 
	ld a,l			;62c1	7d 	} 
	and e			;62c2	a3 	. 
	ld l,a			;62c3	6f 	o 
	ld a,h			;62c4	7c 	| 
	and d			;62c5	a2 	. 
	ld h,a			;62c6	67 	g 
	ret			;62c7	c9 	. 
l62c8h:
	dec e			;62c8	1d 	. 
	ret m			;62c9	f8 	. 
	add hl,hl			;62ca	29 	) 
	jr l62c8h		;62cb	18 fb 	. . 
l62cdh:
	dec e			;62cd	1d 	. 
	ret m			;62ce	f8 	. 
	srl h		;62cf	cb 3c 	. < 
	rr l		;62d1	cb 1d 	. . 
	jr l62cdh		;62d3	18 f8 	. . 
l62d5h:
	dec e			;62d5	1d 	. 
	ret m			;62d6	f8 	. 
	sra h		;62d7	cb 2c 	. , 
	rr l		;62d9	cb 1d 	. . 
	jr l62d5h		;62db	18 f8 	. . 
sub_62ddh:
	dec hl			;62dd	2b 	+ 
	ld a,h			;62de	7c 	| 
	cpl			;62df	2f 	/ 
	ld h,a			;62e0	67 	g 
	ld a,l			;62e1	7d 	} 
	cpl			;62e2	2f 	/ 
	ld l,a			;62e3	6f 	o 
	ret			;62e4	c9 	. 
	ld a,h			;62e5	7c 	| 
	or l			;62e6	b5 	. 
	ld hl,00000h		;62e7	21 00 00 	! . . 
	ret nz			;62ea	c0 	. 
	inc hl			;62eb	23 	# 
	ret			;62ec	c9 	. 
	ld a,h			;62ed	7c 	| 
	xor d			;62ee	aa 	. 
	push af			;62ef	f5 	. 
	xor h			;62f0	ac 	. 
	call m,sub_632bh		;62f1	fc 2b 63 	. + c 
	ld a,h			;62f4	7c 	| 
	or a			;62f5	b7 	. 
	call m,sub_62ddh		;62f6	fc dd 62 	. . b 
	call sub_6300h		;62f9	cd 00 63 	. . c 
	pop af			;62fc	f1 	. 
	ret p			;62fd	f0 	. 
	jr sub_62ddh		;62fe	18 dd 	. . 
sub_6300h:
	push bc			;6300	c5 	. 
	ld b,010h		;6301	06 10 	. . 
	ld a,h			;6303	7c 	| 
	ld c,l			;6304	4d 	M 
	ld hl,00000h		;6305	21 00 00 	! . . 
l6308h:
	add hl,hl			;6308	29 	) 
	jr c,l6315h		;6309	38 0a 	8 . 
	rl c		;630b	cb 11 	. . 
	rla			;630d	17 	. 
	jr nc,l6313h		;630e	30 03 	0 . 
	add hl,de			;6310	19 	. 
	jr c,l6315h		;6311	38 02 	8 . 
l6313h:
	djnz l6308h		;6313	10 f3 	. . 
l6315h:
	pop bc			;6315	c1 	. 
	ret			;6316	c9 	. 
sub_6317h:
	ld a,h			;6317	7c 	| 
	xor d			;6318	aa 	. 
	push af			;6319	f5 	. 
	xor h			;631a	ac 	. 
	call m,sub_632bh		;631b	fc 2b 63 	. + c 
	ld a,h			;631e	7c 	| 
	or a			;631f	b7 	. 
	call m,sub_62ddh		;6320	fc dd 62 	. . b 
	call sub_6331h		;6323	cd 31 63 	. 1 c 
	pop af			;6326	f1 	. 
	ret p			;6327	f0 	. 
	call sub_62ddh		;6328	cd dd 62 	. . b 
sub_632bh:
	ex de,hl			;632b	eb 	. 
	call sub_62ddh		;632c	cd dd 62 	. . b 
	ex de,hl			;632f	eb 	. 
	ret			;6330	c9 	. 
sub_6331h:
	push bc			;6331	c5 	. 
	ld b,d			;6332	42 	B 
	ld c,e			;6333	4b 	K 
	ld de,00000h		;6334	11 00 00 	. . . 
	ld a,010h		;6337	3e 10 	> . 
l6339h:
	add hl,hl			;6339	29 	) 
	jr c,l6342h		;633a	38 06 	8 . 
	dec a			;633c	3d 	= 
	jr nz,l6339h		;633d	20 fa 	  . 
	pop bc			;633f	c1 	. 
	ret			;6340	c9 	. 
l6341h:
	add hl,hl			;6341	29 	) 
l6342h:
	push af			;6342	f5 	. 
	rl e		;6343	cb 13 	. . 
	rl d		;6345	cb 12 	. . 
	ld a,e			;6347	7b 	{ 
	sub c			;6348	91 	. 
	ld a,d			;6349	7a 	z 
	sbc a,b			;634a	98 	. 
	jp m,l6353h		;634b	fa 53 63 	. S c 
	ld d,a			;634e	57 	W 
	ld a,e			;634f	7b 	{ 
	sub c			;6350	91 	. 
	ld e,a			;6351	5f 	_ 
	inc l			;6352	2c 	, 
l6353h:
	pop af			;6353	f1 	. 
	dec a			;6354	3d 	= 
	jr nz,l6341h		;6355	20 ea 	  . 
	pop bc			;6357	c1 	. 
	ret			;6358	c9 	. 
	call sub_6317h		;6359	cd 17 63 	. . c 
	ex de,hl			;635c	eb 	. 
	ret			;635d	c9 	. 
	call sub_6331h		;635e	cd 31 63 	. 1 c 
	ex de,hl			;6361	eb 	. 
	ret			;6362	c9 	. 
sub_6363h:
	xor a			;6363	af 	. 
	sbc hl,de		;6364	ed 52 	. R 
	ld h,a			;6366	67 	g 
	ld l,a			;6367	6f 	o 
	ret			;6368	c9 	. 
sub_6369h:
	call sub_6363h		;6369	cd 63 63 	. c c 
	scf			;636c	37 	7 
	inc hl			;636d	23 	# 
	ret z			;636e	c8 	. 
	ccf			;636f	3f 	? 
	dec hl			;6370	2b 	+ 
	ret			;6371	c9 	. 
sub_6372h:
	call sub_6363h		;6372	cd 63 63 	. c c 
	ret z			;6375	c8 	. 
	inc hl			;6376	23 	# 
	scf			;6377	37 	7 
	ret			;6378	c9 	. 
	ex de,hl			;6379	eb 	. 
sub_637ah:
	call sub_6372h		;637a	cd 72 63 	. r c 
	ret z			;637d	c8 	. 
	jp m,l6384h		;637e	fa 84 63 	. . c 
	ret pe			;6381	e8 	. 
	dec hl			;6382	2b 	+ 
	ccf			;6383	3f 	? 
l6384h:
	ret po			;6384	e0 	. 
	dec hl			;6385	2b 	+ 
	ccf			;6386	3f 	? 
	ret			;6387	c9 	. 
	ex de,hl			;6388	eb 	. 
	call sub_637ah		;6389	cd 7a 63 	. z c 
	ret nz			;638c	c0 	. 
	inc hl			;638d	23 	# 
	scf			;638e	37 	7 
	ret			;638f	c9 	. 
sub_6390h:
	ex de,hl			;6390	eb 	. 
sub_6391h:
	call sub_6363h		;6391	cd 63 63 	. c c 
	ret nc			;6394	d0 	. 
	inc hl			;6395	23 	# 
	ret			;6396	c9 	. 
sub_6397h:
	ex de,hl			;6397	eb 	. 
sub_6398h:
	call sub_6391h		;6398	cd 91 63 	. . c 
	ret nz			;639b	c0 	. 
	inc hl			;639c	23 	# 
	scf			;639d	37 	7 
	ret			;639e	c9 	. 
sub_639fh:
	pop af			;639f	f1 	. 
	pop hl			;63a0	e1 	. 
	pop de			;63a1	d1 	. 
	push hl			;63a2	e5 	. 
	push af			;63a3	f5 	. 
	ld hl,00000h		;63a4	21 00 00 	! . . 
	ld a,e			;63a7	7b 	{ 
	ret			;63a8	c9 	. 
	call sub_639fh		;63a9	cd 9f 63 	. . c 
	call sub_62ach		;63ac	cd ac 62 	. . b 
	ret nc			;63af	d0 	. 
	inc hl			;63b0	23 	# 
	ret			;63b1	c9 	. 
	call sub_639fh		;63b2	cd 9f 63 	. . c 
	call sub_63beh		;63b5	cd be 63 	. . c 
	ret c			;63b8	d8 	. 
	jr l63cah		;63b9	18 0f 	. . 
	call sub_639fh		;63bb	cd 9f 63 	. . c 
sub_63beh:
	cp 041h		;63be	fe 41 	. A 
	ccf			;63c0	3f 	? 
	ret nc			;63c1	d0 	. 
	cp 05bh		;63c2	fe 5b 	. [ 
	ret nc			;63c4	d0 	. 
	inc hl			;63c5	23 	# 
	ret			;63c6	c9 	. 
	call sub_639fh		;63c7	cd 9f 63 	. . c 
l63cah:
	add a,0e0h		;63ca	c6 e0 	. . 
	jr sub_63beh		;63cc	18 f0 	. . 
	call sub_639fh		;63ce	cd 9f 63 	. . c 
	call sub_63d7h		;63d1	cd d7 63 	. . c 
	ret nz			;63d4	c0 	. 
	inc hl			;63d5	23 	# 
	ret			;63d6	c9 	. 
sub_63d7h:
	cp 020h		;63d7	fe 20 	.   
	ret z			;63d9	c8 	. 
	cp 00ah		;63da	fe 0a 	. . 
	ret z			;63dc	c8 	. 
	cp 009h		;63dd	fe 09 	. . 
	ret			;63df	c9 	. 
	call sub_639fh		;63e0	cd 9f 63 	. . c 
	call sub_63beh		;63e3	cd be 63 	. . c 
	ex de,hl			;63e6	eb 	. 
	ret nc			;63e7	d0 	. 
	add a,020h		;63e8	c6 20 	.   
	ld l,a			;63ea	6f 	o 
	ret			;63eb	c9 	. 
	call sub_639fh		;63ec	cd 9f 63 	. . c 
	call l63cah		;63ef	cd ca 63 	. . c 
	ex de,hl			;63f2	eb 	. 
	ret nc			;63f3	d0 	. 
	ld l,a			;63f4	6f 	o 
	ret			;63f5	c9 	. 
	pop af			;63f6	f1 	. 
	pop bc			;63f7	c1 	. 
	pop de			;63f8	d1 	. 
	pop hl			;63f9	e1 	. 
	push af			;63fa	f5 	. 
l63fbh:
	ld a,(de)			;63fb	1a 	. 
	ldi		;63fc	ed a0 	. . 
	dec hl			;63fe	2b 	+ 
	ld (hl),a			;63ff	77 	w 
	inc hl			;6400	23 	# 
	ret po			;6401	e0 	. 
	jr l63fbh		;6402	18 f7 	. . 
sub_6404h:
	pop af			;6404	f1 	. 
	pop bc			;6405	c1 	. 
	pop hl			;6406	e1 	. 
	pop de			;6407	d1 	. 
	push af			;6408	f5 	. 
	ld a,b			;6409	78 	x 
	or c			;640a	b1 	. 
	ret z			;640b	c8 	. 
	sbc hl,de		;640c	ed 52 	. R 
	add hl,de			;640e	19 	. 
	jr c,l6414h		;640f	38 03 	8 . 
	ldir		;6411	ed b0 	. . 
	ret			;6413	c9 	. 
l6414h:
	dec bc			;6414	0b 	. 
	add hl,bc			;6415	09 	. 
	ex de,hl			;6416	eb 	. 
	add hl,bc			;6417	09 	. 
	ex de,hl			;6418	eb 	. 
	inc bc			;6419	03 	. 
	lddr		;641a	ed b8 	. . 
	ret			;641c	c9 	. 
l641dh:
	push ix		;641d	dd e5 	. . 
	pop bc			;641f	c1 	. 
	add hl,bc			;6420	09 	. 
sub_6421h:
	ld a,(hl)			;6421	7e 	~ 
	inc hl			;6422	23 	# 
	ld h,(hl)			;6423	66 	f 
	ld l,a			;6424	6f 	o 
	ret			;6425	c9 	. 
l6426h:
	push ix		;6426	dd e5 	. . 
	pop bc			;6428	c1 	. 
	add hl,bc			;6429	09 	. 
	ld l,(hl)			;642a	6e 	n 
	ld h,000h		;642b	26 00 	& . 
	ret			;642d	c9 	. 
l642eh:
	push ix		;642e	dd e5 	. . 
	pop bc			;6430	c1 	. 
	ex de,hl			;6431	eb 	. 
	add hl,bc			;6432	09 	. 
	ld (hl),e			;6433	73 	s 
	inc hl			;6434	23 	# 
	ld (hl),d			;6435	72 	r 
	ex de,hl			;6436	eb 	. 
	ret			;6437	c9 	. 
l6438h:
	push ix		;6438	dd e5 	. . 
	pop bc			;643a	c1 	. 
	ex de,hl			;643b	eb 	. 
	add hl,bc			;643c	09 	. 
	ld (hl),e			;643d	73 	s 
	ex de,hl			;643e	eb 	. 
	ret			;643f	c9 	. 
l6440h:
	pop de			;6440	d1 	. 
	ex de,hl			;6441	eb 	. 
	ex (sp),hl			;6442	e3 	. 
	ld (hl),e			;6443	73 	s 
	inc hl			;6444	23 	# 
	ld (hl),d			;6445	72 	r 
	ex de,hl			;6446	eb 	. 
	ret			;6447	c9 	. 
l6448h:
	ld bc,00001h		;6448	01 01 00 	. . . 
l644bh:
	ld e,(hl)			;644b	5e 	^ 
	inc hl			;644c	23 	# 
	ld d,(hl)			;644d	56 	V 
	ex de,hl			;644e	eb 	. 
	add hl,bc			;644f	09 	. 
	ex de,hl			;6450	eb 	. 
	ld (hl),d			;6451	72 	r 
	dec hl			;6452	2b 	+ 
	ld (hl),e			;6453	73 	s 
	ex de,hl			;6454	eb 	. 
	ret			;6455	c9 	. 
l6456h:
	ld bc,00001h		;6456	01 01 00 	. . . 
l6459h:
	ld e,(hl)			;6459	5e 	^ 
	inc hl			;645a	23 	# 
	ld d,(hl)			;645b	56 	V 
	push de			;645c	d5 	. 
	ex de,hl			;645d	eb 	. 
	add hl,bc			;645e	09 	. 
	ex de,hl			;645f	eb 	. 
	ld (hl),d			;6460	72 	r 
	dec hl			;6461	2b 	+ 
	ld (hl),e			;6462	73 	s 
	pop hl			;6463	e1 	. 
	ret			;6464	c9 	. 
sub_6465h:
	ex de,hl			;6465	eb 	. 
	pop hl			;6466	e1 	. 
	call sub_6421h		;6467	cd 21 64 	. ! d 
l646ah:
	ld c,(hl)			;646a	4e 	N 
	inc hl			;646b	23 	# 
	ld b,(hl)			;646c	46 	F 
	inc hl			;646d	23 	# 
	ld a,b			;646e	78 	x 
	or c			;646f	b1 	. 
	jr z,l647eh		;6470	28 0c 	( . 
	ld a,(hl)			;6472	7e 	~ 
	inc hl			;6473	23 	# 
	cp e			;6474	bb 	. 
	ld a,(hl)			;6475	7e 	~ 
	inc hl			;6476	23 	# 
	jr nz,l646ah		;6477	20 f1 	  . 
	cp d			;6479	ba 	. 
	jr nz,l646ah		;647a	20 ee 	  . 
	ld h,b			;647c	60 	` 
	ld l,c			;647d	69 	i 
l647eh:
	jp (hl)			;647e	e9 	. 
l647fh:
	ld hl,00000h		;647f	21 00 00 	! . . 
	pop de			;6482	d1 	. 
	push ix		;6483	dd e5 	. . 
	ld ix,00000h		;6485	dd 21 00 00 	. ! . . 
	add ix,sp		;6489	dd 39 	. 9 
	add hl,sp			;648b	39 	9 
	ld sp,hl			;648c	f9 	. 
	ld hl,(l6870h)		;648d	2a 70 68 	* p h 
	add hl,sp			;6490	39 	9 
	jr nc,l6495h		;6491	30 02 	0 . 
	ex de,hl			;6493	eb 	. 
	jp (hl)			;6494	e9 	. 
l6495h:
	ld hl,l64a3h		;6495	21 a3 64 	! . d 
	push hl			;6498	e5 	. 
	ld hl,00004h		;6499	21 04 00 	! . . 
	push hl			;649c	e5 	. 
	call sub_653dh		;649d	cd 3d 65 	. = e 
	jp l6270h		;64a0	c3 70 62 	. p b 
l64a3h:
	ld (hl),e			;64a3	73 	s 
	ld (hl),h			;64a4	74 	t 
	ld h,c			;64a5	61 	a 
	ld h,e			;64a6	63 	c 
	ld l,e			;64a7	6b 	k 
	jr nz,l6519h		;64a8	20 6f 	  o 
	halt			;64aa	76 	v 
	ld h,l			;64ab	65 	e 
	ld (hl),d			;64ac	72 	r 
	ld h,(hl)			;64ad	66 	f 
	ld l,h			;64ae	6c 	l 
	ld l,a			;64af	6f 	o 
	ld (hl),a			;64b0	77 	w 
	nop			;64b1	00 	. 
l64b2h:
	ld e,(ix+004h)		;64b2	dd 5e 04 	. ^ . 
	ld d,(ix+005h)		;64b5	dd 56 05 	. V . 
	jr l64bdh		;64b8	18 03 	. . 
l64bah:
	ld de,00000h		;64ba	11 00 00 	. . . 
l64bdh:
	ld sp,ix		;64bd	dd f9 	. . 
	pop ix		;64bf	dd e1 	. . 
	pop bc			;64c1	c1 	. 
	ex de,hl			;64c2	eb 	. 
	add hl,sp			;64c3	39 	9 
	ld sp,hl			;64c4	f9 	. 
	ex de,hl			;64c5	eb 	. 
	push bc			;64c6	c5 	. 
	ld b,h			;64c7	44 	D 
	ld c,l			;64c8	4d 	M 
	ret			;64c9	c9 	. 
	add hl,de			;64ca	19 	. 
	ret			;64cb	c9 	. 
	or a			;64cc	b7 	. 
	sbc hl,de		;64cd	ed 52 	. R 
	ret			;64cf	c9 	. 
sub_64d0h:
	ld hl,00000h		;64d0	21 00 00 	! . . 
l64d3h:
	ld a,(de)			;64d3	1a 	. 
	call sub_62ach		;64d4	cd ac 62 	. . b 
	ret nc			;64d7	d0 	. 
	sub 030h		;64d8	d6 30 	. 0 
	inc de			;64da	13 	. 
	push de			;64db	d5 	. 
	add hl,hl			;64dc	29 	) 
	ld e,l			;64dd	5d 	] 
	ld d,h			;64de	54 	T 
	add hl,hl			;64df	29 	) 
	add hl,hl			;64e0	29 	) 
	add hl,de			;64e1	19 	. 
	ld e,a			;64e2	5f 	_ 
	ld d,000h		;64e3	16 00 	. . 
	add hl,de			;64e5	19 	. 
	pop de			;64e6	d1 	. 
	jr l64d3h		;64e7	18 ea 	. . 
sub_64e9h:
	push de			;64e9	d5 	. 
l64eah:
	ld e,c			;64ea	59 	Y 
	ld d,b			;64eb	50 	P 
	call sub_6331h		;64ec	cd 31 63 	. 1 c 
	ex (sp),hl			;64ef	e3 	. 
	ld a,e			;64f0	7b 	{ 
	add a,030h		;64f1	c6 30 	. 0 
	cp 03ah		;64f3	fe 3a 	. : 
	jr c,l64f9h		;64f5	38 02 	8 . 
	add a,007h		;64f7	c6 07 	. . 
l64f9h:
	dec hl			;64f9	2b 	+ 
	ld (hl),a			;64fa	77 	w 
	ex (sp),hl			;64fb	e3 	. 
	ld a,l			;64fc	7d 	} 
	or h			;64fd	b4 	. 
	jr nz,l64eah		;64fe	20 ea 	  . 
	pop hl			;6500	e1 	. 
	ret			;6501	c9 	. 
sub_6502h:
	push hl			;6502	e5 	. 
	bit 7,h		;6503	cb 7c 	. | 
	jr z,l650ah		;6505	28 03 	( . 
	call sub_62ddh		;6507	cd dd 62 	. . b 
l650ah:
	call sub_64e9h		;650a	cd e9 64 	. . d 
	pop de			;650d	d1 	. 
	bit 7,d		;650e	cb 7a 	. z 
	ret z			;6510	c8 	. 
	dec hl			;6511	2b 	+ 
	ld (hl),02dh		;6512	36 2d 	6 - 
	ret			;6514	c9 	. 
l6515h:
	push hl			;6515	e5 	. 
	ld hl,(l6cd1h)		;6516	2a d1 6c 	* . l 
l6519h:
	ld (hl),a			;6519	77 	w 
	inc hl			;651a	23 	# 
	ld (l6cd1h),hl		;651b	22 d1 6c 	" . l 
	pop hl			;651e	e1 	. 
	ret			;651f	c9 	. 
l6520h:
	push hl			;6520	e5 	. 
	push de			;6521	d5 	. 
	push bc			;6522	c5 	. 
	ld l,a			;6523	6f 	o 
	push hl			;6524	e5 	. 
	ld hl,(l6cd1h)		;6525	2a d1 6c 	* . l 
	push hl			;6528	e5 	. 
	call sub_627ch		;6529	cd 7c 62 	. | b 
	pop bc			;652c	c1 	. 
	pop de			;652d	d1 	. 
	pop hl			;652e	e1 	. 
	ret			;652f	c9 	. 
	ld hl,l6515h		;6530	21 15 65 	! . e 
	jr l6538h		;6533	18 03 	. . 
	ld hl,l6520h		;6535	21 20 65 	!   e 
l6538h:
	call sub_664fh		;6538	cd 4f 66 	. O f 
	jr l6548h		;653b	18 0b 	. . 
sub_653dh:
	ld hl,l62a6h		;653d	21 a6 62 	! . b 
	ld (l6ccfh),hl		;6540	22 cf 6c 	" . l 
	pop de			;6543	d1 	. 
	pop hl			;6544	e1 	. 
	push hl			;6545	e5 	. 
	push de			;6546	d5 	. 
	add hl,sp			;6547	39 	9 
l6548h:
	push bc			;6548	c5 	. 
	ld e,(hl)			;6549	5e 	^ 
	inc hl			;654a	23 	# 
	ld d,(hl)			;654b	56 	V 
	dec hl			;654c	2b 	+ 
	dec hl			;654d	2b 	+ 
	push hl			;654e	e5 	. 
	ld a,0c3h		;654f	3e c3 	> . 
	ld (l6cceh),a		;6551	32 ce 6c 	2 . l 
l6554h:
	ld a,(de)			;6554	1a 	. 
	inc de			;6555	13 	. 
	or a			;6556	b7 	. 
	jr z,l6568h		;6557	28 0f 	( . 
	cp 025h		;6559	fe 25 	. % 
	jr nz,l6563h		;655b	20 06 	  . 
	ld a,(de)			;655d	1a 	. 
	cp 025h		;655e	fe 25 	. % 
	jr nz,l6574h		;6560	20 12 	  . 
	inc de			;6562	13 	. 
l6563h:
	call l6cceh		;6563	cd ce 6c 	. . l 
	jr l6554h		;6566	18 ec 	. . 
l6568h:
	ld hl,(l6ccfh)		;6568	2a cf 6c 	* . l 
	ld a,015h		;656b	3e 15 	> . 
	sub l			;656d	95 	. 
	call z,l6515h		;656e	cc 15 65 	. . e 
	jp l6729h		;6571	c3 29 67 	. ) g 
l6574h:
	push de			;6574	d5 	. 
	ld hl,00620h		;6575	21 20 06 	!   . 
	ld (l6cbfh),hl		;6578	22 bf 6c 	" . l 
	xor a			;657b	af 	. 
	ld l,a			;657c	6f 	o 
	ld h,a			;657d	67 	g 
	ld (l6cbfh+2),hl		;657e	22 c1 6c 	" . l 
	ld a,(de)			;6581	1a 	. 
	cp 02dh		;6582	fe 2d 	. - 
	ld a,001h		;6584	3e 01 	> . 
	jr nz,l658ah		;6586	20 02 	  . 
	xor a			;6588	af 	. 
	inc de			;6589	13 	. 
l658ah:
	ld (06cbeh),a		;658a	32 be 6c 	2 . l 
	ld a,(de)			;658d	1a 	. 
	cp 030h		;658e	fe 30 	. 0 
	jr nz,l6597h		;6590	20 05 	  . 
	inc de			;6592	13 	. 
	ld (l6cbfh),a		;6593	32 bf 6c 	2 . l 
	ld a,(de)			;6596	1a 	. 
l6597h:
	call sub_62ach		;6597	cd ac 62 	. . b 
	jr nc,l659fh		;659a	30 03 	0 . 
	call sub_64d0h		;659c	cd d0 64 	. . d 
l659fh:
	ld (l6cc2h+1),hl		;659f	22 c3 6c 	" . l 
	ld a,(de)			;65a2	1a 	. 
	cp 02eh		;65a3	fe 2e 	. . 
	jr nz,l65b1h		;65a5	20 0a 	  . 
	ld (l6cc2h),a		;65a7	32 c2 6c 	2 . l 
	inc de			;65aa	13 	. 
	call sub_64d0h		;65ab	cd d0 64 	. . d 
	ld (l6cbfh+1),hl		;65ae	22 c0 6c 	" . l 
l65b1h:
	call sub_6664h		;65b1	cd 64 66 	. d f 
	ld hl,l6ccdh		;65b4	21 cd 6c 	! . l 
	push af			;65b7	f5 	. 
	ld (hl),b			;65b8	70 	p 
	ex de,hl			;65b9	eb 	. 
	cp 064h		;65ba	fe 64 	. d 
	jr z,l65ddh		;65bc	28 1f 	( . 
	cp 075h		;65be	fe 75 	. u 
	jr z,l65eah		;65c0	28 28 	( ( 
	dec bc			;65c2	0b 	. 
	dec bc			;65c3	0b 	. 
	cp 06fh		;65c4	fe 6f 	. o 
	jr z,l65eah		;65c6	28 22 	( " 
	ld bc,00010h		;65c8	01 10 00 	. . . 
	cp 078h		;65cb	fe 78 	. x 
	jr z,l65eah		;65cd	28 1b 	( . 
	cp 073h		;65cf	fe 73 	. s 
	jr z,l65edh		;65d1	28 1a 	( . 
	cp 063h		;65d3	fe 63 	. c 
	jr z,l65e2h		;65d5	28 0b 	( . 
	pop de			;65d7	d1 	. 
	pop de			;65d8	d1 	. 
	pop de			;65d9	d1 	. 
l65dah:
	jp l6554h		;65da	c3 54 65 	. T e 
l65ddh:
	call sub_6502h		;65dd	cd 02 65 	. . e 
	jr l65edh		;65e0	18 0b 	. . 
l65e2h:
	dec de			;65e2	1b 	. 
	ex de,hl			;65e3	eb 	. 
	ld (hl),e			;65e4	73 	s 
	ld de,00001h		;65e5	11 01 00 	. . . 
	jr l65f8h		;65e8	18 0e 	. . 
l65eah:
	call sub_64e9h		;65ea	cd e9 64 	. . d 
l65edh:
	push hl			;65ed	e5 	. 
	xor a			;65ee	af 	. 
	ld de,0ffffh		;65ef	11 ff ff 	. . . 
l65f2h:
	inc de			;65f2	13 	. 
	cp (hl)			;65f3	be 	. 
	inc hl			;65f4	23 	# 
	jr nz,l65f2h		;65f5	20 fb 	  . 
	pop hl			;65f7	e1 	. 
l65f8h:
	pop af			;65f8	f1 	. 
	push hl			;65f9	e5 	. 
	cp 073h		;65fa	fe 73 	. s 
	jr nz,l6611h		;65fc	20 13 	  . 
	ld a,(l6cc2h)		;65fe	3a c2 6c 	: . l 
	or a			;6601	b7 	. 
	jr z,l6611h		;6602	28 0d 	( . 
	push de			;6604	d5 	. 
	ld hl,(l6cbfh+1)		;6605	2a c0 6c 	* . l 
	push hl			;6608	e5 	. 
	call sub_6391h		;6609	cd 91 63 	. . c 
	pop hl			;660c	e1 	. 
	pop de			;660d	d1 	. 
	jr nc,l6611h		;660e	30 01 	0 . 
	ex de,hl			;6610	eb 	. 
l6611h:
	ld hl,(l6cc2h+1)		;6611	2a c3 6c 	* . l 
	dec hl			;6614	2b 	+ 
	or a			;6615	b7 	. 
	sbc hl,de		;6616	ed 52 	. R 
	inc hl			;6618	23 	# 
	jp p,l661fh		;6619	f2 1f 66 	. . f 
	ld hl,00000h		;661c	21 00 00 	! . . 
l661fh:
	ld b,h			;661f	44 	D 
	ld c,l			;6620	4d 	M 
	xor a			;6621	af 	. 
	ld hl,(06cbeh)		;6622	2a be 6c 	* . l 
	or l			;6625	b5 	. 
	call nz,sub_6645h		;6626	c4 45 66 	. E f 
	pop hl			;6629	e1 	. 
l662ah:
	ld a,e			;662a	7b 	{ 
	or d			;662b	b2 	. 
	jr z,l6636h		;662c	28 08 	( . 
	dec de			;662e	1b 	. 
	ld a,(hl)			;662f	7e 	~ 
	inc hl			;6630	23 	# 
	call l6cceh		;6631	cd ce 6c 	. . l 
	jr l662ah		;6634	18 f4 	. . 
l6636h:
	ld hl,(06cbeh)		;6636	2a be 6c 	* . l 
	or l			;6639	b5 	. 
	call z,sub_6645h		;663a	cc 45 66 	. E f 
	pop de			;663d	d1 	. 
	pop hl			;663e	e1 	. 
	pop hl			;663f	e1 	. 
	dec hl			;6640	2b 	+ 
	dec hl			;6641	2b 	+ 
	push hl			;6642	e5 	. 
	jr l65dah		;6643	18 95 	. . 
sub_6645h:
	ld a,b			;6645	78 	x 
	or c			;6646	b1 	. 
	ret z			;6647	c8 	. 
	ld a,h			;6648	7c 	| 
	call l6cceh		;6649	cd ce 6c 	. . l 
	dec bc			;664c	0b 	. 
	jr sub_6645h		;664d	18 f6 	. . 
sub_664fh:
	ld (l6ccfh),hl		;664f	22 cf 6c 	" . l 
	pop de			;6652	d1 	. 
	pop af			;6653	f1 	. 
	pop hl			;6654	e1 	. 
	push hl			;6655	e5 	. 
	push af			;6656	f5 	. 
	add hl,sp			;6657	39 	9 
	push de			;6658	d5 	. 
	ld e,(hl)			;6659	5e 	^ 
	inc hl			;665a	23 	# 
	ld d,(hl)			;665b	56 	V 
	ld (l6cd1h),de		;665c	ed 53 d1 6c 	. S . l 
	dec hl			;6660	2b 	+ 
	dec hl			;6661	2b 	+ 
	dec hl			;6662	2b 	+ 
	ret			;6663	c9 	. 
sub_6664h:
	ld a,(de)			;6664	1a 	. 
	cp 061h		;6665	fe 61 	. a 
	jr nc,l666bh		;6667	30 02 	0 . 
	add a,020h		;6669	c6 20 	.   
l666bh:
	cp 06ch		;666b	fe 6c 	. l 
	jr nz,l6670h		;666d	20 01 	  . 
	inc de			;666f	13 	. 
l6670h:
	pop bc			;6670	c1 	. 
	pop af			;6671	f1 	. 
	pop hl			;6672	e1 	. 
	push hl			;6673	e5 	. 
	push af			;6674	f5 	. 
	ld a,(de)			;6675	1a 	. 
	cp 061h		;6676	fe 61 	. a 
	jr nc,l667ch		;6678	30 02 	0 . 
	add a,020h		;667a	c6 20 	.   
l667ch:
	inc de			;667c	13 	. 
	push de			;667d	d5 	. 
	push bc			;667e	c5 	. 
	ld d,(hl)			;667f	56 	V 
	dec hl			;6680	2b 	+ 
	ld e,(hl)			;6681	5e 	^ 
	ld bc,0000ah		;6682	01 0a 00 	. . . 
	ret			;6685	c9 	. 
l6686h:
	push hl			;6686	e5 	. 
	ld hl,(l6cd1h)		;6687	2a d1 6c 	* . l 
	ld a,(hl)			;668a	7e 	~ 
	inc hl			;668b	23 	# 
	ld (l6cd1h),hl		;668c	22 d1 6c 	" . l 
	pop hl			;668f	e1 	. 
	ret			;6690	c9 	. 
l6691h:
	push hl			;6691	e5 	. 
	push de			;6692	d5 	. 
	push bc			;6693	c5 	. 
	ld hl,(l6cd1h)		;6694	2a d1 6c 	* . l 
	push hl			;6697	e5 	. 
	call sub_6279h		;6698	cd 79 62 	. y b 
	ld a,l			;669b	7d 	} 
	pop bc			;669c	c1 	. 
	pop de			;669d	d1 	. 
	pop hl			;669e	e1 	. 
	ret			;669f	c9 	. 
l66a0h:
	push hl			;66a0	e5 	. 
	ld hl,(l6cd1h)		;66a1	2a d1 6c 	* . l 
	dec hl			;66a4	2b 	+ 
	ld (hl),a			;66a5	77 	w 
	ld (l6cd1h),hl		;66a6	22 d1 6c 	" . l 
	pop hl			;66a9	e1 	. 
	ret			;66aa	c9 	. 
l66abh:
	push hl			;66ab	e5 	. 
	push de			;66ac	d5 	. 
	push bc			;66ad	c5 	. 
	ld l,a			;66ae	6f 	o 
	ld h,000h		;66af	26 00 	& . 
	push hl			;66b1	e5 	. 
	ld hl,(l6cd1h)		;66b2	2a d1 6c 	* . l 
	push hl			;66b5	e5 	. 
	call sub_629ah		;66b6	cd 9a 62 	. . b 
	pop bc			;66b9	c1 	. 
	pop de			;66ba	d1 	. 
	pop hl			;66bb	e1 	. 
	ret			;66bc	c9 	. 
	ld hl,l6686h		;66bd	21 86 66 	! . f 
	ld de,l66a0h		;66c0	11 a0 66 	. . f 
	jr l66cbh		;66c3	18 06 	. . 
	ld hl,l6691h		;66c5	21 91 66 	! . f 
	ld de,l66abh		;66c8	11 ab 66 	. . f 
l66cbh:
	ld (l6ccbh+1),de		;66cb	ed 53 cc 6c 	. S . l 
	call sub_664fh		;66cf	cd 4f 66 	. O f 
	jr l66ebh		;66d2	18 17 	. . 
	ld hl,l6691h		;66d4	21 91 66 	! . f 
	ld (l6ccfh),hl		;66d7	22 cf 6c 	" . l 
	ld hl,l66abh		;66da	21 ab 66 	! . f 
l66ddh:
	ld (l6ccbh+1),hl		;66dd	22 cc 6c 	" . l 
	ld hl,00000h		;66e0	21 00 00 	! . . 
	ld (l6cd1h),hl		;66e3	22 d1 6c 	" . l 
	pop de			;66e6	d1 	. 
	pop hl			;66e7	e1 	. 
	push hl			;66e8	e5 	. 
	push de			;66e9	d5 	. 
	add hl,sp			;66ea	39 	9 
l66ebh:
	push bc			;66eb	c5 	. 
	ld e,(hl)			;66ec	5e 	^ 
	inc hl			;66ed	23 	# 
	ld d,(hl)			;66ee	56 	V 
	dec hl			;66ef	2b 	+ 
	dec hl			;66f0	2b 	+ 
	push hl			;66f1	e5 	. 
	ld a,0c3h		;66f2	3e c3 	> . 
	ld (l6cceh),a		;66f4	32 ce 6c 	2 . l 
	ld (l6ccbh),a		;66f7	32 cb 6c 	2 . l 
	ld hl,00000h		;66fa	21 00 00 	! . . 
	ld (06cbeh),hl		;66fd	22 be 6c 	" . l 
l6700h:
	ld a,(de)			;6700	1a 	. 
	inc de			;6701	13 	. 
	or a			;6702	b7 	. 
	jr z,l6725h		;6703	28 20 	(   
	call sub_63d7h		;6705	cd d7 63 	. . c 
	jr nz,l6717h		;6708	20 0d 	  . 
l670ah:
	call l6cceh		;670a	cd ce 6c 	. . l 
	call sub_63d7h		;670d	cd d7 63 	. . c 
	jr z,l670ah		;6710	28 f8 	( . 
	call l6ccbh		;6712	cd cb 6c 	. . l 
	jr l6700h		;6715	18 e9 	. . 
l6717h:
	cp 025h		;6717	fe 25 	. % 
	jr z,l6733h		;6719	28 18 	( . 
	ld l,a			;671b	6f 	o 
	call l6cceh		;671c	cd ce 6c 	. . l 
	cp l			;671f	bd 	. 
	jr z,l6700h		;6720	28 de 	( . 
	call l6ccbh		;6722	cd cb 6c 	. . l 
l6725h:
	ld de,(06cbeh)		;6725	ed 5b be 6c 	. [ . l 
l6729h:
	pop hl			;6729	e1 	. 
	pop bc			;672a	c1 	. 
	pop hl			;672b	e1 	. 
	ex (sp),hl			;672c	e3 	. 
	add hl,sp			;672d	39 	9 
	pop af			;672e	f1 	. 
	ld sp,hl			;672f	f9 	. 
	push af			;6730	f5 	. 
	ex de,hl			;6731	eb 	. 
	ret			;6732	c9 	. 
l6733h:
	push de			;6733	d5 	. 
	ld hl,0ffffh		;6734	21 ff ff 	! . . 
	ld a,(de)			;6737	1a 	. 
	sub 02ah		;6738	d6 2a 	. * 
	ld (l6cbfh+1),a		;673a	32 c0 6c 	2 . l 
	jr nz,l6740h		;673d	20 01 	  . 
	inc de			;673f	13 	. 
l6740h:
	ld a,(de)			;6740	1a 	. 
	call sub_62ach		;6741	cd ac 62 	. . b 
	jr nc,l6749h		;6744	30 03 	0 . 
	call sub_64d0h		;6746	cd d0 64 	. . d 
l6749h:
	ld (l6cbfh+2),hl		;6749	22 c1 6c 	" . l 
	call sub_6664h		;674c	cd 64 66 	. d f 
	cp 068h		;674f	fe 68 	. h 
	jr z,l6783h		;6751	28 30 	( 0 
	cp 064h		;6753	fe 64 	. d 
	jr z,l6783h		;6755	28 2c 	( , 
	dec bc			;6757	0b 	. 
	dec bc			;6758	0b 	. 
	cp 06fh		;6759	fe 6f 	. o 
	jr z,l6783h		;675b	28 26 	( & 
	cp 078h		;675d	fe 78 	. x 
	jr z,l676dh		;675f	28 0c 	( . 
	cp 063h		;6761	fe 63 	. c 
	jr z,l67dah		;6763	28 75 	( u 
	cp 073h		;6765	fe 73 	. s 
	jr z,l67e8h		;6767	28 7f 	(  
	pop de			;6769	d1 	. 
	pop de			;676a	d1 	. 
l676bh:
	jr l6725h		;676b	18 b8 	. . 
l676dh:
	call l6cceh		;676d	cd ce 6c 	. . l 
	cp 030h		;6770	fe 30 	. 0 
	jr nz,l677dh		;6772	20 09 	  . 
	call l6cceh		;6774	cd ce 6c 	. . l 
	cp 078h		;6777	fe 78 	. x 
	jr z,l6780h		;6779	28 05 	( . 
	cp 058h		;677b	fe 58 	. X 
l677dh:
	call nz,l6ccbh		;677d	c4 cb 6c 	. . l 
l6780h:
	ld bc,00010h		;6780	01 10 00 	. . . 
l6783h:
	push af			;6783	f5 	. 
	push de			;6784	d5 	. 
	ld d,b			;6785	50 	P 
	ld e,c			;6786	59 	Y 
	ld bc,(l6cbfh+2)		;6787	ed 4b c1 6c 	. K . l 
	ld hl,00000h		;678b	21 00 00 	! . . 
l678eh:
	ld a,b			;678e	78 	x 
	or c			;678f	b1 	. 
	jr z,l67c1h		;6790	28 2f 	( / 
	dec bc			;6792	0b 	. 
	call l6cceh		;6793	cd ce 6c 	. . l 
	call sub_62ach		;6796	cd ac 62 	. . b 
	jr nc,l679fh		;6799	30 04 	0 . 
	sub 030h		;679b	d6 30 	. 0 
	jr l67b3h		;679d	18 14 	. . 
l679fh:
	call sub_63d7h		;679f	cd d7 63 	. . c 
	jr z,l67beh		;67a2	28 1a 	( . 
	cp 061h		;67a4	fe 61 	. a 
	jr c,l67aah		;67a6	38 02 	8 . 
	sub 020h		;67a8	d6 20 	.   
l67aah:
	sub 041h		;67aa	d6 41 	. A 
	jr c,l67d4h		;67ac	38 26 	8 & 
	add a,00ah		;67ae	c6 0a 	. . 
	cp e			;67b0	bb 	. 
	jr nc,l67d4h		;67b1	30 21 	0 ! 
l67b3h:
	push bc			;67b3	c5 	. 
	ld c,a			;67b4	4f 	O 
	ld b,000h		;67b5	06 00 	. . 
	call sub_6300h		;67b7	cd 00 63 	. . c 
	add hl,bc			;67ba	09 	. 
	pop bc			;67bb	c1 	. 
	jr l678eh		;67bc	18 d0 	. . 
l67beh:
	call l6ccbh		;67be	cd cb 6c 	. . l 
l67c1h:
	pop de			;67c1	d1 	. 
	pop bc			;67c2	c1 	. 
	ld a,(l6cbfh+1)		;67c3	3a c0 6c 	: . l 
	or a			;67c6	b7 	. 
	jr z,l681ch		;67c7	28 53 	( S 
	ex de,hl			;67c9	eb 	. 
	ld (hl),e			;67ca	73 	s 
	ld a,068h		;67cb	3e 68 	> h 
	cp b			;67cd	b8 	. 
	jr z,l680ch		;67ce	28 3c 	( < 
	inc hl			;67d0	23 	# 
	ld (hl),d			;67d1	72 	r 
	jr l680ch		;67d2	18 38 	. 8 
l67d4h:
	pop de			;67d4	d1 	. 
	pop de			;67d5	d1 	. 
	pop de			;67d6	d1 	. 
	pop de			;67d7	d1 	. 
	jr l676bh		;67d8	18 91 	. . 
l67dah:
	call l6cceh		;67da	cd ce 6c 	. . l 
	ld l,a			;67dd	6f 	o 
l67deh:
	ld a,(l6cbfh+1)		;67de	3a c0 6c 	: . l 
	or a			;67e1	b7 	. 
	jr z,l681ch		;67e2	28 38 	( 8 
	ld a,l			;67e4	7d 	} 
	ld (de),a			;67e5	12 	. 
	jr l680ch		;67e6	18 24 	. $ 
l67e8h:
	ld bc,(l6cbfh+2)		;67e8	ed 4b c1 6c 	. K . l 
l67ech:
	call l6cceh		;67ec	cd ce 6c 	. . l 
	call sub_63d7h		;67ef	cd d7 63 	. . c 
	jr nz,l67f9h		;67f2	20 05 	  . 
	call l6ccbh		;67f4	cd cb 6c 	. . l 
	jr l6808h		;67f7	18 0f 	. . 
l67f9h:
	ld l,a			;67f9	6f 	o 
	ld a,(l6cbfh+1)		;67fa	3a c0 6c 	: . l 
	or a			;67fd	b7 	. 
	jr z,l6803h		;67fe	28 03 	( . 
	ld a,l			;6800	7d 	} 
	ld (de),a			;6801	12 	. 
	inc de			;6802	13 	. 
l6803h:
	dec bc			;6803	0b 	. 
	ld a,b			;6804	78 	x 
	or c			;6805	b1 	. 
	jr nz,l67ech		;6806	20 e4 	  . 
l6808h:
	ld l,000h		;6808	2e 00 	. . 
	jr l67deh		;680a	18 d2 	. . 
l680ch:
	ld hl,(06cbeh)		;680c	2a be 6c 	* . l 
	inc hl			;680f	23 	# 
	ld (06cbeh),hl		;6810	22 be 6c 	" . l 
	pop de			;6813	d1 	. 
	pop hl			;6814	e1 	. 
	pop hl			;6815	e1 	. 
	dec hl			;6816	2b 	+ 
	dec hl			;6817	2b 	+ 
	push hl			;6818	e5 	. 
l6819h:
	jp l6700h		;6819	c3 00 67 	. . g 
l681ch:
	pop de			;681c	d1 	. 
	pop hl			;681d	e1 	. 
	jr l6819h		;681e	18 f9 	. . 
l6820h:
	ld hl,00000h		;6820	21 00 00 	! . . 
	push hl			;6823	e5 	. 
	call sub_6279h		;6824	cd 79 62 	. y b 
	ld a,l			;6827	7d 	} 
	ret			;6828	c9 	. 
l6829h:
	ld hl,(l6d2ah)		;6829	2a 2a 6d 	* * m 
	ld a,(hl)			;682c	7e 	~ 
	inc hl			;682d	23 	# 
	ld (l6d2ah),hl		;682e	22 2a 6d 	" * m 
	ld l,a			;6831	6f 	o 
	ld h,0ffh		;6832	26 ff 	& . 
	cp h			;6834	bc 	. 
	ret z			;6835	c8 	. 
	inc h			;6836	24 	$ 
	or a			;6837	b7 	. 
	ret nz			;6838	c0 	. 
	ld b,050h		;6839	06 50 	. P 
	call l6867h		;683b	cd 67 68 	. g h 
	ex de,hl			;683e	eb 	. 
l683fh:
	call sub_62a0h		;683f	cd a0 62 	. . b 
	cp 008h		;6842	fe 08 	. . 
	jr z,l6859h		;6844	28 13 	( . 
	call l62a6h		;6846	cd a6 62 	. . b 
	ld a,l			;6849	7d 	} 
	ld (de),a			;684a	12 	. 
	inc de			;684b	13 	. 
	cp 00ah		;684c	fe 0a 	. . 
	jr z,l6855h		;684e	28 05 	( . 
	inc a			;6850	3c 	< 
	jr z,l6855h		;6851	28 02 	( . 
	djnz l683fh		;6853	10 ea 	. . 
l6855h:
	xor a			;6855	af 	. 
	ld (de),a			;6856	12 	. 
	jr l6829h		;6857	18 d0 	. . 
l6859h:
	ld a,050h		;6859	3e 50 	> P 
	cp b			;685b	b8 	. 
	jr z,l683fh		;685c	28 e1 	( . 
	dec de			;685e	1b 	. 
	inc b			;685f	04 	. 
	ld a,008h		;6860	3e 08 	> . 
	call l62a6h		;6862	cd a6 62 	. . b 
	jr l683fh		;6865	18 d8 	. . 
l6867h:
	ld hl,l6cd9h		;6867	21 d9 6c 	! . l 
	ld (hl),000h		;686a	36 00 	6 . 
	ld (l6d2ah),hl		;686c	22 2a 6d 	" * m 
	ret			;686f	c9 	. 
l6870h:
	nop			;6870	00 	. 
	nop			;6871	00 	. 
l6872h:
	ld hl,00000h		;6872	21 00 00 	! . . 
	ld bc,00000h		;6875	01 00 00 	. . . 
	pop de			;6878	d1 	. 
	ld sp,hl			;6879	f9 	. 
	push de			;687a	d5 	. 
	ld (hl),000h		;687b	36 00 	6 . 
	ld e,l			;687d	5d 	] 
	ld d,h			;687e	54 	T 
	inc de			;687f	13 	. 
	ldir		;6880	ed b0 	. . 
	ld hl,00000h		;6882	21 00 00 	! . . 
	jr l6889h		;6885	18 02 	. . 
l6887h:
	ldir		;6887	ed b0 	. . 
l6889h:
	ld c,(hl)			;6889	4e 	N 
	inc hl			;688a	23 	# 
	ld b,(hl)			;688b	46 	F 
	inc hl			;688c	23 	# 
	ld e,(hl)			;688d	5e 	^ 
	inc hl			;688e	23 	# 
	ld d,(hl)			;688f	56 	V 
	inc hl			;6890	23 	# 
	ld a,b			;6891	78 	x 
	or c			;6892	b1 	. 
	jr nz,l6887h		;6893	20 f2 	  . 
	call sub_6282h		;6895	cd 82 62 	. . b 
	jp 00000h		;6898	c3 00 00 	. . . 
	dec c			;689b	0d 	. 
	ld a,(bc)			;689c	0a 	. 
	jr nz,l68bfh		;689d	20 20 	    
	jr nz,$-62		;689f	20 c0 	  . 
	ld e,a			;68a1	5f 	_ 
sub_68a2h:
	ex de,hl			;68a2	eb 	. 
	ld hl,00000h		;68a3	21 00 00 	! . . 
l68a6h:
	ld a,(de)			;68a6	1a 	. 
	or a			;68a7	b7 	. 
	ret z			;68a8	c8 	. 
	inc de			;68a9	13 	. 
	inc hl			;68aa	23 	# 
	jr l68a6h		;68ab	18 f9 	. . 
l68adh:
	ld a,(de)			;68ad	1a 	. 
	inc de			;68ae	13 	. 
	cpi		;68af	ed a1 	. . 
	ret nz			;68b1	c0 	. 
	ret po			;68b2	e0 	. 
	jr l68adh		;68b3	18 f8 	. . 
l68b5h:
	push bc			;68b5	c5 	. 
	push ix		;68b6	dd e5 	. . 
	call sub_6c1dh		;68b8	cd 1d 6c 	. . l 
	res 3,(iy+030h)		;68bb	fd cb 30 9e 	. . 0 . 
l68bfh:
	ld (iy+052h),0ffh		;68bf	fd 36 52 ff 	. 6 R . 
	ld (iy+002h),000h		;68c3	fd 36 02 00 	. 6 . . 
	pop ix		;68c7	dd e1 	. . 
	pop bc			;68c9	c1 	. 
	jp l62a9h		;68ca	c3 a9 62 	. . b 
l68cdh:
	pop de			;68cd	d1 	. 
	pop hl			;68ce	e1 	. 
	ld a,l			;68cf	7d 	} 
	push de			;68d0	d5 	. 
l68d1h:
	push hl			;68d1	e5 	. 
	push bc			;68d2	c5 	. 
	push af			;68d3	f5 	. 
	ld (iy+052h),0ffh		;68d4	fd 36 52 ff 	. 6 R . 
	ld hl,l68f7h		;68d8	21 f7 68 	! . h 
	ld bc,0000ch		;68db	01 0c 00 	. . . 
	call sub_6c64h		;68de	cd 64 6c 	. d l 
	pop af			;68e1	f1 	. 
	push af			;68e2	f5 	. 
	call sub_68ebh		;68e3	cd eb 68 	. . h 
	rst 10h			;68e6	d7 	. 
	pop af			;68e7	f1 	. 
	pop bc			;68e8	c1 	. 
	pop hl			;68e9	e1 	. 
	ret			;68ea	c9 	. 
sub_68ebh:
	cpir		;68eb	ed b1 	. . 
	jr nz,l68f0h		;68ed	20 01 	  . 
	ld a,(hl)			;68ef	7e 	~ 
l68f0h:
	ld l,a			;68f0	6f 	o 
	ld h,0ffh		;68f1	26 ff 	& . 
	cp h			;68f3	bc 	. 
	ret z			;68f4	c8 	. 
	inc h			;68f5	24 	$ 
	ret			;68f6	c9 	. 
l68f7h:
	rlca			;68f7	07 	. 
	adc a,d			;68f8	8a 	. 
	dec e			;68f9	1d 	. 
	rst 0			;68fa	c7 	. 
	ld e,0c8h		;68fb	1e c8 	. . 
	rra			;68fd	1f 	. 
	ret			;68fe	c9 	. 
	rst 38h			;68ff	ff 	. 
	adc a,c			;6900	89 	. 
	inc e			;6901	1c 	. 
	ld a,(bc)			;6902	0a 	. 
	dec c			;6903	0d 	. 
l6904h:
	jp po,lc37eh		;6904	e2 7e c3 	. ~ . 
	ld a,h			;6907	7c 	| 
	call 0cc5ch		;6908	cd 5c cc 	. \ . 
	ld a,e			;690b	7b 	{ 
	bit 7,l		;690c	cb 7d 	. } 
	add a,05bh		;690e	c6 5b 	. [ 
	push bc			;6910	c5 	. 
	ld e,l			;6911	5d 	] 
	rst 0			;6912	c7 	. 
	dec e			;6913	1d 	. 
	ret z			;6914	c8 	. 
	ld e,0c9h		;6915	1e c9 	. . 
	rra			;6917	1f 	. 
	xor h			;6918	ac 	. 
	rst 38h			;6919	ff 	. 
	inc c			;691a	0c 	. 
	ex af,af'			;691b	08 	. 
	inc c			;691c	0c 	. 
	dec c			;691d	0d 	. 
	ld a,(bc)			;691e	0a 	. 
	inc e			;691f	1c 	. 
l6920h:
	ld a,04ch		;6920	3e 4c 	> L 
l6922h:
	push af			;6922	f5 	. 
	call sub_6c64h		;6923	cd 64 6c 	. d l 
	pop af			;6926	f1 	. 
	call 018c1h		;6927	cd c1 18 	. . . 
	call l6943h		;692a	cd 43 69 	. C i 
	ld a,008h		;692d	3e 08 	> . 
	rst 10h			;692f	d7 	. 
	ld a,020h		;6930	3e 20 	>   
	rst 10h			;6932	d7 	. 
	ld a,008h		;6933	3e 08 	> . 
	rst 10h			;6935	d7 	. 
	ld a,l			;6936	7d 	} 
	ld hl,l6904h		;6937	21 04 69 	! . i 
	push bc			;693a	c5 	. 
	ld bc,0001bh		;693b	01 1b 00 	. . . 
	call sub_68ebh		;693e	cd eb 68 	. . h 
	pop bc			;6941	c1 	. 
	ret			;6942	c9 	. 
l6943h:
	bit 5,(iy+001h)		;6943	fd cb 01 6e 	. . . n 
	ei			;6947	fb 	. 
	jr z,l6943h		;6948	28 f9 	( . 
	ld a,(05c08h)		;694a	3a 08 5c 	: . \ 
	res 5,(iy+001h)		;694d	fd cb 01 ae 	. . . . 
	ld h,000h		;6951	26 00 	& . 
	ld l,a			;6953	6f 	o 
	ret			;6954	c9 	. 
l6955h:
	call 0028eh		;6955	cd 8e 02 	. . . 
	inc e			;6958	1c 	. 
	ld hl,00000h		;6959	21 00 00 	! . . 
	ret z			;695c	c8 	. 
	inc hl			;695d	23 	# 
	ret			;695e	c9 	. 
l695fh:
	ld hl,00000h		;695f	21 00 00 	! . . 
	ld a,07fh		;6962	3e 7f 	>  
	in a,(0feh)		;6964	db fe 	. . 
	rra			;6966	1f 	. 
	ret c			;6967	d8 	. 
	ld a,(000feh)		;6968	3a fe 00 	: . . 
	in a,(0feh)		;696b	db fe 	. . 
	rra			;696d	1f 	. 
	ret c			;696e	d8 	. 
	call l6943h		;696f	cd 43 69 	. C i 
	ld hl,00001h		;6972	21 01 00 	! . . 
	ret			;6975	c9 	. 
l6976h:
	pop de			;6976	d1 	. 
	pop hl			;6977	e1 	. 
	ld a,l			;6978	7d 	} 
	pop hl			;6979	e1 	. 
	push de			;697a	d5 	. 
	or a			;697b	b7 	. 
	jr nz,l6982h		;697c	20 04 	  . 
	ld a,l			;697e	7d 	} 
	jp l68d1h		;697f	c3 d1 68 	. . h 
l6982h:
	cp 010h		;6982	fe 10 	. . 
	jr z,l6990h		;6984	28 0a 	( . 
	call sub_6c66h		;6986	cd 66 6c 	. f l 
	ld a,l			;6989	7d 	} 
	push ix		;698a	dd e5 	. . 
	rst 10h			;698c	d7 	. 
	pop ix		;698d	dd e1 	. . 
	ret			;698f	c9 	. 
l6990h:
	ld c,l			;6990	4d 	M 
	ld hl,(068a0h)		;6991	2a a0 68 	* . h 
	ld a,(hl)			;6994	7e 	~ 
	and 023h		;6995	e6 23 	. # 
	sub 020h		;6997	d6 20 	.   
	jr z,l699fh		;6999	28 04 	( . 
	ld hl,0ffffh		;699b	21 ff ff 	! . . 
	ret			;699e	c9 	. 
l699fh:
	inc hl			;699f	23 	# 
	inc hl			;69a0	23 	# 
	inc hl			;69a1	23 	# 
	ld e,(hl)			;69a2	5e 	^ 
	inc hl			;69a3	23 	# 
	ld d,(hl)			;69a4	56 	V 
	dec hl			;69a5	2b 	+ 
	push hl			;69a6	e5 	. 
	ld hl,00200h		;69a7	21 00 02 	! . . 
	sbc hl,de		;69aa	ed 52 	. R 
	pop hl			;69ac	e1 	. 
	call z,sub_69bah		;69ad	cc ba 69 	. . i 
	inc de			;69b0	13 	. 
	ld (hl),e			;69b1	73 	s 
	inc hl			;69b2	23 	# 
	ld (hl),d			;69b3	72 	r 
	add hl,de			;69b4	19 	. 
	ld (hl),c			;69b5	71 	q 
	ld l,c			;69b6	69 	i 
	ld h,000h		;69b7	26 00 	& . 
	ret			;69b9	c9 	. 
sub_69bah:
	ld de,00202h		;69ba	11 02 02 	. . . 
	ld a,0ffh		;69bd	3e ff 	> . 
	call sub_6c2ah		;69bf	cd 2a 6c 	. * l 
	ld de,00000h		;69c2	11 00 00 	. . . 
	ret			;69c5	c9 	. 
l69c6h:
	pop de			;69c6	d1 	. 
	pop hl			;69c7	e1 	. 
	ld a,l			;69c8	7d 	} 
	push de			;69c9	d5 	. 
	ld hl,l6d35h		;69ca	21 35 6d 	! 5 m 
	ld e,a			;69cd	5f 	_ 
	xor a			;69ce	af 	. 
	ld d,a			;69cf	57 	W 
	add hl,de			;69d0	19 	. 
	cp (hl)			;69d1	be 	. 
	jr z,l69d8h		;69d2	28 04 	( . 
	ld e,(hl)			;69d4	5e 	^ 
	ld (hl),a			;69d5	77 	w 
	ex de,hl			;69d6	eb 	. 
	ret			;69d7	c9 	. 
l69d8h:
	ld a,e			;69d8	7b 	{ 
	or a			;69d9	b7 	. 
	jp z,l6829h		;69da	ca 29 68 	. ) h 
	cp 010h		;69dd	fe 10 	. . 
	jr z,l6a09h		;69df	28 28 	( ( 
	call sub_6c66h		;69e1	cd 66 6c 	. f l 
	push ix		;69e4	dd e5 	. . 
	ld hl,(05c3dh)		;69e6	2a 3d 5c 	* = \ 
	push hl			;69e9	e5 	. 
	ld hl,0fffeh		;69ea	21 fe ff 	! . . 
	add hl,sp			;69ed	39 	9 
	ld (05c3dh),hl		;69ee	22 3d 5c 	" = \ 
	ld hl,l6a04h		;69f1	21 04 6a 	! . j 
	push hl			;69f4	e5 	. 
	call 015e6h		;69f5	cd e6 15 	. . . 
	pop hl			;69f8	e1 	. 
	ld h,000h		;69f9	26 00 	& . 
	ld l,a			;69fb	6f 	o 
l69fch:
	pop de			;69fc	d1 	. 
	ld (05c3dh),de		;69fd	ed 53 3d 5c 	. S = \ 
	pop ix		;6a01	dd e1 	. . 
	ret			;6a03	c9 	. 
l6a04h:
	ld hl,0ffffh		;6a04	21 ff ff 	! . . 
	jr l69fch		;6a07	18 f3 	. . 
l6a09h:
	ld hl,(068a0h)		;6a09	2a a0 68 	* . h 
	inc hl			;6a0c	23 	# 
	push hl			;6a0d	e5 	. 
	ld e,(hl)			;6a0e	5e 	^ 
	inc hl			;6a0f	23 	# 
	ld d,(hl)			;6a10	56 	V 
	inc hl			;6a11	23 	# 
	ld c,(hl)			;6a12	4e 	N 
	inc hl			;6a13	23 	# 
	ld b,(hl)			;6a14	46 	F 
	ld a,07fh		;6a15	3e 7f 	>  
	and b			;6a17	a0 	. 
	or c			;6a18	b1 	. 
	inc hl			;6a19	23 	# 
	add hl,de			;6a1a	19 	. 
	ld a,(hl)			;6a1b	7e 	~ 
	inc de			;6a1c	13 	. 
	pop hl			;6a1d	e1 	. 
	ld (hl),e			;6a1e	73 	s 
	inc hl			;6a1f	23 	# 
	ld (hl),d			;6a20	72 	r 
	inc hl			;6a21	23 	# 
	dec bc			;6a22	0b 	. 
	ld (hl),c			;6a23	71 	q 
	inc hl			;6a24	23 	# 
	ld (hl),b			;6a25	70 	p 
	ld h,000h		;6a26	26 00 	& . 
	ld l,a			;6a28	6f 	o 
	ret nz			;6a29	c0 	. 
	ld hl,(068a0h)		;6a2a	2a a0 68 	* . h 
	push hl			;6a2d	e5 	. 
	ld a,(hl)			;6a2e	7e 	~ 
	and 013h		;6a2f	e6 13 	. . 
	cp 010h		;6a31	fe 10 	. . 
l6a33h:
	inc hl			;6a33	23 	# 
	inc hl			;6a34	23 	# 
	inc hl			;6a35	23 	# 
	inc hl			;6a36	23 	# 
	jr z,l6a47h		;6a37	28 0e 	( . 
l6a39h:
	xor a			;6a39	af 	. 
	ld (hl),a			;6a3a	77 	w 
	dec hl			;6a3b	2b 	+ 
	ld (hl),a			;6a3c	77 	w 
	dec hl			;6a3d	2b 	+ 
	dec hl			;6a3e	2b 	+ 
	dec hl			;6a3f	2b 	+ 
	set 0,(hl)		;6a40	cb c6 	. . 
	ld hl,0ffffh		;6a42	21 ff ff 	! . . 
	pop de			;6a45	d1 	. 
	ret			;6a46	c9 	. 
l6a47h:
	bit 7,(hl)		;6a47	cb 7e 	. ~ 
	jr z,l6a39h		;6a49	28 ee 	( . 
	dec hl			;6a4b	2b 	+ 
	ld de,00202h		;6a4c	11 02 02 	. . . 
	ld a,0ffh		;6a4f	3e ff 	> . 
	call sub_6c3eh		;6a51	cd 3e 6c 	. > l 
	jr c,l6a5ch		;6a54	38 06 	8 . 
	set 1,(hl)		;6a56	cb ce 	. . 
	or 001h		;6a58	f6 01 	. . 
	jr l6a33h		;6a5a	18 d7 	. . 
l6a5ch:
	pop hl			;6a5c	e1 	. 
	inc hl			;6a5d	23 	# 
	xor a			;6a5e	af 	. 
	ld (hl),a			;6a5f	77 	w 
	inc hl			;6a60	23 	# 
	ld (hl),a			;6a61	77 	w 
	jp l6a09h		;6a62	c3 09 6a 	. . j 
l6a65h:
	pop af			;6a65	f1 	. 
	pop de			;6a66	d1 	. 
	pop hl			;6a67	e1 	. 
	push af			;6a68	f5 	. 
	ld a,e			;6a69	7b 	{ 
	cp 011h		;6a6a	fe 11 	. . 
	ret nc			;6a6c	d0 	. 
	ld a,d			;6a6d	7a 	z 
	or a			;6a6e	b7 	. 
	ret nz			;6a6f	c0 	. 
	ld a,l			;6a70	7d 	} 
	ld hl,l6d35h		;6a71	21 35 6d 	! 5 m 
	add hl,de			;6a74	19 	. 
	ld (hl),a			;6a75	77 	w 
	ret			;6a76	c9 	. 
l6a77h:
	pop de			;6a77	d1 	. 
	pop hl			;6a78	e1 	. 
	ld a,l			;6a79	7d 	} 
	push de			;6a7a	d5 	. 
sub_6a7bh:
	or a			;6a7b	b7 	. 
	ret z			;6a7c	c8 	. 
	ld hl,l6c9ch		;6a7d	21 9c 6c 	! . l 
	cp (hl)			;6a80	be 	. 
	jr z,l6a8bh		;6a81	28 08 	( . 
	inc hl			;6a83	23 	# 
	cp (hl)			;6a84	be 	. 
	jr z,l6a8bh		;6a85	28 04 	( . 
	ld hl,0ffffh		;6a87	21 ff ff 	! . . 
	ret			;6a8a	c9 	. 
l6a8bh:
	ld (hl),000h		;6a8b	36 00 	6 . 
	cp 010h		;6a8d	fe 10 	. . 
	jr z,l6aa5h		;6a8f	28 14 	( . 
	push ix		;6a91	dd e5 	. . 
	res 1,(iy+07ch)		;6a93	fd cb 7c 8e 	. . | . 
	ld hl,01718h		;6a97	21 18 17 	! . . 
	ld (05cedh),hl		;6a9a	22 ed 5c 	" . \ 
	rst 8			;6a9d	cf 	. 
	ld (0e1ddh),a		;6a9e	32 dd e1 	2 . . 
l6aa1h:
	ld hl,00000h		;6aa1	21 00 00 	! . . 
	ret			;6aa4	c9 	. 
l6aa5h:
	ld hl,(068a0h)		;6aa5	2a a0 68 	* . h 
	ld a,(hl)			;6aa8	7e 	~ 
	bit 5,a		;6aa9	cb 6f 	. o 
	jr z,l6aa1h		;6aab	28 f4 	( . 
	or 001h		;6aad	f6 01 	. . 
	ld (hl),a			;6aaf	77 	w 
	inc hl			;6ab0	23 	# 
	inc hl			;6ab1	23 	# 
	inc hl			;6ab2	23 	# 
	inc hl			;6ab3	23 	# 
	set 7,(hl)		;6ab4	cb fe 	. . 
	dec hl			;6ab6	2b 	+ 
	call sub_69bah		;6ab7	cd ba 69 	. . i 
	jr l6aa1h		;6aba	18 e5 	. . 
l6abch:
	ld hl,l6d35h		;6abc	21 35 6d 	! 5 m 
	ld a,011h		;6abf	3e 11 	> . 
l6ac1h:
	ld (hl),000h		;6ac1	36 00 	6 . 
	dec a			;6ac3	3d 	= 
	jr nz,l6ac1h		;6ac4	20 fb 	  . 
	ld a,(l6c9ch)		;6ac6	3a 9c 6c 	: . l 
	call sub_6a7bh		;6ac9	cd 7b 6a 	. { j 
	ld a,(l6c9dh)		;6acc	3a 9d 6c 	: . l 
	jp sub_6a7bh		;6acf	c3 7b 6a 	. { j 
l6ad2h:
	pop af			;6ad2	f1 	. 
	pop de			;6ad3	d1 	. 
	pop hl			;6ad4	e1 	. 
	push af			;6ad5	f5 	. 
	ld a,(l6c9ch)		;6ad6	3a 9c 6c 	: . l 
	or a			;6ad9	b7 	. 
	ld a,00fh		;6ada	3e 0f 	> . 
	jr z,l6ae6h		;6adc	28 08 	( . 
	ld a,(l6c9dh)		;6ade	3a 9d 6c 	: . l 
	or a			;6ae1	b7 	. 
	jr nz,l6af5h		;6ae2	20 11 	  . 
	ld a,00eh		;6ae4	3e 0e 	> . 
l6ae6h:
	ld (l6cd7h),a		;6ae6	32 d7 6c 	2 . l 
	ld a,(de)			;6ae9	1a 	. 
	ld e,000h		;6aea	1e 00 	. . 
	cp 077h		;6aec	fe 77 	. w 
	jr z,l6af9h		;6aee	28 09 	( . 
	inc e			;6af0	1c 	. 
	cp 072h		;6af1	fe 72 	. r 
	jr z,l6af9h		;6af3	28 04 	( . 
l6af5h:
	ld hl,00000h		;6af5	21 00 00 	! . . 
	ret			;6af8	c9 	. 
l6af9h:
	push ix		;6af9	dd e5 	. . 
	ld a,e			;6afb	7b 	{ 
	push af			;6afc	f5 	. 
	inc hl			;6afd	23 	# 
	ld a,(hl)			;6afe	7e 	~ 
	cp 03ah		;6aff	fe 3a 	. : 
	dec hl			;6b01	2b 	+ 
	jp nz,l6b99h		;6b02	c2 99 6b 	. . k 
	ld a,(hl)			;6b05	7e 	~ 
	cp 031h		;6b06	fe 31 	. 1 
	jr c,l6b40h		;6b08	38 36 	8 6 
	cp 039h		;6b0a	fe 39 	. 9 
	jr nc,l6b40h		;6b0c	30 32 	0 2 
	sub 030h		;6b0e	d6 30 	. 0 
	push hl			;6b10	e5 	. 
	ld h,000h		;6b11	26 00 	& . 
	ld l,a			;6b13	6f 	o 
	ld (05cd6h),hl		;6b14	22 d6 5c 	" . \ 
	pop hl			;6b17	e1 	. 
	inc hl			;6b18	23 	# 
	inc hl			;6b19	23 	# 
	ld (05cdch),hl		;6b1a	22 dc 5c 	" . \ 
	call sub_68a2h		;6b1d	cd a2 68 	. . h 
	ld (05cdah),hl		;6b20	22 da 5c 	" . \ 
	rst 8			;6b23	cf 	. 
	ld sp,022cfh		;6b24	31 cf 22 	1 . " 
	pop af			;6b27	f1 	. 
	push af			;6b28	f5 	. 
	rrca			;6b29	0f 	. 
	jr c,l6b32h		;6b2a	38 06 	8 . 
	in a,(0efh)		;6b2c	db ef 	. . 
	and 001h		;6b2e	e6 01 	. . 
	jr z,l6b3ah		;6b30	28 08 	( . 
l6b32h:
	bit 0,(ix+018h)		;6b32	dd cb 18 46 	. . . F 
	jr z,l6b4ch		;6b36	28 14 	( . 
	jr nc,l6b56h		;6b38	30 1c 	0 . 
l6b3ah:
	res 0,(ix+018h)		;6b3a	dd cb 18 86 	. . . . 
	rst 8			;6b3e	cf 	. 
	inc hl			;6b3f	23 	# 
l6b40h:
	ld hl,00000h		;6b40	21 00 00 	! . . 
	push hl			;6b43	e5 	. 
l6b44h:
	xor a			;6b44	af 	. 
	rst 8			;6b45	cf 	. 
	ld hl,0f1e1h		;6b46	21 e1 f1 	! . . 
	pop ix		;6b49	dd e1 	. . 
	ret			;6b4b	c9 	. 
l6b4ch:
	jr c,l6b56h		;6b4c	38 08 	8 . 
	push hl			;6b4e	e5 	. 
	rst 8			;6b4f	cf 	. 
	inc hl			;6b50	23 	# 
	rst 8			;6b51	cf 	. 
	inc h			;6b52	24 	$ 
	pop hl			;6b53	e1 	. 
	jr $-47		;6b54	18 cf 	. . 
l6b56h:
	ex de,hl			;6b56	eb 	. 
	ld a,(l6cd7h)		;6b57	3a d7 6c 	: . l 
	push af			;6b5a	f5 	. 
	call 01727h		;6b5b	cd 27 17 	. ' . 
	ld (hl),e			;6b5e	73 	s 
	inc hl			;6b5f	23 	# 
	ld (hl),d			;6b60	72 	r 
	res 7,(ix+004h)		;6b61	dd cb 04 be 	. . . . 
	pop af			;6b65	f1 	. 
	ld hl,l6c9ch		;6b66	21 9c 6c 	! . l 
	cp 00fh		;6b69	fe 0f 	. . 
	jr z,l6b6eh		;6b6b	28 01 	( . 
	inc hl			;6b6d	23 	# 
l6b6eh:
	ld (hl),a			;6b6e	77 	w 
	ld l,a			;6b6f	6f 	o 
	ld h,000h		;6b70	26 00 	& . 
	push hl			;6b72	e5 	. 
	call sub_6c66h		;6b73	cd 66 6c 	. f l 
	ld b,009h		;6b76	06 09 	. . 
	bit 0,(ix+018h)		;6b78	dd cb 18 46 	. . . F 
	jr z,l6b8ch		;6b7c	28 0e 	( . 
	set 2,(ix+043h)		;6b7e	dd cb 43 d6 	. . C . 
	ld hl,l6d2ch		;6b82	21 2c 6d 	! , m 
l6b85h:
	ld a,(hl)			;6b85	7e 	~ 
	inc hl			;6b86	23 	# 
	rst 10h			;6b87	d7 	. 
	djnz l6b85h		;6b88	10 fb 	. . 
	jr l6b44h		;6b8a	18 b8 	. . 
l6b8ch:
	bit 2,(ix+043h)		;6b8c	dd cb 43 56 	. . C V 
	jr z,l6b44h		;6b90	28 b2 	( . 
l6b92h:
	call 015e6h		;6b92	cd e6 15 	. . . 
	djnz l6b92h		;6b95	10 fb 	. . 
	jr l6b44h		;6b97	18 ab 	. . 
l6b99h:
	ld a,(l6c9dh)		;6b99	3a 9d 6c 	: . l 
	or a			;6b9c	b7 	. 
	jr z,l6ba5h		;6b9d	28 06 	( . 
	pop af			;6b9f	f1 	. 
	pop ix		;6ba0	dd e1 	. . 
	jp l6af5h		;6ba2	c3 f5 6a 	. . j 
l6ba5h:
	ld a,010h		;6ba5	3e 10 	> . 
	ld (l6c9dh),a		;6ba7	32 9d 6c 	2 . l 
	pop af			;6baa	f1 	. 
	push af			;6bab	f5 	. 
	call sub_6bc8h		;6bac	cd c8 6b 	. . k 
	ld hl,(068a0h)		;6baf	2a a0 68 	* . h 
	pop af			;6bb2	f1 	. 
	or a			;6bb3	b7 	. 
	ld a,010h		;6bb4	3e 10 	> . 
	jr nz,l6bbah		;6bb6	20 02 	  . 
	ld a,020h		;6bb8	3e 20 	>   
l6bbah:
	ld (hl),a			;6bba	77 	w 
	inc hl			;6bbb	23 	# 
	inc hl			;6bbc	23 	# 
	inc hl			;6bbd	23 	# 
	xor a			;6bbe	af 	. 
	ld (hl),a			;6bbf	77 	w 
	inc hl			;6bc0	23 	# 
	ld (hl),a			;6bc1	77 	w 
	ld hl,00010h		;6bc2	21 10 00 	! . . 
	pop ix		;6bc5	dd e1 	. . 
	ret			;6bc7	c9 	. 
sub_6bc8h:
	ex de,hl			;6bc8	eb 	. 
	or a			;6bc9	b7 	. 
	jr nz,l6bf7h		;6bca	20 2b 	  + 
	ld hl,l6ca0h		;6bcc	21 a0 6c 	! . l 
	ld (hl),003h		;6bcf	36 03 	6 . 
	inc hl			;6bd1	23 	# 
	ld b,00ah		;6bd2	06 0a 	. . 
l6bd4h:
	ld a,(de)			;6bd4	1a 	. 
	or a			;6bd5	b7 	. 
	jr z,l6bdfh		;6bd6	28 07 	( . 
	ld (hl),a			;6bd8	77 	w 
	inc hl			;6bd9	23 	# 
	inc de			;6bda	13 	. 
	djnz l6bd4h		;6bdb	10 f7 	. . 
	jr l6be4h		;6bdd	18 05 	. . 
l6bdfh:
	ld (hl),020h		;6bdf	36 20 	6   
	inc hl			;6be1	23 	# 
	djnz l6bdfh		;6be2	10 fb 	. . 
l6be4h:
	ld de,l6d2dh		;6be4	11 2d 6d 	. - m 
	ex de,hl			;6be7	eb 	. 
	ld bc,00006h		;6be8	01 06 00 	. . . 
	ldir		;6beb	ed b0 	. . 
	xor a			;6bed	af 	. 
	ld de,00011h		;6bee	11 11 00 	. . . 
	ld hl,l6ca0h		;6bf1	21 a0 6c 	! . l 
	jp sub_6c2ah		;6bf4	c3 2a 6c 	. * l 
l6bf7h:
	push de			;6bf7	d5 	. 
	ld de,00011h		;6bf8	11 11 00 	. . . 
	xor a			;6bfb	af 	. 
	ld hl,l6ca0h		;6bfc	21 a0 6c 	! . l 
	call sub_6c3eh		;6bff	cd 3e 6c 	. > l 
	pop de			;6c02	d1 	. 
	ld bc,0000ch		;6c03	01 0c 00 	. . . 
	ld hl,06cabh		;6c06	21 ab 6c 	! . l 
	ld a,020h		;6c09	3e 20 	>   
l6c0bh:
	ld (hl),000h		;6c0b	36 00 	6 . 
	dec hl			;6c0d	2b 	+ 
	dec bc			;6c0e	0b 	. 
	cp (hl)			;6c0f	be 	. 
	jr z,l6c0bh		;6c10	28 f9 	( . 
	ld hl,l6ca0h+1		;6c12	21 a1 6c 	! . l 
	push de			;6c15	d5 	. 
	call l68adh		;6c16	cd ad 68 	. . h 
	pop de			;6c19	d1 	. 
	jr nz,l6bf7h		;6c1a	20 db 	  . 
	ret			;6c1c	c9 	. 
sub_6c1dh:
	ld hl,l6d2ch		;6c1d	21 2c 6d 	! , m 
	ld (hl),003h		;6c20	36 03 	6 . 
	ld b,019h		;6c22	06 19 	. . 
l6c24h:
	inc hl			;6c24	23 	# 
	ld (hl),000h		;6c25	36 00 	6 . 
	djnz l6c24h		;6c27	10 fb 	. . 
	ret			;6c29	c9 	. 
sub_6c2ah:
	push ix		;6c2a	dd e5 	. . 
	push bc			;6c2c	c5 	. 
	push hl			;6c2d	e5 	. 
	push hl			;6c2e	e5 	. 
	pop ix		;6c2f	dd e1 	. . 
	ld b,0c8h		;6c31	06 c8 	. . 
	call sub_6c5ah		;6c33	cd 5a 6c 	. Z l 
	call 004c2h		;6c36	cd c2 04 	. . . 
	pop hl			;6c39	e1 	. 
	pop bc			;6c3a	c1 	. 
	pop ix		;6c3b	dd e1 	. . 
	ret			;6c3d	c9 	. 
sub_6c3eh:
	push ix		;6c3e	dd e5 	. . 
	push hl			;6c40	e5 	. 
	pop ix		;6c41	dd e1 	. . 
	ld b,014h		;6c43	06 14 	. . 
	call sub_6c5ah		;6c45	cd 5a 6c 	. Z l 
l6c48h:
	scf			;6c48	37 	7 
	push af			;6c49	f5 	. 
	call 00556h		;6c4a	cd 56 05 	. V . 
	jr nc,l6c53h		;6c4d	30 04 	0 . 
	pop af			;6c4f	f1 	. 
	pop ix		;6c50	dd e1 	. . 
	ret			;6c52	c9 	. 
l6c53h:
	pop af			;6c53	f1 	. 
	or a			;6c54	b7 	. 
	jr z,l6c48h		;6c55	28 f1 	( . 
	pop ix		;6c57	dd e1 	. . 
	ret			;6c59	c9 	. 
sub_6c5ah:
	push af			;6c5a	f5 	. 
	ld a,002h		;6c5b	3e 02 	> . 
	out (0feh),a		;6c5d	d3 fe 	. . 
l6c5fh:
	halt			;6c5f	76 	v 
	djnz l6c5fh		;6c60	10 fd 	. . 
	pop af			;6c62	f1 	. 
	ret			;6c63	c9 	. 
sub_6c64h:
	ld a,002h		;6c64	3e 02 	> . 
sub_6c66h:
	push hl			;6c66	e5 	. 
	push de			;6c67	d5 	. 
	push bc			;6c68	c5 	. 
	push af			;6c69	f5 	. 
	ld hl,(05c8fh)		;6c6a	2a 8f 5c 	* . \ 
	push hl			;6c6d	e5 	. 
	ld hl,(05c90h)		;6c6e	2a 90 5c 	* . \ 
	push hl			;6c71	e5 	. 
	call 01601h		;6c72	cd 01 16 	. . . 
	pop hl			;6c75	e1 	. 
	ld (05c90h),hl		;6c76	22 90 5c 	" . \ 
	pop hl			;6c79	e1 	. 
	ld (05c8fh),hl		;6c7a	22 8f 5c 	" . \ 
	pop af			;6c7d	f1 	. 
	pop bc			;6c7e	c1 	. 
	pop de			;6c7f	d1 	. 
	pop hl			;6c80	e1 	. 
	ret			;6c81	c9 	. 
l6c82h:
	ldir		;6c82	ed b0 	. . 
	pop hl			;6c84	e1 	. 
	pop de			;6c85	d1 	. 
	jp sub_6c2ah		;6c86	c3 2a 6c 	. * l 
l6c89h:
	ldir		;6c89	ed b0 	. . 
	pop hl			;6c8b	e1 	. 
	pop bc			;6c8c	c1 	. 
l6c8dh:
	push af			;6c8d	f5 	. 
	ld a,(hl)			;6c8e	7e 	~ 
	rst 10h			;6c8f	d7 	. 
	pop af			;6c90	f1 	. 
	cpi		;6c91	ed a1 	. . 
	jp po,sub_6a7bh		;6c93	e2 7b 6a 	. { j 
	jr l6c8dh		;6c96	18 f5 	. . 
l6c98h:
	ld hl,(lb401h)		;6c98	2a 01 b4 	* . . 
	ret			;6c9b	c9 	. 
l6c9ch:
	nop			;6c9c	00 	. 
l6c9dh:
	nop			;6c9d	00 	. 
	nop			;6c9e	00 	. 
	nop			;6c9f	00 	. 
l6ca0h:
	ld hl,(05c57h)		;6ca0	2a 57 5c 	* W \ 
l6ca3h:
	inc hl			;6ca3	23 	# 
	ld (05c53h),hl		;6ca4	22 53 5c 	" S \ 
l6ca7h:
	ld (05c4bh),hl		;6ca7	22 4b 5c 	" K \ 
	ld (hl),080h		;6caa	36 80 	6 . 
	inc hl			;6cac	23 	# 
	ld (05c59h),hl		;6cad	22 59 5c 	" Y \ 
l6cb0h:
	ld (hl),00dh		;6cb0	36 0d 	6 . 
l6cb2h:
	inc hl			;6cb2	23 	# 
	ld (hl),080h		;6cb3	36 80 	6 . 
l6cb5h:
	inc hl			;6cb5	23 	# 
	ld (05c61h),hl		;6cb6	22 61 5c 	" a \ 
l6cb9h:
	ld (05c63h),hl		;6cb9	22 63 5c 	" c \ 
	ld (05c65h),hl		;6cbc	22 65 5c 	" e \ 
l6cbfh:
	ld hl,(05cb2h)		;6cbf	2a b2 5c 	* . \ 
l6cc2h:
	ld (lb401h),hl		;6cc2	22 01 b4 	" . . 
	ld hl,0626fh		;6cc5	21 6f 62 	! o b 
	ld (05cb2h),hl		;6cc8	22 b2 5c 	" . \ 
l6ccbh:
	ld (hl),03eh		;6ccb	36 3e 	6 > 
l6ccdh:
	dec hl			;6ccd	2b 	+ 
l6cceh:
	dec hl			;6cce	2b 	+ 
l6ccfh:
	ld (hl),013h		;6ccf	36 13 	6 . 
l6cd1h:
	dec hl			;6cd1	2b 	+ 
	ld (hl),003h		;6cd2	36 03 	6 . 
	ld (05c3dh),hl		;6cd4	22 3d 5c 	" = \ 
l6cd7h:
	ld a,002h		;6cd7	3e 02 	> . 
l6cd9h:
	ld (05c6bh),a		;6cd9	32 6b 5c 	2 k \ 
	call 00d6bh		;6cdc	cd 6b 0d 	. k . 
	jp l6270h		;6cdf	c3 70 62 	. p b 
	ld (hl),h			;6ce2	74 	t 
	ld l,a			;6ce3	6f 	o 
	jr nz,$+101		;6ce4	20 63 	  c 
	ld l,b			;6ce6	68 	h 
	ld h,l			;6ce7	65 	e 
	ld h,e			;6ce8	63 	c 
	ld l,e			;6ce9	6b 	k 
	jr nz,$+104		;6cea	20 66 	  f 
	ld l,c			;6cec	69 	i 
	ld l,h			;6ced	6c 	l 
	ld h,l			;6cee	65 	e 
	ld l,(hl)			;6cef	6e 	n 
	ld h,c			;6cf0	61 	a 
	ld l,l			;6cf1	6d 	m 
	ld h,l			;6cf2	65 	e 
	dec c			;6cf3	0d 	. 
	ld a,(bc)			;6cf4	0a 	. 
	jr nz,l6d17h		;6cf5	20 20 	    
	jr nz,l6d19h		;6cf7	20 20 	    
	jr nz,$+34		;6cf9	20 20 	    
	jr nz,l6d69h		;6cfb	20 6c 	  l 
	ld h,h			;6cfd	64 	d 
	jr nz,l6d20h		;6cfe	20 20 	    
	jr nz,l6d22h		;6d00	20 20 	    
	jr nz,l6d24h		;6d02	20 20 	    
	ld l,b			;6d04	68 	h 
	ld l,h			;6d05	6c 	l 
	inc l			;6d06	2c 	, 
	ld (hl),h			;6d07	74 	t 
	ld h,d			;6d08	62 	b 
	ld (hl),l			;6d09	75 	u 
	ld h,(hl)			;6d0a	66 	f 
	ld h,(hl)			;6d0b	66 	f 
	dec hl			;6d0c	2b 	+ 
	ld sp,00d31h		;6d0d	31 31 0d 	1 1 . 
	ld a,(bc)			;6d10	0a 	. 
	jr nz,l6d33h		;6d11	20 20 	    
	jr nz,l6d35h		;6d13	20 20 	    
	jr nz,l6d37h		;6d15	20 20 	    
l6d17h:
	jr nz,l6d85h		;6d17	20 6c 	  l 
l6d19h:
	ld h,h			;6d19	64 	d 
	jr nz,l6d3ch		;6d1a	20 20 	    
	jr nz,l6d3eh		;6d1c	20 20 	    
	jr nz,l6d40h		;6d1e	20 20 	    
l6d20h:
	ld h,l			;6d20	65 	e 
	ld h,a			;6d21	67 	g 
l6d22h:
	ld l,c			;6d22	69 	i 
	ld (hl),e			;6d23	73 	s 
l6d24h:
	ld (hl),h			;6d24	74 	t 
	ld h,l			;6d25	65 	e 
	ld (hl),d			;6d26	72 	r 
	ld (hl),e			;6d27	73 	s 
	jr nz,$+102		;6d28	20 64 	  d 
l6d2ah:
	ld h,l			;6d2a	65 	e 
	ld (hl),e			;6d2b	73 	s 
l6d2ch:
	ld (hl),h			;6d2c	74 	t 
l6d2dh:
	ld (hl),d			;6d2d	72 	r 
	ld l,a			;6d2e	6f 	o 
l6d2fh:
	ld a,c			;6d2f	79 	y 
	ld h,l			;6d30	65 	e 
	ld h,h			;6d31	64 	d 
	dec c			;6d32	0d 	. 
l6d33h:
	ld a,(bc)			;6d33	0a 	. 
	dec sp			;6d34	3b 	; 
l6d35h:
	jr nz,l6d57h		;6d35	20 20 	    
l6d37h:
	jr nz,$+69		;6d37	20 43 	  C 
	ld e,c			;6d39	59 	Y 
	jr nz,l6dafh		;6d3a	20 73 	  s 
l6d3ch:
	ld h,l			;6d3c	65 	e 
	ld (hl),h			;6d3d	74 	t 
l6d3eh:
	jr nz,l6da9h		;6d3e	20 69 	  i 
l6d40h:
	ld h,(hl)			;6d40	66 	f 
	ld h,(hl)			;6d41	66 	f 
	jr nz,l6d93h		;6d42	20 4f 	  O 
	ld c,e			;6d44	4b 	K 
	dec sp			;6d45	3b 	; 
	jr nz,$+34		;6d46	20 20 	    
l6d48h:
	jp l6dceh		;6d48	c3 ce 6d 	. . m 
l6d4bh:
	jp l6d9dh		;6d4b	c3 9d 6d 	. . m 
l6d4eh:
	jp l6d8ch		;6d4e	c3 8c 6d 	. . m 
l6d51h:
	jp l6f63h		;6d51	c3 63 6f 	. c o 
sub_6d54h:
	ld hl,(l7477h)		;6d54	2a 77 74 	* w t 
l6d57h:
	ld de,(laf4ah)		;6d57	ed 5b 4a af 	. [ J . 
	ld a,h			;6d5b	7c 	| 
	or l			;6d5c	b5 	. 
	jr nz,l6d67h		;6d5d	20 08 	  . 
	ld h,d			;6d5f	62 	b 
	ld l,e			;6d60	6b 	k 
	ld (l7477h),hl		;6d61	22 77 74 	" w t 
	call l6d8ch		;6d64	cd 8c 6d 	. . m 
l6d67h:
	sbc hl,de		;6d67	ed 52 	. R 
l6d69h:
	ld de,(0af5eh)		;6d69	ed 5b 5e af 	. [ ^ . 
	xor a			;6d6d	af 	. 
	sbc hl,de		;6d6e	ed 52 	. R 
	ld b,h			;6d70	44 	D 
	ld c,l			;6d71	4d 	M 
	jp l7284h		;6d72	c3 84 72 	. . r 
sub_6d75h:
	ld de,l6d82h		;6d75	11 82 6d 	. . m 
	push de			;6d78	d5 	. 
	push hl			;6d79	e5 	. 
	ld de,00006h		;6d7a	11 06 00 	. . . 
	push de			;6d7d	d5 	. 
	call sub_653dh		;6d7e	cd 3d 65 	. = e 
	ret			;6d81	c9 	. 
l6d82h:
	dec h			;6d82	25 	% 
	dec (hl)			;6d83	35 	5 
	ld (hl),l			;6d84	75 	u 
l6d85h:
	jr nz,l6d87h		;6d85	20 00 	  . 
l6d87h:
	ld a,00ah		;6d87	3e 0a 	> . 
	jp l62a6h		;6d89	c3 a6 62 	. . b 
l6d8ch:
	push hl			;6d8c	e5 	. 
	ld hl,(laf4ah)		;6d8d	2a 4a af 	* J . 
	ld (l7479h),hl		;6d90	22 79 74 	" y t 
l6d93h:
	ld (l747eh),hl		;6d93	22 7e 74 	" ~ t 
	ld hl,l7475h		;6d96	21 75 74 	! u t 
	set 3,(hl)		;6d99	cb de 	. . 
	pop hl			;6d9b	e1 	. 
	ret			;6d9c	c9 	. 
l6d9dh:
	push de			;6d9d	d5 	. 
	ld de,(l7479h)		;6d9e	ed 5b 79 74 	. [ y t 
	call sub_6dabh		;6da2	cd ab 6d 	. . m 
	ld (l7479h),de		;6da5	ed 53 79 74 	. S y t 
l6da9h:
	pop de			;6da9	d1 	. 
	ret			;6daa	c9 	. 
sub_6dabh:
	ld hl,(l7477h)		;6dab	2a 77 74 	* w t 
	or a			;6dae	b7 	. 
l6dafh:
	sbc hl,de		;6daf	ed 52 	. R 
	dec hl			;6db1	2b 	+ 
	ret z			;6db2	c8 	. 
	ld hl,l7475h		;6db3	21 75 74 	! u t 
	bit 3,(hl)		;6db6	cb 5e 	. ^ 
	jr z,l6dc2h		;6db8	28 08 	( . 
	res 3,(hl)		;6dba	cb 9e 	. . 
	ld (l747eh),de		;6dbc	ed 53 7e 74 	. S ~ t 
	inc de			;6dc0	13 	. 
	inc de			;6dc1	13 	. 
l6dc2h:
	ld a,(de)			;6dc2	1a 	. 
l6dc3h:
	inc de			;6dc3	13 	. 
	cp 00ah		;6dc4	fe 0a 	. . 
	jr nz,l6dcah		;6dc6	20 02 	  . 
	set 3,(hl)		;6dc8	cb de 	. . 
l6dcah:
	ld h,000h		;6dca	26 00 	& . 
	ld l,a			;6dcc	6f 	o 
	ret			;6dcd	c9 	. 
l6dceh:
	call sub_6e02h		;6dce	cd 02 6e 	. . n 
l6dd1h:
	ld sp,(l6cb5h)		;6dd1	ed 7b b5 6c 	. { . l 
	call sub_7387h		;6dd5	cd 87 73 	. . s 
	ld h,a			;6dd8	67 	g 
	ld l,a			;6dd9	6f 	o 
	ld (06cb7h),hl		;6dda	22 b7 6c 	" . l 
	ld (l6cb9h),hl		;6ddd	22 b9 6c 	" . l 
	call sub_6e2ch		;6de0	cd 2c 6e 	. , n 
	ld hl,l6dd1h		;6de3	21 d1 6d 	! . m 
	push hl			;6de6	e5 	. 
	jr nz,l6e14h		;6de7	20 2b 	  + 
	ld a,(l7470h)		;6de9	3a 70 74 	: p t 
	ld hl,l73e1h		;6dec	21 e1 73 	! . s 
	ld b,00fh		;6def	06 0f 	. . 
l6df1h:
	and 0dfh		;6df1	e6 df 	. . 
	cp (hl)			;6df3	be 	. 
	jr z,l6dfch		;6df4	28 06 	( . 
	inc hl			;6df6	23 	# 
	inc hl			;6df7	23 	# 
	inc hl			;6df8	23 	# 
	djnz l6df1h		;6df9	10 f6 	. . 
	ret			;6dfb	c9 	. 
l6dfch:
	inc hl			;6dfc	23 	# 
	ld e,(hl)			;6dfd	5e 	^ 
	inc hl			;6dfe	23 	# 
	ld d,(hl)			;6dff	56 	V 
	ex de,hl			;6e00	eb 	. 
	jp (hl)			;6e01	e9 	. 
sub_6e02h:
	ld (l6cb5h),sp		;6e02	ed 73 b5 6c 	. s . l 
	call sub_7387h		;6e06	cd 87 73 	. . s 
	call sub_6d54h		;6e09	cd 54 6d 	. T m 
	ld hl,l7435h		;6e0c	21 35 74 	! 5 t 
	jr l6e17h		;6e0f	18 06 	. . 
sub_6e11h:
	call sub_6f0ch		;6e11	cd 0c 6f 	. . o 
l6e14h:
	ld hl,l743eh		;6e14	21 3e 74 	! > t 
l6e17h:
	ld a,(hl)			;6e17	7e 	~ 
	or a			;6e18	b7 	. 
	ret z			;6e19	c8 	. 
	call l62a6h		;6e1a	cd a6 62 	. . b 
	inc hl			;6e1d	23 	# 
	jr l6e17h		;6e1e	18 f7 	. . 
sub_6e20h:
	call sub_6282h		;6e20	cd 82 62 	. . b 
	call sub_628eh		;6e23	cd 8e 62 	. . b 
	ld hl,06d29h		;6e26	21 29 6d 	! ) m 
	ld (hl),00ah		;6e29	36 0a 	6 . 
	ret			;6e2b	c9 	. 
sub_6e2ch:
	ld a,03eh		;6e2c	3e 3e 	> > 
	call l62a6h		;6e2e	cd a6 62 	. . b 
	call sub_6e20h		;6e31	cd 20 6e 	.   n 
	ld hl,l6cd9h		;6e34	21 d9 6c 	! . l 
	call sub_6ec7h		;6e37	cd c7 6e 	. . n 
	ld (l7470h),a		;6e3a	32 70 74 	2 p t 
	ret z			;6e3d	c8 	. 
	call sub_62ach		;6e3e	cd ac 62 	. . b 
	jr nc,l6e5eh		;6e41	30 1b 	0 . 
	call sub_6ed5h		;6e43	cd d5 6e 	. . n 
	ret nz			;6e46	c0 	. 
	inc de			;6e47	13 	. 
	ld a,(de)			;6e48	1a 	. 
	cp 00ah		;6e49	fe 0a 	. . 
	jr nz,l6e58h		;6e4b	20 0b 	  . 
	ld (06cb7h),hl		;6e4d	22 b7 6c 	" . l 
	ld (l6cb9h),hl		;6e50	22 b9 6c 	" . l 
	call sub_6e11h		;6e53	cd 11 6e 	. . n 
	xor a			;6e56	af 	. 
	ret			;6e57	c9 	. 
l6e58h:
	inc de			;6e58	13 	. 
	call sub_72e3h		;6e59	cd e3 72 	. . r 
	xor a			;6e5c	af 	. 
	ret			;6e5d	c9 	. 
l6e5eh:
	call sub_6ec6h		;6e5e	cd c6 6e 	. . n 
	ret z			;6e61	c8 	. 
	cp b			;6e62	b8 	. 
	jr z,l6e74h		;6e63	28 0f 	( . 
	call sub_6ed5h		;6e65	cd d5 6e 	. . n 
	ret nz			;6e68	c0 	. 
	ld (l7471h),hl		;6e69	22 71 74 	" q t 
	ld (06cb7h),hl		;6e6c	22 b7 6c 	" . l 
	ex de,hl			;6e6f	eb 	. 
l6e70h:
	call sub_6ec6h		;6e70	cd c6 6e 	. . n 
	ret z			;6e73	c8 	. 
l6e74h:
	cp b			;6e74	b8 	. 
	jr nz,l6e70h		;6e75	20 f9 	  . 
	call sub_6ec6h		;6e77	cd c6 6e 	. . n 
	ret z			;6e7a	c8 	. 
	cp b			;6e7b	b8 	. 
	jr z,l6e8dh		;6e7c	28 0f 	( . 
	call sub_6ed5h		;6e7e	cd d5 6e 	. . n 
	ret nz			;6e81	c0 	. 
	ld (l7473h),hl		;6e82	22 73 74 	" s t 
	ld (l6cb9h),hl		;6e85	22 b9 6c 	" . l 
	ex de,hl			;6e88	eb 	. 
l6e89h:
	call sub_6ec6h		;6e89	cd c6 6e 	. . n 
	ret z			;6e8c	c8 	. 
l6e8dh:
	cp b			;6e8d	b8 	. 
	jr nz,l6e89h		;6e8e	20 f9 	  . 
	ld c,b			;6e90	48 	H 
	inc hl			;6e91	23 	# 
	ld a,(hl)			;6e92	7e 	~ 
	cp c			;6e93	b9 	. 
	jr z,l6ea7h		;6e94	28 11 	( . 
	ld de,l7447h		;6e96	11 47 74 	. G t 
	call sub_6eabh		;6e99	cd ab 6e 	. . n 
	jr c,l6ea8h		;6e9c	38 0a 	8 . 
	ret z			;6e9e	c8 	. 
	dec hl			;6e9f	2b 	+ 
l6ea0h:
	call sub_6ec6h		;6ea0	cd c6 6e 	. . n 
	ret z			;6ea3	c8 	. 
	cp b			;6ea4	b8 	. 
	jr nz,l6ea0h		;6ea5	20 f9 	  . 
l6ea7h:
	inc hl			;6ea7	23 	# 
l6ea8h:
	ld de,l745bh		;6ea8	11 5b 74 	. [ t 
sub_6eabh:
	ld b,014h		;6eab	06 14 	. . 
	ld a,00ah		;6ead	3e 0a 	> . 
	push de			;6eaf	d5 	. 
	push bc			;6eb0	c5 	. 
l6eb1h:
	ld (de),a			;6eb1	12 	. 
	inc de			;6eb2	13 	. 
	djnz l6eb1h		;6eb3	10 fc 	. . 
	pop bc			;6eb5	c1 	. 
	pop de			;6eb6	d1 	. 
l6eb7h:
	ld a,(hl)			;6eb7	7e 	~ 
	inc hl			;6eb8	23 	# 
	cp c			;6eb9	b9 	. 
	jr nz,l6ebeh		;6eba	20 02 	  . 
	scf			;6ebc	37 	7 
	ret			;6ebd	c9 	. 
l6ebeh:
	cp 00ah		;6ebe	fe 0a 	. . 
	ret z			;6ec0	c8 	. 
	ld (de),a			;6ec1	12 	. 
	inc de			;6ec2	13 	. 
	djnz l6eb7h		;6ec3	10 f2 	. . 
	ret			;6ec5	c9 	. 
sub_6ec6h:
	inc hl			;6ec6	23 	# 
sub_6ec7h:
	ld a,(l7476h)		;6ec7	3a 76 74 	: v t 
	ld b,a			;6eca	47 	G 
l6ecbh:
	ld a,(hl)			;6ecb	7e 	~ 
	inc hl			;6ecc	23 	# 
	cp 020h		;6ecd	fe 20 	.   
	jr z,l6ecbh		;6ecf	28 fa 	( . 
	dec hl			;6ed1	2b 	+ 
	cp 00ah		;6ed2	fe 0a 	. . 
	ret			;6ed4	c9 	. 
sub_6ed5h:
	ex de,hl			;6ed5	eb 	. 
	call sub_64d0h		;6ed6	cd d0 64 	. . d 
	dec de			;6ed9	1b 	. 
	ld a,h			;6eda	7c 	| 
	or l			;6edb	b5 	. 
	jr nz,l6ee0h		;6edc	20 02 	  . 
	inc a			;6ede	3c 	< 
	ret			;6edf	c9 	. 
l6ee0h:
	bit 7,h		;6ee0	cb 7c 	. | 
	ret			;6ee2	c9 	. 
	ld hl,(l7471h)		;6ee3	2a 71 74 	* q t 
l6ee6h:
	push hl			;6ee6	e5 	. 
	call sub_6d75h		;6ee7	cd 75 6d 	. u m 
	call sub_6e20h		;6eea	cd 20 6e 	.   n 
	cp 007h		;6eed	fe 07 	. . 
	pop hl			;6eef	e1 	. 
	ret z			;6ef0	c8 	. 
	push hl			;6ef1	e5 	. 
	call sub_72e0h		;6ef2	cd e0 72 	. . r 
	pop de			;6ef5	d1 	. 
	ld hl,(l7473h)		;6ef6	2a 73 74 	* s t 
	add hl,de			;6ef9	19 	. 
	ld a,h			;6efa	7c 	| 
	rlca			;6efb	07 	. 
	ret c			;6efc	d8 	. 
	jr l6ee6h		;6efd	18 e7 	. . 
sub_6effh:
	ld bc,(06cb7h)		;6eff	ed 4b b7 6c 	. K . l 
	ld a,c			;6f03	79 	y 
	or b			;6f04	b0 	. 
	ret z			;6f05	c8 	. 
	ld hl,(l6cb9h)		;6f06	2a b9 6c 	* . l 
	ld a,l			;6f09	7d 	} 
	or h			;6f0a	b4 	. 
	ret			;6f0b	c9 	. 
sub_6f0ch:
	call sub_6effh		;6f0c	cd ff 6e 	. . n 
	ret z			;6f0f	c8 	. 
	push hl			;6f10	e5 	. 
	call sub_733eh		;6f11	cd 3e 73 	. > s 
	pop bc			;6f14	c1 	. 
	ret c			;6f15	d8 	. 
	push hl			;6f16	e5 	. 
	call sub_733eh		;6f17	cd 3e 73 	. > s 
	pop de			;6f1a	d1 	. 
	call z,sub_7358h		;6f1b	cc 58 73 	. X s 
	or a			;6f1e	b7 	. 
	sbc hl,de		;6f1f	ed 52 	. R 
	ret z			;6f21	c8 	. 
	ret c			;6f22	d8 	. 
	pop bc			;6f23	c1 	. 
	push hl			;6f24	e5 	. 
	add hl,de			;6f25	19 	. 
	ld bc,(l7477h)		;6f26	ed 4b 77 74 	. K w t 
	call sub_6f3ah		;6f2a	cd 3a 6f 	. : o 
	ld (l7477h),de		;6f2d	ed 53 77 74 	. S w t 
	pop hl			;6f31	e1 	. 
	call sub_62ddh		;6f32	cd dd 62 	. . b 
	ld b,h			;6f35	44 	D 
	ld c,l			;6f36	4d 	M 
	jp l7284h		;6f37	c3 84 72 	. . r 
sub_6f3ah:
	push de			;6f3a	d5 	. 
	ex de,hl			;6f3b	eb 	. 
	ld h,b			;6f3c	60 	` 
	ld l,c			;6f3d	69 	i 
	or a			;6f3e	b7 	. 
	sbc hl,de		;6f3f	ed 52 	. R 
	ld b,h			;6f41	44 	D 
	ld c,l			;6f42	4d 	M 
	pop hl			;6f43	e1 	. 
	sbc hl,de		;6f44	ed 52 	. R 
	add hl,de			;6f46	19 	. 
	ex de,hl			;6f47	eb 	. 
	jr c,l6f54h		;6f48	38 0a 	8 . 
	add hl,bc			;6f4a	09 	. 
	ex de,hl			;6f4b	eb 	. 
	add hl,bc			;6f4c	09 	. 
	ex de,hl			;6f4d	eb 	. 
	inc bc			;6f4e	03 	. 
	push de			;6f4f	d5 	. 
	lddr		;6f50	ed b8 	. . 
	pop de			;6f52	d1 	. 
	ret			;6f53	c9 	. 
l6f54h:
	inc bc			;6f54	03 	. 
	ldir		;6f55	ed b0 	. . 
	dec de			;6f57	1b 	. 
	ret			;6f58	c9 	. 
	ld a,(l7447h)		;6f59	3a 47 74 	: G t 
	cp 020h		;6f5c	fe 20 	.   
	ret z			;6f5e	c8 	. 
	ld (l7476h),a		;6f5f	32 76 74 	2 v t 
	ret			;6f62	c9 	. 
l6f63h:
	call sub_6e02h		;6f63	cd 02 6e 	. . n 
	ld hl,(l7477h)		;6f66	2a 77 74 	* w t 
	ld de,(laf4ah)		;6f69	ed 5b 4a af 	. [ J . 
	or a			;6f6d	b7 	. 
	sbc hl,de		;6f6e	ed 52 	. R 
	ld hl,l6dd1h		;6f70	21 d1 6d 	! . m 
	push hl			;6f73	e5 	. 
	ret z			;6f74	c8 	. 
	ld hl,(l747eh)		;6f75	2a 7e 74 	* ~ t 
	ld e,(hl)			;6f78	5e 	^ 
	inc hl			;6f79	23 	# 
	ld d,(hl)			;6f7a	56 	V 
	ld (06cb7h),de		;6f7b	ed 53 b7 6c 	. S . l 
	jr l6f8eh		;6f7f	18 0d 	. . 
	pop hl			;6f81	e1 	. 
	call l6d87h		;6f82	cd 87 6d 	. . m 
	ld bc,(06cb7h)		;6f85	ed 4b b7 6c 	. K . l 
	call sub_733eh		;6f89	cd 3e 73 	. > s 
	ret nz			;6f8c	c0 	. 
	inc hl			;6f8d	23 	# 
l6f8eh:
	inc hl			;6f8e	23 	# 
	call sub_7396h		;6f8f	cd 96 73 	. . s 
	call sub_7377h		;6f92	cd 77 73 	. w s 
	call sub_7374h		;6f95	cd 74 73 	. t s 
l6f98h:
	ld c,(ix+000h)		;6f98	dd 4e 00 	. N . 
	ld de,l6f98h		;6f9b	11 98 6f 	. . o 
	push de			;6f9e	d5 	. 
	bit 0,c		;6f9f	cb 41 	. A 
	jr nz,l6fe7h		;6fa1	20 44 	  D 
	bit 1,c		;6fa3	cb 49 	. I 
	jr nz,l6fb4h		;6fa5	20 0d 	  . 
	ld a,04ch		;6fa7	3e 4c 	> L 
	call sub_62a3h		;6fa9	cd a3 62 	. . b 
	ld hl,l740eh		;6fac	21 0e 74 	! . t 
	ld b,00dh		;6faf	06 0d 	. . 
	jp l6df1h		;6fb1	c3 f1 6d 	. . m 
l6fb4h:
	ld a,02ah		;6fb4	3e 2a 	> * 
	call sub_62a3h		;6fb6	cd a3 62 	. . b 
	cp 00ah		;6fb9	fe 0a 	. . 
	jr nz,l6fc2h		;6fbb	20 05 	  . 
	res 1,(ix+000h)		;6fbd	dd cb 00 8e 	. . . . 
	ret			;6fc1	c9 	. 
l6fc2h:
	cp 008h		;6fc2	fe 08 	. . 
	jr nz,l6fcbh		;6fc4	20 05 	  . 
	call sub_7021h		;6fc6	cd 21 70 	. ! p 
	jr l7011h		;6fc9	18 46 	. F 
l6fcbh:
	ld e,a			;6fcb	5f 	_ 
	ld hl,l6cd9h		;6fcc	21 d9 6c 	! . l 
	call sub_7331h		;6fcf	cd 31 73 	. 1 s 
	cp 051h		;6fd2	fe 51 	. Q 
	ret z			;6fd4	c8 	. 
	ld b,h			;6fd5	44 	D 
	ld c,l			;6fd6	4d 	M 
	dec bc			;6fd7	0b 	. 
	ld hl,(l6cb9h+2)		;6fd8	2a bb 6c 	* . l 
	push de			;6fdb	d5 	. 
	push hl			;6fdc	e5 	. 
	ld d,h			;6fdd	54 	T 
	ld e,l			;6fde	5d 	] 
	inc de			;6fdf	13 	. 
	call sub_6f3ah		;6fe0	cd 3a 6f 	. : o 
	pop hl			;6fe3	e1 	. 
	pop de			;6fe4	d1 	. 
	jr l7001h		;6fe5	18 1a 	. . 
l6fe7h:
	ld a,02bh		;6fe7	3e 2b 	> + 
	call sub_62a3h		;6fe9	cd a3 62 	. . b 
	cp 008h		;6fec	fe 08 	. . 
	jr z,sub_7021h		;6fee	28 31 	( 1 
	cp 00ah		;6ff0	fe 0a 	. . 
	jr nz,l6ff9h		;6ff2	20 05 	  . 
	res 0,(ix+000h)		;6ff4	dd cb 00 86 	. . . . 
	ret			;6ff8	c9 	. 
l6ff9h:
	ld hl,(l6cb9h+2)		;6ff9	2a bb 6c 	* . l 
	ld e,a			;6ffc	5f 	_ 
	ld a,(hl)			;6ffd	7e 	~ 
	cp 00ah		;6ffe	fe 0a 	. . 
	ret z			;7000	c8 	. 
l7001h:
	ld (hl),e			;7001	73 	s 
sub_7002h:
	ld hl,(l6cb9h+2)		;7002	2a bb 6c 	* . l 
	ld a,(hl)			;7005	7e 	~ 
	cp 00ah		;7006	fe 0a 	. . 
	ret z			;7008	c8 	. 
	call l62a6h		;7009	cd a6 62 	. . b 
	inc hl			;700c	23 	# 
l700dh:
	ld (l6cb9h+2),hl		;700d	22 bb 6c 	" . l 
	ret			;7010	c9 	. 
l7011h:
	ld hl,(l6cb9h+2)		;7011	2a bb 6c 	* . l 
	ld a,(hl)			;7014	7e 	~ 
	cp 00ah		;7015	fe 0a 	. . 
	ret z			;7017	c8 	. 
	ld bc,06d29h		;7018	01 29 6d 	. ) m 
	ld d,h			;701b	54 	T 
	ld e,l			;701c	5d 	] 
	inc hl			;701d	23 	# 
	jp sub_6f3ah		;701e	c3 3a 6f 	. : o 
sub_7021h:
	ld hl,(l6cb9h+2)		;7021	2a bb 6c 	* . l 
	ld de,l6cd9h		;7024	11 d9 6c 	. . l 
	or a			;7027	b7 	. 
	sbc hl,de		;7028	ed 52 	. R 
	add hl,de			;702a	19 	. 
	ret z			;702b	c8 	. 
	dec hl			;702c	2b 	+ 
	ld a,008h		;702d	3e 08 	> . 
	call l62a6h		;702f	cd a6 62 	. . b 
	jr l700dh		;7032	18 d9 	. . 
	set 0,(ix+000h)		;7034	dd cb 00 c6 	. . . . 
	ret			;7038	c9 	. 
l7039h:
	call sub_7002h		;7039	cd 02 70 	. . p 
	jr nz,l7039h		;703c	20 fb 	  . 
	set 1,(ix+000h)		;703e	dd cb 00 ce 	. . . . 
	ret			;7042	c9 	. 
l7043h:
	call l7011h		;7043	cd 11 70 	. . p 
	ret z			;7046	c8 	. 
	jr l7043h		;7047	18 fa 	. . 
	ld de,(l747bh)		;7049	ed 5b 7b 74 	. [ { t 
	call sub_7133h		;704d	cd 33 71 	. 3 q 
	jr nc,l7054h		;7050	30 02 	0 . 
	pop hl			;7052	e1 	. 
	ret			;7053	c9 	. 
l7054h:
	ld hl,l7447h		;7054	21 47 74 	! G t 
	call sub_7331h		;7057	cd 31 73 	. 1 s 
	dec a			;705a	3d 	= 
	ld e,a			;705b	5f 	_ 
	ld hl,l745bh		;705c	21 5b 74 	! [ t 
	push hl			;705f	e5 	. 
	call sub_7331h		;7060	cd 31 73 	. 1 s 
	dec a			;7063	3d 	= 
	push af			;7064	f5 	. 
	sub e			;7065	93 	. 
	ld b,000h		;7066	06 00 	. . 
	ld d,b			;7068	50 	P 
	ld c,a			;7069	4f 	O 
	jp p,l706eh		;706a	f2 6e 70 	. n p 
	dec b			;706d	05 	. 
l706eh:
	ld hl,l6cd9h		;706e	21 d9 6c 	! . l 
	call sub_7331h		;7071	cd 31 73 	. 1 s 
	dec hl			;7074	2b 	+ 
	push hl			;7075	e5 	. 
	sub 051h		;7076	d6 51 	. Q 
	add a,c			;7078	81 	. 
	jp p,l709fh		;7079	f2 9f 70 	. . p 
	ld hl,(l747bh)		;707c	2a 7b 74 	* { t 
	add hl,de			;707f	19 	. 
	push hl			;7080	e5 	. 
	add hl,bc			;7081	09 	. 
	ex de,hl			;7082	eb 	. 
	pop hl			;7083	e1 	. 
	pop bc			;7084	c1 	. 
	call sub_6f3ah		;7085	cd 3a 6f 	. : o 
	pop bc			;7088	c1 	. 
	pop hl			;7089	e1 	. 
	ld c,b			;708a	48 	H 
	ld b,000h		;708b	06 00 	. . 
	inc c			;708d	0c 	. 
	dec c			;708e	0d 	. 
	ld de,(l747bh)		;708f	ed 5b 7b 74 	. [ { t 
	jr z,l7097h		;7093	28 02 	( . 
	ldir		;7095	ed b0 	. . 
l7097h:
	call sub_7130h		;7097	cd 30 71 	. 0 q 
	jp nc,l714ch		;709a	d2 4c 71 	. L q 
l709dh:
	pop hl			;709d	e1 	. 
	ret			;709e	c9 	. 
l709fh:
	pop hl			;709f	e1 	. 
	pop hl			;70a0	e1 	. 
	pop hl			;70a1	e1 	. 
	ld de,(l747bh)		;70a2	ed 5b 7b 74 	. [ { t 
	inc de			;70a6	13 	. 
	jr l7097h		;70a7	18 ee 	. . 
	ld a,003h		;70a9	3e 03 	> . 
	ld (06cb4h),a		;70ab	32 b4 6c 	2 . l 
	ld bc,(06cb7h)		;70ae	ed 4b b7 6c 	. K . l 
	ld a,b			;70b2	78 	x 
	or c			;70b3	b1 	. 
	jr nz,l70b7h		;70b4	20 01 	  . 
	inc c			;70b6	0c 	. 
l70b7h:
	call sub_733eh		;70b7	cd 3e 73 	. > s 
	ret c			;70ba	d8 	. 
l70bbh:
	ld a,(l747dh)		;70bb	3a 7d 74 	: } t 
	ld b,a			;70be	47 	G 
l70bfh:
	push bc			;70bf	c5 	. 
	ld c,(hl)			;70c0	4e 	N 
	inc hl			;70c1	23 	# 
	ld b,(hl)			;70c2	46 	F 
	ex de,hl			;70c3	eb 	. 
	ld hl,(l6cb9h)		;70c4	2a b9 6c 	* . l 
	ld a,h			;70c7	7c 	| 
	or l			;70c8	b5 	. 
	jr nz,l70ceh		;70c9	20 03 	  . 
	ld hl,l7fffh		;70cb	21 ff 7f 	! .  
l70ceh:
	sbc hl,bc		;70ce	ed 42 	. B 
	jr c,l709dh		;70d0	38 cb 	8 . 
	ld h,b			;70d2	60 	` 
	ld l,c			;70d3	69 	i 
	push de			;70d4	d5 	. 
	ld a,(06cb4h)		;70d5	3a b4 6c 	: . l 
	or a			;70d8	b7 	. 
	call z,sub_6d75h		;70d9	cc 75 6d 	. u m 
	pop hl			;70dc	e1 	. 
	push hl			;70dd	e5 	. 
l70deh:
	inc hl			;70de	23 	# 
	push hl			;70df	e5 	. 
	ld a,(hl)			;70e0	7e 	~ 
	push af			;70e1	f5 	. 
	ld l,a			;70e2	6f 	o 
	ld de,(06cb4h)		;70e3	ed 5b b4 6c 	. [ . l 
	cp 00ah		;70e7	fe 0a 	. . 
	jr nz,l70ech		;70e9	20 01 	  . 
	add hl,de			;70eb	19 	. 
l70ech:
	xor a			;70ec	af 	. 
	ld h,a			;70ed	67 	g 
	ld d,a			;70ee	57 	W 
	push hl			;70ef	e5 	. 
	push de			;70f0	d5 	. 
	call sub_627ch		;70f1	cd 7c 62 	. | b 
	pop af			;70f4	f1 	. 
	pop hl			;70f5	e1 	. 
	cp 00ah		;70f6	fe 0a 	. . 
	jr nz,l70deh		;70f8	20 e4 	  . 
	pop hl			;70fa	e1 	. 
	dec hl			;70fb	2b 	+ 
	call sub_7358h		;70fc	cd 58 73 	. X s 
	pop bc			;70ff	c1 	. 
	ret z			;7100	c8 	. 
	ld a,(06cb4h)		;7101	3a b4 6c 	: . l 
	or a			;7104	b7 	. 
	jr z,l7111h		;7105	28 0a 	( . 
	push hl			;7107	e5 	. 
	call sub_6297h		;7108	cd 97 62 	. . b 
	ld a,h			;710b	7c 	| 
	or l			;710c	b5 	. 
	pop hl			;710d	e1 	. 
	ret nz			;710e	c0 	. 
	jr l70bfh		;710f	18 ae 	. . 
l7111h:
	djnz l70bfh		;7111	10 ac 	. . 
	push hl			;7113	e5 	. 
	call sub_6285h		;7114	cd 85 62 	. . b 
	pop hl			;7117	e1 	. 
	cp 007h		;7118	fe 07 	. . 
	ret z			;711a	c8 	. 
	jr l70bbh		;711b	18 9e 	. . 
	ld hl,(06cb7h)		;711d	2a b7 6c 	* . l 
	ld a,h			;7120	7c 	| 
	or a			;7121	b7 	. 
	ld a,0ffh		;7122	3e ff 	> . 
	jr nz,l712ch		;7124	20 06 	  . 
	ld a,l			;7126	7d 	} 
	or a			;7127	b7 	. 
	jr nz,l712ch		;7128	20 02 	  . 
	ld a,00fh		;712a	3e 0f 	> . 
l712ch:
	ld (l747dh),a		;712c	32 7d 74 	2 } t 
	ret			;712f	c9 	. 
sub_7130h:
	call l6d87h		;7130	cd 87 6d 	. . m 
sub_7133h:
	push de			;7133	d5 	. 
	ld hl,(06cb7h)		;7134	2a b7 6c 	* . l 
	call sub_72e0h		;7137	cd e0 72 	. . r 
	push hl			;713a	e5 	. 
	call sub_7396h		;713b	cd 96 73 	. . s 
	pop bc			;713e	c1 	. 
	dec bc			;713f	0b 	. 
	dec bc			;7140	0b 	. 
	pop de			;7141	d1 	. 
	jr l718ah		;7142	18 46 	. F 
	call sub_7169h		;7144	cd 69 71 	. i q 
	ret c			;7147	d8 	. 
	ld hl,l6f98h		;7148	21 98 6f 	! . o 
	push hl			;714b	e5 	. 
l714ch:
	ld de,(l747bh)		;714c	ed 5b 7b 74 	. [ { t 
	push de			;7150	d5 	. 
	call sub_7377h		;7151	cd 77 73 	. w s 
	call sub_7374h		;7154	cd 74 73 	. t s 
	ld hl,(l6cb9h+2)		;7157	2a bb 6c 	* . l 
l715ah:
	pop de			;715a	d1 	. 
	or a			;715b	b7 	. 
	sbc hl,de		;715c	ed 52 	. R 
	add hl,de			;715e	19 	. 
	ret z			;715f	c8 	. 
	inc hl			;7160	23 	# 
	push de			;7161	d5 	. 
	push hl			;7162	e5 	. 
	call sub_7002h		;7163	cd 02 70 	. . p 
	pop hl			;7166	e1 	. 
	jr l715ah		;7167	18 f1 	. . 
sub_7169h:
	ld bc,(l7471h)		;7169	ed 4b 71 74 	. K q t 
	call sub_733eh		;716d	cd 3e 73 	. > s 
	ret c			;7170	d8 	. 
l7171h:
	push hl			;7171	e5 	. 
	ld e,(hl)			;7172	5e 	^ 
	inc hl			;7173	23 	# 
	ld d,(hl)			;7174	56 	V 
	inc hl			;7175	23 	# 
	push de			;7176	d5 	. 
	call sub_7396h		;7177	cd 96 73 	. . s 
	pop de			;717a	d1 	. 
	pop bc			;717b	c1 	. 
	ld hl,(l7473h)		;717c	2a 73 74 	* s t 
	or a			;717f	b7 	. 
	sbc hl,de		;7180	ed 52 	. R 
	ret c			;7182	d8 	. 
	ld (06cb7h),de		;7183	ed 53 b7 6c 	. S . l 
	ld de,l6cd9h		;7187	11 d9 6c 	. . l 
l718ah:
	ld (l747bh),de		;718a	ed 53 7b 74 	. S { t 
	ld hl,l7447h		;718e	21 47 74 	! G t 
	ld a,(hl)			;7191	7e 	~ 
	cp 00ah		;7192	fe 0a 	. . 
	scf			;7194	37 	7 
	ret z			;7195	c8 	. 
l7196h:
	ld a,(hl)			;7196	7e 	~ 
	cp 00ah		;7197	fe 0a 	. . 
	ret z			;7199	c8 	. 
	ld a,(de)			;719a	1a 	. 
	cp 00ah		;719b	fe 0a 	. . 
	jr z,l71a6h		;719d	28 07 	( . 
	cp (hl)			;719f	be 	. 
	inc hl			;71a0	23 	# 
	inc de			;71a1	13 	. 
	jr z,l7196h		;71a2	28 f2 	( . 
	jr l718ah		;71a4	18 e4 	. . 
l71a6h:
	ld h,b			;71a6	60 	` 
	ld l,c			;71a7	69 	i 
	call sub_7358h		;71a8	cd 58 73 	. X s 
	jr nz,l7171h		;71ab	20 c4 	  . 
	scf			;71ad	37 	7 
	ret			;71ae	c9 	. 
	ld bc,(l7471h)		;71af	ed 4b 71 74 	. K q t 
	call sub_733eh		;71b3	cd 3e 73 	. > s 
	ret c			;71b6	d8 	. 
	push hl			;71b7	e5 	. 
	ld bc,(l7473h)		;71b8	ed 4b 73 74 	. K s t 
	call sub_733eh		;71bc	cd 3e 73 	. > s 
	pop de			;71bf	d1 	. 
	or a			;71c0	b7 	. 
	sbc hl,de		;71c1	ed 52 	. R 
	ret c			;71c3	d8 	. 
	ld hl,l7475h		;71c4	21 75 74 	! u t 
	set 3,(hl)		;71c7	cb de 	. . 
	push de			;71c9	d5 	. 
	ld bc,l71efh		;71ca	01 ef 71 	. . q 
	call sub_71f0h		;71cd	cd f0 71 	. . q 
l71d0h:
	pop de			;71d0	d1 	. 
l71d1h:
	jp c,l6e14h		;71d1	da 14 6e 	. . n 
	call sub_6dabh		;71d4	cd ab 6d 	. . m 
	ld a,h			;71d7	7c 	| 
	or a			;71d8	b7 	. 
	jr nz,l71e6h		;71d9	20 0b 	  . 
	push de			;71db	d5 	. 
	push hl			;71dc	e5 	. 
	ld hl,(l6cb2h)		;71dd	2a b2 6c 	* . l 
	push hl			;71e0	e5 	. 
	call sub_627ch		;71e1	cd 7c 62 	. | b 
	jr l71d0h		;71e4	18 ea 	. . 
l71e6h:
	ld hl,(l6cb2h)		;71e6	2a b2 6c 	* . l 
	push hl			;71e9	e5 	. 
	call sub_627fh		;71ea	cd 7f 62 	.  b 
	ret			;71ed	c9 	. 
l71eeh:
	ld (hl),d			;71ee	72 	r 
l71efh:
	ld (hl),a			;71ef	77 	w 
sub_71f0h:
	ld hl,l7447h		;71f0	21 47 74 	! G t 
	push hl			;71f3	e5 	. 
	ld a,00ah		;71f4	3e 0a 	> . 
	dec hl			;71f6	2b 	+ 
l71f7h:
	inc hl			;71f7	23 	# 
	cp (hl)			;71f8	be 	. 
	jr nz,l71f7h		;71f9	20 fc 	  . 
	ld (hl),000h		;71fb	36 00 	6 . 
	ex (sp),hl			;71fd	e3 	. 
	push hl			;71fe	e5 	. 
	push bc			;71ff	c5 	. 
	call sub_6276h		;7200	cd 76 62 	. v b 
	ld (l6cb2h),hl		;7203	22 b2 6c 	" . l 
	ld a,h			;7206	7c 	| 
	or l			;7207	b5 	. 
	pop hl			;7208	e1 	. 
	ld (hl),00ah		;7209	36 0a 	6 . 
	ret nz			;720b	c0 	. 
	ccf			;720c	3f 	? 
	ret			;720d	c9 	. 
l720eh:
	pop hl			;720e	e1 	. 
	ld a,00ah		;720f	3e 0a 	> . 
	cp b			;7211	b8 	. 
	jr z,l721bh		;7212	28 07 	( . 
	call sub_7280h		;7214	cd 80 72 	. . r 
	ld (hl),a			;7217	77 	w 
	inc hl			;7218	23 	# 
	jr l7222h		;7219	18 07 	. . 
l721bh:
	dec hl			;721b	2b 	+ 
	ld bc,0fffeh		;721c	01 fe ff 	. . . 
	call l7284h		;721f	cd 84 72 	. . r 
l7222h:
	ld (l7477h),hl		;7222	22 77 74 	" w t 
	jr l71e6h		;7225	18 bf 	. . 
	ld bc,l71eeh		;7227	01 ee 71 	. . q 
	call sub_71f0h		;722a	cd f0 71 	. . q 
	jr c,l71d1h		;722d	38 a2 	8 . 
	ld hl,(l7477h)		;722f	2a 77 74 	* w t 
	ld bc,(laf4ah)		;7232	ed 4b 4a af 	. K J . 
	xor a			;7236	af 	. 
	sbc hl,bc		;7237	ed 42 	. B 
	add hl,bc			;7239	09 	. 
	ld de,00000h		;723a	11 00 00 	. . . 
	dec hl			;723d	2b 	+ 
	jr z,l726fh		;723e	28 2f 	( / 
	push hl			;7240	e5 	. 
	ld a,00ah		;7241	3e 0a 	> . 
l7243h:
	or a			;7243	b7 	. 
	sbc hl,bc		;7244	ed 42 	. B 
	add hl,bc			;7246	09 	. 
	jr z,l724eh		;7247	28 05 	( . 
	dec hl			;7249	2b 	+ 
	cp (hl)			;724a	be 	. 
	jr nz,l7243h		;724b	20 f6 	  . 
	inc hl			;724d	23 	# 
l724eh:
	ld e,(hl)			;724e	5e 	^ 
	inc hl			;724f	23 	# 
	ld d,(hl)			;7250	56 	V 
	pop hl			;7251	e1 	. 
	xor a			;7252	af 	. 
	jr l726fh		;7253	18 1a 	. . 
l7255h:
	push hl			;7255	e5 	. 
	push de			;7256	d5 	. 
	push af			;7257	f5 	. 
	ld hl,(l6cb2h)		;7258	2a b2 6c 	* . l 
	push hl			;725b	e5 	. 
	call sub_6279h		;725c	cd 79 62 	. y b 
	pop bc			;725f	c1 	. 
	pop de			;7260	d1 	. 
	ld a,h			;7261	7c 	| 
	or a			;7262	b7 	. 
	jr nz,l720eh		;7263	20 a9 	  . 
	ld a,l			;7265	7d 	} 
	pop hl			;7266	e1 	. 
	call sub_7280h		;7267	cd 80 72 	. . r 
	ld (hl),a			;726a	77 	w 
	cp 00ah		;726b	fe 0a 	. . 
	jr nz,l7255h		;726d	20 e6 	  . 
l726fh:
	call sub_7280h		;726f	cd 80 72 	. . r 
	push hl			;7272	e5 	. 
	ld hl,0000ah		;7273	21 0a 00 	! . . 
	add hl,de			;7276	19 	. 
	ex de,hl			;7277	eb 	. 
	pop hl			;7278	e1 	. 
	ld (hl),e			;7279	73 	s 
	call sub_7280h		;727a	cd 80 72 	. . r 
	ld (hl),d			;727d	72 	r 
	jr l7255h		;727e	18 d5 	. . 
sub_7280h:
	inc hl			;7280	23 	# 
	ld bc,00001h		;7281	01 01 00 	. . . 
l7284h:
	push hl			;7284	e5 	. 
	push de			;7285	d5 	. 
	push af			;7286	f5 	. 
	push bc			;7287	c5 	. 
	ld bc,00000h		;7288	01 00 00 	. . . 
	push bc			;728b	c5 	. 
	call sub_629dh		;728c	cd 9d 62 	. . b 
	pop bc			;728f	c1 	. 
	pop bc			;7290	c1 	. 
	pop af			;7291	f1 	. 
	pop de			;7292	d1 	. 
	pop hl			;7293	e1 	. 
	ret			;7294	c9 	. 
	call sub_6effh		;7295	cd ff 6e 	. . n 
	ret z			;7298	c8 	. 
	call sub_72a1h		;7299	cd a1 72 	. . r 
	ret m			;729c	f8 	. 
	set 2,(ix+000h)		;729d	dd cb 00 d6 	. . . . 
sub_72a1h:
	ld hl,(06cb7h)		;72a1	2a b7 6c 	* . l 
	push hl			;72a4	e5 	. 
	ld hl,(laf4ah)		;72a5	2a 4a af 	* J . 
	call sub_7362h		;72a8	cd 62 73 	. b s 
l72abh:
	pop de			;72ab	d1 	. 
	ret z			;72ac	c8 	. 
	bit 2,(ix+000h)		;72ad	dd cb 00 56 	. . . V 
	jr z,l72b7h		;72b1	28 04 	( . 
	ld (hl),e			;72b3	73 	s 
	inc hl			;72b4	23 	# 
	ld (hl),d			;72b5	72 	r 
	dec hl			;72b6	2b 	+ 
l72b7h:
	ex de,hl			;72b7	eb 	. 
	ld bc,(l6cb9h)		;72b8	ed 4b b9 6c 	. K . l 
	or a			;72bc	b7 	. 
	adc hl,bc		;72bd	ed 4a 	. J 
	ret m			;72bf	f8 	. 
	push hl			;72c0	e5 	. 
	ex de,hl			;72c1	eb 	. 
	call sub_7358h		;72c2	cd 58 73 	. X s 
	jr l72abh		;72c5	18 e4 	. . 
	ld bc,(l7471h)		;72c7	ed 4b 71 74 	. K q t 
	call sub_733eh		;72cb	cd 3e 73 	. > s 
	ret nz			;72ce	c0 	. 
	inc hl			;72cf	23 	# 
	inc hl			;72d0	23 	# 
	call sub_7396h		;72d1	cd 96 73 	. . s 
	ld hl,(l7473h)		;72d4	2a 73 74 	* s t 
	jr sub_72e0h		;72d7	18 07 	. . 
	call sub_736dh		;72d9	cd 6d 73 	. m s 
	ld hl,(06cb7h)		;72dc	2a b7 6c 	* . l 
	pop bc			;72df	c1 	. 
sub_72e0h:
	ld de,l6cd9h		;72e0	11 d9 6c 	. . l 
sub_72e3h:
	ex de,hl			;72e3	eb 	. 
	push hl			;72e4	e5 	. 
	push de			;72e5	d5 	. 
	ld b,d			;72e6	42 	B 
	ld c,e			;72e7	4b 	K 
	call sub_7331h		;72e8	cd 31 73 	. 1 s 
	ld d,000h		;72eb	16 00 	. . 
	ld e,a			;72ed	5f 	_ 
	push de			;72ee	d5 	. 
	call sub_733eh		;72ef	cd 3e 73 	. > s 
	pop de			;72f2	d1 	. 
	push de			;72f3	d5 	. 
	push hl			;72f4	e5 	. 
	jr z,l72fbh		;72f5	28 04 	( . 
	inc de			;72f7	13 	. 
	inc de			;72f8	13 	. 
	jr l7307h		;72f9	18 0c 	. . 
l72fbh:
	inc hl			;72fb	23 	# 
	inc hl			;72fc	23 	# 
	call sub_7331h		;72fd	cd 31 73 	. 1 s 
	neg		;7300	ed 44 	. D 
	add a,e			;7302	83 	. 
	ld e,a			;7303	5f 	_ 
	jr c,l7307h		;7304	38 01 	8 . 
	dec d			;7306	15 	. 
l7307h:
	push de			;7307	d5 	. 
	ld b,d			;7308	42 	B 
	ld c,e			;7309	4b 	K 
	ld a,b			;730a	78 	x 
	or a			;730b	b7 	. 
	call z,l7284h		;730c	cc 84 72 	. . r 
	ex de,hl			;730f	eb 	. 
	add hl,de			;7310	19 	. 
	ex de,hl			;7311	eb 	. 
	ld bc,(l7477h)		;7312	ed 4b 77 74 	. K w t 
	call sub_6f3ah		;7316	cd 3a 6f 	. : o 
	ld (l7477h),de		;7319	ed 53 77 74 	. S w t 
	pop bc			;731d	c1 	. 
	ld a,b			;731e	78 	x 
	or a			;731f	b7 	. 
	call nz,l7284h		;7320	c4 84 72 	. . r 
	pop hl			;7323	e1 	. 
	pop bc			;7324	c1 	. 
	pop de			;7325	d1 	. 
	ld (hl),e			;7326	73 	s 
	inc hl			;7327	23 	# 
	ld (hl),d			;7328	72 	r 
	inc hl			;7329	23 	# 
	ex de,hl			;732a	eb 	. 
	pop hl			;732b	e1 	. 
	push de			;732c	d5 	. 
	ldir		;732d	ed b0 	. . 
	pop hl			;732f	e1 	. 
	ret			;7330	c9 	. 
sub_7331h:
	ld a,00ah		;7331	3e 0a 	> . 
	push bc			;7333	c5 	. 
	ld bc,00000h		;7334	01 00 00 	. . . 
	cpir		;7337	ed b1 	. . 
	ld a,c			;7339	79 	y 
	neg		;733a	ed 44 	. D 
	pop bc			;733c	c1 	. 
	ret			;733d	c9 	. 
sub_733eh:
	ld hl,(laf4ah)		;733e	2a 4a af 	* J . 
	call sub_7362h		;7341	cd 62 73 	. b s 
l7344h:
	jr nz,l7349h		;7344	20 03 	  . 
	sub 001h		;7346	d6 01 	. . 
	ret			;7348	c9 	. 
l7349h:
	ld e,(hl)			;7349	5e 	^ 
	inc hl			;734a	23 	# 
	ld d,(hl)			;734b	56 	V 
	or a			;734c	b7 	. 
	ex de,hl			;734d	eb 	. 
	sbc hl,bc		;734e	ed 42 	. B 
	ex de,hl			;7350	eb 	. 
	dec hl			;7351	2b 	+ 
	ret nc			;7352	d0 	. 
	call sub_7358h		;7353	cd 58 73 	. X s 
	jr l7344h		;7356	18 ec 	. . 
sub_7358h:
	inc hl			;7358	23 	# 
	inc hl			;7359	23 	# 
	ld a,00ah		;735a	3e 0a 	> . 
	push bc			;735c	c5 	. 
	ld c,000h		;735d	0e 00 	. . 
	cpir		;735f	ed b1 	. . 
	pop bc			;7361	c1 	. 
sub_7362h:
	push de			;7362	d5 	. 
	ld de,(l7477h)		;7363	ed 5b 77 74 	. [ w t 
	xor a			;7367	af 	. 
	sbc hl,de		;7368	ed 52 	. R 
	add hl,de			;736a	19 	. 
	pop de			;736b	d1 	. 
	ret			;736c	c9 	. 
sub_736dh:
	call sub_7002h		;736d	cd 02 70 	. . p 
	jr nz,sub_736dh		;7370	20 fb 	  . 
	jr l7384h		;7372	18 10 	. . 
sub_7374h:
	call sub_736dh		;7374	cd 6d 73 	. m s 
sub_7377h:
	ld hl,l6cd9h		;7377	21 d9 6c 	! . l 
	ld (l6cb9h+2),hl		;737a	22 bb 6c 	" . l 
	ld hl,(06cb7h)		;737d	2a b7 6c 	* . l 
	jp sub_6d75h		;7380	c3 75 6d 	. u m 
	pop hl			;7383	e1 	. 
l7384h:
	jp l6d87h		;7384	c3 87 6d 	. . m 
sub_7387h:
	call sub_6282h		;7387	cd 82 62 	. . b 
	ld ix,l7475h		;738a	dd 21 75 74 	. ! u t 
	xor a			;738e	af 	. 
	ld (ix+000h),a		;738f	dd 77 00 	. w . 
	ld (06cb4h),a		;7392	32 b4 6c 	2 . l 
	ret			;7395	c9 	. 
sub_7396h:
	ld de,l6cd9h		;7396	11 d9 6c 	. . l 
l7399h:
	ld a,(hl)			;7399	7e 	~ 
	ldi		;739a	ed a0 	. . 
	cp 00ah		;739c	fe 0a 	. . 
	jr nz,l7399h		;739e	20 f9 	  . 
	ret			;73a0	c9 	. 
l73a1h:
	ld hl,(laf4ah)		;73a1	2a 4a af 	* J . 
	call sub_6d75h		;73a4	cd 75 6d 	. u m 
	ld hl,(l7477h)		;73a7	2a 77 74 	* w t 
	call sub_6d75h		;73aa	cd 75 6d 	. u m 
	jr l7384h		;73ad	18 d5 	. . 
	ld a,(l7476h)		;73af	3a 76 74 	: v t 
	call l62a6h		;73b2	cd a6 62 	. . b 
	ld hl,(l7471h)		;73b5	2a 71 74 	* q t 
	call sub_6d75h		;73b8	cd 75 6d 	. u m 
	ld hl,(l7473h)		;73bb	2a 73 74 	* s t 
	call sub_6d75h		;73be	cd 75 6d 	. u m 
	call l6d87h		;73c1	cd 87 6d 	. . m 
	ld hl,l7447h		;73c4	21 47 74 	! G t 
l73c7h:
	ld a,(hl)			;73c7	7e 	~ 
	or a			;73c8	b7 	. 
	jr z,l73a1h		;73c9	28 d6 	( . 
	call l62a6h		;73cb	cd a6 62 	. . b 
	inc hl			;73ce	23 	# 
	cp 00ah		;73cf	fe 0a 	. . 
	jr nz,l73c7h		;73d1	20 f4 	  . 
l73d3h:
	ld a,(hl)			;73d3	7e 	~ 
	inc hl			;73d4	23 	# 
	cp 00ah		;73d5	fe 0a 	. . 
	jr z,l73d3h		;73d7	28 fa 	( . 
	dec hl			;73d9	2b 	+ 
	jr l73c7h		;73da	18 eb 	. . 
	ld l,0ffh		;73dc	2e ff 	. . 
	jp 00055h		;73de	c3 55 00 	. U . 
l73e1h:
	ld b,d			;73e1	42 	B 
	call c,04373h		;73e2	dc 73 43 	. s C 
	ld (hl),e			;73e5	73 	s 
	ld h,d			;73e6	62 	b 
	ld b,h			;73e7	44 	D 
	ld de,0456eh		;73e8	11 6e 45 	. n E 
	add a,l			;73eb	85 	. 
	ld l,a			;73ec	6f 	o 
	ld b,(hl)			;73ed	46 	F 
	ld b,h			;73ee	44 	D 
	ld (hl),c			;73ef	71 	q 
	ld b,a			;73f0	47 	G 
	daa			;73f1	27 	' 
	ld (hl),d			;73f2	72 	r 
	ld c,c			;73f3	49 	I 
	ex (sp),hl			;73f4	e3 	. 
	ld l,(hl)			;73f5	6e 	n 
	ld c,h			;73f6	4c 	L 
	xor (hl)			;73f7	ae 	. 
	ld (hl),b			;73f8	70 	p 
	ld c,e			;73f9	4b 	K 
	dec e			;73fa	1d 	. 
	ld (hl),c			;73fb	71 	q 
	ld c,l			;73fc	4d 	M 
	rst 0			;73fd	c7 	. 
	ld (hl),d			;73fe	72 	r 
	ld c,(hl)			;73ff	4e 	N 
	sub l			;7400	95 	. 
	ld (hl),d			;7401	72 	r 
	ld d,b			;7402	50 	P 
	xor a			;7403	af 	. 
	ld (hl),c			;7404	71 	q 
	ld d,e			;7405	53 	S 
	ld e,c			;7406	59 	Y 
	ld l,a			;7407	6f 	o 
	ld d,(hl)			;7408	56 	V 
	xor a			;7409	af 	. 
	ld (hl),e			;740a	73 	s 
	ld d,a			;740b	57 	W 
	xor c			;740c	a9 	. 
	ld (hl),b			;740d	70 	p 
l740eh:
	add hl,bc			;740e	09 	. 
	ld (bc),a			;740f	02 	. 
	ld (hl),b			;7410	70 	p 
	inc c			;7411	0c 	. 
	ld hl,04370h		;7412	21 70 43 	! p C 
	inc (hl)			;7415	34 	4 
	ld (hl),b			;7416	70 	p 
	ld a,(bc)			;7417	0a 	. 
	exx			;7418	d9 	. 
	ld (hl),d			;7419	72 	r 
	ld b,(hl)			;741a	46 	F 
	and d			;741b	a2 	. 
	ld (hl),b			;741c	70 	p 
	ld c,c			;741d	49 	I 
	ld a,070h		;741e	3e 70 	> p 
	ld c,e			;7420	4b 	K 
	ld de,04c70h		;7421	11 70 4c 	. p L 
	ld (hl),h			;7424	74 	t 
	ld (hl),e			;7425	73 	s 
	ld d,c			;7426	51 	Q 
	add a,e			;7427	83 	. 
	ld (hl),e			;7428	73 	s 
	ld d,e			;7429	53 	S 
	ld c,c			;742a	49 	I 
	ld (hl),b			;742b	70 	p 
	ld d,d			;742c	52 	R 
	add a,c			;742d	81 	. 
	ld l,a			;742e	6f 	o 
	ld e,b			;742f	58 	X 
	add hl,sp			;7430	39 	9 
	ld (hl),b			;7431	70 	p 
	ld e,d			;7432	5a 	Z 
	ld b,e			;7433	43 	C 
	ld (hl),b			;7434	70 	p 
l7435h:
	ld a,(bc)			;7435	0a 	. 
	ld h,l			;7436	65 	e 
	ld h,h			;7437	64 	d 
	ld l,c			;7438	69 	i 
	ld (hl),h			;7439	74 	t 
	ld a,(00a0ah)		;743a	3a 0a 0a 	: . . 
	nop			;743d	00 	. 
l743eh:
	ld d,b			;743e	50 	P 
	ld h,c			;743f	61 	a 
	ld (hl),d			;7440	72 	r 
	ld h,h			;7441	64 	d 
	ld l,a			;7442	6f 	o 
	ld l,(hl)			;7443	6e 	n 
	ccf			;7444	3f 	? 
	ld a,(bc)			;7445	0a 	. 
	nop			;7446	00 	. 
l7447h:
	ld a,(bc)			;7447	0a 	. 
	nop			;7448	00 	. 
	nop			;7449	00 	. 
	nop			;744a	00 	. 
	nop			;744b	00 	. 
	nop			;744c	00 	. 
	nop			;744d	00 	. 
	nop			;744e	00 	. 
	nop			;744f	00 	. 
	nop			;7450	00 	. 
	nop			;7451	00 	. 
	nop			;7452	00 	. 
	nop			;7453	00 	. 
	nop			;7454	00 	. 
	nop			;7455	00 	. 
	nop			;7456	00 	. 
	nop			;7457	00 	. 
	nop			;7458	00 	. 
	nop			;7459	00 	. 
	nop			;745a	00 	. 
l745bh:
	ld a,(bc)			;745b	0a 	. 
	nop			;745c	00 	. 
	nop			;745d	00 	. 
	nop			;745e	00 	. 
	nop			;745f	00 	. 
	nop			;7460	00 	. 
	nop			;7461	00 	. 
	nop			;7462	00 	. 
	nop			;7463	00 	. 
	nop			;7464	00 	. 
	nop			;7465	00 	. 
	nop			;7466	00 	. 
	nop			;7467	00 	. 
	nop			;7468	00 	. 
	nop			;7469	00 	. 
	nop			;746a	00 	. 
	nop			;746b	00 	. 
	nop			;746c	00 	. 
	nop			;746d	00 	. 
	nop			;746e	00 	. 
	nop			;746f	00 	. 
l7470h:
	ld c,c			;7470	49 	I 
l7471h:
	ld a,(bc)			;7471	0a 	. 
	nop			;7472	00 	. 
l7473h:
	ld a,(bc)			;7473	0a 	. 
	nop			;7474	00 	. 
l7475h:
	nop			;7475	00 	. 
l7476h:
	inc l			;7476	2c 	, 
l7477h:
	nop			;7477	00 	. 
	nop			;7478	00 	. 
l7479h:
	nop			;7479	00 	. 
	nop			;747a	00 	. 
l747bh:
	nop			;747b	00 	. 
	nop			;747c	00 	. 
l747dh:
	ld a,(bc)			;747d	0a 	. 
l747eh:
	nop			;747e	00 	. 
	nop			;747f	00 	. 
l7480h:
	ld sp,06268h		;7480	31 68 62 	1 h b 
	nop			;7483	00 	. 
	nop			;7484	00 	. 
	nop			;7485	00 	. 
	jp l748ch		;7486	c3 8c 74 	. . t 
l7489h:
	jp 00000h		;7489	c3 00 00 	. . . 
l748ch:
	call sub_76cbh		;748c	cd cb 76 	. . v 
	call sub_77fbh		;748f	cd fb 77 	. . w 
	jp l7489h		;7492	c3 89 74 	. . t 
l7495h:
	nop			;7495	00 	. 
	xor a			;7496	af 	. 
	pop bc			;7497	c1 	. 
	ld (bc),a			;7498	02 	. 
	rst 28h			;7499	ef 	. 
	xor (hl)			;749a	ae 	. 
	defb 0fdh,0b7h,0c3h	;illegal sequence		;749b	fd b7 c3 	. . . 
	jp po,lc376h		;749e	e2 76 c3 	. v . 
	adc a,c			;74a1	89 	. 
	ld (hl),h			;74a2	74 	t 
	jp l76e2h		;74a3	c3 e2 76 	. . v 
	jp l76e2h		;74a6	c3 e2 76 	. . v 
	jp l76e2h		;74a9	c3 e2 76 	. . v 
	jp l76e2h		;74ac	c3 e2 76 	. . v 
	jp l76e2h		;74af	c3 e2 76 	. . v 
	jp l76e2h		;74b2	c3 e2 76 	. . v 
	jp l76e2h		;74b5	c3 e2 76 	. . v 
	jp l76e2h		;74b8	c3 e2 76 	. . v 
	jp l76e2h		;74bb	c3 e2 76 	. . v 
	jp l76e2h		;74be	c3 e2 76 	. . v 
	jp l76e2h		;74c1	c3 e2 76 	. . v 
	ld l,e			;74c4	6b 	k 
	ld h,l			;74c5	65 	e 
	ld h,l			;74c6	65 	e 
	ld (hl),b			;74c7	70 	p 
	jr nz,$+117		;74c8	20 73 	  s 
	ld (hl),h			;74ca	74 	t 
	ld (hl),d			;74cb	72 	r 
	ld h,l			;74cc	65 	e 
	pop hl			;74cd	e1 	. 
	ld e,(hl)			;74ce	5e 	^ 
	inc hl			;74cf	23 	# 
	ld d,(hl)			;74d0	56 	V 
	inc hl			;74d1	23 	# 
	push hl			;74d2	e5 	. 
	ld hl,(l7495h)		;74d3	2a 95 74 	* . t 
	add hl,de			;74d6	19 	. 
	ld a,(hl)			;74d7	7e 	~ 
	inc hl			;74d8	23 	# 
	ld h,(hl)			;74d9	66 	f 
	ld l,a			;74da	6f 	o 
	ret			;74db	c9 	. 
	pop hl			;74dc	e1 	. 
l74ddh:
	ld e,(hl)			;74dd	5e 	^ 
	inc hl			;74de	23 	# 
	push hl			;74df	e5 	. 
	ld d,000h		;74e0	16 00 	. . 
	ld hl,(l7495h)		;74e2	2a 95 74 	* . t 
	add hl,de			;74e5	19 	. 
	ld a,(hl)			;74e6	7e 	~ 
	inc hl			;74e7	23 	# 
	ld h,(hl)			;74e8	66 	f 
	ld l,a			;74e9	6f 	o 
	ret			;74ea	c9 	. 
	pop hl			;74eb	e1 	. 
	ld e,(hl)			;74ec	5e 	^ 
	inc hl			;74ed	23 	# 
	ld d,(hl)			;74ee	56 	V 
	inc hl			;74ef	23 	# 
	push hl			;74f0	e5 	. 
	ld hl,(l7495h)		;74f1	2a 95 74 	* . t 
	add hl,de			;74f4	19 	. 
	ld l,(hl)			;74f5	6e 	n 
	ret			;74f6	c9 	. 
	pop hl			;74f7	e1 	. 
	ld e,(hl)			;74f8	5e 	^ 
	inc hl			;74f9	23 	# 
	push hl			;74fa	e5 	. 
	ld d,000h		;74fb	16 00 	. . 
	ld hl,(l7495h)		;74fd	2a 95 74 	* . t 
	add hl,de			;7500	19 	. 
	ld l,(hl)			;7501	6e 	n 
	ret			;7502	c9 	. 
	pop hl			;7503	e1 	. 
	ld e,(hl)			;7504	5e 	^ 
	inc hl			;7505	23 	# 
	ld d,(hl)			;7506	56 	V 
	inc hl			;7507	23 	# 
	push hl			;7508	e5 	. 
	ex de,hl			;7509	eb 	. 
	add hl,bc			;750a	09 	. 
	ld a,(hl)			;750b	7e 	~ 
	inc hl			;750c	23 	# 
	ld h,(hl)			;750d	66 	f 
	ld l,a			;750e	6f 	o 
	ret			;750f	c9 	. 
sub_7510h:
	pop hl			;7510	e1 	. 
	ld e,(hl)			;7511	5e 	^ 
	inc hl			;7512	23 	# 
	push hl			;7513	e5 	. 
	ex de,hl			;7514	eb 	. 
	ld h,000h		;7515	26 00 	& . 
	add hl,bc			;7517	09 	. 
	ld a,(hl)			;7518	7e 	~ 
	inc hl			;7519	23 	# 
	ld h,(hl)			;751a	66 	f 
	ld l,a			;751b	6f 	o 
	ret			;751c	c9 	. 
sub_751dh:
	ld hl,00001h		;751d	21 01 00 	! . . 
	ret z			;7520	c8 	. 
	dec hl			;7521	2b 	+ 
	ret			;7522	c9 	. 
sub_7523h:
	ld hl,00000h		;7523	21 00 00 	! . . 
	ret z			;7526	c8 	. 
	inc hl			;7527	23 	# 
	ret			;7528	c9 	. 
sub_7529h:
	ld hl,00001h		;7529	21 01 00 	! . . 
	ret c			;752c	d8 	. 
	dec hl			;752d	2b 	+ 
	ret			;752e	c9 	. 
sub_752fh:
	ld hl,00000h		;752f	21 00 00 	! . . 
	ret c			;7532	d8 	. 
	inc hl			;7533	23 	# 
	ret			;7534	c9 	. 
	ld hl,00001h		;7535	21 01 00 	! . . 
	ret p			;7538	f0 	. 
	dec hl			;7539	2b 	+ 
	ret			;753a	c9 	. 
	ld hl,00001h		;753b	21 01 00 	! . . 
	ret m			;753e	f8 	. 
	dec hl			;753f	2b 	+ 
	ret			;7540	c9 	. 
	ld de,00001h		;7541	11 01 00 	. . . 
	ret z			;7544	c8 	. 
	dec de			;7545	1b 	. 
	ret			;7546	c9 	. 
	ld de,00000h		;7547	11 00 00 	. . . 
	ret z			;754a	c8 	. 
	inc de			;754b	13 	. 
	ret			;754c	c9 	. 
	ld de,00001h		;754d	11 01 00 	. . . 
	ret c			;7550	d8 	. 
	dec de			;7551	1b 	. 
	ret			;7552	c9 	. 
	ld de,00000h		;7553	11 00 00 	. . . 
	ret c			;7556	d8 	. 
	inc de			;7557	13 	. 
	ret			;7558	c9 	. 
	ld de,00001h		;7559	11 01 00 	. . . 
	ret p			;755c	f0 	. 
	dec de			;755d	1b 	. 
	ret			;755e	c9 	. 
	ld de,00001h		;755f	11 01 00 	. . . 
	ret m			;7562	f8 	. 
	dec de			;7563	1b 	. 
	ret			;7564	c9 	. 
sub_7565h:
	ld a,l			;7565	7d 	} 
	cp e			;7566	bb 	. 
	ret nz			;7567	c0 	. 
	ld a,h			;7568	7c 	| 
	cp d			;7569	ba 	. 
	ret			;756a	c9 	. 
	ex de,hl			;756b	eb 	. 
l756ch:
	ld a,d			;756c	7a 	z 
	cp h			;756d	bc 	. 
	ret nz			;756e	c0 	. 
	ld a,e			;756f	7b 	{ 
	cp l			;7570	bd 	. 
	ret			;7571	c9 	. 
	ex de,hl			;7572	eb 	. 
l7573h:
	ld a,h			;7573	7c 	| 
	cp d			;7574	ba 	. 
	ret nz			;7575	c0 	. 
	ld a,l			;7576	7d 	} 
	cp e			;7577	bb 	. 
	ret			;7578	c9 	. 
	ex de,hl			;7579	eb 	. 
	ld a,h			;757a	7c 	| 
	xor d			;757b	aa 	. 
	jp p,l756ch		;757c	f2 6c 75 	. l u 
	ld a,d			;757f	7a 	z 
	or a			;7580	b7 	. 
	ret p			;7581	f0 	. 
	scf			;7582	37 	7 
	ret			;7583	c9 	. 
	ex de,hl			;7584	eb 	. 
	ld a,h			;7585	7c 	| 
	xor d			;7586	aa 	. 
	jp p,l7573h		;7587	f2 73 75 	. s u 
	ld a,h			;758a	7c 	| 
	or a			;758b	b7 	. 
	ret p			;758c	f0 	. 
	scf			;758d	37 	7 
	ret			;758e	c9 	. 
	ld a,d			;758f	7a 	z 
	push af			;7590	f5 	. 
	call sub_75dah		;7591	cd da 75 	. . u 
	ex de,hl			;7594	eb 	. 
	call sub_75dah		;7595	cd da 75 	. . u 
	ex de,hl			;7598	eb 	. 
	call sub_75a9h		;7599	cd a9 75 	. . u 
	pop af			;759c	f1 	. 
	or a			;759d	b7 	. 
	ret p			;759e	f0 	. 
	ld a,h			;759f	7c 	| 
	cpl			;75a0	2f 	/ 
	ld h,a			;75a1	67 	g 
	ld a,l			;75a2	7d 	} 
	cpl			;75a3	2f 	/ 
	ld l,a			;75a4	6f 	o 
	inc hl			;75a5	23 	# 
	ret			;75a6	c9 	. 
	nop			;75a7	00 	. 
	nop			;75a8	00 	. 
sub_75a9h:
	ld a,h			;75a9	7c 	| 
	or l			;75aa	b5 	. 
	ret z			;75ab	c8 	. 
	push de			;75ac	d5 	. 
	push hl			;75ad	e5 	. 
	call sub_7609h		;75ae	cd 09 76 	. . v 
	pop de			;75b1	d1 	. 
	call sub_75ebh		;75b2	cd eb 75 	. . u 
	ld a,h			;75b5	7c 	| 
	cpl			;75b6	2f 	/ 
	ld h,a			;75b7	67 	g 
	ld a,l			;75b8	7d 	} 
	cpl			;75b9	2f 	/ 
	ld l,a			;75ba	6f 	o 
	inc hl			;75bb	23 	# 
	pop de			;75bc	d1 	. 
	add hl,de			;75bd	19 	. 
	ret			;75be	c9 	. 
	xor a			;75bf	af 	. 
	ld (l7723h),a		;75c0	32 23 77 	2 # w 
	call sub_75dah		;75c3	cd da 75 	. . u 
	ex de,hl			;75c6	eb 	. 
	call sub_75dah		;75c7	cd da 75 	. . u 
	call sub_75ebh		;75ca	cd eb 75 	. . u 
l75cdh:
	ld a,(l7723h)		;75cd	3a 23 77 	: # w 
	rra			;75d0	1f 	. 
	ret nc			;75d1	d0 	. 
	ld a,h			;75d2	7c 	| 
	cpl			;75d3	2f 	/ 
	ld h,a			;75d4	67 	g 
	ld a,l			;75d5	7d 	} 
	cpl			;75d6	2f 	/ 
	ld l,a			;75d7	6f 	o 
	inc hl			;75d8	23 	# 
	ret			;75d9	c9 	. 
sub_75dah:
	ld a,h			;75da	7c 	| 
	or a			;75db	b7 	. 
	ret p			;75dc	f0 	. 
l75ddh:
	cpl			;75dd	2f 	/ 
	ld h,a			;75de	67 	g 
	ld a,l			;75df	7d 	} 
	cpl			;75e0	2f 	/ 
	ld l,a			;75e1	6f 	o 
	inc hl			;75e2	23 	# 
	ld a,(l7723h)		;75e3	3a 23 77 	: # w 
	inc a			;75e6	3c 	< 
	ld (l7723h),a		;75e7	32 23 77 	2 # w 
	ret			;75ea	c9 	. 
sub_75ebh:
	push bc			;75eb	c5 	. 
	call sub_75f1h		;75ec	cd f1 75 	. . u 
	pop bc			;75ef	c1 	. 
	ret			;75f0	c9 	. 
sub_75f1h:
	ld b,h			;75f1	44 	D 
	ld c,l			;75f2	4d 	M 
	ld hl,00000h		;75f3	21 00 00 	! . . 
l75f6h:
	ld a,b			;75f6	78 	x 
	or c			;75f7	b1 	. 
	ret z			;75f8	c8 	. 
	ld a,b			;75f9	78 	x 
	rra			;75fa	1f 	. 
	ld b,a			;75fb	47 	G 
	ld a,c			;75fc	79 	y 
	rra			;75fd	1f 	. 
	ld c,a			;75fe	4f 	O 
	jp nc,l7603h		;75ff	d2 03 76 	. . v 
	add hl,de			;7602	19 	. 
l7603h:
	ex de,hl			;7603	eb 	. 
	add hl,hl			;7604	29 	) 
	ex de,hl			;7605	eb 	. 
	jp l75f6h		;7606	c3 f6 75 	. . u 
sub_7609h:
	ld a,h			;7609	7c 	| 
	or l			;760a	b5 	. 
	ret z			;760b	c8 	. 
	push bc			;760c	c5 	. 
	call sub_7614h		;760d	cd 14 76 	. . v 
	ld h,b			;7610	60 	` 
	ld l,c			;7611	69 	i 
	pop bc			;7612	c1 	. 
	ret			;7613	c9 	. 
sub_7614h:
	ld b,001h		;7614	06 01 	. . 
l7616h:
	ld a,h			;7616	7c 	| 
	or a			;7617	b7 	. 
	jp m,l7620h		;7618	fa 20 76 	.   v 
	add hl,hl			;761b	29 	) 
	inc b			;761c	04 	. 
	jp l7616h		;761d	c3 16 76 	. . v 
l7620h:
	ex de,hl			;7620	eb 	. 
	ld a,b			;7621	78 	x 
	ld bc,00000h		;7622	01 00 00 	. . . 
	push af			;7625	f5 	. 
l7626h:
	call sub_765dh		;7626	cd 5d 76 	. ] v 
	jp c,l7637h		;7629	da 37 76 	. 7 v 
	inc bc			;762c	03 	. 
	push de			;762d	d5 	. 
	ld a,d			;762e	7a 	z 
	cpl			;762f	2f 	/ 
	ld d,a			;7630	57 	W 
	ld a,e			;7631	7b 	{ 
	cpl			;7632	2f 	/ 
	ld e,a			;7633	5f 	_ 
	inc de			;7634	13 	. 
	add hl,de			;7635	19 	. 
	pop de			;7636	d1 	. 
l7637h:
	xor a			;7637	af 	. 
	ld a,d			;7638	7a 	z 
	rra			;7639	1f 	. 
	ld d,a			;763a	57 	W 
	ld a,e			;763b	7b 	{ 
	rra			;763c	1f 	. 
	ld e,a			;763d	5f 	_ 
	pop af			;763e	f1 	. 
	dec a			;763f	3d 	= 
	ret z			;7640	c8 	. 
	push af			;7641	f5 	. 
	ld a,c			;7642	79 	y 
	rla			;7643	17 	. 
	ld c,a			;7644	4f 	O 
	ld a,b			;7645	78 	x 
	rla			;7646	17 	. 
	ld b,a			;7647	47 	G 
	jp l7626h		;7648	c3 26 76 	. & v 
	xor a			;764b	af 	. 
	ld (l7723h),a		;764c	32 23 77 	2 # w 
	call sub_75dah		;764f	cd da 75 	. . u 
	ex de,hl			;7652	eb 	. 
	call sub_75dah		;7653	cd da 75 	. . u 
	ex de,hl			;7656	eb 	. 
	call sub_7609h		;7657	cd 09 76 	. . v 
	jp l75cdh		;765a	c3 cd 75 	. . u 
sub_765dh:
	ld a,h			;765d	7c 	| 
	cp d			;765e	ba 	. 
	ret c			;765f	d8 	. 
	ret nz			;7660	c0 	. 
	ld a,l			;7661	7d 	} 
	cp e			;7662	bb 	. 
	ret			;7663	c9 	. 
	ex de,hl			;7664	eb 	. 
sub_7665h:
	inc e			;7665	1c 	. 
l7666h:
	dec e			;7666	1d 	. 
	ret z			;7667	c8 	. 
	xor a			;7668	af 	. 
	ld a,h			;7669	7c 	| 
	rra			;766a	1f 	. 
	ld h,a			;766b	67 	g 
	ld a,l			;766c	7d 	} 
	rra			;766d	1f 	. 
	ld l,a			;766e	6f 	o 
	jp l7666h		;766f	c3 66 76 	. f v 
	ex de,hl			;7672	eb 	. 
	inc e			;7673	1c 	. 
l7674h:
	dec e			;7674	1d 	. 
	ret z			;7675	c8 	. 
	add hl,hl			;7676	29 	) 
	jp l7674h		;7677	c3 74 76 	. t v 
sub_767ah:
	ld a,h			;767a	7c 	| 
	cpl			;767b	2f 	/ 
	ld h,a			;767c	67 	g 
	ld a,l			;767d	7d 	} 
	cpl			;767e	2f 	/ 
	ld l,a			;767f	6f 	o 
	inc hl			;7680	23 	# 
	ret			;7681	c9 	. 
	ld a,d			;7682	7a 	z 
	cpl			;7683	2f 	/ 
	ld d,a			;7684	57 	W 
	ld a,e			;7685	7b 	{ 
	cpl			;7686	2f 	/ 
	ld e,a			;7687	5f 	_ 
	inc de			;7688	13 	. 
	ret			;7689	c9 	. 
	ld hl,00004h		;768a	21 04 00 	! . . 
l768dh:
	add hl,sp			;768d	39 	9 
	ld a,(hl)			;768e	7e 	~ 
	inc hl			;768f	23 	# 
	ld h,(hl)			;7690	66 	f 
	ld l,a			;7691	6f 	o 
	ret			;7692	c9 	. 
	ld hl,00006h		;7693	21 06 00 	! . . 
	jp l768dh		;7696	c3 8d 76 	. . v 
	ld hl,00008h		;7699	21 08 00 	! . . 
	jp l768dh		;769c	c3 8d 76 	. . v 
	ld hl,0000ah		;769f	21 0a 00 	! . . 
	jp l768dh		;76a2	c3 8d 76 	. . v 
	ld hl,0000ch		;76a5	21 0c 00 	! . . 
	jp l768dh		;76a8	c3 8d 76 	. . v 
	ld hl,0000eh		;76ab	21 0e 00 	! . . 
	jp l768dh		;76ae	c3 8d 76 	. . v 
	ld hl,00010h		;76b1	21 10 00 	! . . 
	jp l768dh		;76b4	c3 8d 76 	. . v 
	ld de,0770bh		;76b7	11 0b 77 	. . w 
	ld hl,00004h		;76ba	21 04 00 	! . . 
	add hl,sp			;76bd	39 	9 
	push bc			;76be	c5 	. 
	ld b,00eh		;76bf	06 0e 	. . 
l76c1h:
	ld a,(hl)			;76c1	7e 	~ 
	ld (de),a			;76c2	12 	. 
	inc hl			;76c3	23 	# 
	inc de			;76c4	13 	. 
	dec b			;76c5	05 	. 
	jp nz,l76c1h		;76c6	c2 c1 76 	. . v 
	pop bc			;76c9	c1 	. 
	ret			;76ca	c9 	. 
sub_76cbh:
	pop hl			;76cb	e1 	. 
	ld (l7723h+2),hl		;76cc	22 25 77 	" % w 
	ld hl,00000h		;76cf	21 00 00 	! . . 
	push hl			;76d2	e5 	. 
	ld hl,00001h		;76d3	21 01 00 	! . . 
	push hl			;76d6	e5 	. 
	xor a			;76d7	af 	. 
	ld (07729h),a		;76d8	32 29 77 	2 ) w 
	ld (076fah),a		;76db	32 fa 76 	2 . v 
	ld hl,(l7723h+2)		;76de	2a 25 77 	* % w 
	jp (hl)			;76e1	e9 	. 
l76e2h:
	ld hl,0ffffh		;76e2	21 ff ff 	! . . 
	ret			;76e5	c9 	. 
	jr nz,$-49		;76e6	20 cd 	  . 
	inc a			;76e8	3c 	< 
	nop			;76e9	00 	. 
	jp z,00518h		;76ea	ca 18 05 	. . . 
	ld c,011h		;76ed	0e 11 	. . 
	ld hl,005a6h		;76ef	21 a6 05 	! . . 
	ld de,00545h		;76f2	11 45 05 	. E . 
	call 000b7h		;76f5	cd b7 00 	. . . 
	jp nz,0017eh		;76f8	c2 7e 01 	. ~ . 
	jp 00150h		;76fb	c3 50 01 	. P . 
	ld c,00ah		;76fe	0e 0a 	. . 
	ld hl,005ceh		;7700	21 ce 05 	! . . 
	call 000b7h		;7703	cd b7 00 	. . . 
	jp nz,00192h		;7706	c2 92 01 	. . . 
	call 00150h		;7709	cd 50 01 	. P . 
	call 0008ch		;770c	cd 8c 00 	. . . 
	jp 00151h		;770f	c3 51 01 	. Q . 
	ld c,006h		;7712	0e 06 	. . 
	ld hl,005e6h		;7714	21 e6 05 	! . . 
	call 000b7h		;7717	cd b7 00 	. . . 
	jp nz,001aah		;771a	c2 aa 01 	. . . 
	call 00150h		;771d	cd 50 01 	. P . 
	call 0007dh		;7720	cd 7d 00 	. } . 
l7723h:
	call 00151h		;7723	cd 51 01 	. Q . 
	ld a,b			;7726	78 	x 
	jp 00151h		;7727	c3 51 01 	. Q . 
	ld c,001h		;772a	0e 01 	. . 
	ld hl,005eah		;772c	21 ea 05 	! . . 
	call 000b7h		;772f	cd b7 00 	. . . 
	jp nz,001c6h		;7732	c2 c6 01 	. . . 
	call 000dbh		;7735	cd db 00 	. . . 
	call 00093h		;7738	cd 93 00 	. . . 
	ld b,a			;773b	47 	G 
	ld c,040h		;773c	0e 40 	. @ 
	call 000dbh		;773e	cd db 00 	. . . 
l7741h:
	push bc			;7741	c5 	. 
	ld hl,00000h		;7742	21 00 00 	! . . 
	add hl,sp			;7745	39 	9 
	ld sp,hl			;7746	f9 	. 
	ld b,h			;7747	44 	D 
	ld c,l			;7748	4d 	M 
	call sub_7510h		;7749	cd 10 75 	. . u 
	ld b,0e5h		;774c	06 e5 	. . 
	call sub_7510h		;774e	cd 10 75 	. . u 
	inc b			;7751	04 	. 
	push hl			;7752	e5 	. 
	call sub_abf5h		;7753	cd f5 ab 	. . . 
	pop de			;7756	d1 	. 
	pop de			;7757	d1 	. 
	pop bc			;7758	c1 	. 
	ret			;7759	c9 	. 
sub_775ah:
	push bc			;775a	c5 	. 
	ld hl,0fffeh		;775b	21 fe ff 	! . . 
	add hl,sp			;775e	39 	9 
	ld sp,hl			;775f	f9 	. 
	ld b,h			;7760	44 	D 
	ld c,l			;7761	4d 	M 
	call sub_7510h		;7762	cd 10 75 	. . u 
	inc c			;7765	0c 	. 
	ld de,0ffffh		;7766	11 ff ff 	. . . 
	add hl,de			;7769	19 	. 
	ld a,h			;776a	7c 	| 
	rla			;776b	17 	. 
	jp c,l77a4h		;776c	da a4 77 	. . w 
	ld hl,(laf5ch)		;776f	2a 5c af 	* \ . 
	push hl			;7772	e5 	. 
	call sub_7510h		;7773	cd 10 75 	. . u 
	inc c			;7776	0c 	. 
	pop de			;7777	d1 	. 
	add hl,de			;7778	19 	. 
	ld de,00032h		;7779	11 32 00 	. 2 . 
	add hl,de			;777c	19 	. 
	push hl			;777d	e5 	. 
	call sub_7510h		;777e	cd 10 75 	. . u 
	ld b,0d1h		;7781	06 d1 	. . 
	call l7573h		;7783	cd 73 75 	. s u 
	jp c,l779ch		;7786	da 9c 77 	. . w 
	call sub_7510h		;7789	cd 10 75 	. . u 
	inc c			;778c	0c 	. 
	ld de,00032h		;778d	11 32 00 	. 2 . 
	add hl,de			;7790	19 	. 
	push hl			;7791	e5 	. 
	ld hl,(laf70h)		;7792	2a 70 af 	* p . 
	pop de			;7795	d1 	. 
	call l7573h		;7796	cd 73 75 	. s u 
	jp nc,l77a4h		;7799	d2 a4 77 	. . w 
l779ch:
	ld hl,0003ch		;779c	21 3c 00 	! < . 
	push hl			;779f	e5 	. 
	call sub_aec5h		;77a0	cd c5 ae 	. . . 
	pop de			;77a3	d1 	. 
l77a4h:
	ld hl,(laf70h)		;77a4	2a 70 af 	* p . 
	push hl			;77a7	e5 	. 
	call sub_7510h		;77a8	cd 10 75 	. . u 
	inc c			;77ab	0c 	. 
	pop de			;77ac	d1 	. 
	call sub_767ah		;77ad	cd 7a 76 	. z v 
	add hl,de			;77b0	19 	. 
	ld (laf70h),hl		;77b1	22 70 af 	" p . 
	call sub_7510h		;77b4	cd 10 75 	. . u 
	ex af,af'			;77b7	08 	. 
	inc hl			;77b8	23 	# 
	ex de,hl			;77b9	eb 	. 
	ld h,b			;77ba	60 	` 
	ld l,c			;77bb	69 	i 
	ld (hl),e			;77bc	73 	s 
	inc hl			;77bd	23 	# 
	ld (hl),d			;77be	72 	r 
l77bfh:
	call sub_7510h		;77bf	cd 10 75 	. . u 
	nop			;77c2	00 	. 
	ld de,0fff6h		;77c3	11 f6 ff 	. . . 
	add hl,de			;77c6	19 	. 
	ld a,h			;77c7	7c 	| 
	rla			;77c8	17 	. 
	jp nc,l77f2h		;77c9	d2 f2 77 	. . w 
	call sub_7510h		;77cc	cd 10 75 	. . u 
	nop			;77cf	00 	. 
	add hl,hl			;77d0	29 	) 
	ld de,laf4ah		;77d1	11 4a af 	. J . 
	add hl,de			;77d4	19 	. 
	push hl			;77d5	e5 	. 
	ld a,(hl)			;77d6	7e 	~ 
	inc hl			;77d7	23 	# 
	ld h,(hl)			;77d8	66 	f 
	ld l,a			;77d9	6f 	o 
	push hl			;77da	e5 	. 
	call sub_7510h		;77db	cd 10 75 	. . u 
	inc c			;77de	0c 	. 
	pop de			;77df	d1 	. 
	add hl,de			;77e0	19 	. 
	ex de,hl			;77e1	eb 	. 
	pop hl			;77e2	e1 	. 
	ld (hl),e			;77e3	73 	s 
	inc hl			;77e4	23 	# 
	ld (hl),d			;77e5	72 	r 
	ld h,b			;77e6	60 	` 
	ld l,c			;77e7	69 	i 
	ld e,(hl)			;77e8	5e 	^ 
	inc hl			;77e9	23 	# 
	ld d,(hl)			;77ea	56 	V 
	inc de			;77eb	13 	. 
	ld (hl),d			;77ec	72 	r 
	dec hl			;77ed	2b 	+ 
	ld (hl),e			;77ee	73 	s 
	jp l77bfh		;77ef	c3 bf 77 	. . w 
l77f2h:
	ex de,hl			;77f2	eb 	. 
	ld hl,00002h		;77f3	21 02 00 	! . . 
	add hl,sp			;77f6	39 	9 
	ld sp,hl			;77f7	f9 	. 
	ex de,hl			;77f8	eb 	. 
	pop bc			;77f9	c1 	. 
	ret			;77fa	c9 	. 
sub_77fbh:
	push bc			;77fb	c5 	. 
l77fch:
	ld a,000h		;77fc	3e 00 	> . 
	ld (lb403h),a		;77fe	32 03 b4 	2 . . 
	ld hl,00000h		;7801	21 00 00 	! . . 
	ld (laf1ch),hl		;7804	22 1c af 	" . . 
	ld a,000h		;7807	3e 00 	> . 
	ld (lb404h),a		;7809	32 04 b4 	2 . . 
	call sub_acbeh		;780c	cd be ac 	. . . 
	call sub_ab52h		;780f	cd 52 ab 	. R . 
	call sub_796dh		;7812	cd 6d 79 	. m y 
l7815h:
	call sub_7972h		;7815	cd 72 79 	. r y 
	ld de,0ff01h		;7818	11 01 ff 	. . . 
	add hl,de			;781b	19 	. 
	ld a,h			;781c	7c 	| 
	or l			;781d	b5 	. 
	jp nz,l7838h		;781e	c2 38 78 	. 8 x 
	call sub_8ba2h		;7821	cd a2 8b 	. . . 
	ld a,h			;7824	7c 	| 
	or l			;7825	b5 	. 
	jp z,l7832h		;7826	ca 32 78 	. 2 x 
	call sub_7e77h		;7829	cd 77 7e 	. w ~ 
	call sub_796dh		;782c	cd 6d 79 	. m y 
	jp l7835h		;782f	c3 35 78 	. 5 x 
l7832h:
	jp l78a4h		;7832	c3 a4 78 	. . x 
l7835h:
	jp l78a1h		;7835	c3 a1 78 	. . x 
l7838h:
	call sub_7972h		;7838	cd 72 79 	. r y 
	ld de,0ffbbh		;783b	11 bb ff 	. . . 
	add hl,de			;783e	19 	. 
	ld a,h			;783f	7c 	| 
	or l			;7840	b5 	. 
	jp nz,l7855h		;7841	c2 55 78 	. U x 
	call sub_acbeh		;7844	cd be ac 	. . . 
	ld hl,l6d48h		;7847	21 48 6d 	! H m 
	push hl			;784a	e5 	. 
	call sub_aca8h		;784b	cd a8 ac 	. . . 
	pop de			;784e	d1 	. 
	jp l77fch		;784f	c3 fc 77 	. . w 
	jp l78a1h		;7852	c3 a1 78 	. . x 
l7855h:
	ld hl,(laf1ch)		;7855	2a 1c af 	* . . 
	ld a,h			;7858	7c 	| 
	or l			;7859	b5 	. 
	jp z,l789eh		;785a	ca 9e 78 	. . x 
	call sub_ad25h		;785d	cd 25 ad 	. % . 
	ld (laf32h),hl		;7860	22 32 af 	" 2 . 
	ld a,001h		;7863	3e 01 	> . 
	ld (lb404h),a		;7865	32 04 b4 	2 . . 
	ld hl,000c5h		;7868	21 c5 00 	! . . 
	push hl			;786b	e5 	. 
	call sub_ad34h		;786c	cd 34 ad 	. 4 . 
	pop de			;786f	d1 	. 
	call sub_803fh		;7870	cd 3f 80 	. ? . 
	ld hl,000c1h		;7873	21 c1 00 	! . . 
	push hl			;7876	e5 	. 
	call sub_ad34h		;7877	cd 34 ad 	. 4 . 
	pop de			;787a	d1 	. 
	ld hl,000c9h		;787b	21 c9 00 	! . . 
	push hl			;787e	e5 	. 
	call sub_ad34h		;787f	cd 34 ad 	. 4 . 
	pop de			;7882	d1 	. 
	ld a,000h		;7883	3e 00 	> . 
	ld (lb404h),a		;7885	32 04 b4 	2 . . 
	call sub_795dh		;7888	cd 5d 79 	. ] y 
	ld hl,(laf32h)		;788b	2a 32 af 	* 2 . 
	push hl			;788e	e5 	. 
	call sub_acb4h		;788f	cd b4 ac 	. . . 
	pop de			;7892	d1 	. 
	ld hl,(laf32h)		;7893	2a 32 af 	* 2 . 
	push hl			;7896	e5 	. 
	call sub_ad0dh		;7897	cd 0d ad 	. . . 
	pop de			;789a	d1 	. 
	jp l78a1h		;789b	c3 a1 78 	. . x 
l789eh:
	call sub_83c2h		;789e	cd c2 83 	. . . 
l78a1h:
	jp l7815h		;78a1	c3 15 78 	. . x 
l78a4h:
	call sub_940ah		;78a4	cd 0a 94 	. . . 
	call sub_aeeeh		;78a7	cd ee ae 	. . . 
	ld hl,(lb1ach)		;78aa	2a ac b1 	* . . 
	dec hl			;78ad	2b 	+ 
	dec hl			;78ae	2b 	+ 
	ld (l6872h+1),hl		;78af	22 73 68 	" s h 
	ld hl,l6c98h		;78b2	21 98 6c 	! . l 
	push hl			;78b5	e5 	. 
	call sub_aca8h		;78b6	cd a8 ac 	. . . 
	pop de			;78b9	d1 	. 
	inc hl			;78ba	23 	# 
	push hl			;78bb	e5 	. 
	ld hl,(lb1ach)		;78bc	2a ac b1 	* . . 
	pop de			;78bf	d1 	. 
	call sub_767ah		;78c0	cd 7a 76 	. z v 
	add hl,de			;78c3	19 	. 
	ld (06876h),hl		;78c4	22 76 68 	" v h 
	ld hl,(laf4eh)		;78c7	2a 4e af 	* N . 
	ld (06883h),hl		;78ca	22 83 68 	" . h 
	call sub_8c68h		;78cd	cd 68 8c 	. h . 
	push hl			;78d0	e5 	. 
	call sub_8b4dh		;78d1	cd 4d 8b 	. M . 
	pop de			;78d4	d1 	. 
	inc hl			;78d5	23 	# 
	ld a,(hl)			;78d6	7e 	~ 
	inc hl			;78d7	23 	# 
	ld h,(hl)			;78d8	66 	f 
	ld l,a			;78d9	6f 	o 
	ld (06899h),hl		;78da	22 99 68 	" . h 
	call sub_795dh		;78dd	cd 5d 79 	. ] y 
	ld hl,(lb403h)		;78e0	2a 03 b4 	* . . 
	ld a,l			;78e3	7d 	} 
	or a			;78e4	b7 	. 
	jp z,l7907h		;78e5	ca 07 79 	. . y 
	call sub_ad25h		;78e8	cd 25 ad 	. % . 
	ld (06883h),hl		;78eb	22 83 68 	" . h 
	call sub_ad25h		;78ee	cd 25 ad 	. % . 
	push hl			;78f1	e5 	. 
	ld hl,(laf62h)		;78f2	2a 62 af 	* b . 
	pop de			;78f5	d1 	. 
	add hl,de			;78f6	19 	. 
	ld de,00032h		;78f7	11 32 00 	. 2 . 
	add hl,de			;78fa	19 	. 
	call sub_767ah		;78fb	cd 7a 76 	. z v 
	ld (l6870h),hl		;78fe	22 70 68 	" p h 
	call sub_ab99h		;7901	cd 99 ab 	. . . 
	jp l793eh		;7904	c3 3e 79 	. > y 
l7907h:
	ld hl,l7948h		;7907	21 48 79 	! H y 
	push hl			;790a	e5 	. 
	call sub_aca1h		;790b	cd a1 ac 	. . . 
	pop de			;790e	d1 	. 
	ld hl,sub_6285h		;790f	21 85 62 	! . b 
	push hl			;7912	e5 	. 
	call sub_aca8h		;7913	cd a8 ac 	. . . 
	pop de			;7916	d1 	. 
	ld de,0ff87h		;7917	11 87 ff 	. . . 
	add hl,de			;791a	19 	. 
	ld a,h			;791b	7c 	| 
	or l			;791c	b5 	. 
	jp z,l7923h		;791d	ca 23 79 	. # y 
	jp l7936h		;7920	c3 36 79 	. 6 y 
l7923h:
	ld hl,l795ah		;7923	21 5a 79 	! Z y 
	push hl			;7926	e5 	. 
	call sub_aca1h		;7927	cd a1 ac 	. . . 
	pop de			;792a	d1 	. 
	ld hl,l6872h		;792b	21 72 68 	! r h 
	push hl			;792e	e5 	. 
	call sub_acb4h		;792f	cd b4 ac 	. . . 
	pop de			;7932	d1 	. 
	jp l7907h		;7933	c3 07 79 	. . y 
l7936h:
	ld hl,l6273h		;7936	21 73 62 	! s b 
	push hl			;7939	e5 	. 
	call sub_acb4h		;793a	cd b4 ac 	. . . 
	pop de			;793d	d1 	. 
l793eh:
	ld hl,00000h		;793e	21 00 00 	! . . 
	push hl			;7941	e5 	. 
	call sub_aca8h		;7942	cd a8 ac 	. . . 
	pop de			;7945	d1 	. 
	pop bc			;7946	c1 	. 
	ret			;7947	c9 	. 
l7948h:
	ld a,(bc)			;7948	0a 	. 
	ld a,(bc)			;7949	0a 	. 
	ld d,h			;794a	54 	T 
	ld a,c			;794b	79 	y 
	ld (hl),b			;794c	70 	p 
	ld h,l			;794d	65 	e 
	jr nz,$+123		;794e	20 79 	  y 
	jr nz,l79c6h		;7950	20 74 	  t 
	ld l,a			;7952	6f 	o 
	jr nz,l79c7h		;7953	20 72 	  r 
	ld (hl),l			;7955	75 	u 
	ld l,(hl)			;7956	6e 	n 
	ld a,(00020h)		;7957	3a 20 00 	:   . 
l795ah:
	ld a,(bc)			;795a	0a 	. 
	ld a,(bc)			;795b	0a 	. 
	nop			;795c	00 	. 
sub_795dh:
	push bc			;795d	c5 	. 
	ld hl,(laf5ch)		;795e	2a 5c af 	* \ . 
	ld de,00032h		;7961	11 32 00 	. 2 . 
	add hl,de			;7964	19 	. 
	call sub_767ah		;7965	cd 7a 76 	. z v 
	ld (l6870h),hl		;7968	22 70 68 	" p h 
	pop bc			;796b	c1 	. 
	ret			;796c	c9 	. 
sub_796dh:
	xor a			;796d	af 	. 
	ld (laf49h),a		;796e	32 49 af 	2 I . 
	ret			;7971	c9 	. 
sub_7972h:
	call sub_7979h		;7972	cd 79 79 	. y y 
	ld h,000h		;7975	26 00 	& . 
	ld l,a			;7977	6f 	o 
	ret			;7978	c9 	. 
sub_7979h:
	ld a,(laf49h)		;7979	3a 49 af 	: I . 
	or a			;797c	b7 	. 
	jr nz,l7988h		;797d	20 09 	  . 
	push hl			;797f	e5 	. 
	push de			;7980	d5 	. 
	push bc			;7981	c5 	. 
	call sub_798fh		;7982	cd 8f 79 	. . y 
	pop bc			;7985	c1 	. 
	pop de			;7986	d1 	. 
	pop hl			;7987	e1 	. 
l7988h:
	ld a,(laf00h)		;7988	3a 00 af 	: . . 
	ld (laf49h),a		;798b	32 49 af 	2 I . 
	ret			;798e	c9 	. 
sub_798fh:
	ld hl,laf00h		;798f	21 00 af 	! . . 
	ld de,laf04h		;7992	11 04 af 	. . . 
	ld bc,00004h		;7995	01 04 00 	. . . 
	ldir		;7998	ed b0 	. . 
	ld a,(de)			;799a	1a 	. 
	or a			;799b	b7 	. 
	jr nz,l79beh		;799c	20 20 	    
	ld h,a			;799e	67 	g 
	ld l,a			;799f	6f 	o 
	ld (laf01h),hl		;79a0	22 01 af 	" . . 
l79a3h:
	call sub_7de8h		;79a3	cd e8 7d 	. . } 
	jr c,l79b3h		;79a6	38 0b 	8 . 
l79a8h:
	call sub_79cbh		;79a8	cd cb 79 	. . y 
	cp 00ah		;79ab	fe 0a 	. . 
	jr z,l79a8h		;79ad	28 f9 	( . 
	cp 023h		;79af	fe 23 	. # 
	jr z,l79b9h		;79b1	28 06 	( . 
l79b3h:
	call sub_7db4h		;79b3	cd b4 7d 	. . } 
	ret nz			;79b6	c0 	. 
	jr l79a3h		;79b7	18 ea 	. . 
l79b9h:
	call 07c0bh		;79b9	cd 0b 7c 	. . | 
	jr l79a8h		;79bc	18 ea 	. . 
l79beh:
	ex de,hl			;79be	eb 	. 
	ld de,laf00h		;79bf	11 00 af 	. . . 
	ld c,004h		;79c2	0e 04 	. . 
	ldir		;79c4	ed b0 	. . 
l79c6h:
	ld a,b			;79c6	78 	x 
l79c7h:
	ld (laf08h),a		;79c7	32 08 af 	2 . . 
	ret			;79ca	c9 	. 
sub_79cbh:
	call sub_79d8h		;79cb	cd d8 79 	. . y 
	ld a,(laf00h)		;79ce	3a 00 af 	: . . 
	ld hl,(laf01h)		;79d1	2a 01 af 	* . . 
	ret			;79d4	c9 	. 
l79d5h:
	call sub_7e77h		;79d5	cd 77 7e 	. w ~ 
sub_79d8h:
	ld bc,(laf0ch)		;79d8	ed 4b 0c af 	. K . . 
	ld a,c			;79dc	79 	y 
	cp 00ah		;79dd	fe 0a 	. . 
	jr z,l7a39h		;79df	28 58 	( X 
	ld a,b			;79e1	78 	x 
	ld (laf00h),a		;79e2	32 00 af 	2 . . 
	cp 020h		;79e5	fe 20 	.   
	jr z,l79d5h		;79e7	28 ec 	( . 
	cp 04ch		;79e9	fe 4c 	. L 
	jp z,l7a3fh		;79eb	ca 3f 7a 	. ? z 
	cp 044h		;79ee	fe 44 	. D 
	ld l,049h		;79f0	2e 49 	. I 
	jp z,l7ab1h		;79f2	ca b1 7a 	. . z 
	cp 022h		;79f5	fe 22 	. " 
	jp z,l7b7eh		;79f7	ca 7e 7b 	. ~ { 
	cp 0ffh		;79fa	fe ff 	. . 
	ret z			;79fc	c8 	. 
	ld a,c			;79fd	79 	y 
	cp 027h		;79fe	fe 27 	. ' 
	jp z,07b68h		;7a00	ca 68 7b 	. h { 
	cp 023h		;7a03	fe 23 	. # 
	jr z,l7a12h		;7a05	28 0b 	( . 
l7a07h:
	cp 02eh		;7a07	fe 2e 	. . 
	jr z,l7a1dh		;7a09	28 12 	( . 
	cp 05ch		;7a0b	fe 5c 	. \ 
	jr z,l7a2bh		;7a0d	28 1c 	( . 
	jp l7bb0h		;7a0f	c3 b0 7b 	. . { 
l7a12h:
	ld a,(laf0dh+1)		;7a12	3a 0e af 	: . . 
	cp 00ah		;7a15	fe 0a 	. . 
	jp z,sub_7e77h		;7a17	ca 77 7e 	. w ~ 
	ld a,c			;7a1a	79 	y 
	jr l7a07h		;7a1b	18 ea 	. . 
l7a1dh:
	call sub_7e77h		;7a1d	cd 77 7e 	. w ~ 
	ld a,(laf0dh)		;7a20	3a 0d af 	: . . 
	cp 044h		;7a23	fe 44 	. D 
	ret nz			;7a25	c0 	. 
	ld l,046h		;7a26	2e 46 	. F 
	jp l7ab1h		;7a28	c3 b1 7a 	. . z 
l7a2bh:
	call sub_7e77h		;7a2b	cd 77 7e 	. w ~ 
	ld a,(laf0ch)		;7a2e	3a 0c af 	: . . 
	cp 00ah		;7a31	fe 0a 	. . 
	ret nz			;7a33	c0 	. 
	call sub_7e77h		;7a34	cd 77 7e 	. w ~ 
	jr sub_79d8h		;7a37	18 9f 	. . 
l7a39h:
	ld (laf00h),a		;7a39	32 00 af 	2 . . 
	jp sub_7e77h		;7a3c	c3 77 7e 	. w ~ 
l7a3fh:
	ld de,00007h		;7a3f	11 07 00 	. . . 
	ld hl,l6ca7h+1		;7a42	21 a8 6c 	! . l 
	push hl			;7a45	e5 	. 
l7a46h:
	ld a,(laf0ch)		;7a46	3a 0c af 	: . . 
	ld (hl),a			;7a49	77 	w 
l7a4ah:
	push de			;7a4a	d5 	. 
	push hl			;7a4b	e5 	. 
	call sub_7e77h		;7a4c	cd 77 7e 	. w ~ 
	pop hl			;7a4f	e1 	. 
	pop de			;7a50	d1 	. 
	ld a,(laf0dh)		;7a51	3a 0d af 	: . . 
	cp 04ch		;7a54	fe 4c 	. L 
	jr z,l7a5ch		;7a56	28 04 	( . 
	cp 044h		;7a58	fe 44 	. D 
	jr nz,l7a63h		;7a5a	20 07 	  . 
l7a5ch:
	dec e			;7a5c	1d 	. 
	jp m,l7a4ah		;7a5d	fa 4a 7a 	. J z 
	inc hl			;7a60	23 	# 
	jr l7a46h		;7a61	18 e3 	. . 
l7a63h:
	ld a,020h		;7a63	3e 20 	>   
l7a65h:
	dec e			;7a65	1d 	. 
	jp m,l7a6dh		;7a66	fa 6d 7a 	. m z 
	inc hl			;7a69	23 	# 
	ld (hl),a			;7a6a	77 	w 
	jr l7a65h		;7a6b	18 f8 	. . 
l7a6dh:
	pop hl			;7a6d	e1 	. 
	call sub_8816h		;7a6e	cd 16 88 	. . . 
	ld (laf01h),hl		;7a71	22 01 af 	" . . 
	call sub_885fh		;7a74	cd 5f 88 	. _ . 
	ld a,0ffh		;7a77	3e ff 	> . 
	cp h			;7a79	bc 	. 
	ret nz			;7a7a	c0 	. 
	ld a,l			;7a7b	7d 	} 
	ld (laf00h),a		;7a7c	32 00 af 	2 . . 
	ret			;7a7f	c9 	. 
sub_7a80h:
	ld hl,00000h		;7a80	21 00 00 	! . . 
	ld b,h			;7a83	44 	D 
	ld d,h			;7a84	54 	T 
l7a85h:
	ld a,(laf0ch)		;7a85	3a 0c af 	: . . 
	ld c,a			;7a88	4f 	O 
	ld a,(laf0dh)		;7a89	3a 0d af 	: . . 
	cp 044h		;7a8c	fe 44 	. D 
	jr nz,l7a95h		;7a8e	20 05 	  . 
	ld a,c			;7a90	79 	y 
	sub 030h		;7a91	d6 30 	. 0 
	jr l7aa3h		;7a93	18 0e 	. . 
l7a95h:
	cp 04ch		;7a95	fe 4c 	. L 
	ret nz			;7a97	c0 	. 
	ld a,c			;7a98	79 	y 
	cp 061h		;7a99	fe 61 	. a 
	jr nc,l7a9fh		;7a9b	30 02 	0 . 
	add a,020h		;7a9d	c6 20 	.   
l7a9fh:
	sub 057h		;7a9f	d6 57 	. W 
	cp e			;7aa1	bb 	. 
	ret nc			;7aa2	d0 	. 
l7aa3h:
	ld c,a			;7aa3	4f 	O 
	call sub_6300h		;7aa4	cd 00 63 	. . c 
	add hl,bc			;7aa7	09 	. 
	push hl			;7aa8	e5 	. 
	push de			;7aa9	d5 	. 
	call sub_7e77h		;7aaa	cd 77 7e 	. w ~ 
	pop de			;7aad	d1 	. 
	pop hl			;7aae	e1 	. 
	jr l7a85h		;7aaf	18 d4 	. . 
l7ab1h:
	ld a,l			;7ab1	7d 	} 
	cp 046h		;7ab2	fe 46 	. F 
	jr z,l7b07h		;7ab4	28 51 	( Q 
	ld a,(laf0ch)		;7ab6	3a 0c af 	: . . 
	cp 030h		;7ab9	fe 30 	. 0 
	ld e,00ah		;7abb	1e 0a 	. . 
	jr nz,l7adeh		;7abd	20 1f 	  . 
	call sub_7e77h		;7abf	cd 77 7e 	. w ~ 
	ld a,(laf0ch)		;7ac2	3a 0c af 	: . . 
	cp 061h		;7ac5	fe 61 	. a 
	jr nc,l7acbh		;7ac7	30 02 	0 . 
	add a,020h		;7ac9	c6 20 	.   
l7acbh:
	ld e,008h		;7acb	1e 08 	. . 
	cp 078h		;7acd	fe 78 	. x 
	jr nz,l7ad6h		;7acf	20 05 	  . 
	call sub_7e77h		;7ad1	cd 77 7e 	. w ~ 
	ld e,010h		;7ad4	1e 10 	. . 
l7ad6h:
	call sub_7a80h		;7ad6	cd 80 7a 	. . z 
	ld (laf01h),hl		;7ad9	22 01 af 	" . . 
	jr l7af8h		;7adc	18 1a 	. . 
l7adeh:
	call sub_7a80h		;7ade	cd 80 7a 	. . z 
	ld (laf01h),hl		;7ae1	22 01 af 	" . . 
	ld a,(laf0ch)		;7ae4	3a 0c af 	: . . 
	cp 02eh		;7ae7	fe 2e 	. . 
	jr z,l7b07h		;7ae9	28 1c 	( . 
	ld a,(laf0ch)		;7aeb	3a 0c af 	: . . 
	cp 061h		;7aee	fe 61 	. a 
	jr nc,l7af4h		;7af0	30 02 	0 . 
	add a,020h		;7af2	c6 20 	.   
l7af4h:
	cp 065h		;7af4	fe 65 	. e 
	jr z,l7b07h		;7af6	28 0f 	( . 
l7af8h:
	ld a,(laf0ch)		;7af8	3a 0c af 	: . . 
	cp 061h		;7afb	fe 61 	. a 
	jr nc,l7b01h		;7afd	30 02 	0 . 
	add a,020h		;7aff	c6 20 	.   
l7b01h:
	cp 06ch		;7b01	fe 6c 	. l 
	ret nz			;7b03	c0 	. 
	jp sub_7e77h		;7b04	c3 77 7e 	. w ~ 
l7b07h:
	call sub_ae66h		;7b07	cd 66 ae 	. f . 
	ld bc,077cdh		;7b0a	01 cd 77 	. . w 
	ld a,(hl)			;7b0d	7e 	~ 
	ld h,000h		;7b0e	26 00 	& . 
	ld a,(laf0dh+1)		;7b10	3a 0e af 	: . . 
	ld l,a			;7b13	6f 	o 
	cp 00ah		;7b14	fe 0a 	. . 
	jr z,l7b64h		;7b16	28 4c 	( L 
	cp 05ch		;7b18	fe 5c 	. \ 
	ret nz			;7b1a	c0 	. 
	call sub_7e77h		;7b1b	cd 77 7e 	. w ~ 
	ld h,000h		;7b1e	26 00 	& . 
	ld a,(laf0dh+1)		;7b20	3a 0e af 	: . . 
	ld l,00ah		;7b23	2e 0a 	. . 
	cp l			;7b25	bd 	. 
	jr z,$-27		;7b26	28 e3 	( . 
	cp 06eh		;7b28	fe 6e 	. n 
	ret z			;7b2a	c8 	. 
	ld l,009h		;7b2b	2e 09 	. . 
	cp 074h		;7b2d	fe 74 	. t 
	ret z			;7b2f	c8 	. 
	ld l,008h		;7b30	2e 08 	. . 
	cp 062h		;7b32	fe 62 	. b 
	ret z			;7b34	c8 	. 
	ld l,00dh		;7b35	2e 0d 	. . 
	cp 072h		;7b37	fe 72 	. r 
	ret z			;7b39	c8 	. 
	ld l,00ch		;7b3a	2e 0c 	. . 
	cp 066h		;7b3c	fe 66 	. f 
	ret z			;7b3e	c8 	. 
	ld l,a			;7b3f	6f 	o 
	ld a,(laf0fh)		;7b40	3a 0f af 	: . . 
	cp 044h		;7b43	fe 44 	. D 
	ret nz			;7b45	c0 	. 
	ld a,l			;7b46	7d 	} 
	sub 030h		;7b47	d6 30 	. 0 
	ld l,a			;7b49	6f 	o 
	ld b,002h		;7b4a	06 02 	. . 
l7b4ch:
	ld a,(laf0ch)		;7b4c	3a 0c af 	: . . 
	sub 030h		;7b4f	d6 30 	. 0 
	ret m			;7b51	f8 	. 
	cp 008h		;7b52	fe 08 	. . 
	ret p			;7b54	f0 	. 
	ld c,a			;7b55	4f 	O 
	ld a,l			;7b56	7d 	} 
	add a,a			;7b57	87 	. 
	add a,a			;7b58	87 	. 
	add a,a			;7b59	87 	. 
	add a,c			;7b5a	81 	. 
	ld l,a			;7b5b	6f 	o 
	push hl			;7b5c	e5 	. 
	call sub_7e77h		;7b5d	cd 77 7e 	. w ~ 
	pop hl			;7b60	e1 	. 
	djnz l7b4ch		;7b61	10 e9 	. . 
	ret			;7b63	c9 	. 
l7b64h:
	call sub_ae66h		;7b64	cd 66 ae 	. f . 
	ld (077cdh),a		;7b67	32 cd 77 	2 . w 
	ld a,(hl)			;7b6a	7e 	~ 
	call 07b0bh		;7b6b	cd 0b 7b 	. . { 
	ld (laf01h),hl		;7b6e	22 01 af 	" . . 
	call sub_7e77h		;7b71	cd 77 7e 	. w ~ 
	ld a,(laf0dh+1)		;7b74	3a 0e af 	: . . 
	cp 027h		;7b77	fe 27 	. ' 
	ret z			;7b79	c8 	. 
	call sub_ae66h		;7b7a	cd 66 ae 	. f . 
	ld (bc),a			;7b7d	02 	. 
l7b7eh:
	call sub_7e77h		;7b7e	cd 77 7e 	. w ~ 
	ld hl,00000h		;7b81	21 00 00 	! . . 
	push hl			;7b84	e5 	. 
	add hl,sp			;7b85	39 	9 
	push hl			;7b86	e5 	. 
	ld a,(lb404h)		;7b87	3a 04 b4 	: . . 
	or a			;7b8a	b7 	. 
	call nz,sub_adbah		;7b8b	c4 ba ad 	. . . 
	call sub_ad25h		;7b8e	cd 25 ad 	. % . 
	ld (laf01h),hl		;7b91	22 01 af 	" . . 
l7b94h:
	ld a,(laf0ch)		;7b94	3a 0c af 	: . . 
	sub 022h		;7b97	d6 22 	. " 
	jr z,l7ba4h		;7b99	28 09 	( . 
	call 07b0bh		;7b9b	cd 0b 7b 	. . { 
	ld e,l			;7b9e	5d 	] 
	call sub_ad42h		;7b9f	cd 42 ad 	. B . 
	jr l7b94h		;7ba2	18 f0 	. . 
l7ba4h:
	ld e,a			;7ba4	5f 	_ 
	call sub_ad42h		;7ba5	cd 42 ad 	. B . 
	pop hl			;7ba8	e1 	. 
	call sub_adb4h		;7ba9	cd b4 ad 	. . . 
	pop hl			;7bac	e1 	. 
	jp sub_7e77h		;7bad	c3 77 7e 	. w ~ 
l7bb0h:
	call sub_7e77h		;7bb0	cd 77 7e 	. w ~ 
	ld b,00ch		;7bb3	06 0c 	. . 
	ld hl,l7bf3h		;7bb5	21 f3 7b 	! . { 
l7bb8h:
	ld a,(laf0dh+1)		;7bb8	3a 0e af 	: . . 
	cp (hl)			;7bbb	be 	. 
	inc hl			;7bbc	23 	# 
	jr nz,l7bebh		;7bbd	20 2c 	  , 
	ld a,(laf0ch)		;7bbf	3a 0c af 	: . . 
	cp (hl)			;7bc2	be 	. 
	jr nz,l7bebh		;7bc3	20 26 	  & 
	ld a,00ch		;7bc5	3e 0c 	> . 
	sub b			;7bc7	90 	. 
	jr nz,l7be1h		;7bc8	20 17 	  . 
	ld (laf0ch),a		;7bca	32 0c af 	2 . . 
l7bcdh:
	call sub_7e77h		;7bcd	cd 77 7e 	. w ~ 
	ld a,(laf0dh+1)		;7bd0	3a 0e af 	: . . 
	cp 02ah		;7bd3	fe 2a 	. * 
	jr nz,l7bcdh		;7bd5	20 f6 	  . 
	ld a,(laf0ch)		;7bd7	3a 0c af 	: . . 
	cp 02fh		;7bda	fe 2f 	. / 
	jr nz,l7bcdh		;7bdc	20 ef 	  . 
	jp l79d5h		;7bde	c3 d5 79 	. . y 
l7be1h:
	call sub_7e77h		;7be1	cd 77 7e 	. w ~ 
	ld a,04dh		;7be4	3e 4d 	> M 
	add a,b			;7be6	80 	. 
l7be7h:
	ld (laf00h),a		;7be7	32 00 af 	2 . . 
	ret			;7bea	c9 	. 
l7bebh:
	inc hl			;7beb	23 	# 
	djnz l7bb8h		;7bec	10 ca 	. . 
	ld a,(laf0fh)		;7bee	3a 0f af 	: . . 
	jr l7be7h		;7bf1	18 f4 	. . 
l7bf3h:
	cpl			;7bf3	2f 	/ 
	ld hl,(03d3dh)		;7bf4	2a 3d 3d 	* = = 
	ld hl,02b3dh		;7bf7	21 3d 2b 	! = + 
	dec hl			;7bfa	2b 	+ 
	dec l			;7bfb	2d 	- 
	dec l			;7bfc	2d 	- 
	ld h,026h		;7bfd	26 26 	& & 
	ld a,h			;7bff	7c 	| 
	ld a,h			;7c00	7c 	| 
	inc a			;7c01	3c 	< 
	dec a			;7c02	3d 	= 
	inc a			;7c03	3c 	< 
	inc a			;7c04	3c 	< 
	ld a,03dh		;7c05	3e 3d 	> = 
	ld a,03eh		;7c07	3e 3e 	> > 
	dec l			;7c09	2d 	- 
	ld a,0cdh		;7c0a	3e cd 	> . 
	bit 7,c		;7c0c	cb 79 	. y 
	cp 04ch		;7c0e	fe 4c 	. L 
	jr nz,l7c2fh		;7c10	20 1d 	  . 
	call sub_888fh		;7c12	cd 8f 88 	. . . 
	ex de,hl			;7c15	eb 	. 
	ld hl,l7c3dh		;7c16	21 3d 7c 	! = | 
	ld bc,00008h		;7c19	01 08 00 	. . . 
	ld a,008h		;7c1c	3e 08 	> . 
l7c1eh:
	push af			;7c1e	f5 	. 
	push bc			;7c1f	c5 	. 
	push de			;7c20	d5 	. 
	push hl			;7c21	e5 	. 
	call sub_7c33h		;7c22	cd 33 7c 	. 3 | 
	pop hl			;7c25	e1 	. 
	pop de			;7c26	d1 	. 
	pop bc			;7c27	c1 	. 
	jr z,l7c7dh		;7c28	28 53 	( S 
	pop af			;7c2a	f1 	. 
	add hl,bc			;7c2b	09 	. 
	dec a			;7c2c	3d 	= 
	jr nz,l7c1eh		;7c2d	20 ef 	  . 
l7c2fh:
	call sub_ae66h		;7c2f	cd 66 ae 	. f . 
	inc bc			;7c32	03 	. 
sub_7c33h:
	ld a,(de)			;7c33	1a 	. 
	or 020h		;7c34	f6 20 	.   
	inc de			;7c36	13 	. 
	cpi		;7c37	ed a1 	. . 
	ret nz			;7c39	c0 	. 
	ret po			;7c3a	e0 	. 
	jr sub_7c33h		;7c3b	18 f6 	. . 
l7c3dh:
	ld h,h			;7c3d	64 	d 
	ld h,l			;7c3e	65 	e 
	ld h,(hl)			;7c3f	66 	f 
	ld l,c			;7c40	69 	i 
	ld l,(hl)			;7c41	6e 	n 
	ld h,l			;7c42	65 	e 
	jr nz,$+34		;7c43	20 20 	    
	ld h,h			;7c45	64 	d 
	ld l,c			;7c46	69 	i 
	ld h,c			;7c47	61 	a 
	ld h,a			;7c48	67 	g 
	ld l,(hl)			;7c49	6e 	n 
	ld l,a			;7c4a	6f 	o 
	ld (hl),e			;7c4b	73 	s 
	ld (hl),h			;7c4c	74 	t 
	ld l,h			;7c4d	6c 	l 
	ld l,c			;7c4e	69 	i 
	ld (hl),e			;7c4f	73 	s 
	ld (hl),h			;7c50	74 	t 
	jr nz,l7c73h		;7c51	20 20 	    
	jr nz,$+34		;7c53	20 20 	    
	ld h,h			;7c55	64 	d 
	ld l,c			;7c56	69 	i 
	ld (hl),d			;7c57	72 	r 
	ld h,l			;7c58	65 	e 
	ld h,e			;7c59	63 	c 
	ld (hl),h			;7c5a	74 	t 
	jr nz,l7c7dh		;7c5b	20 20 	    
	ld h,l			;7c5d	65 	e 
	ld (hl),d			;7c5e	72 	r 
	ld (hl),d			;7c5f	72 	r 
	ld l,a			;7c60	6f 	o 
	ld (hl),d			;7c61	72 	r 
	jr nz,$+34		;7c62	20 20 	    
	jr nz,$+118		;7c64	20 74 	  t 
	ld (hl),d			;7c66	72 	r 
	ld h,c			;7c67	61 	a 
	ld l,(hl)			;7c68	6e 	n 
	ld (hl),e			;7c69	73 	s 
	ld l,h			;7c6a	6c 	l 
	ld h,c			;7c6b	61 	a 
	ld (hl),h			;7c6c	74 	t 
	ld l,c			;7c6d	69 	i 
	ld l,(hl)			;7c6e	6e 	n 
	ld h,e			;7c6f	63 	c 
	ld l,h			;7c70	6c 	l 
	ld (hl),l			;7c71	75 	u 
	ld h,h			;7c72	64 	d 
l7c73h:
	ld h,l			;7c73	65 	e 
	jr nz,$+102		;7c74	20 64 	  d 
	ld h,c			;7c76	61 	a 
	ld (hl),h			;7c77	74 	t 
	ld h,c			;7c78	61 	a 
	jr nz,$+34		;7c79	20 20 	    
	jr nz,l7c9dh		;7c7b	20 20 	    
l7c7dh:
	pop af			;7c7d	f1 	. 
	ld l,a			;7c7e	6f 	o 
	ld h,000h		;7c7f	26 00 	& . 
	add hl,hl			;7c81	29 	) 
	ld de,l7cf9h+1		;7c82	11 fa 7c 	. . | 
	add hl,de			;7c85	19 	. 
	jp (hl)			;7c86	e9 	. 
l7c87h:
	push hl			;7c87	e5 	. 
	ld hl,l7c97h		;7c88	21 97 7c 	! . | 
	push hl			;7c8b	e5 	. 
	call sub_6276h		;7c8c	cd 76 62 	. v b 
	ld a,l			;7c8f	7d 	} 
	or h			;7c90	b4 	. 
	jr nz,l7cc8h		;7c91	20 35 	  5 
	call sub_ae66h		;7c93	cd 66 ae 	. f . 
	rlca			;7c96	07 	. 
l7c97h:
	ld (hl),d			;7c97	72 	r 
	nop			;7c98	00 	. 
l7c99h:
	ld hl,0ffeeh		;7c99	21 ee ff 	! . . 
	add hl,sp			;7c9c	39 	9 
l7c9dh:
	ld sp,hl			;7c9d	f9 	. 
	push hl			;7c9e	e5 	. 
	call sub_7e16h		;7c9f	cd 16 7e 	. . ~ 
	ld hl,laf1eh		;7ca2	21 1e af 	! . . 
	inc (hl)			;7ca5	34 	4 
	ld l,(hl)			;7ca6	6e 	n 
	xor a			;7ca7	af 	. 
	ld h,a			;7ca8	67 	g 
	add hl,hl			;7ca9	29 	) 
	add hl,hl			;7caa	29 	) 
	ld de,laf1eh		;7cab	11 1e af 	. . . 
	add hl,de			;7cae	19 	. 
	ld de,(laf19h)		;7caf	ed 5b 19 af 	. [ . . 
	ld (hl),e			;7cb3	73 	s 
	inc hl			;7cb4	23 	# 
	ld (hl),d			;7cb5	72 	r 
	inc hl			;7cb6	23 	# 
	ld de,(laf10h)		;7cb7	ed 5b 10 af 	. [ . . 
	ld (hl),e			;7cbb	73 	s 
	inc hl			;7cbc	23 	# 
	ld (hl),d			;7cbd	72 	r 
	pop hl			;7cbe	e1 	. 
	cp (hl)			;7cbf	be 	. 
	jr nz,l7c87h		;7cc0	20 c5 	  . 
	call sub_abefh		;7cc2	cd ef ab 	. . . 
	ld hl,00001h		;7cc5	21 01 00 	! . . 
l7cc8h:
	ld (laf10h),hl		;7cc8	22 10 af 	" . . 
	ld l,h			;7ccb	6c 	l 
	ld (laf19h),hl		;7ccc	22 19 af 	" . . 
	ld hl,00012h		;7ccf	21 12 00 	! . . 
	add hl,sp			;7cd2	39 	9 
	ld sp,hl			;7cd3	f9 	. 
	ret			;7cd4	c9 	. 
l7cd5h:
	call sub_ae66h		;7cd5	cd 66 ae 	. f . 
	ld de,01721h		;7cd8	11 21 17 	. ! . 
	xor a			;7cdb	af 	. 
	jr l7cech		;7cdc	18 0e 	. . 
l7cdeh:
	ld hl,laf15h		;7cde	21 15 af 	! . . 
	jr l7cech		;7ce1	18 09 	. . 
l7ce3h:
	ld a,(lb403h)		;7ce3	3a 03 b4 	: . . 
	or a			;7ce6	b7 	. 
	ld hl,laf1ch		;7ce7	21 1c af 	! . . 
	jr nz,l7cd5h		;7cea	20 e9 	  . 
l7cech:
	ld a,(laf0ch)		;7cec	3a 0c af 	: . . 
	cp 02dh		;7cef	fe 2d 	. - 
	jr nz,l7cf4h		;7cf1	20 01 	  . 
	dec (hl)			;7cf3	35 	5 
l7cf4h:
	cp 02bh		;7cf4	fe 2b 	. + 
	jr nz,l7cf9h		;7cf6	20 01 	  . 
	inc (hl)			;7cf8	34 	4 
l7cf9h:
	jp l7e6ch		;7cf9	c3 6c 7e 	. l ~ 
	jr l7d30h		;7cfc	18 32 	. 2 
	jr l7c99h		;7cfe	18 99 	. . 
	jr l7d0ch		;7d00	18 0a 	. . 
	jr l7d28h		;7d02	18 24 	. $ 
	jr l7ce3h		;7d04	18 dd 	. . 
	jr $-45		;7d06	18 d1 	. . 
	jr l7cdeh		;7d08	18 d4 	. . 
	jr l7d43h		;7d0a	18 37 	. 7 
l7d0ch:
	ld hl,laf1ch		;7d0c	21 1c af 	! . . 
	ld (hl),000h		;7d0f	36 00 	6 . 
	ld hl,laf38h		;7d11	21 38 af 	! 8 . 
	call sub_7e16h		;7d14	cd 16 7e 	. . ~ 
	ld a,(laf38h)		;7d17	3a 38 af 	: 8 . 
	or a			;7d1a	b7 	. 
	jr z,l7d24h		;7d1b	28 07 	( . 
	ld hl,lb403h		;7d1d	21 03 b4 	! . . 
	inc (hl)			;7d20	34 	4 
	jp lacf4h		;7d21	c3 f4 ac 	. . . 
l7d24h:
	call sub_ae66h		;7d24	cd 66 ae 	. f . 
	rlca			;7d27	07 	. 
l7d28h:
	ld hl,00008h		;7d28	21 08 00 	! . . 
	call sub_ac64h		;7d2b	cd 64 ac 	. d . 
	jr l7d40h		;7d2e	18 10 	. . 
l7d30h:
	call sub_79cbh		;7d30	cd cb 79 	. . y 
	cp 044h		;7d33	fe 44 	. D 
	jp nz,l7c2fh		;7d35	c2 2f 7c 	. / | 
	ld (lb1ach),hl		;7d38	22 ac b1 	" . . 
	ld (lb413h),hl		;7d3b	22 13 b4 	" . . 
	jr l7d40h		;7d3e	18 00 	. . 
l7d40h:
	jp l7e6ch		;7d40	c3 6c 7e 	. l ~ 
l7d43h:
	call sub_79cbh		;7d43	cd cb 79 	. . y 
	cp 04ch		;7d46	fe 4c 	. L 
	jr z,l7d4eh		;7d48	28 04 	( . 
	call sub_ae66h		;7d4a	cd 66 ae 	. f . 
	dec b			;7d4d	05 	. 
l7d4eh:
	ld a,(laf0ch)		;7d4e	3a 0c af 	: . . 
	cp 028h		;7d51	fe 28 	. ( 
	jr nz,$+13		;7d53	20 0b 	  . 
	ld a,(laf0fh)		;7d55	3a 0f af 	: . . 
	cp 020h		;7d58	fe 20 	.   
	jr z,$+6		;7d5a	28 04 	( . 
	call sub_ae66h		;7d5c	cd 66 ae 	. f . 
	ld b,0edh		;7d5f	06 ed 	. . 
	ld e,e			;7d61	5b 	[ 
	ld l,b			;7d62	68 	h 
	xor a			;7d63	af 	. 
	push de			;7d64	d5 	. 
	set 5,d		;7d65	cb ea 	. . 
	call sub_8876h		;7d67	cd 76 88 	. v . 
	call sub_7d9dh		;7d6a	cd 9d 7d 	. . } 
l7d6dh:
	call sub_79cbh		;7d6d	cd cb 79 	. . y 
	cp 00ah		;7d70	fe 0a 	. . 
	jr z,l7d91h		;7d72	28 1d 	( . 
	call sub_7d9dh		;7d74	cd 9d 7d 	. . } 
	cp 04ch		;7d77	fe 4c 	. L 
	jr z,l7d87h		;7d79	28 0c 	( . 
	cp 044h		;7d7b	fe 44 	. D 
	jr z,l7d87h		;7d7d	28 08 	( . 
	cp 027h		;7d7f	fe 27 	. ' 
	jr z,l7d87h		;7d81	28 04 	( . 
	cp 022h		;7d83	fe 22 	. " 
	jr nz,l7d6dh		;7d85	20 e6 	  . 
l7d87h:
	ld a,l			;7d87	7d 	} 
	call sub_7d9dh		;7d88	cd 9d 7d 	. . } 
	ld a,h			;7d8b	7c 	| 
	call sub_7d9dh		;7d8c	cd 9d 7d 	. . } 
	jr l7d6dh		;7d8f	18 dc 	. . 
l7d91h:
	pop de			;7d91	d1 	. 
	ld a,(laf68h)		;7d92	3a 68 af 	: h . 
	sub e			;7d95	93 	. 
	dec a			;7d96	3d 	= 
	ld hl,(laf54h)		;7d97	2a 54 af 	* T . 
	add hl,de			;7d9a	19 	. 
	ld (hl),a			;7d9b	77 	w 
	ret			;7d9c	c9 	. 
sub_7d9dh:
	push hl			;7d9d	e5 	. 
	push af			;7d9e	f5 	. 
	ld hl,00001h		;7d9f	21 01 00 	! . . 
	ld a,005h		;7da2	3e 05 	> . 
	call sub_abfch		;7da4	cd fc ab 	. . . 
	pop af			;7da7	f1 	. 
	ld hl,(laf54h)		;7da8	2a 54 af 	* T . 
	ld de,(laf68h)		;7dab	ed 5b 68 af 	. [ h . 
	add hl,de			;7daf	19 	. 
	dec hl			;7db0	2b 	+ 
	ld (hl),a			;7db1	77 	w 
	pop hl			;7db2	e1 	. 
	ret			;7db3	c9 	. 
sub_7db4h:
	cp 04ch		;7db4	fe 4c 	. L 
	ret nz			;7db6	c0 	. 
	call sub_885fh		;7db7	cd 5f 88 	. _ . 
	ld a,h			;7dba	7c 	| 
	sub 020h		;7dbb	d6 20 	.   
	ld h,a			;7dbd	67 	g 
	and 0e0h		;7dbe	e6 e0 	. . 
	ret nz			;7dc0	c0 	. 
	ld b,a			;7dc1	47 	G 
	ld de,(laf54h)		;7dc2	ed 5b 54 af 	. [ T . 
	add hl,de			;7dc6	19 	. 
	or (hl)			;7dc7	b6 	. 
	ret z			;7dc8	c8 	. 
	ld c,a			;7dc9	4f 	O 
	add hl,bc			;7dca	09 	. 
	push hl			;7dcb	e5 	. 
	ld hl,laf72h		;7dcc	21 72 af 	! r . 
	ld de,(lafa4h)		;7dcf	ed 5b a4 af 	. [ . . 
	add hl,bc			;7dd3	09 	. 
	or a			;7dd4	b7 	. 
	sbc hl,de		;7dd5	ed 52 	. R 
	pop hl			;7dd7	e1 	. 
	jr nc,l7de4h		;7dd8	30 0a 	0 . 
	dec de			;7dda	1b 	. 
	lddr		;7ddb	ed b8 	. . 
	inc de			;7ddd	13 	. 
	ld (lafa4h),de		;7dde	ed 53 a4 af 	. S . . 
	xor a			;7de2	af 	. 
	ret			;7de3	c9 	. 
l7de4h:
	call sub_ae66h		;7de4	cd 66 ae 	. f . 
	inc b			;7de7	04 	. 
sub_7de8h:
	ld hl,(lafa4h)		;7de8	2a a4 af 	* . . 
	ld de,lafa4h		;7deb	11 a4 af 	. . . 
	or a			;7dee	b7 	. 
	sbc hl,de		;7def	ed 52 	. R 
	ret nc			;7df1	d0 	. 
	add hl,de			;7df2	19 	. 
	ld a,(hl)			;7df3	7e 	~ 
	inc hl			;7df4	23 	# 
	ld (laf00h),a		;7df5	32 00 af 	2 . . 
	cp 04ch		;7df8	fe 4c 	. L 
	jr z,l7e08h		;7dfa	28 0c 	( . 
	cp 044h		;7dfc	fe 44 	. D 
	jr z,l7e08h		;7dfe	28 08 	( . 
	cp 027h		;7e00	fe 27 	. ' 
	jr z,l7e08h		;7e02	28 04 	( . 
	cp 022h		;7e04	fe 22 	. " 
	jr nz,l7e10h		;7e06	20 08 	  . 
l7e08h:
	ld e,(hl)			;7e08	5e 	^ 
	inc hl			;7e09	23 	# 
	ld d,(hl)			;7e0a	56 	V 
	inc hl			;7e0b	23 	# 
	ld (laf01h),de		;7e0c	ed 53 01 af 	. S . . 
l7e10h:
	ld (lafa4h),hl		;7e10	22 a4 af 	" . . 
	ex de,hl			;7e13	eb 	. 
	scf			;7e14	37 	7 
	ret			;7e15	c9 	. 
sub_7e16h:
	push hl			;7e16	e5 	. 
l7e17h:
	ld a,(laf0dh)		;7e17	3a 0d af 	: . . 
	cp 020h		;7e1a	fe 20 	.   
	ld a,(laf0ch)		;7e1c	3a 0c af 	: . . 
	ld e,a			;7e1f	5f 	_ 
	jr nz,l7e2bh		;7e20	20 09 	  . 
	cp 00ah		;7e22	fe 0a 	. . 
	jr z,l7e2bh		;7e24	28 05 	( . 
	call sub_7e77h		;7e26	cd 77 7e 	. w ~ 
	jr l7e17h		;7e29	18 ec 	. . 
l7e2bh:
	cp 03fh		;7e2b	fe 3f 	. ? 
	ld hl,laf13h		;7e2d	21 13 af 	! . . 
	ld a,(hl)			;7e30	7e 	~ 
	jr z,l7e36h		;7e31	28 03 	( . 
	or a			;7e33	b7 	. 
	jr z,l7e38h		;7e34	28 02 	( . 
l7e36h:
	inc a			;7e36	3c 	< 
	ld (hl),a			;7e37	77 	w 
l7e38h:
	ld a,e			;7e38	7b 	{ 
	cp 022h		;7e39	fe 22 	. " 
	jr z,l7e45h		;7e3b	28 08 	( . 
	cp 03ch		;7e3d	fe 3c 	. < 
	jr z,l7e45h		;7e3f	28 04 	( . 
	cp 03fh		;7e41	fe 3f 	. ? 
	jr nz,l7e48h		;7e43	20 03 	  . 
l7e45h:
	call sub_7e77h		;7e45	cd 77 7e 	. w ~ 
l7e48h:
	ld b,011h		;7e48	06 11 	. . 
	pop hl			;7e4a	e1 	. 
l7e4bh:
	ld a,(laf0dh)		;7e4b	3a 0d af 	: . . 
	cp 020h		;7e4e	fe 20 	.   
	jr z,l7e6ah		;7e50	28 18 	( . 
	ld a,(laf0ch)		;7e52	3a 0c af 	: . . 
	cp 022h		;7e55	fe 22 	. " 
	jr z,l7e6ah		;7e57	28 11 	( . 
	cp 03eh		;7e59	fe 3e 	. > 
	jr z,l7e6ah		;7e5b	28 0d 	( . 
	cp 03fh		;7e5d	fe 3f 	. ? 
	jr z,l7e6ah		;7e5f	28 09 	( . 
	ld (hl),a			;7e61	77 	w 
	inc hl			;7e62	23 	# 
	push hl			;7e63	e5 	. 
	call sub_7e77h		;7e64	cd 77 7e 	. w ~ 
	pop hl			;7e67	e1 	. 
	djnz l7e4bh		;7e68	10 e1 	. . 
l7e6ah:
	ld (hl),000h		;7e6a	36 00 	6 . 
l7e6ch:
	ld a,(laf0ch)		;7e6c	3a 0c af 	: . . 
	cp 00ah		;7e6f	fe 0a 	. . 
	ret z			;7e71	c8 	. 
	call sub_7e77h		;7e72	cd 77 7e 	. w ~ 
	jr l7e6ch		;7e75	18 f5 	. . 
sub_7e77h:
	push bc			;7e77	c5 	. 
	ld hl,(laf0ch)		;7e78	2a 0c af 	* . . 
	ld (laf0dh+1),hl		;7e7b	22 0e af 	" . . 
l7e7eh:
	ld hl,(laf10h)		;7e7e	2a 10 af 	* . . 
	push hl			;7e81	e5 	. 
	ld de,00001h		;7e82	11 01 00 	. . . 
	or a			;7e85	b7 	. 
	sbc hl,de		;7e86	ed 52 	. R 
	jr nz,l7e8fh		;7e88	20 05 	  . 
	call sub_abf2h		;7e8a	cd f2 ab 	. . . 
	jr l7e94h		;7e8d	18 05 	. . 
l7e8fh:
	add hl,de			;7e8f	19 	. 
	push hl			;7e90	e5 	. 
	call sub_6279h		;7e91	cd 79 62 	. y b 
l7e94h:
	ld a,h			;7e94	7c 	| 
	inc a			;7e95	3c 	< 
	pop de			;7e96	d1 	. 
	ld a,d			;7e97	7a 	z 
	jr z,l7ec2h		;7e98	28 28 	( ( 
	or e			;7e9a	b3 	. 
	jr z,l7ea5h		;7e9b	28 08 	( . 
	ld a,(laf17h)		;7e9d	3a 17 af 	: . . 
	dec a			;7ea0	3d 	= 
	ld a,l			;7ea1	7d 	} 
	call p,l62a6h		;7ea2	f4 a6 62 	. . b 
l7ea5h:
	ld de,l7efch		;7ea5	11 fc 7e 	. . ~ 
	ld a,l			;7ea8	7d 	} 
	res 7,l		;7ea9	cb bd 	. . 
	ld h,000h		;7eab	26 00 	& . 
	add hl,de			;7ead	19 	. 
	ld h,(hl)			;7eae	66 	f 
	ld l,a			;7eaf	6f 	o 
l7eb0h:
	ld (laf0ch),hl		;7eb0	22 0c af 	" . . 
	pop bc			;7eb3	c1 	. 
	ld a,(laf0dh+1)		;7eb4	3a 0e af 	: . . 
	cp 00ah		;7eb7	fe 0a 	. . 
	ret nz			;7eb9	c0 	. 
	ld hl,(laf19h)		;7eba	2a 19 af 	* . . 
	inc hl			;7ebd	23 	# 
	ld (laf19h),hl		;7ebe	22 19 af 	" . . 
	ret			;7ec1	c9 	. 
l7ec2h:
	or e			;7ec2	b3 	. 
	jr z,l7ed0h		;7ec3	28 0b 	( . 
	ld hl,0ffffh		;7ec5	21 ff ff 	! . . 
	adc hl,de		;7ec8	ed 5a 	. Z 
	jr z,l7ed0h		;7eca	28 04 	( . 
	push de			;7ecc	d5 	. 
	call sub_627fh		;7ecd	cd 7f 62 	.  b 
l7ed0h:
	ld hl,laf13h		;7ed0	21 13 af 	! . . 
	xor a			;7ed3	af 	. 
	cp (hl)			;7ed4	be 	. 
	jr z,l7ed8h		;7ed5	28 01 	( . 
	dec (hl)			;7ed7	35 	5 
l7ed8h:
	ld hl,laf1eh		;7ed8	21 1e af 	! . . 
	cp (hl)			;7edb	be 	. 
	jr z,l7ef7h		;7edc	28 19 	( . 
	ld e,(hl)			;7ede	5e 	^ 
	ld d,a			;7edf	57 	W 
	dec (hl)			;7ee0	35 	5 
	add hl,de			;7ee1	19 	. 
	add hl,de			;7ee2	19 	. 
	add hl,de			;7ee3	19 	. 
	add hl,de			;7ee4	19 	. 
	ld e,(hl)			;7ee5	5e 	^ 
	inc hl			;7ee6	23 	# 
	ld d,(hl)			;7ee7	56 	V 
	inc hl			;7ee8	23 	# 
	ld (laf19h),de		;7ee9	ed 53 19 af 	. S . . 
	ld a,(hl)			;7eed	7e 	~ 
	inc hl			;7eee	23 	# 
	ld h,(hl)			;7eef	66 	f 
	ld l,a			;7ef0	6f 	o 
	ld (laf10h),hl		;7ef1	22 10 af 	" . . 
	jp l7e7eh		;7ef4	c3 7e 7e 	. ~ ~ 
l7ef7h:
	ld hl,0ffffh		;7ef7	21 ff ff 	! . . 
	jr l7eb0h		;7efa	18 b4 	. . 
l7efch:
	jr nz,l7f1eh		;7efc	20 20 	    
	jr nz,$+34		;7efe	20 20 	    
	jr nz,l7f22h		;7f00	20 20 	    
	jr nz,l7f49h		;7f02	20 45 	  E 
	jr nz,l7f26h		;7f04	20 20 	    
	jr nz,$+34		;7f06	20 20 	    
	jr nz,l7f2ah		;7f08	20 20 	    
	jr nz,l7f2ch		;7f0a	20 20 	    
	jr nz,l7f2eh		;7f0c	20 20 	    
	jr nz,l7f30h		;7f0e	20 20 	    
	jr nz,l7f32h		;7f10	20 20 	    
	jr nz,l7f34h		;7f12	20 20 	    
	jr nz,l7f36h		;7f14	20 20 	    
	jr nz,$+34		;7f16	20 20 	    
	jr nz,l7f6ch		;7f18	20 52 	  R 
	ld d,b			;7f1a	50 	P 
	ld d,a			;7f1b	57 	W 
	jr nz,l7f3fh		;7f1c	20 21 	  ! 
l7f1eh:
	ld (02423h),hl		;7f1e	22 23 24 	" # $ 
	dec h			;7f21	25 	% 
l7f22h:
	ld h,027h		;7f22	26 27 	& ' 
	jr z,l7f4fh		;7f24	28 29 	( ) 
l7f26h:
	ld hl,(02c2bh)		;7f26	2a 2b 2c 	* + , 
	dec l			;7f29	2d 	- 
l7f2ah:
	ld l,02fh		;7f2a	2e 2f 	. / 
l7f2ch:
	ld b,h			;7f2c	44 	D 
	ld b,h			;7f2d	44 	D 
l7f2eh:
	ld b,h			;7f2e	44 	D 
	ld b,h			;7f2f	44 	D 
l7f30h:
	ld b,h			;7f30	44 	D 
	ld b,h			;7f31	44 	D 
l7f32h:
	ld b,h			;7f32	44 	D 
	ld b,h			;7f33	44 	D 
l7f34h:
	ld b,h			;7f34	44 	D 
	ld b,h			;7f35	44 	D 
l7f36h:
	ld a,(03c3bh)		;7f36	3a 3b 3c 	: ; < 
	dec a			;7f39	3d 	= 
	ld a,03fh		;7f3a	3e 3f 	> ? 
	ld b,b			;7f3c	40 	@ 
	ld c,h			;7f3d	4c 	L 
	ld c,h			;7f3e	4c 	L 
l7f3fh:
	ld c,h			;7f3f	4c 	L 
	ld c,h			;7f40	4c 	L 
	ld c,h			;7f41	4c 	L 
	ld c,h			;7f42	4c 	L 
	ld c,h			;7f43	4c 	L 
	ld c,h			;7f44	4c 	L 
	ld c,h			;7f45	4c 	L 
	ld c,h			;7f46	4c 	L 
	ld c,h			;7f47	4c 	L 
	ld c,h			;7f48	4c 	L 
l7f49h:
	ld c,h			;7f49	4c 	L 
	ld c,h			;7f4a	4c 	L 
	ld c,h			;7f4b	4c 	L 
	ld c,h			;7f4c	4c 	L 
	ld c,h			;7f4d	4c 	L 
	ld c,h			;7f4e	4c 	L 
l7f4fh:
	ld c,h			;7f4f	4c 	L 
	ld c,h			;7f50	4c 	L 
	ld c,h			;7f51	4c 	L 
	ld c,h			;7f52	4c 	L 
	ld c,h			;7f53	4c 	L 
	ld c,h			;7f54	4c 	L 
	ld c,h			;7f55	4c 	L 
	ld c,h			;7f56	4c 	L 
	ld e,e			;7f57	5b 	[ 
	ld e,h			;7f58	5c 	\ 
	ld e,l			;7f59	5d 	] 
	ld e,(hl)			;7f5a	5e 	^ 
	ld c,h			;7f5b	4c 	L 
	ld h,b			;7f5c	60 	` 
	ld c,h			;7f5d	4c 	L 
	ld c,h			;7f5e	4c 	L 
	ld c,h			;7f5f	4c 	L 
	ld c,h			;7f60	4c 	L 
	ld c,h			;7f61	4c 	L 
	ld c,h			;7f62	4c 	L 
	ld c,h			;7f63	4c 	L 
	ld c,h			;7f64	4c 	L 
	ld c,h			;7f65	4c 	L 
	ld c,h			;7f66	4c 	L 
	ld c,h			;7f67	4c 	L 
	ld c,h			;7f68	4c 	L 
	ld c,h			;7f69	4c 	L 
	ld c,h			;7f6a	4c 	L 
	ld c,h			;7f6b	4c 	L 
l7f6ch:
	ld c,h			;7f6c	4c 	L 
	ld c,h			;7f6d	4c 	L 
	ld c,h			;7f6e	4c 	L 
	ld c,h			;7f6f	4c 	L 
	ld c,h			;7f70	4c 	L 
	ld c,h			;7f71	4c 	L 
	ld c,h			;7f72	4c 	L 
	ld c,h			;7f73	4c 	L 
	ld c,h			;7f74	4c 	L 
	ld c,h			;7f75	4c 	L 
	ld c,h			;7f76	4c 	L 
	ld a,e			;7f77	7b 	{ 
	ld a,h			;7f78	7c 	| 
	ld a,l			;7f79	7d 	} 
	ld a,(hl)			;7f7a	7e 	~ 
	rst 38h			;7f7b	ff 	. 
sub_7f7ch:
	call sub_796dh		;7f7c	cd 6d 79 	. m y 
	call sub_7ff2h		;7f7f	cd f2 7f 	. .  
	ld a,(021c8h)		;7f82	3a c8 21 	: . ! 
	nop			;7f85	00 	. 
	xor a			;7f86	af 	. 
	push hl			;7f87	e5 	. 
	ld de,laf08h		;7f88	11 08 af 	. . . 
	ld bc,00004h		;7f8b	01 04 00 	. . . 
	ldir		;7f8e	ed b0 	. . 
	pop de			;7f90	d1 	. 
	ld c,004h		;7f91	0e 04 	. . 
	ldir		;7f93	ed b0 	. . 
	ret			;7f95	c9 	. 
sub_7f96h:
	pop hl			;7f96	e1 	. 
	ld e,(hl)			;7f97	5e 	^ 
	inc hl			;7f98	23 	# 
	push hl			;7f99	e5 	. 
	call sub_7979h		;7f9a	cd 79 79 	. y y 
	cp e			;7f9d	bb 	. 
	jr z,l7fa3h		;7f9e	28 03 	( . 
	jp sub_ae66h		;7fa0	c3 66 ae 	. f . 
l7fa3h:
	call sub_796dh		;7fa3	cd 6d 79 	. m y 
	pop hl			;7fa6	e1 	. 
	inc hl			;7fa7	23 	# 
	jp (hl)			;7fa8	e9 	. 
sub_7fa9h:
	pop hl			;7fa9	e1 	. 
	pop de			;7faa	d1 	. 
	push de			;7fab	d5 	. 
	push hl			;7fac	e5 	. 
	ld hl,l7fc7h		;7fad	21 c7 7f 	! .  
	ld (hl),e			;7fb0	73 	s 
	call sub_7979h		;7fb1	cd 79 79 	. y y 
	cp e			;7fb4	bb 	. 
	jp z,sub_796dh		;7fb5	ca 6d 79 	. m y 
	call sub_ae66h		;7fb8	cd 66 ae 	. f . 
	nop			;7fbb	00 	. 
	cp (hl)			;7fbc	be 	. 
	ld a,a			;7fbd	7f 	 
	ld l,l			;7fbe	6d 	m 
	ld l,c			;7fbf	69 	i 
	ld (hl),e			;7fc0	73 	s 
	ld (hl),e			;7fc1	73 	s 
	ld l,c			;7fc2	69 	i 
	ld l,(hl)			;7fc3	6e 	n 
	ld h,a			;7fc4	67 	g 
	jr nz,l7feeh		;7fc5	20 27 	  ' 
l7fc7h:
	jr nz,$+41		;7fc7	20 27 	  ' 
	nop			;7fc9	00 	. 
sub_7fcah:
	pop hl			;7fca	e1 	. 
	ld e,(hl)			;7fcb	5e 	^ 
	inc hl			;7fcc	23 	# 
	push hl			;7fcd	e5 	. 
	push de			;7fce	d5 	. 
	call sub_7fa9h		;7fcf	cd a9 7f 	. .  
	pop de			;7fd2	d1 	. 
	ret			;7fd3	c9 	. 
l7fd4h:
	call sub_7fcah		;7fd4	cd ca 7f 	. .  
	dec sp			;7fd7	3b 	; 
	ret			;7fd8	c9 	. 
sub_7fd9h:
	call sub_796dh		;7fd9	cd 6d 79 	. m y 
	jp sub_7fcah		;7fdc	c3 ca 7f 	. .  
sub_7fdfh:
	pop de			;7fdf	d1 	. 
	pop hl			;7fe0	e1 	. 
	push hl			;7fe1	e5 	. 
	push de			;7fe2	d5 	. 
	ld h,000h		;7fe3	26 00 	& . 
	call sub_7979h		;7fe5	cd 79 79 	. y y 
	cp l			;7fe8	bd 	. 
	ld l,h			;7fe9	6c 	l 
	ret nz			;7fea	c0 	. 
	call sub_796dh		;7feb	cd 6d 79 	. m y 
l7feeh:
	ld hl,00001h		;7fee	21 01 00 	! . . 
	ret			;7ff1	c9 	. 
sub_7ff2h:
	pop hl			;7ff2	e1 	. 
	ld e,(hl)			;7ff3	5e 	^ 
	inc hl			;7ff4	23 	# 
	push hl			;7ff5	e5 	. 
	call sub_7979h		;7ff6	cd 79 79 	. y y 
	cp e			;7ff9	bb 	. 
	ret nz			;7ffa	c0 	. 
	call sub_796dh		;7ffb	cd 6d 79 	. m y 
	xor a			;7ffe	af 	. 
l7fffh:
	ret			;7fff	c9 	. 
sub_8000h:
	call sub_7ff2h		;8000	cd f2 7f 	. .  
	dec sp			;8003	3b 	; 
	ret			;8004	c9 	. 
sub_8005h:
	push bc			;8005	c5 	. 
	ld hl,00005h		;8006	21 05 00 	! . . 
	call sub_ac64h		;8009	cd 64 ac 	. d . 
	ld hl,lafa4h		;800c	21 a4 af 	! . . 
	ld (lafa4h),hl		;800f	22 a4 af 	" . . 
	ld hl,0200ah		;8012	21 0a 20 	! .   
	ld (laf0ch),hl		;8015	22 0c af 	" . . 
	xor a			;8018	af 	. 
	ld h,a			;8019	67 	g 
	ld l,a			;801a	6f 	o 
	ld (laf1eh),hl		;801b	22 1e af 	" . . 
	ld (laf19h),hl		;801e	22 19 af 	" . . 
	ld (laf15h),hl		;8021	22 15 af 	" . . 
	ld (laf13h),hl		;8024	22 13 af 	" . . 
	ld (laf08h),a		;8027	32 08 af 	2 . . 
	ld (laf04h),a		;802a	32 04 af 	2 . . 
	ld (laf00h),a		;802d	32 00 af 	2 . . 
	ld (laf49h),a		;8030	32 49 af 	2 I . 
	ld (laf38h),a		;8033	32 38 af 	2 8 . 
	ld (laf10h),hl		;8036	22 10 af 	" . . 
	inc hl			;8039	23 	# 
	ld (laf17h),hl		;803a	22 17 af 	" . . 
	pop bc			;803d	c1 	. 
	ret			;803e	c9 	. 
sub_803fh:
	push bc			;803f	c5 	. 
l8040h:
	call sub_7979h		;8040	cd 79 79 	. y y 
	ld hl,l8074h		;8043	21 74 80 	! t . 
	ld bc,0000fh		;8046	01 0f 00 	. . . 
	call sub_80c4h		;8049	cd c4 80 	. . . 
	pop bc			;804c	c1 	. 
	ret			;804d	c9 	. 
	ld hl,(laf01h)		;804e	2a 01 af 	* . . 
	call sub_888fh		;8051	cd 8f 88 	. . . 
	ld de,l806ch		;8054	11 6c 80 	. l . 
	ld bc,00008h		;8057	01 08 00 	. . . 
	call sub_8804h		;805a	cd 04 88 	. . . 
	jr z,l80a1h		;805d	28 42 	( B 
	call 08364h		;805f	cd 64 83 	. d . 
	pop hl			;8062	e1 	. 
	jr z,l8040h		;8063	28 db 	( . 
	push hl			;8065	e5 	. 
	call sub_9f36h		;8066	cd 36 9f 	. 6 . 
	jp l7fd4h		;8069	c3 d4 7f 	. .  
l806ch:
	ld l,c			;806c	69 	i 
	ld l,(hl)			;806d	6e 	n 
	ld l,h			;806e	6c 	l 
	ld l,c			;806f	69 	i 
	ld l,(hl)			;8070	6e 	n 
	ld h,l			;8071	65 	e 
	jr nz,l8094h		;8072	20 20 	    
l8074h:
	ld bc,00282h		;8074	01 82 02 	. . . 
	jp pe,00382h		;8077	ea 82 03 	. . . 
	dec e			;807a	1d 	. 
	add a,d			;807b	82 	. 
	ld b,024h		;807c	06 24 	. $ 
	add a,e			;807e	83 	. 
	rlca			;807f	07 	. 
	nop			;8080	00 	. 
	add a,c			;8081	81 	. 
	add hl,bc			;8082	09 	. 
	ld a,h			;8083	7c 	| 
	add a,c			;8084	81 	. 
	rrca			;8085	0f 	. 
	ld b,h			;8086	44 	D 
	add a,e			;8087	83 	. 
	djnz $+58		;8088	10 38 	. 8 
	add a,d			;808a	82 	. 
	ld de,l837eh		;808b	11 7e 83 	. ~ . 
	dec d			;808e	15 	. 
	ld l,d			;808f	6a 	j 
	add a,d			;8090	82 	. 
	ld a,(de)			;8091	1a 	. 
	ld b,e			;8092	43 	C 
	add a,c			;8093	81 	. 
l8094h:
	ld e,06dh		;8094	1e 6d 	. m 
	ld a,c			;8096	79 	y 
	dec sp			;8097	3b 	; 
	sub h			;8098	94 	. 
	add a,e			;8099	83 	. 
	ld a,e			;809a	7b 	{ 
	ld c,(hl)			;809b	4e 	N 
	add a,b			;809c	80 	. 
	ld c,h			;809d	4c 	L 
	ld h,(hl)			;809e	66 	f 
	add a,b			;809f	80 	. 
	nop			;80a0	00 	. 
l80a1h:
	call sub_7fd9h		;80a1	cd d9 7f 	. .  
	jr z,$-49		;80a4	28 cd 	( . 
	jp p,0297fh		;80a6	f2 7f 29 	.  ) 
	ret z			;80a9	c8 	. 
l80aah:
	call sub_9b63h		;80aa	cd 63 9b 	. c . 
	push hl			;80ad	e5 	. 
	ld a,h			;80ae	7c 	| 
	or a			;80af	b7 	. 
	jr nz,l80b7h		;80b0	20 05 	  . 
	call sub_ad34h		;80b2	cd 34 ad 	. 4 . 
	jr l80bah		;80b5	18 03 	. . 
l80b7h:
	call sub_ad3bh		;80b7	cd 3b ad 	. ; . 
l80bah:
	pop hl			;80ba	e1 	. 
	call sub_7ff2h		;80bb	cd f2 7f 	. .  
	inc l			;80be	2c 	, 
	jr z,l80aah		;80bf	28 e9 	( . 
	jr $-28		;80c1	18 e2 	. . 
l80c3h:
	pop de			;80c3	d1 	. 
sub_80c4h:
	ld e,(hl)			;80c4	5e 	^ 
	inc hl			;80c5	23 	# 
	ld d,(hl)			;80c6	56 	V 
	push de			;80c7	d5 	. 
	inc hl			;80c8	23 	# 
	cpi		;80c9	ed a1 	. . 
	ret z			;80cb	c8 	. 
	jp pe,l80c3h		;80cc	ea c3 80 	. . . 
	ret			;80cf	c9 	. 
sub_80d0h:
	pop af			;80d0	f1 	. 
	ld hl,(lb2bdh)		;80d1	2a bd b2 	* . . 
	push hl			;80d4	e5 	. 
	ld hl,(lb2bbh)		;80d5	2a bb b2 	* . . 
	push hl			;80d8	e5 	. 
	ld hl,(lb2bah)		;80d9	2a ba b2 	* . . 
	push hl			;80dc	e5 	. 
	push af			;80dd	f5 	. 
	ld (lb2bdh),bc		;80de	ed 43 bd b2 	. C . . 
	ld (lb2bbh),de		;80e2	ed 53 bb b2 	. S . . 
	ld a,e			;80e6	7b 	{ 
	or d			;80e7	b2 	. 
	ld a,002h		;80e8	3e 02 	> . 
	jr z,l80edh		;80ea	28 01 	( . 
	inc a			;80ec	3c 	< 
l80edh:
	ld (lb2bah),a		;80ed	32 ba b2 	2 . . 
	ret			;80f0	c9 	. 
sub_80f1h:
	pop de			;80f1	d1 	. 
	pop hl			;80f2	e1 	. 
	ld (lb2bah),hl		;80f3	22 ba b2 	" . . 
	pop hl			;80f6	e1 	. 
	ld (lb2bbh),hl		;80f7	22 bb b2 	" . . 
	pop hl			;80fa	e1 	. 
	ld (lb2bdh),hl		;80fb	22 bd b2 	" . . 
	ex de,hl			;80fe	eb 	. 
	jp (hl)			;80ff	e9 	. 
	ld de,00000h		;8100	11 00 00 	. . . 
	ld b,d			;8103	42 	B 
	ld c,e			;8104	4b 	K 
	call sub_80d0h		;8105	cd d0 80 	. . . 
	call sub_796dh		;8108	cd 6d 79 	. m y 
	call sub_ad25h		;810b	cd 25 ad 	. % . 
	push hl			;810e	e5 	. 
	call sub_803fh		;810f	cd 3f 80 	. ? . 
	call sub_7f96h		;8112	cd 96 7f 	. .  
	ld e,009h		;8115	1e 09 	. . 
	ld hl,lb2bbh		;8117	21 bb b2 	! . . 
	call sub_adb4h		;811a	cd b4 ad 	. . . 
	call sub_7fcah		;811d	cd ca 7f 	. .  
	jr z,l8143h		;8120	28 21 	( ! 
	nop			;8122	00 	. 
	nop			;8123	00 	. 
	add hl,sp			;8124	39 	9 
	push hl			;8125	e5 	. 
	ld hl,00000h		;8126	21 00 00 	! . . 
	push hl			;8129	e5 	. 
	inc hl			;812a	23 	# 
	push hl			;812b	e5 	. 
	call sub_9b57h		;812c	cd 57 9b 	. W . 
	pop de			;812f	d1 	. 
	pop de			;8130	d1 	. 
	pop de			;8131	d1 	. 
	pop de			;8132	d1 	. 
	call sub_7fcah		;8133	cd ca 7f 	. .  
	add hl,hl			;8136	29 	) 
	ld hl,lb2bdh		;8137	21 bd b2 	! . . 
	call sub_adb4h		;813a	cd b4 ad 	. . . 
	call sub_80f1h		;813d	cd f1 80 	. . . 
	jp l7fd4h		;8140	c3 d4 7f 	. .  
l8143h:
	call sub_ad25h		;8143	cd 25 ad 	. % . 
	ex de,hl			;8146	eb 	. 
	ld bc,00000h		;8147	01 00 00 	. . . 
	call sub_80d0h		;814a	cd d0 80 	. . . 
	ld hl,lb2bdh		;814d	21 bd b2 	! . . 
	call sub_8163h		;8150	cd 63 81 	. c . 
	ld hl,lb2bbh		;8153	21 bb b2 	! . . 
	call sub_adc0h		;8156	cd c0 ad 	. . . 
	ld hl,lb2bdh		;8159	21 bd b2 	! . . 
	call sub_adb4h		;815c	cd b4 ad 	. . . 
	call sub_80f1h		;815f	cd f1 80 	. . . 
	ret			;8162	c9 	. 
sub_8163h:
	push hl			;8163	e5 	. 
	call sub_7fd9h		;8164	cd d9 7f 	. .  
	jr z,$+35		;8167	28 21 	( ! 
	ld bc,0e500h		;8169	01 00 e5 	. . . 
	dec hl			;816c	2b 	+ 
	push hl			;816d	e5 	. 
	call sub_9b57h		;816e	cd 57 9b 	. W . 
	pop de			;8171	d1 	. 
	pop de			;8172	d1 	. 
	pop de			;8173	d1 	. 
	call sub_7fcah		;8174	cd ca 7f 	. .  
	add hl,hl			;8177	29 	) 
	call sub_803fh		;8178	cd 3f 80 	. ? . 
	ret			;817b	c9 	. 
	call sub_7fd9h		;817c	cd d9 7f 	. .  
	jr z,$+19		;817f	28 11 	( . 
	nop			;8181	00 	. 
	nop			;8182	00 	. 
	ld (l6cd7h),de		;8183	ed 53 d7 6c 	. S . l 
	ld b,d			;8187	42 	B 
	ld c,e			;8188	4b 	K 
	call sub_80d0h		;8189	cd d0 80 	. . . 
	call sub_8000h		;818c	cd 00 80 	. . . 
	jr z,l8197h		;818f	28 06 	( . 
	call sub_9f36h		;8191	cd 36 9f 	. 6 . 
	call l7fd4h		;8194	cd d4 7f 	. .  
l8197h:
	call sub_ad25h		;8197	cd 25 ad 	. % . 
	push hl			;819a	e5 	. 
	xor a			;819b	af 	. 
	push af			;819c	f5 	. 
	call sub_8000h		;819d	cd 00 80 	. . . 
	jr z,l81b8h		;81a0	28 16 	( . 
	pop af			;81a2	f1 	. 
	inc a			;81a3	3c 	< 
	push af			;81a4	f5 	. 
	ld hl,lb2bdh		;81a5	21 bd b2 	! . . 
	push hl			;81a8	e5 	. 
	ld hl,00001h		;81a9	21 01 00 	! . . 
	push hl			;81ac	e5 	. 
	dec hl			;81ad	2b 	+ 
	push hl			;81ae	e5 	. 
	call sub_9b57h		;81af	cd 57 9b 	. W . 
	pop de			;81b2	d1 	. 
	pop de			;81b3	d1 	. 
	pop de			;81b4	d1 	. 
	call l7fd4h		;81b5	cd d4 7f 	. .  
l81b8h:
	call sub_7ff2h		;81b8	cd f2 7f 	. .  
	add hl,hl			;81bb	29 	) 
	jr nz,l81c5h		;81bc	20 07 	  . 
	pop af			;81be	f1 	. 
	pop hl			;81bf	e1 	. 
	ld (lb2bbh),hl		;81c0	22 bb b2 	" . . 
	jr l81e3h		;81c3	18 1e 	. . 
l81c5h:
	ld hl,l6cd7h		;81c5	21 d7 6c 	! . l 
	call sub_adbah		;81c8	cd ba ad 	. . . 
	call sub_ad25h		;81cb	cd 25 ad 	. % . 
	ld (lb2bbh),hl		;81ce	22 bb b2 	" . . 
	call sub_9f36h		;81d1	cd 36 9f 	. 6 . 
	pop af			;81d4	f1 	. 
	jr z,l81deh		;81d5	28 07 	( . 
	ld hl,00000h		;81d7	21 00 00 	! . . 
	add hl,sp			;81da	39 	9 
	call sub_adc0h		;81db	cd c0 ad 	. . . 
l81deh:
	pop hl			;81de	e1 	. 
	call sub_7fcah		;81df	cd ca 7f 	. .  
	add hl,hl			;81e2	29 	) 
l81e3h:
	ld hl,lb2bah		;81e3	21 ba b2 	! . . 
	set 0,(hl)		;81e6	cb c6 	. . 
	ld hl,l6cd7h		;81e8	21 d7 6c 	! . l 
	call sub_adb4h		;81eb	cd b4 ad 	. . . 
	call sub_803fh		;81ee	cd 3f 80 	. ? . 
	ld hl,lb2bbh		;81f1	21 bb b2 	! . . 
	call sub_adc0h		;81f4	cd c0 ad 	. . . 
	ld hl,lb2bdh		;81f7	21 bd b2 	! . . 
	call sub_adb4h		;81fa	cd b4 ad 	. . . 
	call sub_80f1h		;81fd	cd f1 80 	. . . 
	ret			;8200	c9 	. 
	ld a,(lb2bah)		;8201	3a ba b2 	: . . 
	and 002h		;8204	e6 02 	. . 
	jr nz,l820eh		;8206	20 06 	  . 
	ld a,(lb2bfh)		;8208	3a bf b2 	: . . 
	or a			;820b	b7 	. 
	jr nz,l8219h		;820c	20 0b 	  . 
l820eh:
	ld hl,lb2bdh		;820e	21 bd b2 	! . . 
	call sub_adbah		;8211	cd ba ad 	. . . 
l8214h:
	call sub_7fd9h		;8214	cd d9 7f 	. .  
	dec sp			;8217	3b 	; 
	ret			;8218	c9 	. 
l8219h:
	call sub_ae66h		;8219	cd 66 ae 	. f . 
	ld a,(bc)			;821c	0a 	. 
	ld a,(lb2bah)		;821d	3a ba b2 	: . . 
	bit 1,a		;8220	cb 4f 	. O 
	jr z,l8234h		;8222	28 10 	( . 
	cpl			;8224	2f 	/ 
	bit 0,a		;8225	cb 47 	. G 
	ld hl,lb2bbh		;8227	21 bb b2 	! . . 
l822ah:
	push af			;822a	f5 	. 
	call z,sub_adc0h		;822b	cc c0 ad 	. . . 
	pop af			;822e	f1 	. 
	call nz,sub_adbah		;822f	c4 ba ad 	. . . 
	jr l8214h		;8232	18 e0 	. . 
l8234h:
	call sub_ae66h		;8234	cd 66 ae 	. f . 
	dec bc			;8237	0b 	. 
	ld hl,00000h		;8238	21 00 00 	! . . 
	push hl			;823b	e5 	. 
	add hl,sp			;823c	39 	9 
	push hl			;823d	e5 	. 
	call sub_8163h		;823e	cd 63 81 	. c . 
	call sub_7ff2h		;8241	cd f2 7f 	. .  
	dec bc			;8244	0b 	. 
	jr nz,l8264h		;8245	20 1d 	  . 
	ld hl,00000h		;8247	21 00 00 	! . . 
	push hl			;824a	e5 	. 
	add hl,sp			;824b	39 	9 
	push hl			;824c	e5 	. 
	call sub_adbah		;824d	cd ba ad 	. . . 
	pop de			;8250	d1 	. 
	pop bc			;8251	c1 	. 
	pop hl			;8252	e1 	. 
	push hl			;8253	e5 	. 
	push bc			;8254	c5 	. 
	push de			;8255	d5 	. 
	call sub_adb4h		;8256	cd b4 ad 	. . . 
	call sub_803fh		;8259	cd 3f 80 	. ? . 
	pop hl			;825c	e1 	. 
	call sub_adb4h		;825d	cd b4 ad 	. . . 
	pop hl			;8260	e1 	. 
	pop hl			;8261	e1 	. 
	pop hl			;8262	e1 	. 
	ret			;8263	c9 	. 
l8264h:
	pop hl			;8264	e1 	. 
	call sub_adb4h		;8265	cd b4 ad 	. . . 
	pop hl			;8268	e1 	. 
	ret			;8269	c9 	. 
	ld hl,(lb2bdh)		;826a	2a bd b2 	* . . 
	push hl			;826d	e5 	. 
	ld a,(lb2bfh)		;826e	3a bf b2 	: . . 
	push af			;8271	f5 	. 
	ld hl,(lb2c2h)		;8272	2a c2 b2 	* . . 
	push hl			;8275	e5 	. 
	ld hl,(lb2c0h)		;8276	2a c0 b2 	* . . 
	push hl			;8279	e5 	. 
	xor a			;827a	af 	. 
	ld h,a			;827b	67 	g 
	ld l,a			;827c	6f 	o 
	ld (lb2bdh),hl		;827d	22 bd b2 	" . . 
	ld (lb2c2h),hl		;8280	22 c2 b2 	" . . 
	ld (lb2bfh),a		;8283	32 bf b2 	2 . . 
	call sub_7fd9h		;8286	cd d9 7f 	. .  
	jr z,$-49		;8289	28 cd 	( . 
	ld (hl),09fh		;828b	36 9f 	6 . 
	call sub_9a0fh		;828d	cd 0f 9a 	. . . 
	call sub_ad8ch		;8290	cd 8c ad 	. . . 
	call sub_6465h		;8293	cd 65 64 	. e d 
	call sub_ad25h		;8296	cd 25 ad 	. % . 
	push hl			;8299	e5 	. 
	call sub_ad93h		;829a	cd 93 ad 	. . . 
	nop			;829d	00 	. 
	nop			;829e	00 	. 
	call sub_7fcah		;829f	cd ca 7f 	. .  
	add hl,hl			;82a2	29 	) 
	call sub_803fh		;82a3	cd 3f 80 	. ? . 
	ld hl,lb2bdh		;82a6	21 bd b2 	! . . 
	call sub_adbah		;82a9	cd ba ad 	. . . 
	ld hl,00000h		;82ac	21 00 00 	! . . 
	add hl,sp			;82af	39 	9 
	call sub_adb4h		;82b0	cd b4 ad 	. . . 
	pop hl			;82b3	e1 	. 
	ld hl,(lb2c0h)		;82b4	2a c0 b2 	* . . 
	pop de			;82b7	d1 	. 
	ld (lb2c0h),de		;82b8	ed 53 c0 b2 	. S . . 
	or a			;82bc	b7 	. 
	sbc hl,de		;82bd	ed 52 	. R 
	ld c,l			;82bf	4d 	M 
	ld b,h			;82c0	44 	D 
	ex de,hl			;82c1	eb 	. 
	call sub_ada9h		;82c2	cd a9 ad 	. . . 
	call sub_ad93h		;82c5	cd 93 ad 	. . . 
	nop			;82c8	00 	. 
	nop			;82c9	00 	. 
	ld hl,(lb2c2h)		;82ca	2a c2 b2 	* . . 
	ld a,l			;82cd	7d 	} 
	or h			;82ce	b4 	. 
	jr z,l82d7h		;82cf	28 06 	( . 
	ld hl,lb2c2h		;82d1	21 c2 b2 	! . . 
	call sub_adc0h		;82d4	cd c0 ad 	. . . 
l82d7h:
	ld hl,lb2bdh		;82d7	21 bd b2 	! . . 
	call sub_adb4h		;82da	cd b4 ad 	. . . 
	pop hl			;82dd	e1 	. 
	ld (lb2c2h),hl		;82de	22 c2 b2 	" . . 
	pop af			;82e1	f1 	. 
	ld (lb2bfh),a		;82e2	32 bf b2 	2 . . 
	pop hl			;82e5	e1 	. 
	ld (lb2bdh),hl		;82e6	22 bd b2 	" . . 
	ret			;82e9	c9 	. 
	call sub_796dh		;82ea	cd 6d 79 	. m y 
	ld a,(lb2bfh)		;82ed	3a bf b2 	: . . 
	or a			;82f0	b7 	. 
	jr z,l82f7h		;82f1	28 04 	( . 
	call sub_ae66h		;82f3	cd 66 ae 	. f . 
	inc c			;82f6	0c 	. 
l82f7h:
	ld hl,(lb2c0h)		;82f7	2a c0 b2 	* . . 
	ld de,(lb392h)		;82fa	ed 5b 92 b3 	. [ . . 
	sbc hl,de		;82fe	ed 52 	. R 
	jp m,l8307h		;8300	fa 07 83 	. . . 
	call sub_ae66h		;8303	cd 66 ae 	. f . 
	dec c			;8306	0d 	. 
l8307h:
	call sub_ad25h		;8307	cd 25 ad 	. % . 
	ex de,hl			;830a	eb 	. 
	ld hl,(lb2c0h)		;830b	2a c0 b2 	* . . 
	ld (hl),e			;830e	73 	s 
	inc hl			;830f	23 	# 
	ld (hl),d			;8310	72 	r 
	inc hl			;8311	23 	# 
	push hl			;8312	e5 	. 
	call sub_9b63h		;8313	cd 63 9b 	. c . 
	ex de,hl			;8316	eb 	. 
	pop hl			;8317	e1 	. 
	ld (hl),e			;8318	73 	s 
	inc hl			;8319	23 	# 
	ld (hl),d			;831a	72 	r 
	inc hl			;831b	23 	# 
	ld (lb2c0h),hl		;831c	22 c0 b2 	" . . 
	call sub_7fcah		;831f	cd ca 7f 	. .  
	ld a,(03ac9h)		;8322	3a c9 3a 	: . : 
	cp a			;8325	bf 	. 
	or d			;8326	b2 	. 
	or a			;8327	b7 	. 
	jr z,l832eh		;8328	28 04 	( . 
	call sub_ae66h		;832a	cd 66 ae 	. f . 
	inc c			;832d	0c 	. 
l832eh:
	ld hl,(lb2c2h)		;832e	2a c2 b2 	* . . 
	ld a,l			;8331	7d 	} 
	or h			;8332	b4 	. 
	jr z,$+6		;8333	28 04 	( . 
	call sub_ae66h		;8335	cd 66 ae 	. f . 
	ld c,0cdh		;8338	0e cd 	. . 
	dec h			;833a	25 	% 
	xor l			;833b	ad 	. 
	ld (lb2c2h),hl		;833c	22 c2 b2 	" . . 
	call sub_7fd9h		;833f	cd d9 7f 	. .  
	ld a,(0cdc9h)		;8342	3a c9 cd 	: . . 
	ld l,l			;8345	6d 	m 
	ld a,c			;8346	79 	y 
	call sub_7979h		;8347	cd 79 79 	. y y 
	cp 04ch		;834a	fe 4c 	. L 
	jr z,l8352h		;834c	28 04 	( . 
	call sub_ae66h		;834e	cd 66 ae 	. f . 
	rrca			;8351	0f 	. 
l8352h:
	ld hl,(laf01h)		;8352	2a 01 af 	* . . 
	call sub_8b62h		;8355	cd 62 8b 	. b . 
	inc hl			;8358	23 	# 
	jr z,l8360h		;8359	28 05 	( . 
	cp 009h		;835b	fe 09 	. . 
	jp l822ah		;835d	c3 2a 82 	. * . 
l8360h:
	call sub_ae66h		;8360	cd 66 ae 	. f . 
	djnz $+44		;8363	10 2a 	. * 
	ld bc,0e5afh		;8365	01 af e5 	. . . 
	call sub_7f7ch		;8368	cd 7c 7f 	. |  
	pop hl			;836b	e1 	. 
	ret nz			;836c	c0 	. 
	call sub_8b62h		;836d	cd 62 8b 	. b . 
	jr z,l8360h		;8370	28 ee 	( . 
	cp 00ah		;8372	fe 0a 	. . 
	jr nz,l8360h		;8374	20 ea 	  . 
	ld (hl),009h		;8376	36 09 	6 . 
	inc hl			;8378	23 	# 
	call sub_adb4h		;8379	cd b4 ad 	. . . 
	xor a			;837c	af 	. 
	ret			;837d	c9 	. 
l837eh:
	call sub_796dh		;837e	cd 6d 79 	. m y 
	call sub_7979h		;8381	cd 79 79 	. y y 
	cp 03bh		;8384	fe 3b 	. ; 
	jr z,l838eh		;8386	28 06 	( . 
	call sub_9f36h		;8388	cd 36 9f 	. 6 . 
	call sub_9a0fh		;838b	cd 0f 9a 	. . . 
l838eh:
	call l7fd4h		;838e	cd d4 7f 	. .  
	jp l960eh		;8391	c3 0e 96 	. . . 
	call sub_796dh		;8394	cd 6d 79 	. m y 
l8397h:
	call sub_7979h		;8397	cd 79 79 	. y y 
	cp 07dh		;839a	fe 7d 	. } 
	jp z,sub_796dh		;839c	ca 6d 79 	. m y 
	call sub_803fh		;839f	cd 3f 80 	. ? . 
	jr l8397h		;83a2	18 f3 	. . 
sub_83a4h:
	push bc			;83a4	c5 	. 
	ld bc,0000ah		;83a5	01 0a 00 	. . . 
	ld de,lb2bah		;83a8	11 ba b2 	. . . 
	ld hl,l83b8h		;83ab	21 b8 83 	! . . 
	ldir		;83ae	ed b0 	. . 
	ld hl,lb38ch		;83b0	21 8c b3 	! . . 
	ld (lb392h),hl		;83b3	22 92 b3 	" . . 
	pop bc			;83b6	c1 	. 
	ret			;83b7	c9 	. 
l83b8h:
	nop			;83b8	00 	. 
	nop			;83b9	00 	. 
	nop			;83ba	00 	. 
	nop			;83bb	00 	. 
	nop			;83bc	00 	. 
	ld bc,lb2c4h		;83bd	01 c4 b2 	. . . 
	nop			;83c0	00 	. 
	nop			;83c1	00 	. 
sub_83c2h:
	push bc			;83c2	c5 	. 
	call sub_8401h		;83c3	cd 01 84 	. . . 
	push af			;83c6	f5 	. 
	call sub_8444h		;83c7	cd 44 84 	. D . 
	call sub_8000h		;83ca	cd 00 80 	. . . 
	jr z,$+39		;83cd	28 25 	( % 
l83cfh:
	pop af			;83cf	f1 	. 
	call sub_8721h		;83d0	cd 21 87 	. ! . 
	cp 002h		;83d3	fe 02 	. . 
	jr z,l83f7h		;83d5	28 20 	(   
	cp 005h		;83d7	fe 05 	. . 
	jr z,l83fch		;83d9	28 21 	( ! 
	ld a,000h		;83db	3e 00 	> . 
	push af			;83dd	f5 	. 
	call sub_7ff2h		;83de	cd f2 7f 	. .  
	dec a			;83e1	3d 	= 
	call z,sub_8d14h		;83e2	cc 14 8d 	. . . 
	call sub_8000h		;83e5	cd 00 80 	. . . 
	jr z,$+12		;83e8	28 0a 	( . 
	call sub_7ff2h		;83ea	cd f2 7f 	. .  
	inc l			;83ed	2c 	, 
	jr z,l83cfh		;83ee	28 df 	( . 
	call sub_ae66h		;83f0	cd 66 ae 	. f . 
	jr nc,$-13		;83f3	30 f1 	0 . 
	pop bc			;83f5	c1 	. 
	ret			;83f6	c9 	. 
l83f7h:
	call sub_872ah		;83f7	cd 2a 87 	. * . 
	pop bc			;83fa	c1 	. 
	ret			;83fb	c9 	. 
l83fch:
	call sub_879ah		;83fc	cd 9a 87 	. . . 
	pop bc			;83ff	c1 	. 
	ret			;8400	c9 	. 
sub_8401h:
	call sub_7979h		;8401	cd 79 79 	. y y 
	ld bc,00006h		;8404	01 06 00 	. . . 
	ld hl,l8437h		;8407	21 37 84 	! 7 . 
	cpdr		;840a	ed b9 	. . 
	push af			;840c	f5 	. 
	push hl			;840d	e5 	. 
	call z,sub_796dh		;840e	cc 6d 79 	. m y 
	pop hl			;8411	e1 	. 
	ld de,00007h		;8412	11 07 00 	. . . 
	ld a,(lb2b2h)		;8415	3a b2 b2 	: . . 
	cp 001h		;8418	fe 01 	. . 
	jr nz,l841fh		;841a	20 03 	  . 
	ld de,0000dh		;841c	11 0d 00 	. . . 
l841fh:
	add hl,de			;841f	19 	. 
	ld a,(hl)			;8420	7e 	~ 
	ld (lb394h),a		;8421	32 94 b3 	2 . . 
	cp 008h		;8424	fe 08 	. . 
	jr nz,$+6		;8426	20 04 	  . 
	call sub_ae66h		;8428	cd 66 ae 	. f . 
	ld sp,03ef1h		;842b	31 f1 3e 	1 . > 
	nop			;842e	00 	. 
	ret z			;842f	c8 	. 
	inc a			;8430	3c 	< 
	ret			;8431	c9 	. 
	nop			;8432	00 	. 
	ld bc,00d18h		;8433	01 18 0d 	. . . 
	inc d			;8436	14 	. 
l8437h:
	dec de			;8437	1b 	. 
	dec b			;8438	05 	. 
	dec b			;8439	05 	. 
	inc b			;843a	04 	. 
	ld bc,00705h		;843b	01 05 07 	. . . 
	ld (bc),a			;843e	02 	. 
	ex af,af'			;843f	08 	. 
	inc b			;8440	04 	. 
	ld bc,00708h		;8441	01 08 07 	. . . 
sub_8444h:
	call sub_7979h		;8444	cd 79 79 	. y y 
	ld bc,00008h		;8447	01 08 00 	. . . 
	ld hl,l84bch		;844a	21 bc 84 	! . . 
	cpdr		;844d	ed b9 	. . 
	jr nz,l8498h		;844f	20 47 	  G 
	push hl			;8451	e5 	. 
	call sub_796dh		;8452	cd 6d 79 	. m y 
	pop hl			;8455	e1 	. 
	inc hl			;8456	23 	# 
	ld c,(hl)			;8457	4e 	N 
	ld de,00008h		;8458	11 08 00 	. . . 
	add hl,de			;845b	19 	. 
	ld e,(hl)			;845c	5e 	^ 
	ld d,000h		;845d	16 00 	. . 
	ld l,e			;845f	6b 	k 
	ld h,d			;8460	62 	b 
	add hl,hl			;8461	29 	) 
	add hl,hl			;8462	29 	) 
	add hl,de			;8463	19 	. 
	ld de,lafach		;8464	11 ac af 	. . . 
	add hl,de			;8467	19 	. 
	ld (lb398h),hl		;8468	22 98 b3 	" . . 
	call sub_7979h		;846b	cd 79 79 	. y y 
	ld b,a			;846e	47 	G 
	cp 012h		;846f	fe 12 	. . 
	jr nz,l8487h		;8471	20 14 	  . 
	ld a,c			;8473	79 	y 
	cp 013h		;8474	fe 13 	. . 
	jr z,l8480h		;8476	28 08 	( . 
	cp 016h		;8478	fe 16 	. . 
	jr z,l8480h		;847a	28 04 	( . 
	cp 01dh		;847c	fe 1d 	. . 
	jr nz,l8483h		;847e	20 03 	  . 
l8480h:
	call sub_796dh		;8480	cd 6d 79 	. m y 
l8483h:
	ld hl,00001h		;8483	21 01 00 	! . . 
	ret			;8486	c9 	. 
l8487h:
	cp 00eh		;8487	fe 0e 	. . 
	jr nz,l8483h		;8489	20 f8 	  . 
	ld a,c			;848b	79 	y 
	cp 013h		;848c	fe 13 	. . 
	jr nz,l8483h		;848e	20 f3 	  . 
	ld hl,lafc5h		;8490	21 c5 af 	! . . 
	ld (lb398h),hl		;8493	22 98 b3 	" . . 
	jr l8480h		;8496	18 e8 	. . 
l8498h:
	call sub_84d5h		;8498	cd d5 84 	. . . 
	ld a,l			;849b	7d 	} 
	or h			;849c	b4 	. 
	ret nz			;849d	c0 	. 
	call 084c5h		;849e	cd c5 84 	. . . 
	jr nz,l84abh		;84a1	20 08 	  . 
	call sub_9e80h		;84a3	cd 80 9e 	. . . 
	ld (lb398h),hl		;84a6	22 98 b3 	" . . 
	jr l8480h		;84a9	18 d5 	. . 
l84abh:
	ld hl,lafb1h		;84ab	21 b1 af 	! . . 
	ld (lb398h),hl		;84ae	22 98 b3 	" . . 
	ld hl,00000h		;84b1	21 00 00 	! . . 
	ret			;84b4	c9 	. 
	nop			;84b5	00 	. 
	ex af,af'			;84b6	08 	. 
	ld c,013h		;84b7	0e 13 	. . 
	ld d,01dh		;84b9	16 1d 	. . 
	dec b			;84bb	05 	. 
l84bch:
	ld (de),a			;84bc	12 	. 
	ld bc,00505h		;84bd	01 05 05 	. . . 
	ld bc,00301h		;84c0	01 01 03 	. . . 
	ld (bc),a			;84c3	02 	. 
	ld bc,sub_79cbh+2		;84c4	01 cd 79 	. . y 
	ld a,c			;84c7	79 	y 
	cp 04ch		;84c8	fe 4c 	. L 
	ret nz			;84ca	c0 	. 
	ld hl,(laf01h)		;84cb	2a 01 af 	* . . 
	call sub_8b55h		;84ce	cd 55 8b 	. U . 
	ld a,(hl)			;84d1	7e 	~ 
	cp 007h		;84d2	fe 07 	. . 
	ret			;84d4	c9 	. 
sub_84d5h:
	call sub_7979h		;84d5	cd 79 79 	. y y 
	ld hl,00000h		;84d8	21 00 00 	! . . 
	cp 019h		;84db	fe 19 	. . 
	jr z,l84e3h		;84dd	28 04 	( . 
	cp 01ch		;84df	fe 1c 	. . 
	ret nz			;84e1	c0 	. 
	inc hl			;84e2	23 	# 
l84e3h:
	push hl			;84e3	e5 	. 
	call sub_796dh		;84e4	cd 6d 79 	. m y 
	call sub_7979h		;84e7	cd 79 79 	. y y 
	cp 04ch		;84ea	fe 4c 	. L 
	jr nz,l8510h		;84ec	20 22 	  " 
	ld hl,(laf01h)		;84ee	2a 01 af 	* . . 
	call sub_8b55h		;84f1	cd 55 8b 	. U . 
	ld a,l			;84f4	7d 	} 
	or h			;84f5	b4 	. 
	jr z,l8510h		;84f6	28 18 	( . 
	call sub_9e80h		;84f8	cd 80 9e 	. . . 
	ld (l6cb0h+1),hl		;84fb	22 b1 6c 	" . l 
	call sub_796dh		;84fe	cd 6d 79 	. m y 
	call sub_7979h		;8501	cd 79 79 	. y y 
	cp 07bh		;8504	fe 7b 	. { 
	jr nz,l850ch		;8506	20 04 	  . 
	call sub_ae66h		;8508	cd 66 ae 	. f . 
	inc sp			;850b	33 	3 
l850ch:
	pop hl			;850c	e1 	. 
	jp l85c2h		;850d	c3 c2 85 	. . . 
l8510h:
	ld a,(lb2b2h)		;8510	3a b2 b2 	: . . 
	cp 003h		;8513	fe 03 	. . 
	jr nz,l851bh		;8515	20 04 	  . 
	call sub_ae66h		;8517	cd 66 ae 	. f . 
	inc (hl)			;851a	34 	4 
l851bh:
	ld hl,lafach		;851b	21 ac af 	! . . 
	ld (l6cb0h+1),hl		;851e	22 b1 6c 	" . l 
	add hl,sp			;8521	39 	9 
	ld b,h			;8522	44 	D 
	ld c,l			;8523	4d 	M 
	ld hl,l6cb0h+1		;8524	21 b1 6c 	! . l 
	ld a,009h		;8527	3e 09 	> . 
	call sub_8897h		;8529	cd 97 88 	. . . 
	call sub_7979h		;852c	cd 79 79 	. y y 
	cp 04ch		;852f	fe 4c 	. L 
	jr nz,l8549h		;8531	20 16 	  . 
	ld hl,(lb2b2h)		;8533	2a b2 b2 	* . . 
	push hl			;8536	e5 	. 
	ld hl,(l6cb0h+1)		;8537	2a b1 6c 	* . l 
	push hl			;853a	e5 	. 
	ld hl,0000ch		;853b	21 0c 00 	! . . 
	push hl			;853e	e5 	. 
	ld hl,(laf01h)		;853f	2a 01 af 	* . . 
	push hl			;8542	e5 	. 
	call sub_8970h		;8543	cd 70 89 	. p . 
	call sub_796dh		;8546	cd 6d 79 	. m y 
l8549h:
	call sub_7fcah		;8549	cd ca 7f 	. .  
	ld a,e			;854c	7b 	{ 
	pop de			;854d	d1 	. 
	ld a,(lb394h)		;854e	3a 94 b3 	: . . 
	push af			;8551	f5 	. 
	ld hl,(lb1aeh)		;8552	2a ae b1 	* . . 
	push hl			;8555	e5 	. 
	push de			;8556	d5 	. 
	ld hl,00000h		;8557	21 00 00 	! . . 
	ld (lb1aeh),hl		;855a	22 ae b1 	" . . 
	ld a,00bh		;855d	3e 0b 	> . 
	ld (lb394h),a		;855f	32 94 b3 	2 . . 
l8562h:
	call sub_7ff2h		;8562	cd f2 7f 	. .  
	ld a,l			;8565	7d 	} 
	jr z,l85aah		;8566	28 42 	( B 
	ld hl,(l6cb0h+1)		;8568	2a b1 6c 	* . l 
	push hl			;856b	e5 	. 
	call sub_8444h		;856c	cd 44 84 	. D . 
	pop hl			;856f	e1 	. 
	ld (l6cb0h+1),hl		;8570	22 b1 6c 	" . l 
l8573h:
	ld a,004h		;8573	3e 04 	> . 
	call sub_8721h		;8575	cd 21 87 	. ! . 
	ld hl,(l6cb0h+1)		;8578	2a b1 6c 	* . l 
	ld de,(lb39ah)		;857b	ed 5b 9a b3 	. [ . . 
	call sub_6369h		;857f	cd 69 63 	. i c 
	jr nc,l8588h		;8582	30 04 	0 . 
	call sub_ae66h		;8584	cd 66 ae 	. f . 
	dec (hl)			;8587	35 	5 
l8588h:
	pop de			;8588	d1 	. 
	push de			;8589	d5 	. 
	ld a,e			;858a	7b 	{ 
	or d			;858b	b2 	. 
	jr z,l859fh		;858c	28 11 	( . 
	ld hl,(lb1aeh)		;858e	2a ae b1 	* . . 
	push hl			;8591	e5 	. 
	call sub_6390h		;8592	cd 90 63 	. . c 
	pop hl			;8595	e1 	. 
	jr nc,l8599h		;8596	30 01 	0 . 
	ex (sp),hl			;8598	e3 	. 
l8599h:
	ld hl,00000h		;8599	21 00 00 	! . . 
	ld (lb1aeh),hl		;859c	22 ae b1 	" . . 
l859fh:
	call sub_7ff2h		;859f	cd f2 7f 	. .  
	inc l			;85a2	2c 	, 
	jr z,l8573h		;85a3	28 ce 	( . 
	call l7fd4h		;85a5	cd d4 7f 	. .  
	jr l8562h		;85a8	18 b8 	. . 
l85aah:
	pop hl			;85aa	e1 	. 
	ld a,l			;85ab	7d 	} 
	or h			;85ac	b4 	. 
	jr nz,l85b2h		;85ad	20 03 	  . 
	ld hl,(lb1aeh)		;85af	2a ae b1 	* . . 
l85b2h:
	ex de,hl			;85b2	eb 	. 
	ld hl,(l6cb0h+1)		;85b3	2a b1 6c 	* . l 
	inc hl			;85b6	23 	# 
	ld (hl),e			;85b7	73 	s 
	inc hl			;85b8	23 	# 
	ld (hl),d			;85b9	72 	r 
	pop hl			;85ba	e1 	. 
	ld (lb1aeh),hl		;85bb	22 ae b1 	" . . 
	pop af			;85be	f1 	. 
	ld (lb394h),a		;85bf	32 94 b3 	2 . . 
l85c2h:
	ld hl,(l6cb0h+1)		;85c2	2a b1 6c 	* . l 
	ld (lb398h),hl		;85c5	22 98 b3 	" . . 
	ld hl,00001h		;85c8	21 01 00 	! . . 
	ret			;85cb	c9 	. 
l85cch:
	call sub_8647h		;85cc	cd 47 86 	. G . 
	push af			;85cf	f5 	. 
	call sub_88efh		;85d0	cd ef 88 	. . . 
	call sub_7979h		;85d3	cd 79 79 	. y y 
	cp 07bh		;85d6	fe 7b 	. { 
	jr nz,l85e2h		;85d8	20 08 	  . 
	pop af			;85da	f1 	. 
	cp 000h		;85db	fe 00 	. . 
	jr z,l85e3h		;85dd	28 04 	( . 
	ld a,002h		;85df	3e 02 	> . 
	push af			;85e1	f5 	. 
l85e2h:
	pop af			;85e2	f1 	. 
l85e3h:
	push af			;85e3	f5 	. 
	cp 003h		;85e4	fe 03 	. . 
	jr nz,l85fch		;85e6	20 14 	  . 
	ld hl,(lb39ah)		;85e8	2a 9a b3 	* . . 
	ld a,(hl)			;85eb	7e 	~ 
	cp 007h		;85ec	fe 07 	. . 
	jr z,l85f8h		;85ee	28 08 	( . 
	cp 009h		;85f0	fe 09 	. . 
	jr z,l85f8h		;85f2	28 04 	( . 
	cp 00ah		;85f4	fe 0a 	. . 
	jr nz,l8620h		;85f6	20 28 	  ( 
l85f8h:
	call sub_ae66h		;85f8	cd 66 ae 	. f . 
	dec l			;85fb	2d 	- 
l85fch:
	cp 002h		;85fc	fe 02 	. . 
	jr nz,l8620h		;85fe	20 20 	    
	ld hl,(laf13h)		;8600	2a 13 af 	* . . 
	ld a,l			;8603	7d 	} 
	or h			;8604	b4 	. 
	jr z,l8620h		;8605	28 19 	( . 
	ld hl,(lb396h)		;8607	2a 96 b3 	* . . 
	call sub_885fh		;860a	cd 5f 88 	. _ . 
	ld a,l			;860d	7d 	} 
	or h			;860e	b4 	. 
	jr z,l861ch		;860f	28 0b 	( . 
	ld a,(hl)			;8611	7e 	~ 
	cp 001h		;8612	fe 01 	. . 
	jr nz,l861ch		;8614	20 06 	  . 
	inc hl			;8616	23 	# 
	ld a,(hl)			;8617	7e 	~ 
	inc hl			;8618	23 	# 
	or (hl)			;8619	b6 	. 
	jr nz,l8620h		;861a	20 04 	  . 
l861ch:
	pop af			;861c	f1 	. 
	ld a,005h		;861d	3e 05 	> . 
	ret			;861f	c9 	. 
l8620h:
	ld hl,(lb2b2h)		;8620	2a b2 b2 	* . . 
	ld de,(lb39ah)		;8623	ed 5b 9a b3 	. [ . . 
	ld a,002h		;8627	3e 02 	> . 
	cp l			;8629	bd 	. 
	jr nz,l8635h		;862a	20 09 	  . 
	ld a,(de)			;862c	1a 	. 
	cp 007h		;862d	fe 07 	. . 
	jr nz,l8635h		;862f	20 04 	  . 
	dec l			;8631	2d 	- 
	push hl			;8632	e5 	. 
	jr l8639h		;8633	18 04 	. . 
l8635h:
	push hl			;8635	e5 	. 
	ld hl,(lb394h)		;8636	2a 94 b3 	* . . 
l8639h:
	push de			;8639	d5 	. 
	push hl			;863a	e5 	. 
	ld hl,(lb396h)		;863b	2a 96 b3 	* . . 
	push hl			;863e	e5 	. 
	call sub_8970h		;863f	cd 70 89 	. p . 
	ld (lb39ch),hl		;8642	22 9c b3 	" . . 
	pop af			;8645	f1 	. 
	ret			;8646	c9 	. 
sub_8647h:
	push af			;8647	f5 	. 
	ld bc,0ffffh		;8648	01 ff ff 	. . . 
	inc bc			;864b	03 	. 
	call sub_7ff2h		;864c	cd f2 7f 	. .  
	ld hl,(0f928h)		;864f	2a 28 f9 	* ( . 
	pop af			;8652	f1 	. 
	push bc			;8653	c5 	. 
	push af			;8654	f5 	. 
	call sub_7ff2h		;8655	cd f2 7f 	. .  
	jr z,$+34		;8658	28 20 	(   
	dec bc			;865a	0b 	. 
	pop af			;865b	f1 	. 
	call sub_8647h		;865c	cd 47 86 	. G . 
	push af			;865f	f5 	. 
	call sub_7fcah		;8660	cd ca 7f 	. .  
	add hl,hl			;8663	29 	) 
	jr $+24		;8664	18 16 	. . 
	call sub_7979h		;8666	cd 79 79 	. y y 
	cp 04ch		;8669	fe 4c 	. L 
	jr nz,l8678h		;866b	20 0b 	  . 
	ld hl,(laf01h)		;866d	2a 01 af 	* . . 
	ld (lb396h),hl		;8670	22 96 b3 	" . . 
	call sub_796dh		;8673	cd 6d 79 	. m y 
	jr $+6		;8676	18 04 	. . 
l8678h:
	call sub_ae66h		;8678	cd 66 ae 	. f . 
	ld (hl),0f1h		;867b	36 f1 	6 . 
	call sub_8692h		;867d	cd 92 86 	. . . 
	pop bc			;8680	c1 	. 
	push af			;8681	f5 	. 
l8682h:
	ld a,c			;8682	79 	y 
	or b			;8683	b0 	. 
	jr z,l8690h		;8684	28 0a 	( . 
	dec bc			;8686	0b 	. 
	push bc			;8687	c5 	. 
	ld a,006h		;8688	3e 06 	> . 
	call sub_9ce5h		;868a	cd e5 9c 	. . . 
	pop bc			;868d	c1 	. 
	jr l8682h		;868e	18 f2 	. . 
l8690h:
	pop af			;8690	f1 	. 
	ret			;8691	c9 	. 
sub_8692h:
	push af			;8692	f5 	. 
	call sub_7ff2h		;8693	cd f2 7f 	. .  
	jr z,l86c0h		;8696	28 28 	( ( 
	ex af,af'			;8698	08 	. 
	call sub_7ff2h		;8699	cd f2 7f 	. .  
	ld e,e			;869c	5b 	[ 
	jr z,$+82		;869d	28 50 	( P 
	pop af			;869f	f1 	. 
	ret			;86a0	c9 	. 
	call sub_7ff2h		;86a1	cd f2 7f 	. .  
	add hl,hl			;86a4	29 	) 
	jr z,l86e0h		;86a5	28 39 	( 9 
	pop af			;86a7	f1 	. 
	push af			;86a8	f5 	. 
	cp 000h		;86a9	fe 00 	. . 
	jr z,l86e7h		;86ab	28 3a 	( : 
	cp 003h		;86ad	fe 03 	. . 
	jr z,l86e7h		;86af	28 36 	( 6 
	cp 004h		;86b1	fe 04 	. . 
	jr z,l86e7h		;86b3	28 32 	( 2 
	pop af			;86b5	f1 	. 
	ld a,002h		;86b6	3e 02 	> . 
	push af			;86b8	f5 	. 
l86b9h:
	call sub_7979h		;86b9	cd 79 79 	. y y 
	cp 04ch		;86bc	fe 4c 	. L 
	jr nz,l86ebh		;86be	20 2b 	  + 
l86c0h:
	ld hl,00002h		;86c0	21 02 00 	! . . 
	push hl			;86c3	e5 	. 
	ld hl,lafb1h		;86c4	21 b1 af 	! . . 
	push hl			;86c7	e5 	. 
	ld hl,00005h		;86c8	21 05 00 	! . . 
	push hl			;86cb	e5 	. 
	ld hl,(laf01h)		;86cc	2a 01 af 	* . . 
	push hl			;86cf	e5 	. 
	call sub_8970h		;86d0	cd 70 89 	. p . 
	call sub_796dh		;86d3	cd 6d 79 	. m y 
	call sub_7ff2h		;86d6	cd f2 7f 	. .  
	inc l			;86d9	2c 	, 
	jr z,l86b9h		;86da	28 dd 	( . 
	call sub_7fcah		;86dc	cd ca 7f 	. .  
	add hl,hl			;86df	29 	) 
l86e0h:
	ld a,007h		;86e0	3e 07 	> . 
	call sub_9ce5h		;86e2	cd e5 9c 	. . . 
	pop af			;86e5	f1 	. 
	ret			;86e6	c9 	. 
l86e7h:
	call sub_ae66h		;86e7	cd 66 ae 	. f . 
	scf			;86ea	37 	7 
l86ebh:
	call sub_ae66h		;86eb	cd 66 ae 	. f . 
	jr c,$-13		;86ee	38 f1 	8 . 
	push af			;86f0	f5 	. 
	cp 003h		;86f1	fe 03 	. . 
	jr nz,l8704h		;86f3	20 0f 	  . 
	ld a,006h		;86f5	3e 06 	> . 
	call sub_9ce5h		;86f7	cd e5 9c 	. . . 
	call sub_7979h		;86fa	cd 79 79 	. y y 
	cp 05dh		;86fd	fe 5d 	. ] 
	call nz,sub_9b63h		;86ff	c4 63 9b 	. c . 
	jr l8715h		;8702	18 11 	. . 
l8704h:
	call sub_7979h		;8704	cd 79 79 	. y y 
	sub 05dh		;8707	d6 5d 	. ] 
	jr nz,l870fh		;8709	20 04 	  . 
	ld h,a			;870b	67 	g 
	ld l,a			;870c	6f 	o 
	jr l8712h		;870d	18 03 	. . 
l870fh:
	call sub_9b63h		;870f	cd 63 9b 	. c . 
l8712h:
	call sub_88dfh		;8712	cd df 88 	. . . 
l8715h:
	call sub_7fcah		;8715	cd ca 7f 	. .  
	ld e,l			;8718	5d 	] 
	call sub_7ff2h		;8719	cd f2 7f 	. .  
	ld e,e			;871c	5b 	[ 
	jr z,l870fh		;871d	28 f0 	( . 
	pop af			;871f	f1 	. 
	ret			;8720	c9 	. 
sub_8721h:
	ld hl,(lb398h)		;8721	2a 98 b3 	* . . 
	ld (lb39ah),hl		;8724	22 9a b3 	" . . 
	jp l85cch		;8727	c3 cc 85 	. . . 
sub_872ah:
	ld hl,(lb39ch)		;872a	2a 9c b3 	* . . 
	call sub_9e80h		;872d	cd 80 9e 	. . . 
	cp 007h		;8730	fe 07 	. . 
	jr z,l8738h		;8732	28 04 	( . 
	call sub_ae66h		;8734	cd 66 ae 	. f . 
	add hl,sp			;8737	39 	9 
l8738h:
	call sub_7ff2h		;8738	cd f2 7f 	. .  
	ld bc,00021h		;873b	01 21 00 	. ! . 
	nop			;873e	00 	. 
	jr nz,l8749h		;873f	20 08 	  . 
	inc hl			;8741	23 	# 
	ld de,(lb39ch)		;8742	ed 5b 9c b3 	. [ . . 
	ld a,00dh		;8746	3e 0d 	> . 
	ld (de),a			;8748	12 	. 
l8749h:
	ld (lb390h),hl		;8749	22 90 b3 	" . . 
	ld a,003h		;874c	3e 03 	> . 
	ld (lb2b2h),a		;874e	32 b2 b2 	2 . . 
	jr l8756h		;8751	18 03 	. . 
l8753h:
	call sub_87c0h		;8753	cd c0 87 	. . . 
l8756h:
	call sub_7ff2h		;8756	cd f2 7f 	. .  
	ld a,e			;8759	7b 	{ 
	jr nz,l8753h		;875a	20 f7 	  . 
	call sub_8c77h		;875c	cd 77 8c 	. w . 
	ld a,002h		;875f	3e 02 	> . 
	ld (lb2b2h),a		;8761	32 b2 b2 	2 . . 
	ld (lb404h),a		;8764	32 04 b4 	2 . . 
	call sub_87dah		;8767	cd da 87 	. . . 
	ld hl,(lb2b0h)		;876a	2a b0 b2 	* . . 
	ld a,h			;876d	7c 	| 
	or l			;876e	b5 	. 
	jr z,l877ah		;876f	28 09 	( . 
	call sub_ad9ch		;8771	cd 9c ad 	. . . 
	ld hl,08221h		;8774	21 21 82 	! ! . 
	ld h,h			;8777	64 	d 
	jr l877dh		;8778	18 03 	. . 
l877ah:
	ld hl,l647fh		;877a	21 7f 64 	!  d 
l877dh:
	call sub_adc9h		;877d	cd c9 ad 	. . . 
	jr l8785h		;8780	18 03 	. . 
l8782h:
	call sub_803fh		;8782	cd 3f 80 	. ? . 
l8785h:
	call sub_7ff2h		;8785	cd f2 7f 	. .  
	ld a,l			;8788	7d 	} 
	jr nz,l8782h		;8789	20 f7 	  . 
	call l960eh		;878b	cd 0e 96 	. . . 
	xor a			;878e	af 	. 
	ld (lb404h),a		;878f	32 04 b4 	2 . . 
	inc a			;8792	3c 	< 
	ld (lb2b2h),a		;8793	32 b2 b2 	2 . . 
	call sub_8ca6h		;8796	cd a6 8c 	. . . 
	ret			;8799	c9 	. 
sub_879ah:
	jr l879fh		;879a	18 03 	. . 
l879ch:
	call sub_796dh		;879c	cd 6d 79 	. m y 
l879fh:
	call sub_7ff2h		;879f	cd f2 7f 	. .  
	ld a,e			;87a2	7b 	{ 
	jr nz,l879ch		;87a3	20 f7 	  . 
	ld bc,00001h		;87a5	01 01 00 	. . . 
l87a8h:
	call sub_7979h		;87a8	cd 79 79 	. y y 
	cp 07bh		;87ab	fe 7b 	. { 
	jr nz,l87b0h		;87ad	20 01 	  . 
	inc bc			;87af	03 	. 
l87b0h:
	cp 07dh		;87b0	fe 7d 	. } 
	jr nz,l87b5h		;87b2	20 01 	  . 
	dec bc			;87b4	0b 	. 
l87b5h:
	call sub_796dh		;87b5	cd 6d 79 	. m y 
	ld a,c			;87b8	79 	y 
	or b			;87b9	b0 	. 
	jr nz,l87a8h		;87ba	20 ec 	  . 
	call sub_8ca6h		;87bc	cd a6 8c 	. . . 
	ret			;87bf	c9 	. 
sub_87c0h:
	call sub_7ff2h		;87c0	cd f2 7f 	. .  
	inc d			;87c3	14 	. 
	ld a,005h		;87c4	3e 05 	> . 
	ld (lb394h),a		;87c6	32 94 b3 	2 . . 
	call sub_8444h		;87c9	cd 44 84 	. D . 
l87cch:
	ld a,003h		;87cc	3e 03 	> . 
	call sub_8721h		;87ce	cd 21 87 	. ! . 
	call sub_7ff2h		;87d1	cd f2 7f 	. .  
	inc l			;87d4	2c 	, 
	jr z,l87cch		;87d5	28 f5 	( . 
	jp l7fd4h		;87d7	c3 d4 7f 	. .  
sub_87dah:
	call 084c5h		;87da	cd c5 84 	. . . 
	jr z,l87f1h		;87dd	28 12 	( . 
	call sub_7979h		;87df	cd 79 79 	. y y 
	cp 001h		;87e2	fe 01 	. . 
	ret c			;87e4	d8 	. 
	cp 01eh		;87e5	fe 1e 	. . 
	ret nc			;87e7	d0 	. 
	ld bc,0000eh		;87e8	01 0e 00 	. . . 
	ld hl,l87f6h		;87eb	21 f6 87 	! . . 
	cpir		;87ee	ed b1 	. . 
	ret nz			;87f0	c0 	. 
l87f1h:
	call sub_83c2h		;87f1	cd c2 83 	. . . 
	jr sub_87dah		;87f4	18 e4 	. . 
l87f6h:
	ld bc,00805h		;87f6	01 05 08 	. . . 
	dec c			;87f9	0d 	. 
	ld c,012h		;87fa	0e 12 	. . 
	inc de			;87fc	13 	. 
	inc d			;87fd	14 	. 
	ld d,018h		;87fe	16 18 	. . 
	add hl,de			;8800	19 	. 
	dec de			;8801	1b 	. 
	inc e			;8802	1c 	. 
	dec e			;8803	1d 	. 
sub_8804h:
	push bc			;8804	c5 	. 
	push de			;8805	d5 	. 
	push hl			;8806	e5 	. 
	call sub_880eh		;8807	cd 0e 88 	. . . 
	pop hl			;880a	e1 	. 
	pop de			;880b	d1 	. 
	pop bc			;880c	c1 	. 
	ret			;880d	c9 	. 
sub_880eh:
	ld a,(de)			;880e	1a 	. 
	inc de			;880f	13 	. 
	cpi		;8810	ed a1 	. . 
	ret nz			;8812	c0 	. 
	ret po			;8813	e0 	. 
	jr sub_880eh		;8814	18 f8 	. . 
sub_8816h:
	push bc			;8816	c5 	. 
	push hl			;8817	e5 	. 
	ld a,(hl)			;8818	7e 	~ 
	ld hl,(laf6ah)		;8819	2a 6a af 	* j . 
	ld de,(laf56h)		;881c	ed 5b 56 af 	. [ V . 
	add hl,de			;8820	19 	. 
	ex de,hl			;8821	eb 	. 
	ld bc,0000ch		;8822	01 0c 00 	. . . 
l8825h:
	cp (hl)			;8825	be 	. 
	jr z,l884fh		;8826	28 27 	( ' 
l8828h:
	add hl,bc			;8828	09 	. 
	sbc hl,de		;8829	ed 52 	. R 
	add hl,de			;882b	19 	. 
	jr c,l8825h		;882c	38 f7 	8 . 
	ld h,b			;882e	60 	` 
	ld l,c			;882f	69 	i 
	ld a,006h		;8830	3e 06 	> . 
	call sub_abfch		;8832	cd fc ab 	. . . 
	ld bc,00008h		;8835	01 08 00 	. . . 
	pop hl			;8838	e1 	. 
	push de			;8839	d5 	. 
	ldir		;883a	ed b0 	. . 
	ld b,004h		;883c	06 04 	. . 
	xor a			;883e	af 	. 
l883fh:
	ld (de),a			;883f	12 	. 
	inc de			;8840	13 	. 
	djnz l883fh		;8841	10 fc 	. . 
	pop de			;8843	d1 	. 
	push de			;8844	d5 	. 
l8845h:
	ld hl,(laf56h)		;8845	2a 56 af 	* V . 
	ex de,hl			;8848	eb 	. 
	or a			;8849	b7 	. 
	sbc hl,de		;884a	ed 52 	. R 
	pop de			;884c	d1 	. 
	pop bc			;884d	c1 	. 
	ret			;884e	c9 	. 
l884fh:
	ex de,hl			;884f	eb 	. 
	ex (sp),hl			;8850	e3 	. 
	ld c,008h		;8851	0e 08 	. . 
	call sub_8804h		;8853	cd 04 88 	. . . 
	jr z,l8845h		;8856	28 ed 	( . 
	ld c,00ch		;8858	0e 0c 	. . 
	ld a,(hl)			;885a	7e 	~ 
	ex (sp),hl			;885b	e3 	. 
	ex de,hl			;885c	eb 	. 
	jr l8828h		;885d	18 c9 	. . 
sub_885fh:
	push de			;885f	d5 	. 
	ld de,0000ah		;8860	11 0a 00 	. . . 
l8863h:
	add hl,de			;8863	19 	. 
	ld de,(laf56h)		;8864	ed 5b 56 af 	. [ V . 
	add hl,de			;8868	19 	. 
	ld e,(hl)			;8869	5e 	^ 
	inc hl			;886a	23 	# 
	ld d,(hl)			;886b	56 	V 
	ex de,hl			;886c	eb 	. 
	pop de			;886d	d1 	. 
	ret			;886e	c9 	. 
sub_886fh:
	push de			;886f	d5 	. 
	ld de,00008h		;8870	11 08 00 	. . . 
	jp l8863h		;8873	c3 63 88 	. c . 
sub_8876h:
	push hl			;8876	e5 	. 
	push de			;8877	d5 	. 
	ld de,0000ah		;8878	11 0a 00 	. . . 
l887bh:
	add hl,de			;887b	19 	. 
	ld de,(laf56h)		;887c	ed 5b 56 af 	. [ V . 
	add hl,de			;8880	19 	. 
	pop de			;8881	d1 	. 
	ld (hl),e			;8882	73 	s 
	inc hl			;8883	23 	# 
	ld (hl),d			;8884	72 	r 
	pop hl			;8885	e1 	. 
	ret			;8886	c9 	. 
sub_8887h:
	push hl			;8887	e5 	. 
	push de			;8888	d5 	. 
	ld de,00008h		;8889	11 08 00 	. . . 
	jp l887bh		;888c	c3 7b 88 	. { . 
sub_888fh:
	push de			;888f	d5 	. 
	ld de,(laf56h)		;8890	ed 5b 56 af 	. [ V . 
	add hl,de			;8894	19 	. 
	pop de			;8895	d1 	. 
	ret			;8896	c9 	. 
sub_8897h:
	ld (l6ca0h),a		;8897	32 a0 6c 	2 . l 
	ld (l6ca0h+1),bc		;889a	ed 43 a1 6c 	. C . l 
	push bc			;889e	c5 	. 
	push hl			;889f	e5 	. 
	ld e,(hl)			;88a0	5e 	^ 
	inc hl			;88a1	23 	# 
	ld d,(hl)			;88a2	56 	V 
	ex de,hl			;88a3	eb 	. 
	ld (l6ca3h),hl		;88a4	22 a3 6c 	" . l 
	ld bc,00005h		;88a7	01 05 00 	. . . 
l88aah:
	ld de,l6ca0h		;88aa	11 a0 6c 	. . l 
	call sub_8804h		;88ad	cd 04 88 	. . . 
	ex de,hl			;88b0	eb 	. 
	jr z,l88d5h		;88b1	28 22 	( " 
	ld hl,(lb1a0h)		;88b3	2a a0 b1 	* . . 
	or a			;88b6	b7 	. 
	sbc hl,de		;88b7	ed 52 	. R 
	jr z,l88bfh		;88b9	28 04 	( . 
	ex de,hl			;88bb	eb 	. 
	add hl,bc			;88bc	09 	. 
	jr l88aah		;88bd	18 eb 	. . 
l88bfh:
	ex de,hl			;88bf	eb 	. 
	add hl,bc			;88c0	09 	. 
	ex de,hl			;88c1	eb 	. 
	ld hl,(lb1a2h)		;88c2	2a a2 b1 	* . . 
	or a			;88c5	b7 	. 
	sbc hl,de		;88c6	ed 52 	. R 
	jr c,l88dbh		;88c8	38 11 	8 . 
	ld (lb1a0h),de		;88ca	ed 53 a0 b1 	. S . . 
	push de			;88ce	d5 	. 
	ld hl,l6ca0h		;88cf	21 a0 6c 	! . l 
	ldir		;88d2	ed b0 	. . 
	pop de			;88d4	d1 	. 
l88d5h:
	pop hl			;88d5	e1 	. 
	ld (hl),e			;88d6	73 	s 
	inc hl			;88d7	23 	# 
	ld (hl),d			;88d8	72 	r 
	pop bc			;88d9	c1 	. 
	ret			;88da	c9 	. 
l88dbh:
	call sub_ae66h		;88db	cd 66 ae 	. f . 
	inc de			;88de	13 	. 
sub_88dfh:
	ex de,hl			;88df	eb 	. 
	ld hl,(lb3c7h)		;88e0	2a c7 b3 	* . . 
	inc hl			;88e3	23 	# 
	ld (hl),e			;88e4	73 	s 
	inc hl			;88e5	23 	# 
	ld (hl),d			;88e6	72 	r 
	ld (lb3c7h),hl		;88e7	22 c7 b3 	" . . 
	ld a,008h		;88ea	3e 08 	> . 
	jp sub_9ce5h		;88ec	c3 e5 9c 	. . . 
sub_88efh:
	ld hl,(lb3c7h)		;88ef	2a c7 b3 	* . . 
	ld d,(hl)			;88f2	56 	V 
	ld a,d			;88f3	7a 	z 
	or a			;88f4	b7 	. 
	ret z			;88f5	c8 	. 
	dec hl			;88f6	2b 	+ 
	ld (lb3c7h),hl		;88f7	22 c7 b3 	" . . 
	ld hl,(lb39ah)		;88fa	2a 9a b3 	* . . 
	ld e,(hl)			;88fd	5e 	^ 
	cp 007h		;88fe	fe 07 	. . 
	jr nz,l8917h		;8900	20 15 	  . 
	cp e			;8902	bb 	. 
	jr z,l8912h		;8903	28 0d 	( . 
	ld a,e			;8905	7b 	{ 
	cp 008h		;8906	fe 08 	. . 
	jr z,l8912h		;8908	28 08 	( . 
	cp 009h		;890a	fe 09 	. . 
	jr z,l8912h		;890c	28 04 	( . 
	cp 00ah		;890e	fe 0a 	. . 
	jr nz,l8916h		;8910	20 04 	  . 
l8912h:
	call sub_ae66h		;8912	cd 66 ae 	. f . 
	inc e			;8915	1c 	. 
l8916h:
	ld a,d			;8916	7a 	z 
l8917h:
	cp 008h		;8917	fe 08 	. . 
	jr nz,l8924h		;8919	20 09 	  . 
	ld a,e			;891b	7b 	{ 
	cp 007h		;891c	fe 07 	. . 
	jr nz,l8929h		;891e	20 09 	  . 
	call sub_ae66h		;8920	cd 66 ae 	. f . 
	dec e			;8923	1d 	. 
l8924h:
	ld bc,00002h		;8924	01 02 00 	. . . 
	jr l8942h		;8927	18 19 	. . 
l8929h:
	ld hl,(lb3c7h)		;8929	2a c7 b3 	* . . 
	ld d,(hl)			;892c	56 	V 
	dec hl			;892d	2b 	+ 
	ld e,(hl)			;892e	5e 	^ 
	dec hl			;892f	2b 	+ 
	ld (lb3c7h),hl		;8930	22 c7 b3 	" . . 
	ld hl,(lb39ah)		;8933	2a 9a b3 	* . . 
	inc hl			;8936	23 	# 
	ld a,(hl)			;8937	7e 	~ 
	inc hl			;8938	23 	# 
	ld h,(hl)			;8939	66 	f 
	ld l,a			;893a	6f 	o 
	call sub_6300h		;893b	cd 00 63 	. . c 
	ld b,h			;893e	44 	D 
	ld c,l			;893f	4d 	M 
	ld a,008h		;8940	3e 08 	> . 
l8942h:
	ld hl,lb39ah		;8942	21 9a b3 	! . . 
	call sub_8897h		;8945	cd 97 88 	. . . 
	jr sub_88efh		;8948	18 a5 	. . 
sub_894ah:
	pop de			;894a	d1 	. 
	pop hl			;894b	e1 	. 
	push hl			;894c	e5 	. 
	push de			;894d	d5 	. 
	ld a,l			;894e	7d 	} 
	ld l,h			;894f	6c 	l 
	cp 006h		;8950	fe 06 	. . 
	ret nz			;8952	c0 	. 
	inc hl			;8953	23 	# 
	ret			;8954	c9 	. 
sub_8955h:
	call sub_885fh		;8955	cd 5f 88 	. _ . 
	ex de,hl			;8958	eb 	. 
	call sub_895dh		;8959	cd 5d 89 	. ] . 
	ret			;895c	c9 	. 
sub_895dh:
	push de			;895d	d5 	. 
	ld hl,(lb1a6h)		;895e	2a a6 b1 	* . . 
	call sub_6397h		;8961	cd 97 63 	. . c 
	pop hl			;8964	e1 	. 
	ret nc			;8965	d0 	. 
	ex de,hl			;8966	eb 	. 
	ld hl,(lb1a4h)		;8967	2a a4 b1 	* . . 
	push de			;896a	d5 	. 
	call sub_6398h		;896b	cd 98 63 	. . c 
	pop hl			;896e	e1 	. 
	ret			;896f	c9 	. 
sub_8970h:
	pop de			;8970	d1 	. 
	pop hl			;8971	e1 	. 
	ld (l6ca0h),hl		;8972	22 a0 6c 	" . l 
	pop hl			;8975	e1 	. 
	ld a,l			;8976	7d 	} 
	ld (l6ca0h+2),a		;8977	32 a2 6c 	2 . l 
	pop hl			;897a	e1 	. 
	ld (06ca5h),hl		;897b	22 a5 6c 	" . l 
	pop hl			;897e	e1 	. 
	ld a,l			;897f	7d 	} 
	ld (l6ca7h),a		;8980	32 a7 6c 	2 . l 
	push de			;8983	d5 	. 
	push bc			;8984	c5 	. 
	ld hl,(l6ca0h)		;8985	2a a0 6c 	* . l 
	cp 001h		;8988	fe 01 	. . 
	push af			;898a	f5 	. 
	call z,sub_8994h		;898b	cc 94 89 	. . . 
	pop af			;898e	f1 	. 
	call nz,sub_8a76h		;898f	c4 76 8a 	. v . 
	pop bc			;8992	c1 	. 
	ret			;8993	c9 	. 
sub_8994h:
	call sub_8955h		;8994	cd 55 89 	. U . 
	jr nc,l89fdh		;8997	30 64 	0 d 
	push hl			;8999	e5 	. 
	call sub_9e80h		;899a	cd 80 9e 	. . . 
	ex de,hl			;899d	eb 	. 
	ld hl,(06ca5h)		;899e	2a a5 6c 	* . l 
	or a			;89a1	b7 	. 
	sbc hl,de		;89a2	ed 52 	. R 
	jr z,l89aah		;89a4	28 04 	( . 
	call sub_ae66h		;89a6	cd 66 ae 	. f . 
	inc d			;89a9	14 	. 
l89aah:
	pop hl			;89aa	e1 	. 
	ld c,(hl)			;89ab	4e 	N 
	ld a,(l6ca0h+2)		;89ac	3a a2 6c 	: . l 
	cp 002h		;89af	fe 02 	. . 
	jr z,l89c3h		;89b1	28 10 	( . 
	cp 001h		;89b3	fe 01 	. . 
	jr z,l89dbh		;89b5	28 24 	( $ 
	cp 004h		;89b7	fe 04 	. . 
	jr z,l89e3h		;89b9	28 28 	( ( 
	cp 00bh		;89bb	fe 0b 	. . 
	jr z,l89ebh		;89bd	28 2c 	( , 
l89bfh:
	call sub_ae66h		;89bf	cd 66 ae 	. f . 
	dec d			;89c2	15 	. 
l89c3h:
	ld a,c			;89c3	79 	y 
	cp 001h		;89c4	fe 01 	. . 
	jr z,l89ceh		;89c6	28 06 	( . 
	cp 003h		;89c8	fe 03 	. . 
	jr z,l89ceh		;89ca	28 02 	( . 
	jr l89bfh		;89cc	18 f1 	. . 
l89ceh:
	ld (hl),002h		;89ce	36 02 	6 . 
	ld a,(de)			;89d0	1a 	. 
	cp 007h		;89d1	fe 07 	. . 
	ret nz			;89d3	c0 	. 
	push hl			;89d4	e5 	. 
	inc hl			;89d5	23 	# 
	call sub_adb4h		;89d6	cd b4 ad 	. . . 
	pop hl			;89d9	e1 	. 
	ret			;89da	c9 	. 
l89dbh:
	cp c			;89db	b9 	. 
	ret z			;89dc	c8 	. 
	ld a,c			;89dd	79 	y 
	cp 002h		;89de	fe 02 	. . 
	ret z			;89e0	c8 	. 
	jr l89bfh		;89e1	18 dc 	. . 
l89e3h:
	ld a,c			;89e3	79 	y 
	cp 003h		;89e4	fe 03 	. . 
	jr nz,l89bfh		;89e6	20 d7 	  . 
	ld (hl),004h		;89e8	36 04 	6 . 
	ret			;89ea	c9 	. 
l89ebh:
	cp c			;89eb	b9 	. 
	jr nz,l89bfh		;89ec	20 d1 	  . 
	push hl			;89ee	e5 	. 
	inc hl			;89ef	23 	# 
	ld e,(hl)			;89f0	5e 	^ 
	inc hl			;89f1	23 	# 
	ld d,(hl)			;89f2	56 	V 
	ld hl,(lb1aeh)		;89f3	2a ae b1 	* . . 
	or a			;89f6	b7 	. 
	sbc hl,de		;89f7	ed 52 	. R 
	pop hl			;89f9	e1 	. 
	jr nz,l89bfh		;89fa	20 c3 	  . 
	ret			;89fc	c9 	. 
l89fdh:
	ld hl,00000h		;89fd	21 00 00 	! . . 
	ld (l6ca3h),hl		;8a00	22 a3 6c 	" . l 
	ld a,(l6ca0h+2)		;8a03	3a a2 6c 	: . l 
	ld hl,(06ca5h)		;8a06	2a a5 6c 	* . l 
	cp 007h		;8a09	fe 07 	. . 
	jr z,l8a2ch		;8a0b	28 1f 	( . 
	cp 00ch		;8a0d	fe 0c 	. . 
	jr z,l8a2ch		;8a0f	28 1b 	( . 
	cp 00bh		;8a11	fe 0b 	. . 
	jr z,l8a53h		;8a13	28 3e 	( > 
	ld a,(hl)			;8a15	7e 	~ 
	cp 007h		;8a16	fe 07 	. . 
	jr nz,l8a29h		;8a18	20 0f 	  . 
	ld a,(l6ca0h+2)		;8a1a	3a a2 6c 	: . l 
	cp 002h		;8a1d	fe 02 	. . 
	jr nz,l8a2ch		;8a1f	20 0b 	  . 
	call sub_ad25h		;8a21	cd 25 ad 	. % . 
	ld (l6ca3h),hl		;8a24	22 a3 6c 	" . l 
	jr l8a2ch		;8a27	18 03 	. . 
l8a29h:
	call sub_8a58h		;8a29	cd 58 8a 	. X . 
l8a2ch:
	ld de,(lb1a4h)		;8a2c	ed 5b a4 b1 	. [ . . 
	ld hl,(lb1a8h)		;8a30	2a a8 b1 	* . . 
	or a			;8a33	b7 	. 
	sbc hl,de		;8a34	ed 52 	. R 
	jr c,$+7		;8a36	38 05 	8 . 
	ex de,hl			;8a38	eb 	. 
	call sub_ae66h		;8a39	cd 66 ae 	. f . 
	ld d,001h		;8a3c	16 01 	. . 
	dec b			;8a3e	05 	. 
	nop			;8a3f	00 	. 
	dec de			;8a40	1b 	. 
	ld hl,06ca6h		;8a41	21 a6 6c 	! . l 
	lddr		;8a44	ed b8 	. . 
	inc de			;8a46	13 	. 
	ld (lb1a4h),de		;8a47	ed 53 a4 b1 	. S . . 
	ld hl,(l6ca0h)		;8a4b	2a a0 6c 	* . l 
	call sub_8876h		;8a4e	cd 76 88 	. v . 
	ex de,hl			;8a51	eb 	. 
	ret			;8a52	c9 	. 
l8a53h:
	call sub_8a62h		;8a53	cd 62 8a 	. b . 
	jr l8a2ch		;8a56	18 d4 	. . 
sub_8a58h:
	ld hl,(06ca5h)		;8a58	2a a5 6c 	* . l 
	inc hl			;8a5b	23 	# 
	ld e,(hl)			;8a5c	5e 	^ 
	inc hl			;8a5d	23 	# 
	ld d,(hl)			;8a5e	56 	V 
	jp l8b18h		;8a5f	c3 18 8b 	. . . 
sub_8a62h:
	ld hl,(lb1aeh)		;8a62	2a ae b1 	* . . 
	ld (l6ca3h),hl		;8a65	22 a3 6c 	" . l 
	ex de,hl			;8a68	eb 	. 
	ld hl,(06ca5h)		;8a69	2a a5 6c 	* . l 
	inc hl			;8a6c	23 	# 
	ld a,(hl)			;8a6d	7e 	~ 
	inc hl			;8a6e	23 	# 
	ld h,(hl)			;8a6f	66 	f 
	ld l,a			;8a70	6f 	o 
	add hl,de			;8a71	19 	. 
	ld (lb1aeh),hl		;8a72	22 ae b1 	" . . 
	ret			;8a75	c9 	. 
sub_8a76h:
	call sub_886fh		;8a76	cd 6f 88 	. o . 
	ld a,(l6ca7h)		;8a79	3a a7 6c 	: . l 
	cp 002h		;8a7c	fe 02 	. . 
	jr nz,l8af8h		;8a7e	20 78 	  x 
	ld a,l			;8a80	7d 	} 
	or h			;8a81	b4 	. 
	jr z,$+29		;8a82	28 1b 	( . 
	ld a,(l6ca0h+2)		;8a84	3a a2 6c 	: . l 
	cp 00bh		;8a87	fe 0b 	. . 
	jr nz,l8a9bh		;8a89	20 10 	  . 
	cp (hl)			;8a8b	be 	. 
	jr nz,l8a9bh		;8a8c	20 0d 	  . 
	push hl			;8a8e	e5 	. 
	call sub_9e80h		;8a8f	cd 80 9e 	. . . 
	ex de,hl			;8a92	eb 	. 
	ld hl,(06ca5h)		;8a93	2a a5 6c 	* . l 
	or a			;8a96	b7 	. 
	sbc hl,de		;8a97	ed 52 	. R 
	pop hl			;8a99	e1 	. 
	ret z			;8a9a	c8 	. 
l8a9bh:
	call sub_ae66h		;8a9b	cd 66 ae 	. f . 
	jr $+60		;8a9e	18 3a 	. : 
	and d			;8aa0	a2 	. 
	ld l,h			;8aa1	6c 	l 
	ld hl,00000h		;8aa2	21 00 00 	! . . 
	cp 007h		;8aa5	fe 07 	. . 
	jr z,l8acah		;8aa7	28 21 	( ! 
	cp 00ch		;8aa9	fe 0c 	. . 
	jr z,l8acah		;8aab	28 1d 	( . 
	cp 004h		;8aad	fe 04 	. . 
	jr z,l8acfh		;8aaf	28 1e 	( . 
	cp 00bh		;8ab1	fe 0b 	. . 
	jr nz,l8abah		;8ab3	20 05 	  . 
	call sub_8a62h		;8ab5	cd 62 8a 	. b . 
	jr l8ad2h		;8ab8	18 18 	. . 
l8abah:
	ld hl,(06ca5h)		;8aba	2a a5 6c 	* . l 
	inc hl			;8abd	23 	# 
	ld e,(hl)			;8abe	5e 	^ 
	inc hl			;8abf	23 	# 
	ld d,(hl)			;8ac0	56 	V 
	ld hl,(lb2b0h)		;8ac1	2a b0 b2 	* . . 
	or a			;8ac4	b7 	. 
	sbc hl,de		;8ac5	ed 52 	. R 
	ld (lb2b0h),hl		;8ac7	22 b0 b2 	" . . 
l8acah:
	ld (l6ca3h),hl		;8aca	22 a3 6c 	" . l 
	jr l8ad2h		;8acd	18 03 	. . 
l8acfh:
	call sub_8a58h		;8acf	cd 58 8a 	. X . 
l8ad2h:
	ld bc,00005h		;8ad2	01 05 00 	. . . 
	ld de,(lb2aah)		;8ad5	ed 5b aa b2 	. [ . . 
	ld hl,(lb2aeh)		;8ad9	2a ae b2 	* . . 
	or a			;8adc	b7 	. 
	sbc hl,de		;8add	ed 52 	. R 
	jr nz,l8ae6h		;8adf	20 05 	  . 
	ex de,hl			;8ae1	eb 	. 
	call sub_ae66h		;8ae2	cd 66 ae 	. f . 
	add hl,de			;8ae5	19 	. 
l8ae6h:
	ld hl,06ca6h		;8ae6	21 a6 6c 	! . l 
	dec de			;8ae9	1b 	. 
	lddr		;8aea	ed b8 	. . 
	inc de			;8aec	13 	. 
	ld hl,(l6ca0h)		;8aed	2a a0 6c 	* . l 
	call sub_8887h		;8af0	cd 87 88 	. . . 
	ex de,hl			;8af3	eb 	. 
	ld (lb2aah),hl		;8af4	22 aa b2 	" . . 
	ret			;8af7	c9 	. 
l8af8h:
	cp 003h		;8af8	fe 03 	. . 
	ret nz			;8afa	c0 	. 
	ld de,(06ca5h)		;8afb	ed 5b a5 6c 	. [ . l 
	ld a,l			;8aff	7d 	} 
	or h			;8b00	b4 	. 
	jr z,l8b10h		;8b01	28 0d 	( . 
	ld a,(l6ca0h+2)		;8b03	3a a2 6c 	: . l 
	ld (hl),a			;8b06	77 	w 
	push hl			;8b07	e5 	. 
	inc hl			;8b08	23 	# 
	inc hl			;8b09	23 	# 
	inc hl			;8b0a	23 	# 
	ld (hl),e			;8b0b	73 	s 
	inc hl			;8b0c	23 	# 
	ld (hl),d			;8b0d	72 	r 
	pop hl			;8b0e	e1 	. 
	ret			;8b0f	c9 	. 
l8b10h:
	call sub_ae66h		;8b10	cd 66 ae 	. f . 
	ld a,(de)			;8b13	1a 	. 
sub_8b14h:
	pop hl			;8b14	e1 	. 
	pop de			;8b15	d1 	. 
	push de			;8b16	d5 	. 
	push hl			;8b17	e5 	. 
l8b18h:
	ld hl,(laf70h)		;8b18	2a 70 af 	* p . 
	ld a,(lb403h)		;8b1b	3a 03 b4 	: . . 
	or a			;8b1e	b7 	. 
	jr z,l8b33h		;8b1f	28 12 	( . 
	push de			;8b21	d5 	. 
	call sub_ad29h		;8b22	cd 29 ad 	. ) . 
	ld de,(laf50h)		;8b25	ed 5b 50 af 	. [ P . 
	add hl,de			;8b29	19 	. 
	ex de,hl			;8b2a	eb 	. 
	ld hl,(lb1ach)		;8b2b	2a ac b1 	* . . 
	or a			;8b2e	b7 	. 
	sbc hl,de		;8b2f	ed 52 	. R 
	pop de			;8b31	d1 	. 
	or a			;8b32	b7 	. 
l8b33h:
	sbc hl,de		;8b33	ed 52 	. R 
	jr c,l8b49h		;8b35	38 12 	8 . 
	or a			;8b37	b7 	. 
	jr nz,l8b3dh		;8b38	20 03 	  . 
	ld (laf70h),hl		;8b3a	22 70 af 	" p . 
l8b3dh:
	ld hl,(lb1ach)		;8b3d	2a ac b1 	* . . 
	sbc hl,de		;8b40	ed 52 	. R 
	ld (l6ca3h),hl		;8b42	22 a3 6c 	" . l 
	ld (lb1ach),hl		;8b45	22 ac b1 	" . . 
	ret			;8b48	c9 	. 
l8b49h:
	call sub_ae66h		;8b49	cd 66 ae 	. f . 
	rla			;8b4c	17 	. 
sub_8b4dh:
	pop de			;8b4d	d1 	. 
	pop hl			;8b4e	e1 	. 
	push hl			;8b4f	e5 	. 
	push de			;8b50	d5 	. 
	call sub_8b55h		;8b51	cd 55 8b 	. U . 
	ret			;8b54	c9 	. 
sub_8b55h:
	ld d,h			;8b55	54 	T 
	ld e,l			;8b56	5d 	] 
	call sub_886fh		;8b57	cd 6f 88 	. o . 
	ld a,l			;8b5a	7d 	} 
	or h			;8b5b	b4 	. 
	ret nz			;8b5c	c0 	. 
	ld h,d			;8b5d	62 	b 
	ld l,e			;8b5e	6b 	k 
	jp sub_885fh		;8b5f	c3 5f 88 	. _ . 
sub_8b62h:
	push bc			;8b62	c5 	. 
	call sub_8b6bh		;8b63	cd 6b 8b 	. k . 
	ld a,h			;8b66	7c 	| 
	or l			;8b67	b5 	. 
	ld a,(hl)			;8b68	7e 	~ 
	pop bc			;8b69	c1 	. 
	ret			;8b6a	c9 	. 
sub_8b6bh:
	ld b,h			;8b6b	44 	D 
	ld c,l			;8b6c	4d 	M 
	call sub_886fh		;8b6d	cd 6f 88 	. o . 
	ld a,l			;8b70	7d 	} 
	or h			;8b71	b4 	. 
	jr z,l8b7fh		;8b72	28 0b 	( . 
	ld a,(hl)			;8b74	7e 	~ 
	cp 009h		;8b75	fe 09 	. . 
	ret z			;8b77	c8 	. 
	cp 00ah		;8b78	fe 0a 	. . 
	ret z			;8b7a	c8 	. 
	ld hl,00000h		;8b7b	21 00 00 	! . . 
	ret			;8b7e	c9 	. 
l8b7fh:
	ld hl,(lb2aeh)		;8b7f	2a ae b2 	* . . 
	ld de,(lb2aah)		;8b82	ed 5b aa b2 	. [ . . 
	xor a			;8b86	af 	. 
	sbc hl,de		;8b87	ed 52 	. R 
	jr nz,l8b8fh		;8b89	20 04 	  . 
	call sub_ae66h		;8b8b	cd 66 ae 	. f . 
	add hl,de			;8b8e	19 	. 
l8b8fh:
	ld h,b			;8b8f	60 	` 
	ld l,c			;8b90	69 	i 
	ld b,004h		;8b91	06 04 	. . 
l8b93h:
	dec de			;8b93	1b 	. 
	ld (de),a			;8b94	12 	. 
	djnz l8b93h		;8b95	10 fc 	. . 
	dec de			;8b97	1b 	. 
	call sub_8887h		;8b98	cd 87 88 	. . . 
	ex de,hl			;8b9b	eb 	. 
	ld (hl),00ah		;8b9c	36 0a 	6 . 
	ld (lb2aah),hl		;8b9e	22 aa b2 	" . . 
	ret			;8ba1	c9 	. 
sub_8ba2h:
	push bc			;8ba2	c5 	. 
	call sub_8c68h		;8ba3	cd 68 8c 	. h . 
	call sub_8b55h		;8ba6	cd 55 8b 	. U . 
	xor a			;8ba9	af 	. 
	ld (l6ca0h),a		;8baa	32 a0 6c 	2 . l 
	inc hl			;8bad	23 	# 
	ld a,(hl)			;8bae	7e 	~ 
	inc hl			;8baf	23 	# 
	or (hl)			;8bb0	b6 	. 
	call z,sub_8befh		;8bb1	cc ef 8b 	. . . 
	ld bc,(laf6ah)		;8bb4	ed 4b 6a af 	. K j . 
	ld hl,(lafaah)		;8bb8	2a aa af 	* . . 
	ld de,0000ch		;8bbb	11 0c 00 	. . . 
l8bbeh:
	push de			;8bbe	d5 	. 
	push hl			;8bbf	e5 	. 
	call sub_8955h		;8bc0	cd 55 89 	. U . 
	jr nc,l8bd9h		;8bc3	30 14 	0 . 
	ld a,(hl)			;8bc5	7e 	~ 
	cp 00ah		;8bc6	fe 0a 	. . 
	jr z,l8bd4h		;8bc8	28 0a 	( . 
	cp 001h		;8bca	fe 01 	. . 
	jr nz,l8bd9h		;8bcc	20 0b 	  . 
	inc hl			;8bce	23 	# 
	ld a,(hl)			;8bcf	7e 	~ 
	inc hl			;8bd0	23 	# 
	or (hl)			;8bd1	b6 	. 
	jr z,l8bd9h		;8bd2	28 05 	( . 
l8bd4h:
	pop de			;8bd4	d1 	. 
	push de			;8bd5	d5 	. 
	call sub_8befh		;8bd6	cd ef 8b 	. . . 
l8bd9h:
	pop hl			;8bd9	e1 	. 
	pop de			;8bda	d1 	. 
	add hl,de			;8bdb	19 	. 
	or a			;8bdc	b7 	. 
	sbc hl,bc		;8bdd	ed 42 	. B 
	add hl,bc			;8bdf	09 	. 
	jr c,l8bbeh		;8be0	38 dc 	8 . 
	ld a,(l6ca0h)		;8be2	3a a0 6c 	: . l 
	or a			;8be5	b7 	. 
	ld h,a			;8be6	67 	g 
	ld l,a			;8be7	6f 	o 
	pop bc			;8be8	c1 	. 
	ret z			;8be9	c8 	. 
	ld a,00ah		;8bea	3e 0a 	> . 
	jp l62a6h		;8bec	c3 a6 62 	. . b 
sub_8befh:
	push de			;8bef	d5 	. 
	ld hl,l8c03h		;8bf0	21 03 8c 	! . . 
	call sub_ac87h		;8bf3	cd 87 ac 	. . . 
	pop de			;8bf6	d1 	. 
	ld hl,(laf56h)		;8bf7	2a 56 af 	* V . 
	add hl,de			;8bfa	19 	. 
	ld a,008h		;8bfb	3e 08 	> . 
	ld (l6ca0h),a		;8bfd	32 a0 6c 	2 . l 
	jp lac94h		;8c00	c3 94 ac 	. . . 
l8c03h:
	ld a,(bc)			;8c03	0a 	. 
	ld b,l			;8c04	45 	E 
	ld d,d			;8c05	52 	R 
	ld d,d			;8c06	52 	R 
	ld c,a			;8c07	4f 	O 
	ld d,d			;8c08	52 	R 
	jr nz,l8c38h		;8c09	20 2d 	  - 
	jr nz,l8c3fh		;8c0b	20 32 	  2 
	scf			;8c0d	37 	7 
	jr nz,$+47		;8c0e	20 2d 	  - 
	jr nz,l8c87h		;8c10	20 75 	  u 
	ld l,(hl)			;8c12	6e 	n 
	ld h,h			;8c13	64 	d 
	ld h,l			;8c14	65 	e 
	ld h,(hl)			;8c15	66 	f 
	ld l,c			;8c16	69 	i 
	ld l,(hl)			;8c17	6e 	n 
	ld h,l			;8c18	65 	e 
	ld h,h			;8c19	64 	d 
	jr nz,l8c8fh		;8c1a	20 73 	  s 
	ld a,c			;8c1c	79 	y 
	ld l,l			;8c1d	6d 	m 
	ld h,d			;8c1e	62 	b 
	ld l,a			;8c1f	6f 	o 
	ld l,h			;8c20	6c 	l 
	jr nz,l8c23h		;8c21	20 00 	  . 
l8c23h:
	push bc			;8c23	c5 	. 
	ld hl,lafd9h		;8c24	21 d9 af 	! . . 
	ld (lb1a0h),hl		;8c27	22 a0 b1 	" . . 
	ld hl,lb19bh		;8c2a	21 9b b1 	! . . 
	ld (lb1a2h),hl		;8c2d	22 a2 b1 	" . . 
	ld hl,(lafaah)		;8c30	2a aa af 	* . . 
	ld de,(laf6ah)		;8c33	ed 5b 6a af 	. [ j . 
	or a			;8c37	b7 	. 
l8c38h:
	sbc hl,de		;8c38	ed 52 	. R 
	ld a,006h		;8c3a	3e 06 	> . 
	call sub_abfch		;8c3c	cd fc ab 	. . . 
l8c3fh:
	ld hl,lb415h		;8c3f	21 15 b4 	! . . 
	ld (lb1a8h),hl		;8c42	22 a8 b1 	" . . 
	ld hl,(lb1aah)		;8c45	2a aa b1 	* . . 
	ld (lb1a4h),hl		;8c48	22 a4 b1 	" . . 
	ld hl,lb7f8h		;8c4b	21 f8 b7 	! . . 
	ld (lb1a6h),hl		;8c4e	22 a6 b1 	" . . 
	ld hl,00001h		;8c51	21 01 00 	! . . 
	ld (lb2b2h),hl		;8c54	22 b2 b2 	" . . 
	push hl			;8c57	e5 	. 
	ld hl,lafcfh		;8c58	21 cf af 	! . . 
	push hl			;8c5b	e5 	. 
	ld l,001h		;8c5c	2e 01 	. . 
	push hl			;8c5e	e5 	. 
	call sub_8c68h		;8c5f	cd 68 8c 	. h . 
	push hl			;8c62	e5 	. 
	call sub_8970h		;8c63	cd 70 89 	. p . 
	pop bc			;8c66	c1 	. 
	ret			;8c67	c9 	. 
sub_8c68h:
	ld hl,l8c6eh		;8c68	21 6e 8c 	! n . 
	jp sub_8816h		;8c6b	c3 16 88 	. . . 
l8c6eh:
	ld l,l			;8c6e	6d 	m 
	ld h,c			;8c6f	61 	a 
	ld l,c			;8c70	69 	i 
	ld l,(hl)			;8c71	6e 	n 
	jr nz,l8c94h		;8c72	20 20 	    
	jr nz,$+34		;8c74	20 20 	    
	nop			;8c76	00 	. 
sub_8c77h:
	push bc			;8c77	c5 	. 
	ld bc,00004h		;8c78	01 04 00 	. . . 
	ld de,(lb2aah)		;8c7b	ed 5b aa b2 	. [ . . 
l8c7fh:
	ld hl,(lb2ach)		;8c7f	2a ac b2 	* . . 
	or a			;8c82	b7 	. 
	sbc hl,de		;8c83	ed 52 	. R 
	jr c,l8c94h		;8c85	38 0d 	8 . 
l8c87h:
	ex de,hl			;8c87	eb 	. 
	inc hl			;8c88	23 	# 
	ld (hl),c			;8c89	71 	q 
	inc hl			;8c8a	23 	# 
	ld (hl),b			;8c8b	70 	p 
	inc hl			;8c8c	23 	# 
	inc hl			;8c8d	23 	# 
	inc hl			;8c8e	23 	# 
l8c8fh:
	ex de,hl			;8c8f	eb 	. 
	inc bc			;8c90	03 	. 
	inc bc			;8c91	03 	. 
	jr l8c7fh		;8c92	18 eb 	. . 
l8c94h:
	ld hl,0fffch		;8c94	21 fc ff 	! . . 
	add hl,bc			;8c97	09 	. 
	ld (lb38eh),hl		;8c98	22 8e b3 	" . . 
	ld hl,00000h		;8c9b	21 00 00 	! . . 
	ld (lb38ch),hl		;8c9e	22 8c b3 	" . . 
	ld (lb2b0h),hl		;8ca1	22 b0 b2 	" . . 
	pop bc			;8ca4	c1 	. 
	ret			;8ca5	c9 	. 
sub_8ca6h:
	push bc			;8ca6	c5 	. 
	ld hl,00000h		;8ca7	21 00 00 	! . . 
	ld (lb2b0h),hl		;8caa	22 b0 b2 	" . . 
	ld hl,lb1b0h		;8cad	21 b0 b1 	! . . 
	ld (lb2aeh),hl		;8cb0	22 ae b2 	" . . 
	ld hl,lb2aah		;8cb3	21 aa b2 	! . . 
	ld (lb2aah),hl		;8cb6	22 aa b2 	" . . 
	ld hl,lb2a5h		;8cb9	21 a5 b2 	! . . 
	ld (lb2ach),hl		;8cbc	22 ac b2 	" . . 
	ld hl,(laf56h)		;8cbf	2a 56 af 	* V . 
	push hl			;8cc2	e5 	. 
	ld bc,(laf6ah)		;8cc3	ed 4b 6a af 	. K j . 
	add hl,bc			;8cc7	09 	. 
	ld b,h			;8cc8	44 	D 
	ld c,l			;8cc9	4d 	M 
	pop hl			;8cca	e1 	. 
	ld de,00008h		;8ccb	11 08 00 	. . . 
	add hl,de			;8cce	19 	. 
	inc de			;8ccf	13 	. 
	inc de			;8cd0	13 	. 
	inc de			;8cd1	13 	. 
	inc de			;8cd2	13 	. 
l8cd3h:
	push de			;8cd3	d5 	. 
	push hl			;8cd4	e5 	. 
	push bc			;8cd5	c5 	. 
	xor a			;8cd6	af 	. 
	ld e,(hl)			;8cd7	5e 	^ 
	ld (hl),a			;8cd8	77 	w 
	inc hl			;8cd9	23 	# 
	ld d,(hl)			;8cda	56 	V 
	ld (hl),a			;8cdb	77 	w 
	ld a,(de)			;8cdc	1a 	. 
	cp 00ah		;8cdd	fe 0a 	. . 
	jr nz,l8cf6h		;8cdf	20 15 	  . 
	ld de,0fff7h		;8ce1	11 f7 ff 	. . . 
	add hl,de			;8ce4	19 	. 
	push hl			;8ce5	e5 	. 
	ld hl,l8d02h		;8ce6	21 02 8d 	! . . 
	call sub_ac87h		;8ce9	cd 87 ac 	. . . 
	ld a,008h		;8cec	3e 08 	> . 
	pop hl			;8cee	e1 	. 
	call lac94h		;8cef	cd 94 ac 	. . . 
	call sub_ae66h		;8cf2	cd 66 ae 	. f . 
	dec de			;8cf5	1b 	. 
l8cf6h:
	pop bc			;8cf6	c1 	. 
	pop hl			;8cf7	e1 	. 
	pop de			;8cf8	d1 	. 
	add hl,de			;8cf9	19 	. 
	or a			;8cfa	b7 	. 
	sbc hl,bc		;8cfb	ed 42 	. B 
	add hl,bc			;8cfd	09 	. 
	jr c,l8cd3h		;8cfe	38 d3 	8 . 
	pop bc			;8d00	c1 	. 
	ret			;8d01	c9 	. 
l8d02h:
	ld (hl),l			;8d02	75 	u 
	ld l,(hl)			;8d03	6e 	n 
	ld h,h			;8d04	64 	d 
	ld h,l			;8d05	65 	e 
	ld h,(hl)			;8d06	66 	f 
	ld l,c			;8d07	69 	i 
	ld l,(hl)			;8d08	6e 	n 
	ld h,l			;8d09	65 	e 
	ld h,h			;8d0a	64 	d 
	jr nz,$+110		;8d0b	20 6c 	  l 
	ld h,c			;8d0d	61 	a 
	ld h,d			;8d0e	62 	b 
	ld h,l			;8d0f	65 	e 
	ld l,h			;8d10	6c 	l 
	ld a,(00020h)		;8d11	3a 20 00 	:   . 
sub_8d14h:
	push bc			;8d14	c5 	. 
	ld hl,(lb394h)		;8d15	2a 94 b3 	* . . 
	ld de,0fffbh		;8d18	11 fb ff 	. . . 
	add hl,de			;8d1b	19 	. 
	ld a,h			;8d1c	7c 	| 
	or l			;8d1d	b5 	. 
	jp z,l8d2dh		;8d1e	ca 2d 8d 	. - . 
	ld hl,(lb394h)		;8d21	2a 94 b3 	* . . 
	ld de,0fffah		;8d24	11 fa ff 	. . . 
	add hl,de			;8d27	19 	. 
	ld a,h			;8d28	7c 	| 
	or l			;8d29	b5 	. 
	jp nz,l8d38h		;8d2a	c2 38 8d 	. 8 . 
l8d2dh:
	ld hl,0003dh		;8d2d	21 3d 00 	! = . 
	push hl			;8d30	e5 	. 
	call sub_aec5h		;8d31	cd c5 ae 	. . . 
	pop de			;8d34	d1 	. 
	jp l8d56h		;8d35	c3 56 8d 	. V . 
l8d38h:
	ld hl,(lb394h)		;8d38	2a 94 b3 	* . . 
	dec hl			;8d3b	2b 	+ 
	dec hl			;8d3c	2b 	+ 
	ld a,h			;8d3d	7c 	| 
	or l			;8d3e	b5 	. 
	jp z,l8d56h		;8d3f	ca 56 8d 	. V . 
	ld hl,(lb394h)		;8d42	2a 94 b3 	* . . 
	dec hl			;8d45	2b 	+ 
	dec hl			;8d46	2b 	+ 
	dec hl			;8d47	2b 	+ 
	dec hl			;8d48	2b 	+ 
	ld a,h			;8d49	7c 	| 
	or l			;8d4a	b5 	. 
	jp z,l8d56h		;8d4b	ca 56 8d 	. V . 
	ld hl,0003eh		;8d4e	21 3e 00 	! > . 
	push hl			;8d51	e5 	. 
	call sub_aec5h		;8d52	cd c5 ae 	. . . 
	pop de			;8d55	d1 	. 
l8d56h:
	ld hl,(lb39ch)		;8d56	2a 9c b3 	* . . 
	inc hl			;8d59	23 	# 
	inc hl			;8d5a	23 	# 
	inc hl			;8d5b	23 	# 
	ld a,(hl)			;8d5c	7e 	~ 
	inc hl			;8d5d	23 	# 
	ld h,(hl)			;8d5e	66 	f 
	ld l,a			;8d5f	6f 	o 
	ld l,(hl)			;8d60	6e 	n 
	ld h,000h		;8d61	26 00 	& . 
	ld de,0fff9h		;8d63	11 f9 ff 	. . . 
	add hl,de			;8d66	19 	. 
	ld a,h			;8d67	7c 	| 
	rla			;8d68	17 	. 
	jp c,l8d8ch		;8d69	da 8c 8d 	. . . 
	call sub_7972h		;8d6c	cd 72 79 	. r y 
	ld de,0ff85h		;8d6f	11 85 ff 	. . . 
	add hl,de			;8d72	19 	. 
	ld a,h			;8d73	7c 	| 
	or l			;8d74	b5 	. 
	jp z,l8d8ch		;8d75	ca 8c 8d 	. . . 
	call sub_7972h		;8d78	cd 72 79 	. r y 
	ld de,0ffdeh		;8d7b	11 de ff 	. . . 
	add hl,de			;8d7e	19 	. 
	ld a,h			;8d7f	7c 	| 
	or l			;8d80	b5 	. 
	jp z,l8d8ch		;8d81	ca 8c 8d 	. . . 
	ld hl,00041h		;8d84	21 41 00 	! A . 
	push hl			;8d87	e5 	. 
	call sub_aec5h		;8d88	cd c5 ae 	. . . 
	pop de			;8d8b	d1 	. 
l8d8ch:
	ld hl,(lb39ch)		;8d8c	2a 9c b3 	* . . 
	inc hl			;8d8f	23 	# 
	ld a,(hl)			;8d90	7e 	~ 
	inc hl			;8d91	23 	# 
	ld h,(hl)			;8d92	66 	f 
	ld l,a			;8d93	6f 	o 
	ld (lb411h),hl		;8d94	22 11 b4 	" . . 
	ld hl,(lb39ch)		;8d97	2a 9c b3 	* . . 
	inc hl			;8d9a	23 	# 
	ld a,(hl)			;8d9b	7e 	~ 
	inc hl			;8d9c	23 	# 
	ld h,(hl)			;8d9d	66 	f 
	ld l,a			;8d9e	6f 	o 
	push hl			;8d9f	e5 	. 
	ld hl,(lb39ch)		;8da0	2a 9c b3 	* . . 
	inc hl			;8da3	23 	# 
	inc hl			;8da4	23 	# 
	inc hl			;8da5	23 	# 
	ld a,(hl)			;8da6	7e 	~ 
	inc hl			;8da7	23 	# 
	ld h,(hl)			;8da8	66 	f 
	ld l,a			;8da9	6f 	o 
	push hl			;8daa	e5 	. 
	call sub_8db5h		;8dab	cd b5 8d 	. . . 
	pop de			;8dae	d1 	. 
	pop de			;8daf	d1 	. 
	call sub_91f6h		;8db0	cd f6 91 	. . . 
	pop bc			;8db3	c1 	. 
	ret			;8db4	c9 	. 
sub_8db5h:
	push bc			;8db5	c5 	. 
	ld hl,0fffah		;8db6	21 fa ff 	! . . 
	add hl,sp			;8db9	39 	9 
	ld sp,hl			;8dba	f9 	. 
	ld b,h			;8dbb	44 	D 
	ld c,l			;8dbc	4d 	M 
	call sub_7510h		;8dbd	cd 10 75 	. . u 
	ld a,(bc)			;8dc0	0a 	. 
	ld l,(hl)			;8dc1	6e 	n 
	ex de,hl			;8dc2	eb 	. 
	ld h,b			;8dc3	60 	` 
	ld l,c			;8dc4	69 	i 
	ld (hl),e			;8dc5	73 	s 
	inc hl			;8dc6	23 	# 
	ld (hl),000h		;8dc7	36 00 	6 . 
	call sub_7510h		;8dc9	cd 10 75 	. . u 
	ld a,(bc)			;8dcc	0a 	. 
	inc hl			;8dcd	23 	# 
	ld a,(hl)			;8dce	7e 	~ 
	inc hl			;8dcf	23 	# 
	ld h,(hl)			;8dd0	66 	f 
	ld l,a			;8dd1	6f 	o 
	ex de,hl			;8dd2	eb 	. 
	ld hl,00002h		;8dd3	21 02 00 	! . . 
	add hl,bc			;8dd6	09 	. 
	ld (hl),e			;8dd7	73 	s 
	inc hl			;8dd8	23 	# 
	ld (hl),d			;8dd9	72 	r 
	call sub_7510h		;8dda	cd 10 75 	. . u 
	nop			;8ddd	00 	. 
	ld de,0fff9h		;8dde	11 f9 ff 	. . . 
	add hl,de			;8de1	19 	. 
	ld a,h			;8de2	7c 	| 
	rla			;8de3	17 	. 
	jp nc,l8e1fh		;8de4	d2 1f 8e 	. . . 
	ld hl,0007bh		;8de7	21 7b 00 	! { . 
	push hl			;8dea	e5 	. 
	call sub_7fdfh		;8deb	cd df 7f 	. .  
	pop de			;8dee	d1 	. 
	ex de,hl			;8def	eb 	. 
	ld hl,00004h		;8df0	21 04 00 	! . . 
	add hl,bc			;8df3	09 	. 
	ld (hl),e			;8df4	73 	s 
	inc hl			;8df5	23 	# 
	ld (hl),d			;8df6	72 	r 
	call sub_7510h		;8df7	cd 10 75 	. . u 
	ld (bc),a			;8dfa	02 	. 
	push hl			;8dfb	e5 	. 
	call sub_7510h		;8dfc	cd 10 75 	. . u 
	inc c			;8dff	0c 	. 
	push hl			;8e00	e5 	. 
	call sub_9b63h		;8e01	cd 63 9b 	. c . 
	push hl			;8e04	e5 	. 
	call sub_9103h		;8e05	cd 03 91 	. . . 
	pop de			;8e08	d1 	. 
	pop de			;8e09	d1 	. 
	pop de			;8e0a	d1 	. 
	call sub_7510h		;8e0b	cd 10 75 	. . u 
	inc b			;8e0e	04 	. 
	ld a,h			;8e0f	7c 	| 
	or l			;8e10	b5 	. 
	jp z,l8e1ch		;8e11	ca 1c 8e 	. . . 
	ld hl,0007dh		;8e14	21 7d 00 	! } . 
	push hl			;8e17	e5 	. 
	call sub_7fa9h		;8e18	cd a9 7f 	. .  
	pop de			;8e1b	d1 	. 
l8e1ch:
	jp l8e71h		;8e1c	c3 71 8e 	. q . 
l8e1fh:
	call sub_7510h		;8e1f	cd 10 75 	. . u 
	nop			;8e22	00 	. 
	ld de,0fff8h		;8e23	11 f8 ff 	. . . 
	add hl,de			;8e26	19 	. 
	ld a,h			;8e27	7c 	| 
	or l			;8e28	b5 	. 
	jp nz,l8e44h		;8e29	c2 44 8e 	. D . 
	call sub_7510h		;8e2c	cd 10 75 	. . u 
	ld (bc),a			;8e2f	02 	. 
	push hl			;8e30	e5 	. 
	call sub_7510h		;8e31	cd 10 75 	. . u 
	inc c			;8e34	0c 	. 
	push hl			;8e35	e5 	. 
	call sub_7510h		;8e36	cd 10 75 	. . u 
	ld a,(bc)			;8e39	0a 	. 
	push hl			;8e3a	e5 	. 
	call sub_8e7ah		;8e3b	cd 7a 8e 	. z . 
	pop de			;8e3e	d1 	. 
	pop de			;8e3f	d1 	. 
	pop de			;8e40	d1 	. 
	jp l8e71h		;8e41	c3 71 8e 	. q . 
l8e44h:
	call sub_7510h		;8e44	cd 10 75 	. . u 
	nop			;8e47	00 	. 
	ld de,0fff7h		;8e48	11 f7 ff 	. . . 
	add hl,de			;8e4b	19 	. 
	ld a,h			;8e4c	7c 	| 
	or l			;8e4d	b5 	. 
	jp nz,l8e69h		;8e4e	c2 69 8e 	. i . 
	call sub_7510h		;8e51	cd 10 75 	. . u 
	ld (bc),a			;8e54	02 	. 
	push hl			;8e55	e5 	. 
	call sub_7510h		;8e56	cd 10 75 	. . u 
	inc c			;8e59	0c 	. 
	push hl			;8e5a	e5 	. 
	call sub_7510h		;8e5b	cd 10 75 	. . u 
	ld a,(bc)			;8e5e	0a 	. 
	push hl			;8e5f	e5 	. 
	call sub_9014h		;8e60	cd 14 90 	. . . 
	pop de			;8e63	d1 	. 
	pop de			;8e64	d1 	. 
	pop de			;8e65	d1 	. 
	jp l8e71h		;8e66	c3 71 8e 	. q . 
l8e69h:
	ld hl,0003fh		;8e69	21 3f 00 	! ? . 
	push hl			;8e6c	e5 	. 
	call sub_aec5h		;8e6d	cd c5 ae 	. . . 
	pop de			;8e70	d1 	. 
l8e71h:
	ex de,hl			;8e71	eb 	. 
	ld hl,00006h		;8e72	21 06 00 	! . . 
	add hl,sp			;8e75	39 	9 
	ld sp,hl			;8e76	f9 	. 
	ex de,hl			;8e77	eb 	. 
	pop bc			;8e78	c1 	. 
	ret			;8e79	c9 	. 
sub_8e7ah:
	push bc			;8e7a	c5 	. 
	ld hl,0fff4h		;8e7b	21 f4 ff 	! . . 
	add hl,sp			;8e7e	39 	9 
	ld sp,hl			;8e7f	f9 	. 
	ld b,h			;8e80	44 	D 
	ld c,l			;8e81	4d 	M 
	call sub_7510h		;8e82	cd 10 75 	. . u 
	djnz $+37		;8e85	10 23 	. # 
	inc hl			;8e87	23 	# 
	inc hl			;8e88	23 	# 
	ld a,(hl)			;8e89	7e 	~ 
	inc hl			;8e8a	23 	# 
	ld h,(hl)			;8e8b	66 	f 
	ld l,a			;8e8c	6f 	o 
	inc hl			;8e8d	23 	# 
	ld a,(hl)			;8e8e	7e 	~ 
	inc hl			;8e8f	23 	# 
	ld h,(hl)			;8e90	66 	f 
	ld l,a			;8e91	6f 	o 
	ex de,hl			;8e92	eb 	. 
	ld hl,00004h		;8e93	21 04 00 	! . . 
	add hl,bc			;8e96	09 	. 
	ld (hl),e			;8e97	73 	s 
	inc hl			;8e98	23 	# 
	ld (hl),d			;8e99	72 	r 
	call sub_7510h		;8e9a	cd 10 75 	. . u 
	inc d			;8e9d	14 	. 
	ld a,h			;8e9e	7c 	| 
	or l			;8e9f	b5 	. 
	jp z,l8eb3h		;8ea0	ca b3 8e 	. . . 
	call sub_7510h		;8ea3	cd 10 75 	. . u 
	inc d			;8ea6	14 	. 
	push hl			;8ea7	e5 	. 
	call sub_7510h		;8ea8	cd 10 75 	. . u 
	inc b			;8eab	04 	. 
	pop de			;8eac	d1 	. 
	call sub_7609h		;8ead	cd 09 76 	. . v 
	jp l8eb6h		;8eb0	c3 b6 8e 	. . . 
l8eb3h:
	ld hl,0ffffh		;8eb3	21 ff ff 	! . . 
l8eb6h:
	ex de,hl			;8eb6	eb 	. 
	ld hl,00002h		;8eb7	21 02 00 	! . . 
	add hl,bc			;8eba	09 	. 
	ld (hl),e			;8ebb	73 	s 
	inc hl			;8ebc	23 	# 
	ld (hl),d			;8ebd	72 	r 
	ld hl,0007bh		;8ebe	21 7b 00 	! { . 
	push hl			;8ec1	e5 	. 
	call sub_7fdfh		;8ec2	cd df 7f 	. .  
	pop de			;8ec5	d1 	. 
	ex de,hl			;8ec6	eb 	. 
	ld hl,00006h		;8ec7	21 06 00 	! . . 
	add hl,bc			;8eca	09 	. 
	ld (hl),e			;8ecb	73 	s 
	inc hl			;8ecc	23 	# 
	ld (hl),d			;8ecd	72 	r 
	call sub_7972h		;8ece	cd 72 79 	. r y 
	ld de,0ffdeh		;8ed1	11 de ff 	. . . 
	add hl,de			;8ed4	19 	. 
	ld a,h			;8ed5	7c 	| 
	or l			;8ed6	b5 	. 
	jp nz,l8f73h		;8ed7	c2 73 8f 	. s . 
	call sub_7510h		;8eda	cd 10 75 	. . u 
	djnz l8f02h		;8edd	10 23 	. # 
	inc hl			;8edf	23 	# 
	inc hl			;8ee0	23 	# 
	ld a,(hl)			;8ee1	7e 	~ 
	inc hl			;8ee2	23 	# 
	ld h,(hl)			;8ee3	66 	f 
	ld l,a			;8ee4	6f 	o 
	ld l,(hl)			;8ee5	6e 	n 
	ld a,l			;8ee6	7d 	} 
	cp 002h		;8ee7	fe 02 	. . 
	jp nz,l8f73h		;8ee9	c2 73 8f 	. s . 
	call sub_ad25h		;8eec	cd 25 ad 	. % . 
	ex de,hl			;8eef	eb 	. 
	ld hl,0000ah		;8ef0	21 0a 00 	! . . 
	add hl,bc			;8ef3	09 	. 
	ld (hl),e			;8ef4	73 	s 
	inc hl			;8ef5	23 	# 
	ld (hl),d			;8ef6	72 	r 
	ld hl,(laf01h)		;8ef7	2a 01 af 	* . . 
	push hl			;8efa	e5 	. 
	call sub_ad29h		;8efb	cd 29 ad 	. ) . 
	pop de			;8efe	d1 	. 
	call sub_767ah		;8eff	cd 7a 76 	. z v 
l8f02h:
	add hl,de			;8f02	19 	. 
	ex de,hl			;8f03	eb 	. 
	ld hl,00008h		;8f04	21 08 00 	! . . 
	add hl,bc			;8f07	09 	. 
	ld (hl),e			;8f08	73 	s 
	inc hl			;8f09	23 	# 
	ld (hl),d			;8f0a	72 	r 
l8f0bh:
	call sub_7510h		;8f0b	cd 10 75 	. . u 
	ex af,af'			;8f0e	08 	. 
	ld l,(hl)			;8f0f	6e 	n 
	ld a,l			;8f10	7d 	} 
	or a			;8f11	b7 	. 
	jp z,l8f40h		;8f12	ca 40 8f 	. @ . 
	ld hl,00001h		;8f15	21 01 00 	! . . 
	push hl			;8f18	e5 	. 
	ld hl,00012h		;8f19	21 12 00 	! . . 
	add hl,bc			;8f1c	09 	. 
	ld e,(hl)			;8f1d	5e 	^ 
	inc hl			;8f1e	23 	# 
	ld d,(hl)			;8f1f	56 	V 
	inc de			;8f20	13 	. 
	ld (hl),d			;8f21	72 	r 
	dec hl			;8f22	2b 	+ 
	ld (hl),e			;8f23	73 	s 
	dec de			;8f24	1b 	. 
	push de			;8f25	d5 	. 
	ld hl,00008h		;8f26	21 08 00 	! . . 
	add hl,bc			;8f29	09 	. 
	ld e,(hl)			;8f2a	5e 	^ 
	inc hl			;8f2b	23 	# 
	ld d,(hl)			;8f2c	56 	V 
	inc de			;8f2d	13 	. 
	ld (hl),d			;8f2e	72 	r 
	dec hl			;8f2f	2b 	+ 
	ld (hl),e			;8f30	73 	s 
	dec de			;8f31	1b 	. 
	ex de,hl			;8f32	eb 	. 
	ld l,(hl)			;8f33	6e 	n 
	ld h,000h		;8f34	26 00 	& . 
	push hl			;8f36	e5 	. 
	call sub_9103h		;8f37	cd 03 91 	. . . 
	pop de			;8f3a	d1 	. 
	pop de			;8f3b	d1 	. 
	pop de			;8f3c	d1 	. 
	jp l8f0bh		;8f3d	c3 0b 8f 	. . . 
l8f40h:
	call sub_7510h		;8f40	cd 10 75 	. . u 
	ld a,(bc)			;8f43	0a 	. 
	push hl			;8f44	e5 	. 
	ld hl,(laf01h)		;8f45	2a 01 af 	* . . 
	pop de			;8f48	d1 	. 
	call sub_767ah		;8f49	cd 7a 76 	. z v 
	add hl,de			;8f4c	19 	. 
	inc hl			;8f4d	23 	# 
	ex de,hl			;8f4e	eb 	. 
	ld h,b			;8f4f	60 	` 
	ld l,c			;8f50	69 	i 
	ld (hl),e			;8f51	73 	s 
	inc hl			;8f52	23 	# 
	ld (hl),d			;8f53	72 	r 
	ld hl,(lb404h)		;8f54	2a 04 b4 	* . . 
	ld a,l			;8f57	7d 	} 
	or a			;8f58	b7 	. 
	jp z,l8f65h		;8f59	ca 65 8f 	. e . 
	ld hl,(laf01h)		;8f5c	2a 01 af 	* . . 
	dec hl			;8f5f	2b 	+ 
	dec hl			;8f60	2b 	+ 
	dec hl			;8f61	2b 	+ 
	ld (laf01h),hl		;8f62	22 01 af 	" . . 
l8f65h:
	ld hl,(laf01h)		;8f65	2a 01 af 	* . . 
	push hl			;8f68	e5 	. 
	call sub_ad0dh		;8f69	cd 0d ad 	. . . 
	pop de			;8f6c	d1 	. 
	call sub_796dh		;8f6d	cd 6d 79 	. m y 
	jp l8fc5h		;8f70	c3 c5 8f 	. . . 
l8f73h:
	ld h,b			;8f73	60 	` 
	ld l,c			;8f74	69 	i 
	xor a			;8f75	af 	. 
	ld (hl),a			;8f76	77 	w 
	inc hl			;8f77	23 	# 
	ld (hl),a			;8f78	77 	w 
l8f79h:
	call sub_7510h		;8f79	cd 10 75 	. . u 
	ld (de),a			;8f7c	12 	. 
	push hl			;8f7d	e5 	. 
	call sub_7510h		;8f7e	cd 10 75 	. . u 
	djnz l8fa6h		;8f81	10 23 	. # 
	inc hl			;8f83	23 	# 
	inc hl			;8f84	23 	# 
	ld a,(hl)			;8f85	7e 	~ 
	inc hl			;8f86	23 	# 
	ld h,(hl)			;8f87	66 	f 
	ld l,a			;8f88	6f 	o 
	push hl			;8f89	e5 	. 
	call sub_8db5h		;8f8a	cd b5 8d 	. . . 
	pop de			;8f8d	d1 	. 
	pop de			;8f8e	d1 	. 
	ld hl,00012h		;8f8f	21 12 00 	! . . 
	add hl,bc			;8f92	09 	. 
	push hl			;8f93	e5 	. 
	ld a,(hl)			;8f94	7e 	~ 
	inc hl			;8f95	23 	# 
	ld h,(hl)			;8f96	66 	f 
	ld l,a			;8f97	6f 	o 
	push hl			;8f98	e5 	. 
	call sub_7510h		;8f99	cd 10 75 	. . u 
	inc b			;8f9c	04 	. 
	pop de			;8f9d	d1 	. 
	add hl,de			;8f9e	19 	. 
	ex de,hl			;8f9f	eb 	. 
	pop hl			;8fa0	e1 	. 
	ld (hl),e			;8fa1	73 	s 
	inc hl			;8fa2	23 	# 
	ld (hl),d			;8fa3	72 	r 
	ld h,b			;8fa4	60 	` 
	ld l,c			;8fa5	69 	i 
l8fa6h:
	ld e,(hl)			;8fa6	5e 	^ 
	inc hl			;8fa7	23 	# 
	ld d,(hl)			;8fa8	56 	V 
	inc de			;8fa9	13 	. 
	ld (hl),d			;8faa	72 	r 
	dec hl			;8fab	2b 	+ 
	ld (hl),e			;8fac	73 	s 
	call sub_7510h		;8fad	cd 10 75 	. . u 
	nop			;8fb0	00 	. 
	push hl			;8fb1	e5 	. 
	call sub_7510h		;8fb2	cd 10 75 	. . u 
	ld (bc),a			;8fb5	02 	. 
	pop de			;8fb6	d1 	. 
	call l756ch		;8fb7	cd 6c 75 	. l u 
	jp nc,l8fc5h		;8fba	d2 c5 8f 	. . . 
	call sub_90deh		;8fbd	cd de 90 	. . . 
	ld a,h			;8fc0	7c 	| 
	or l			;8fc1	b5 	. 
	jp nz,l8f79h		;8fc2	c2 79 8f 	. y . 
l8fc5h:
	call sub_7510h		;8fc5	cd 10 75 	. . u 
	ld (bc),a			;8fc8	02 	. 
	inc hl			;8fc9	23 	# 
	ld a,h			;8fca	7c 	| 
	or l			;8fcb	b5 	. 
	jp nz,l8ffah		;8fcc	c2 fa 8f 	. . . 
	ld hl,(lb39ch)		;8fcf	2a 9c b3 	* . . 
	inc hl			;8fd2	23 	# 
	push hl			;8fd3	e5 	. 
	call sub_7510h		;8fd4	cd 10 75 	. . u 
	djnz $+37		;8fd7	10 23 	. # 
	push hl			;8fd9	e5 	. 
	call sub_7510h		;8fda	cd 10 75 	. . u 
	nop			;8fdd	00 	. 
	push hl			;8fde	e5 	. 
	call sub_7510h		;8fdf	cd 10 75 	. . u 
	inc b			;8fe2	04 	. 
	pop de			;8fe3	d1 	. 
	call sub_75ebh		;8fe4	cd eb 75 	. . u 
	ex de,hl			;8fe7	eb 	. 
	pop hl			;8fe8	e1 	. 
	ld (hl),e			;8fe9	73 	s 
	inc hl			;8fea	23 	# 
	ld (hl),d			;8feb	72 	r 
	push de			;8fec	d5 	. 
	call sub_8b14h		;8fed	cd 14 8b 	. . . 
	pop de			;8ff0	d1 	. 
	ex de,hl			;8ff1	eb 	. 
	pop hl			;8ff2	e1 	. 
	ld (hl),e			;8ff3	73 	s 
	inc hl			;8ff4	23 	# 
	ld (hl),d			;8ff5	72 	r 
	ex de,hl			;8ff6	eb 	. 
l8ff7h:
	ld (lb411h),hl		;8ff7	22 11 b4 	" . . 
l8ffah:
	call sub_7510h		;8ffa	cd 10 75 	. . u 
	ld b,07ch		;8ffd	06 7c 	. | 
	or l			;8fff	b5 	. 
	jp z,l900bh		;9000	ca 0b 90 	. . . 
	ld hl,0007dh		;9003	21 7d 00 	! } . 
	push hl			;9006	e5 	. 
	call sub_7fa9h		;9007	cd a9 7f 	. .  
	pop de			;900a	d1 	. 
l900bh:
	ex de,hl			;900b	eb 	. 
	ld hl,0000ch		;900c	21 0c 00 	! . . 
	add hl,sp			;900f	39 	9 
	ld sp,hl			;9010	f9 	. 
	ex de,hl			;9011	eb 	. 
	pop bc			;9012	c1 	. 
	ret			;9013	c9 	. 
sub_9014h:
	push bc			;9014	c5 	. 
	ld hl,0fff8h		;9015	21 f8 ff 	! . . 
	add hl,sp			;9018	39 	9 
	ld sp,hl			;9019	f9 	. 
	ld b,h			;901a	44 	D 
	ld c,l			;901b	4d 	M 
	call sub_7510h		;901c	cd 10 75 	. . u 
	ld c,0e5h		;901f	0e e5 	. . 
	call sub_7510h		;9021	cd 10 75 	. . u 
	djnz l8ff7h		;9024	10 d1 	. . 
	add hl,de			;9026	19 	. 
	ex de,hl			;9027	eb 	. 
	ld hl,00004h		;9028	21 04 00 	! . . 
	add hl,bc			;902b	09 	. 
	ld (hl),e			;902c	73 	s 
	inc hl			;902d	23 	# 
	ld (hl),d			;902e	72 	r 
	ld hl,0007bh		;902f	21 7b 00 	! { . 
	push hl			;9032	e5 	. 
	call sub_7fdfh		;9033	cd df 7f 	. .  
	pop de			;9036	d1 	. 
	ex de,hl			;9037	eb 	. 
	ld hl,00002h		;9038	21 02 00 	! . . 
	add hl,bc			;903b	09 	. 
	ld (hl),e			;903c	73 	s 
	inc hl			;903d	23 	# 
	ld (hl),d			;903e	72 	r 
l903fh:
	call sub_9b63h		;903f	cd 63 9b 	. c . 
	ex de,hl			;9042	eb 	. 
	ld h,b			;9043	60 	` 
	ld l,c			;9044	69 	i 
	ld (hl),e			;9045	73 	s 
	inc hl			;9046	23 	# 
	ld (hl),d			;9047	72 	r 
	call sub_7510h		;9048	cd 10 75 	. . u 
	nop			;904b	00 	. 
	ld de,0ff00h		;904c	11 00 ff 	. . . 
	add hl,de			;904f	19 	. 
	call sub_752fh		;9050	cd 2f 75 	. / u 
	jp c,l905ch		;9053	da 5c 90 	. \ . 
	ld hl,00001h		;9056	21 01 00 	! . . 
	jp l905fh		;9059	c3 5f 90 	. _ . 
l905ch:
	ld hl,00002h		;905c	21 02 00 	! . . 
l905fh:
	ex de,hl			;905f	eb 	. 
	ld hl,00006h		;9060	21 06 00 	! . . 
	add hl,bc			;9063	09 	. 
	ld (hl),e			;9064	73 	s 
	inc hl			;9065	23 	# 
	ld (hl),d			;9066	72 	r 
	call sub_7510h		;9067	cd 10 75 	. . u 
	ld b,0e5h		;906a	06 e5 	. . 
	call sub_7510h		;906c	cd 10 75 	. . u 
	ld c,0e5h		;906f	0e e5 	. . 
	call sub_7510h		;9071	cd 10 75 	. . u 
	nop			;9074	00 	. 
	push hl			;9075	e5 	. 
	call sub_9103h		;9076	cd 03 91 	. . . 
	pop de			;9079	d1 	. 
	pop de			;907a	d1 	. 
	pop de			;907b	d1 	. 
	ld hl,0000eh		;907c	21 0e 00 	! . . 
	add hl,bc			;907f	09 	. 
	push hl			;9080	e5 	. 
	ld a,(hl)			;9081	7e 	~ 
	inc hl			;9082	23 	# 
	ld h,(hl)			;9083	66 	f 
	ld l,a			;9084	6f 	o 
	push hl			;9085	e5 	. 
	call sub_7510h		;9086	cd 10 75 	. . u 
	ld b,0d1h		;9089	06 d1 	. . 
	add hl,de			;908b	19 	. 
	ex de,hl			;908c	eb 	. 
	pop hl			;908d	e1 	. 
	ld (hl),e			;908e	73 	s 
	inc hl			;908f	23 	# 
	ld (hl),d			;9090	72 	r 
	call sub_7510h		;9091	cd 10 75 	. . u 
	ld c,0e5h		;9094	0e e5 	. . 
	call sub_7510h		;9096	cd 10 75 	. . u 
	inc b			;9099	04 	. 
	pop de			;909a	d1 	. 
	call l7573h		;909b	cd 73 75 	. s u 
	jp nc,l90a9h		;909e	d2 a9 90 	. . . 
	ld hl,00040h		;90a1	21 40 00 	! @ . 
	push hl			;90a4	e5 	. 
	call sub_aec5h		;90a5	cd c5 ae 	. . . 
	pop de			;90a8	d1 	. 
l90a9h:
	call sub_7510h		;90a9	cd 10 75 	. . u 
	ld c,0e5h		;90ac	0e e5 	. . 
	call sub_7510h		;90ae	cd 10 75 	. . u 
	inc b			;90b1	04 	. 
	pop de			;90b2	d1 	. 
	call sub_7565h		;90b3	cd 65 75 	. e u 
	jp nz,l90bch		;90b6	c2 bc 90 	. . . 
	jp l90c4h		;90b9	c3 c4 90 	. . . 
l90bch:
	call sub_90deh		;90bc	cd de 90 	. . . 
	ld a,h			;90bf	7c 	| 
	or l			;90c0	b5 	. 
	jp nz,l903fh		;90c1	c2 3f 90 	. ? . 
l90c4h:
	call sub_7510h		;90c4	cd 10 75 	. . u 
	ld (bc),a			;90c7	02 	. 
	ld a,h			;90c8	7c 	| 
	or l			;90c9	b5 	. 
	jp z,l90d5h		;90ca	ca d5 90 	. . . 
	ld hl,0007dh		;90cd	21 7d 00 	! } . 
	push hl			;90d0	e5 	. 
	call sub_7fa9h		;90d1	cd a9 7f 	. .  
	pop de			;90d4	d1 	. 
l90d5h:
	ex de,hl			;90d5	eb 	. 
	ld hl,00008h		;90d6	21 08 00 	! . . 
	add hl,sp			;90d9	39 	9 
	ld sp,hl			;90da	f9 	. 
	ex de,hl			;90db	eb 	. 
	pop bc			;90dc	c1 	. 
	ret			;90dd	c9 	. 
sub_90deh:
	push bc			;90de	c5 	. 
	call sub_7972h		;90df	cd 72 79 	. r y 
	ld de,0ff83h		;90e2	11 83 ff 	. . . 
	add hl,de			;90e5	19 	. 
	ld a,h			;90e6	7c 	| 
	or l			;90e7	b5 	. 
	jp z,l90f3h		;90e8	ca f3 90 	. . . 
	ld hl,0002ch		;90eb	21 2c 00 	! , . 
	push hl			;90ee	e5 	. 
	call sub_7fa9h		;90ef	cd a9 7f 	. .  
	pop de			;90f2	d1 	. 
l90f3h:
	call sub_7972h		;90f3	cd 72 79 	. r y 
	ld de,0ff83h		;90f6	11 83 ff 	. . . 
	add hl,de			;90f9	19 	. 
	ld a,h			;90fa	7c 	| 
	or l			;90fb	b5 	. 
	call sub_7523h		;90fc	cd 23 75 	. # u 
	pop bc			;90ff	c1 	. 
	ret			;9100	c9 	. 
	pop bc			;9101	c1 	. 
	ret			;9102	c9 	. 
sub_9103h:
	push bc			;9103	c5 	. 
	ld hl,0fffah		;9104	21 fa ff 	! . . 
	add hl,sp			;9107	39 	9 
	ld sp,hl			;9108	f9 	. 
	ld b,h			;9109	44 	D 
	ld c,l			;910a	4d 	M 
	call sub_7510h		;910b	cd 10 75 	. . u 
	inc c			;910e	0c 	. 
	push hl			;910f	e5 	. 
	call sub_7510h		;9110	cd 10 75 	. . u 
	ld c,0d1h		;9113	0e d1 	. . 
	add hl,de			;9115	19 	. 
	push hl			;9116	e5 	. 
	ld hl,(lb411h)		;9117	2a 11 b4 	* . . 
	pop de			;911a	d1 	. 
	call sub_767ah		;911b	cd 7a 76 	. z v 
	add hl,de			;911e	19 	. 
	push hl			;911f	e5 	. 
	ld hl,(laf64h)		;9120	2a 64 af 	* d . 
	pop de			;9123	d1 	. 
	call sub_767ah		;9124	cd 7a 76 	. z v 
	add hl,de			;9127	19 	. 
	ex de,hl			;9128	eb 	. 
	ld hl,00002h		;9129	21 02 00 	! . . 
	add hl,bc			;912c	09 	. 
	ld (hl),e			;912d	73 	s 
	inc hl			;912e	23 	# 
	ld (hl),d			;912f	72 	r 
	call sub_7510h		;9130	cd 10 75 	. . u 
	ld (bc),a			;9133	02 	. 
	push hl			;9134	e5 	. 
	ld hl,00003h		;9135	21 03 00 	! . . 
	push hl			;9138	e5 	. 
	call sub_abf5h		;9139	cd f5 ab 	. . . 
	pop de			;913c	d1 	. 
	pop de			;913d	d1 	. 
	call sub_7510h		;913e	cd 10 75 	. . u 
	ld (bc),a			;9141	02 	. 
	push hl			;9142	e5 	. 
	call sub_7510h		;9143	cd 10 75 	. . u 
	ld c,0d1h		;9146	0e d1 	. . 
	call l7573h		;9148	cd 73 75 	. s u 
	jp nc,l916ch		;914b	d2 6c 91 	. l . 
	call sub_7510h		;914e	cd 10 75 	. . u 
	ld (bc),a			;9151	02 	. 
	push hl			;9152	e5 	. 
	ld hl,(laf50h)		;9153	2a 50 af 	* P . 
	push hl			;9156	e5 	. 
	ld hl,(laf64h)		;9157	2a 64 af 	* d . 
	pop de			;915a	d1 	. 
	add hl,de			;915b	19 	. 
	push hl			;915c	e5 	. 
	call sub_7510h		;915d	cd 10 75 	. . u 
	ld (bc),a			;9160	02 	. 
	pop de			;9161	d1 	. 
	call sub_767ah		;9162	cd 7a 76 	. z v 
	add hl,de			;9165	19 	. 
	push hl			;9166	e5 	. 
	call sub_943dh		;9167	cd 3d 94 	. = . 
	pop de			;916a	d1 	. 
	pop de			;916b	d1 	. 
l916ch:
	ld hl,(laf50h)		;916c	2a 50 af 	* P . 
	push hl			;916f	e5 	. 
	ld hl,(laf64h)		;9170	2a 64 af 	* d . 
	pop de			;9173	d1 	. 
	add hl,de			;9174	19 	. 
	push hl			;9175	e5 	. 
	call sub_7510h		;9176	cd 10 75 	. . u 
	ld c,0d1h		;9179	0e d1 	. . 
	call sub_767ah		;917b	cd 7a 76 	. z v 
	add hl,de			;917e	19 	. 
	ex de,hl			;917f	eb 	. 
	ld hl,00004h		;9180	21 04 00 	! . . 
	add hl,bc			;9183	09 	. 
	ld (hl),e			;9184	73 	s 
	inc hl			;9185	23 	# 
	ld (hl),d			;9186	72 	r 
	call sub_7510h		;9187	cd 10 75 	. . u 
	inc b			;918a	04 	. 
	push hl			;918b	e5 	. 
	call sub_7510h		;918c	cd 10 75 	. . u 
	ld a,(bc)			;918f	0a 	. 
	ld de,000ffh		;9190	11 ff 00 	. . . 
	ld a,h			;9193	7c 	| 
	and d			;9194	a2 	. 
	ld h,a			;9195	67 	g 
	ld a,l			;9196	7d 	} 
	and e			;9197	a3 	. 
	ld l,a			;9198	6f 	o 
	ex de,hl			;9199	eb 	. 
	pop hl			;919a	e1 	. 
	ld (hl),e			;919b	73 	s 
	call sub_7510h		;919c	cd 10 75 	. . u 
	ld c,02bh		;919f	0e 2b 	. + 
	dec hl			;91a1	2b 	+ 
	ld a,h			;91a2	7c 	| 
	or l			;91a3	b5 	. 
	jp nz,l91c0h		;91a4	c2 c0 91 	. . . 
	ld hl,00004h		;91a7	21 04 00 	! . . 
	add hl,bc			;91aa	09 	. 
	ld e,(hl)			;91ab	5e 	^ 
	inc hl			;91ac	23 	# 
	ld d,(hl)			;91ad	56 	V 
	inc de			;91ae	13 	. 
	ld (hl),d			;91af	72 	r 
	dec hl			;91b0	2b 	+ 
	ld (hl),e			;91b1	73 	s 
	push de			;91b2	d5 	. 
	call sub_7510h		;91b3	cd 10 75 	. . u 
	ld a,(bc)			;91b6	0a 	. 
	ld de,00008h		;91b7	11 08 00 	. . . 
	call sub_7665h		;91ba	cd 65 76 	. e v 
	ex de,hl			;91bd	eb 	. 
	pop hl			;91be	e1 	. 
	ld (hl),e			;91bf	73 	s 
l91c0h:
	ex de,hl			;91c0	eb 	. 
	ld hl,00006h		;91c1	21 06 00 	! . . 
	add hl,sp			;91c4	39 	9 
	ld sp,hl			;91c5	f9 	. 
	ex de,hl			;91c6	eb 	. 
	pop bc			;91c7	c1 	. 
	ret			;91c8	c9 	. 
sub_91c9h:
	push bc			;91c9	c5 	. 
	ld hl,00000h		;91ca	21 00 00 	! . . 
	ld (lb407h),hl		;91cd	22 07 b4 	" . . 
	ld (lb40bh),hl		;91d0	22 0b b4 	" . . 
	ld hl,(lb1ach)		;91d3	2a ac b1 	* . . 
	inc hl			;91d6	23 	# 
	inc hl			;91d7	23 	# 
	inc hl			;91d8	23 	# 
	inc hl			;91d9	23 	# 
	ld (lb409h),hl		;91da	22 09 b4 	" . . 
	ld hl,(lb409h)		;91dd	2a 09 b4 	* . . 
	inc hl			;91e0	23 	# 
	ld (lb405h),hl		;91e1	22 05 b4 	" . . 
	ld hl,00002h		;91e4	21 02 00 	! . . 
	push hl			;91e7	e5 	. 
	call sub_ac60h		;91e8	cd 60 ac 	. ` . 
	pop de			;91eb	d1 	. 
	ld hl,00003h		;91ec	21 03 00 	! . . 
	push hl			;91ef	e5 	. 
	call sub_ac60h		;91f0	cd 60 ac 	. ` . 
	pop de			;91f3	d1 	. 
	pop bc			;91f4	c1 	. 
	ret			;91f5	c9 	. 
sub_91f6h:
	push bc			;91f6	c5 	. 
	ld hl,0fffah		;91f7	21 fa ff 	! . . 
	add hl,sp			;91fa	39 	9 
	ld sp,hl			;91fb	f9 	. 
	ld b,h			;91fc	44 	D 
	ld c,l			;91fd	4d 	M 
	ld hl,(lb407h)		;91fe	2a 07 b4 	* . . 
	push hl			;9201	e5 	. 
	ld hl,(lb405h)		;9202	2a 05 b4 	* . . 
	push hl			;9205	e5 	. 
	ld hl,(lb411h)		;9206	2a 11 b4 	* . . 
	pop de			;9209	d1 	. 
	call sub_767ah		;920a	cd 7a 76 	. z v 
	add hl,de			;920d	19 	. 
	push hl			;920e	e5 	. 
	ld hl,(laf64h)		;920f	2a 64 af 	* d . 
	pop de			;9212	d1 	. 
	call sub_767ah		;9213	cd 7a 76 	. z v 
	add hl,de			;9216	19 	. 
	pop de			;9217	d1 	. 
	add hl,de			;9218	19 	. 
	ld (lb407h),hl		;9219	22 07 b4 	" . . 
	ld hl,(lb411h)		;921c	2a 11 b4 	* . . 
	push hl			;921f	e5 	. 
	ld hl,(laf64h)		;9220	2a 64 af 	* d . 
	pop de			;9223	d1 	. 
	add hl,de			;9224	19 	. 
	ld (lb405h),hl		;9225	22 05 b4 	" . . 
	ld hl,(laf64h)		;9228	2a 64 af 	* d . 
	push hl			;922b	e5 	. 
	ld hl,(lb407h)		;922c	2a 07 b4 	* . . 
	ld de,0fffbh		;922f	11 fb ff 	. . . 
	add hl,de			;9232	19 	. 
	call sub_7529h		;9233	cd 29 75 	. ) u 
	jp nc,l923fh		;9236	d2 3f 92 	. ? . 
	ld hl,00004h		;9239	21 04 00 	! . . 
	jp l9242h		;923c	c3 42 92 	. B . 
l923fh:
	ld hl,(lb407h)		;923f	2a 07 b4 	* . . 
l9242h:
	pop de			;9242	d1 	. 
	add hl,de			;9243	19 	. 
	ex de,hl			;9244	eb 	. 
	ld hl,00004h		;9245	21 04 00 	! . . 
	add hl,bc			;9248	09 	. 
	ld (hl),e			;9249	73 	s 
	inc hl			;924a	23 	# 
	ld (hl),d			;924b	72 	r 
	ld hl,(laf62h)		;924c	2a 62 af 	* b . 
	ex de,hl			;924f	eb 	. 
	ld h,b			;9250	60 	` 
	ld l,c			;9251	69 	i 
	ld (hl),e			;9252	73 	s 
	inc hl			;9253	23 	# 
	ld (hl),d			;9254	72 	r 
	call sub_7510h		;9255	cd 10 75 	. . u 
	inc b			;9258	04 	. 
	push hl			;9259	e5 	. 
	ld hl,00002h		;925a	21 02 00 	! . . 
	push hl			;925d	e5 	. 
	call sub_abf5h		;925e	cd f5 ab 	. . . 
	pop de			;9261	d1 	. 
	pop de			;9262	d1 	. 
	ld hl,(laf4eh)		;9263	2a 4e af 	* N . 
	push hl			;9266	e5 	. 
	call sub_7510h		;9267	cd 10 75 	. . u 
	inc b			;926a	04 	. 
	pop de			;926b	d1 	. 
	add hl,de			;926c	19 	. 
	push hl			;926d	e5 	. 
	ld hl,(laf4eh)		;926e	2a 4e af 	* N . 
	push hl			;9271	e5 	. 
	call sub_7510h		;9272	cd 10 75 	. . u 
	nop			;9275	00 	. 
	push hl			;9276	e5 	. 
	call sub_ac76h		;9277	cd 76 ac 	. v . 
	pop de			;927a	d1 	. 
	pop de			;927b	d1 	. 
	pop de			;927c	d1 	. 
	call sub_7510h		;927d	cd 10 75 	. . u 
	inc b			;9280	04 	. 
	push hl			;9281	e5 	. 
	ld hl,(laf64h)		;9282	2a 64 af 	* d . 
	pop de			;9285	d1 	. 
	call sub_767ah		;9286	cd 7a 76 	. z v 
	add hl,de			;9289	19 	. 
	push hl			;928a	e5 	. 
	ld hl,(laf4eh)		;928b	2a 4e af 	* N . 
	push hl			;928e	e5 	. 
	ld hl,(laf64h)		;928f	2a 64 af 	* d . 
	pop de			;9292	d1 	. 
	add hl,de			;9293	19 	. 
	push hl			;9294	e5 	. 
	call sub_943dh		;9295	cd 3d 94 	. = . 
	pop de			;9298	d1 	. 
	pop de			;9299	d1 	. 
	ld hl,(laf4eh)		;929a	2a 4e af 	* N . 
	push hl			;929d	e5 	. 
	ld hl,(laf50h)		;929e	2a 50 af 	* P . 
	push hl			;92a1	e5 	. 
	ld hl,(laf64h)		;92a2	2a 64 af 	* d . 
	push hl			;92a5	e5 	. 
	call sub_ac76h		;92a6	cd 76 ac 	. v . 
	pop de			;92a9	d1 	. 
	pop de			;92aa	d1 	. 
	pop de			;92ab	d1 	. 
	ld hl,(laf64h)		;92ac	2a 64 af 	* d . 
	ld (lb40dh),hl		;92af	22 0d b4 	" . . 
	call sub_7510h		;92b2	cd 10 75 	. . u 
	inc b			;92b5	04 	. 
	ld (lb40fh),hl		;92b6	22 0f b4 	" . . 
	ld hl,00003h		;92b9	21 03 00 	! . . 
	push hl			;92bc	e5 	. 
	call sub_ac60h		;92bd	cd 60 ac 	. ` . 
	pop de			;92c0	d1 	. 
l92c1h:
	ld hl,(lb40dh)		;92c1	2a 0d b4 	* . . 
	ld a,h			;92c4	7c 	| 
	or l			;92c5	b5 	. 
	jp z,l9331h		;92c6	ca 31 93 	. 1 . 
	ld hl,(lb405h)		;92c9	2a 05 b4 	* . . 
	dec hl			;92cc	2b 	+ 
	ld (lb405h),hl		;92cd	22 05 b4 	" . . 
	ld hl,(lb40dh)		;92d0	2a 0d b4 	* . . 
	dec hl			;92d3	2b 	+ 
	ld (lb40dh),hl		;92d4	22 0d b4 	" . . 
	push hl			;92d7	e5 	. 
	ld hl,(laf4eh)		;92d8	2a 4e af 	* N . 
	pop de			;92db	d1 	. 
	add hl,de			;92dc	19 	. 
	ld l,(hl)			;92dd	6e 	n 
	ex de,hl			;92de	eb 	. 
	ld hl,00002h		;92df	21 02 00 	! . . 
	add hl,bc			;92e2	09 	. 
	ld (hl),e			;92e3	73 	s 
	inc hl			;92e4	23 	# 
	ld (hl),000h		;92e5	36 00 	6 . 
	call sub_7510h		;92e7	cd 10 75 	. . u 
	ld (bc),a			;92ea	02 	. 
	ld a,h			;92eb	7c 	| 
	or l			;92ec	b5 	. 
	jp nz,l92fah		;92ed	c2 fa 92 	. . . 
	ld hl,(lb407h)		;92f0	2a 07 b4 	* . . 
	inc hl			;92f3	23 	# 
	ld (lb407h),hl		;92f4	22 07 b4 	" . . 
	jp l92c1h		;92f7	c3 c1 92 	. . . 
l92fah:
	ld hl,(lb407h)		;92fa	2a 07 b4 	* . . 
	ld de,0fffbh		;92fd	11 fb ff 	. . . 
	add hl,de			;9300	19 	. 
	jp nc,l9307h		;9301	d2 07 93 	. . . 
	call sub_93c2h		;9304	cd c2 93 	. . . 
l9307h:
	ld hl,(lb407h)		;9307	2a 07 b4 	* . . 
	dec hl			;930a	2b 	+ 
	ld (lb407h),hl		;930b	22 07 b4 	" . . 
	inc hl			;930e	23 	# 
	ld a,h			;930f	7c 	| 
	or l			;9310	b5 	. 
	jp z,l931fh		;9311	ca 1f 93 	. . . 
	ld hl,00000h		;9314	21 00 00 	! . . 
	push hl			;9317	e5 	. 
	call sub_937ah		;9318	cd 7a 93 	. z . 
	pop de			;931b	d1 	. 
	jp l9307h		;931c	c3 07 93 	. . . 
l931fh:
	ld hl,00000h		;931f	21 00 00 	! . . 
	ld (lb407h),hl		;9322	22 07 b4 	" . . 
	call sub_7510h		;9325	cd 10 75 	. . u 
	ld (bc),a			;9328	02 	. 
	push hl			;9329	e5 	. 
	call sub_937ah		;932a	cd 7a 93 	. z . 
	pop de			;932d	d1 	. 
	jp l92c1h		;932e	c3 c1 92 	. . . 
l9331h:
	ld hl,(lb40fh)		;9331	2a 0f b4 	* . . 
	push hl			;9334	e5 	. 
	ld hl,(laf62h)		;9335	2a 62 af 	* b . 
	pop de			;9338	d1 	. 
	call sub_767ah		;9339	cd 7a 76 	. z v 
	add hl,de			;933c	19 	. 
	call sub_767ah		;933d	cd 7a 76 	. z v 
	ex de,hl			;9340	eb 	. 
	ld hl,00004h		;9341	21 04 00 	! . . 
	add hl,bc			;9344	09 	. 
	ld (hl),e			;9345	73 	s 
	inc hl			;9346	23 	# 
	ld (hl),d			;9347	72 	r 
	ld hl,(laf4eh)		;9348	2a 4e af 	* N . 
	push hl			;934b	e5 	. 
	ld hl,(laf4eh)		;934c	2a 4e af 	* N . 
	push hl			;934f	e5 	. 
	ld hl,(lb40fh)		;9350	2a 0f b4 	* . . 
	pop de			;9353	d1 	. 
	add hl,de			;9354	19 	. 
	push hl			;9355	e5 	. 
	call sub_7510h		;9356	cd 10 75 	. . u 
	inc b			;9359	04 	. 
	push hl			;935a	e5 	. 
	call sub_ac76h		;935b	cd 76 ac 	. v . 
	pop de			;935e	d1 	. 
	pop de			;935f	d1 	. 
	pop de			;9360	d1 	. 
	ld hl,(lb40fh)		;9361	2a 0f b4 	* . . 
	call sub_767ah		;9364	cd 7a 76 	. z v 
	push hl			;9367	e5 	. 
	ld hl,00002h		;9368	21 02 00 	! . . 
	push hl			;936b	e5 	. 
	call sub_abf5h		;936c	cd f5 ab 	. . . 
	pop de			;936f	d1 	. 
	pop de			;9370	d1 	. 
	ex de,hl			;9371	eb 	. 
	ld hl,00006h		;9372	21 06 00 	! . . 
	add hl,sp			;9375	39 	9 
	ld sp,hl			;9376	f9 	. 
	ex de,hl			;9377	eb 	. 
	pop bc			;9378	c1 	. 
	ret			;9379	c9 	. 
sub_937ah:
	push bc			;937a	c5 	. 
	ld hl,00000h		;937b	21 00 00 	! . . 
	add hl,sp			;937e	39 	9 
	ld sp,hl			;937f	f9 	. 
	ld b,h			;9380	44 	D 
	ld c,l			;9381	4d 	M 
	ld hl,(lb40fh)		;9382	2a 0f b4 	* . . 
	dec hl			;9385	2b 	+ 
	ld (lb40fh),hl		;9386	22 0f b4 	" . . 
	push hl			;9389	e5 	. 
	ld hl,(laf4eh)		;938a	2a 4e af 	* N . 
	pop de			;938d	d1 	. 
	add hl,de			;938e	19 	. 
	push hl			;938f	e5 	. 
	call sub_7510h		;9390	cd 10 75 	. . u 
	inc b			;9393	04 	. 
	ex de,hl			;9394	eb 	. 
	pop hl			;9395	e1 	. 
	ld (hl),e			;9396	73 	s 
	ld hl,(lb40bh)		;9397	2a 0b b4 	* . . 
	inc hl			;939a	23 	# 
	ld (lb40bh),hl		;939b	22 0b b4 	" . . 
	pop bc			;939e	c1 	. 
	ret			;939f	c9 	. 
sub_93a0h:
	push bc			;93a0	c5 	. 
	ld hl,00000h		;93a1	21 00 00 	! . . 
	add hl,sp			;93a4	39 	9 
	ld sp,hl			;93a5	f9 	. 
	ld b,h			;93a6	44 	D 
	ld c,l			;93a7	4d 	M 
	call sub_7510h		;93a8	cd 10 75 	. . u 
	inc b			;93ab	04 	. 
	ld de,00008h		;93ac	11 08 00 	. . . 
	call sub_7665h		;93af	cd 65 76 	. e v 
	push hl			;93b2	e5 	. 
	call sub_937ah		;93b3	cd 7a 93 	. z . 
	pop de			;93b6	d1 	. 
	call sub_7510h		;93b7	cd 10 75 	. . u 
	inc b			;93ba	04 	. 
	push hl			;93bb	e5 	. 
	call sub_937ah		;93bc	cd 7a 93 	. z . 
	pop de			;93bf	d1 	. 
	pop bc			;93c0	c1 	. 
	ret			;93c1	c9 	. 
sub_93c2h:
	push bc			;93c2	c5 	. 
	ld hl,0fffeh		;93c3	21 fe ff 	! . . 
	add hl,sp			;93c6	39 	9 
	ld sp,hl			;93c7	f9 	. 
	ld b,h			;93c8	44 	D 
	ld c,l			;93c9	4d 	M 
	ld hl,(lb40bh)		;93ca	2a 0b b4 	* . . 
	ex de,hl			;93cd	eb 	. 
	ld h,b			;93ce	60 	` 
	ld l,c			;93cf	69 	i 
	ld (hl),e			;93d0	73 	s 
	inc hl			;93d1	23 	# 
	ld (hl),d			;93d2	72 	r 
	ld hl,(lb409h)		;93d3	2a 09 b4 	* . . 
	push hl			;93d6	e5 	. 
	call sub_7510h		;93d7	cd 10 75 	. . u 
	nop			;93da	00 	. 
	pop de			;93db	d1 	. 
	call sub_767ah		;93dc	cd 7a 76 	. z v 
	add hl,de			;93df	19 	. 
	inc hl			;93e0	23 	# 
	push hl			;93e1	e5 	. 
	call sub_93a0h		;93e2	cd a0 93 	. . . 
	pop de			;93e5	d1 	. 
	call sub_7510h		;93e6	cd 10 75 	. . u 
	nop			;93e9	00 	. 
	push hl			;93ea	e5 	. 
	call sub_93a0h		;93eb	cd a0 93 	. . . 
	pop de			;93ee	d1 	. 
	ld hl,(lb405h)		;93ef	2a 05 b4 	* . . 
	ld (lb409h),hl		;93f2	22 09 b4 	" . . 
	ld hl,00000h		;93f5	21 00 00 	! . . 
	ld (lb40bh),hl		;93f8	22 0b b4 	" . . 
	ld hl,00000h		;93fb	21 00 00 	! . . 
	ld (lb407h),hl		;93fe	22 07 b4 	" . . 
	ex de,hl			;9401	eb 	. 
	ld hl,00002h		;9402	21 02 00 	! . . 
	add hl,sp			;9405	39 	9 
	ld sp,hl			;9406	f9 	. 
	ex de,hl			;9407	eb 	. 
	pop bc			;9408	c1 	. 
	ret			;9409	c9 	. 
sub_940ah:
	push bc			;940a	c5 	. 
	ld hl,00004h		;940b	21 04 00 	! . . 
	push hl			;940e	e5 	. 
	ld hl,00002h		;940f	21 02 00 	! . . 
	push hl			;9412	e5 	. 
	call sub_abf5h		;9413	cd f5 ab 	. . . 
	pop de			;9416	d1 	. 
	pop de			;9417	d1 	. 
	ld hl,(laf4eh)		;9418	2a 4e af 	* N . 
	inc hl			;941b	23 	# 
	inc hl			;941c	23 	# 
	inc hl			;941d	23 	# 
	inc hl			;941e	23 	# 
	push hl			;941f	e5 	. 
	ld hl,(laf4eh)		;9420	2a 4e af 	* N . 
	push hl			;9423	e5 	. 
	ld hl,(laf62h)		;9424	2a 62 af 	* b . 
	dec hl			;9427	2b 	+ 
	dec hl			;9428	2b 	+ 
	dec hl			;9429	2b 	+ 
	dec hl			;942a	2b 	+ 
	push hl			;942b	e5 	. 
	call sub_ac76h		;942c	cd 76 ac 	. v . 
	pop de			;942f	d1 	. 
	pop de			;9430	d1 	. 
	pop de			;9431	d1 	. 
	ld hl,00004h		;9432	21 04 00 	! . . 
	ld (lb40fh),hl		;9435	22 0f b4 	" . . 
	call sub_93c2h		;9438	cd c2 93 	. . . 
	pop bc			;943b	c1 	. 
	ret			;943c	c9 	. 
sub_943dh:
	push bc			;943d	c5 	. 
	ld hl,00000h		;943e	21 00 00 	! . . 
	add hl,sp			;9441	39 	9 
	ld sp,hl			;9442	f9 	. 
	ld b,h			;9443	44 	D 
	ld c,l			;9444	4d 	M 
l9445h:
	ld hl,00006h		;9445	21 06 00 	! . . 
	add hl,bc			;9448	09 	. 
	ld e,(hl)			;9449	5e 	^ 
	inc hl			;944a	23 	# 
	ld d,(hl)			;944b	56 	V 
	dec de			;944c	1b 	. 
	ld (hl),d			;944d	72 	r 
	dec hl			;944e	2b 	+ 
	ld (hl),e			;944f	73 	s 
	inc de			;9450	13 	. 
	ld a,d			;9451	7a 	z 
	or e			;9452	b3 	. 
	jp z,l9468h		;9453	ca 68 94 	. h . 
	ld hl,00004h		;9456	21 04 00 	! . . 
	add hl,bc			;9459	09 	. 
	ld e,(hl)			;945a	5e 	^ 
	inc hl			;945b	23 	# 
	ld d,(hl)			;945c	56 	V 
	inc de			;945d	13 	. 
	ld (hl),d			;945e	72 	r 
	dec hl			;945f	2b 	+ 
	ld (hl),e			;9460	73 	s 
	dec de			;9461	1b 	. 
	ex de,hl			;9462	eb 	. 
	ld (hl),000h		;9463	36 00 	6 . 
	jp l9445h		;9465	c3 45 94 	. E . 
l9468h:
	pop bc			;9468	c1 	. 
	ret			;9469	c9 	. 
sub_946ah:
	push bc			;946a	c5 	. 
	ld hl,00000h		;946b	21 00 00 	! . . 
	add hl,sp			;946e	39 	9 
	ld sp,hl			;946f	f9 	. 
	ld b,h			;9470	44 	D 
	ld c,l			;9471	4d 	M 
	call sub_7510h		;9472	cd 10 75 	. . u 
	inc b			;9475	04 	. 
	push hl			;9476	e5 	. 
	ld hl,000c3h		;9477	21 c3 00 	! . . 
	push hl			;947a	e5 	. 
	ld hl,00018h		;947b	21 18 00 	! . . 
	push hl			;947e	e5 	. 
	call sub_94a4h		;947f	cd a4 94 	. . . 
	pop de			;9482	d1 	. 
	pop de			;9483	d1 	. 
	pop de			;9484	d1 	. 
	pop bc			;9485	c1 	. 
	ret			;9486	c9 	. 
sub_9487h:
	push bc			;9487	c5 	. 
	ld hl,00000h		;9488	21 00 00 	! . . 
	add hl,sp			;948b	39 	9 
	ld sp,hl			;948c	f9 	. 
	ld b,h			;948d	44 	D 
	ld c,l			;948e	4d 	M 
	call sub_7510h		;948f	cd 10 75 	. . u 
	inc b			;9492	04 	. 
	push hl			;9493	e5 	. 
	ld hl,000c3h		;9494	21 c3 00 	! . . 
	push hl			;9497	e5 	. 
	ld hl,00018h		;9498	21 18 00 	! . . 
	push hl			;949b	e5 	. 
	call sub_9503h		;949c	cd 03 95 	. . . 
	pop de			;949f	d1 	. 
	pop de			;94a0	d1 	. 
	pop de			;94a1	d1 	. 
	pop bc			;94a2	c1 	. 
	ret			;94a3	c9 	. 
sub_94a4h:
	push bc			;94a4	c5 	. 
	ld hl,0fffeh		;94a5	21 fe ff 	! . . 
	add hl,sp			;94a8	39 	9 
	ld sp,hl			;94a9	f9 	. 
	ld b,h			;94aa	44 	D 
	ld c,l			;94ab	4d 	M 
	call sub_7510h		;94ac	cd 10 75 	. . u 
	ld a,(bc)			;94af	0a 	. 
	ld a,(hl)			;94b0	7e 	~ 
	inc hl			;94b1	23 	# 
	ld h,(hl)			;94b2	66 	f 
	ld l,a			;94b3	6f 	o 
	push hl			;94b4	e5 	. 
	ld hl,(lafa8h)		;94b5	2a a8 af 	* . . 
	pop de			;94b8	d1 	. 
	call sub_767ah		;94b9	cd 7a 76 	. z v 
	add hl,de			;94bc	19 	. 
	dec hl			;94bd	2b 	+ 
	dec hl			;94be	2b 	+ 
	ex de,hl			;94bf	eb 	. 
	ld h,b			;94c0	60 	` 
	ld l,c			;94c1	69 	i 
	ld (hl),e			;94c2	73 	s 
	inc hl			;94c3	23 	# 
	ld (hl),d			;94c4	72 	r 
	call sub_7510h		;94c5	cd 10 75 	. . u 
	nop			;94c8	00 	. 
	ld de,00080h		;94c9	11 80 00 	. . . 
	add hl,de			;94cc	19 	. 
	ld a,h			;94cd	7c 	| 
	rla			;94ce	17 	. 
	jp c,l94e7h		;94cf	da e7 94 	. . . 
	call sub_7510h		;94d2	cd 10 75 	. . u 
	ld b,0e5h		;94d5	06 e5 	. . 
	call sub_ad34h		;94d7	cd 34 ad 	. 4 . 
	pop de			;94da	d1 	. 
	call sub_7510h		;94db	cd 10 75 	. . u 
	nop			;94de	00 	. 
	push hl			;94df	e5 	. 
	call sub_ad34h		;94e0	cd 34 ad 	. 4 . 
	pop de			;94e3	d1 	. 
	jp l94fah		;94e4	c3 fa 94 	. . . 
l94e7h:
	call sub_7510h		;94e7	cd 10 75 	. . u 
	ld a,(bc)			;94ea	0a 	. 
	ld a,(hl)			;94eb	7e 	~ 
	inc hl			;94ec	23 	# 
	ld h,(hl)			;94ed	66 	f 
	ld l,a			;94ee	6f 	o 
	push hl			;94ef	e5 	. 
	call sub_7510h		;94f0	cd 10 75 	. . u 
	ex af,af'			;94f3	08 	. 
	push hl			;94f4	e5 	. 
	call sub_ad77h		;94f5	cd 77 ad 	. w . 
	pop de			;94f8	d1 	. 
	pop de			;94f9	d1 	. 
l94fah:
	ex de,hl			;94fa	eb 	. 
	ld hl,00002h		;94fb	21 02 00 	! . . 
	add hl,sp			;94fe	39 	9 
	ld sp,hl			;94ff	f9 	. 
	ex de,hl			;9500	eb 	. 
	pop bc			;9501	c1 	. 
	ret			;9502	c9 	. 
sub_9503h:
	push bc			;9503	c5 	. 
	ld hl,0fffeh		;9504	21 fe ff 	! . . 
	add hl,sp			;9507	39 	9 
	ld sp,hl			;9508	f9 	. 
	ld b,h			;9509	44 	D 
	ld c,l			;950a	4d 	M 
	call sub_7510h		;950b	cd 10 75 	. . u 
	ex af,af'			;950e	08 	. 
	push hl			;950f	e5 	. 
	call sub_ad34h		;9510	cd 34 ad 	. 4 . 
	pop de			;9513	d1 	. 
	ld hl,(lafa8h)		;9514	2a a8 af 	* . . 
	ex de,hl			;9517	eb 	. 
	ld h,b			;9518	60 	` 
	ld l,c			;9519	69 	i 
	ld (hl),e			;951a	73 	s 
	inc hl			;951b	23 	# 
	ld (hl),d			;951c	72 	r 
	call sub_7510h		;951d	cd 10 75 	. . u 
	ld a,(bc)			;9520	0a 	. 
	ld a,(hl)			;9521	7e 	~ 
	inc hl			;9522	23 	# 
	ld h,(hl)			;9523	66 	f 
	ld l,a			;9524	6f 	o 
	push hl			;9525	e5 	. 
	call sub_ad3bh		;9526	cd 3b ad 	. ; . 
	pop de			;9529	d1 	. 
	call sub_7510h		;952a	cd 10 75 	. . u 
	ld a,(bc)			;952d	0a 	. 
	ld a,(hl)			;952e	7e 	~ 
	inc hl			;952f	23 	# 
	ld h,(hl)			;9530	66 	f 
	ld l,a			;9531	6f 	o 
	push hl			;9532	e5 	. 
	call sub_aeeeh		;9533	cd ee ae 	. . . 
	pop de			;9536	d1 	. 
	call sub_7510h		;9537	cd 10 75 	. . u 
	ld a,(bc)			;953a	0a 	. 
	push hl			;953b	e5 	. 
	call sub_7510h		;953c	cd 10 75 	. . u 
	nop			;953f	00 	. 
	ex de,hl			;9540	eb 	. 
	pop hl			;9541	e1 	. 
	ld (hl),e			;9542	73 	s 
	inc hl			;9543	23 	# 
	ld (hl),d			;9544	72 	r 
	ex de,hl			;9545	eb 	. 
	ld hl,00002h		;9546	21 02 00 	! . . 
	add hl,sp			;9549	39 	9 
	ld sp,hl			;954a	f9 	. 
	ex de,hl			;954b	eb 	. 
	pop bc			;954c	c1 	. 
	ret			;954d	c9 	. 
sub_954eh:
	push bc			;954e	c5 	. 
	ld hl,0fffch		;954f	21 fc ff 	! . . 
	add hl,sp			;9552	39 	9 
	ld sp,hl			;9553	f9 	. 
	ld b,h			;9554	44 	D 
	ld c,l			;9555	4d 	M 
	ld hl,(lafa6h)		;9556	2a a6 af 	* . . 
	push hl			;9559	e5 	. 
	ld hl,(lafa8h)		;955a	2a a8 af 	* . . 
	pop de			;955d	d1 	. 
	call sub_767ah		;955e	cd 7a 76 	. z v 
	add hl,de			;9561	19 	. 
	ex de,hl			;9562	eb 	. 
	ld h,b			;9563	60 	` 
	ld l,c			;9564	69 	i 
	ld (hl),e			;9565	73 	s 
	inc hl			;9566	23 	# 
	ld (hl),d			;9567	72 	r 
	call sub_7510h		;9568	cd 10 75 	. . u 
	nop			;956b	00 	. 
	push hl			;956c	e5 	. 
	call sub_aeeeh		;956d	cd ee ae 	. . . 
	pop de			;9570	d1 	. 
l9571h:
	call sub_7510h		;9571	cd 10 75 	. . u 
	ex af,af'			;9574	08 	. 
	ld a,(hl)			;9575	7e 	~ 
	inc hl			;9576	23 	# 
	ld h,(hl)			;9577	66 	f 
	ld l,a			;9578	6f 	o 
	ex de,hl			;9579	eb 	. 
	ld hl,00002h		;957a	21 02 00 	! . . 
	add hl,bc			;957d	09 	. 
	ld (hl),e			;957e	73 	s 
	inc hl			;957f	23 	# 
	ld (hl),d			;9580	72 	r 
	call sub_7510h		;9581	cd 10 75 	. . u 
	ex af,af'			;9584	08 	. 
	push hl			;9585	e5 	. 
	ld hl,(lafa8h)		;9586	2a a8 af 	* . . 
	ex de,hl			;9589	eb 	. 
	pop hl			;958a	e1 	. 
	ld (hl),e			;958b	73 	s 
	inc hl			;958c	23 	# 
	ld (hl),d			;958d	72 	r 
	call sub_7510h		;958e	cd 10 75 	. . u 
	ld (bc),a			;9591	02 	. 
	push hl			;9592	e5 	. 
	call sub_7510h		;9593	cd 10 75 	. . u 
	nop			;9596	00 	. 
	pop de			;9597	d1 	. 
	add hl,de			;9598	19 	. 
	ex de,hl			;9599	eb 	. 
	ld hl,00008h		;959a	21 08 00 	! . . 
	add hl,bc			;959d	09 	. 
	ld (hl),e			;959e	73 	s 
	inc hl			;959f	23 	# 
	ld (hl),d			;95a0	72 	r 
	call sub_7510h		;95a1	cd 10 75 	. . u 
	ld (bc),a			;95a4	02 	. 
	push hl			;95a5	e5 	. 
	call sub_aeeeh		;95a6	cd ee ae 	. . . 
	pop de			;95a9	d1 	. 
	call sub_7510h		;95aa	cd 10 75 	. . u 
	ld (bc),a			;95ad	02 	. 
	ld a,h			;95ae	7c 	| 
	or l			;95af	b5 	. 
	jp nz,l9571h		;95b0	c2 71 95 	. q . 
	ex de,hl			;95b3	eb 	. 
	ld hl,00004h		;95b4	21 04 00 	! . . 
	add hl,sp			;95b7	39 	9 
	ld sp,hl			;95b8	f9 	. 
	ex de,hl			;95b9	eb 	. 
	pop bc			;95ba	c1 	. 
	ret			;95bb	c9 	. 
sub_95bch:
	push bc			;95bc	c5 	. 
	ld hl,00000h		;95bd	21 00 00 	! . . 
	add hl,sp			;95c0	39 	9 
	ld sp,hl			;95c1	f9 	. 
	ld b,h			;95c2	44 	D 
	ld c,l			;95c3	4d 	M 
	call sub_7510h		;95c4	cd 10 75 	. . u 
	inc b			;95c7	04 	. 
	push hl			;95c8	e5 	. 
	ld hl,000cdh		;95c9	21 cd 00 	! . . 
	push hl			;95cc	e5 	. 
	call sub_ad77h		;95cd	cd 77 ad 	. w . 
	pop de			;95d0	d1 	. 
	pop de			;95d1	d1 	. 
	pop bc			;95d2	c1 	. 
	ret			;95d3	c9 	. 
sub_95d4h:
	push bc			;95d4	c5 	. 
	ld hl,00000h		;95d5	21 00 00 	! . . 
	add hl,sp			;95d8	39 	9 
	ld sp,hl			;95d9	f9 	. 
	ld b,h			;95da	44 	D 
	ld c,l			;95db	4d 	M 
	call sub_7510h		;95dc	cd 10 75 	. . u 
	inc b			;95df	04 	. 
	ld l,(hl)			;95e0	6e 	n 
	ld a,l			;95e1	7d 	} 
	cp 001h		;95e2	fe 01 	. . 
	jp nz,l95feh		;95e4	c2 fe 95 	. . . 
	call sub_7510h		;95e7	cd 10 75 	. . u 
	inc b			;95ea	04 	. 
	inc hl			;95eb	23 	# 
	push hl			;95ec	e5 	. 
	ld hl,000cdh		;95ed	21 cd 00 	! . . 
	push hl			;95f0	e5 	. 
	ld hl,00000h		;95f1	21 00 00 	! . . 
	push hl			;95f4	e5 	. 
	call sub_9503h		;95f5	cd 03 95 	. . . 
	pop de			;95f8	d1 	. 
	pop de			;95f9	d1 	. 
	pop de			;95fa	d1 	. 
	jp l960ch		;95fb	c3 0c 96 	. . . 
l95feh:
	call sub_7510h		;95fe	cd 10 75 	. . u 
	inc b			;9601	04 	. 
	inc hl			;9602	23 	# 
	ld a,(hl)			;9603	7e 	~ 
	inc hl			;9604	23 	# 
	ld h,(hl)			;9605	66 	f 
	ld l,a			;9606	6f 	o 
	push hl			;9607	e5 	. 
	call sub_95bch		;9608	cd bc 95 	. . . 
	pop de			;960b	d1 	. 
l960ch:
	pop bc			;960c	c1 	. 
	ret			;960d	c9 	. 
l960eh:
	push bc			;960e	c5 	. 
	ld hl,(lb38ch)		;960f	2a 8c b3 	* . . 
	ld a,h			;9612	7c 	| 
	or l			;9613	b5 	. 
	jp z,l9622h		;9614	ca 22 96 	. " . 
	ld hl,lb38ch		;9617	21 8c b3 	! . . 
	push hl			;961a	e5 	. 
	call sub_946ah		;961b	cd 6a 94 	. j . 
	pop de			;961e	d1 	. 
	jp l9672h		;961f	c3 72 96 	. r . 
l9622h:
	ld hl,(lafa8h)		;9622	2a a8 af 	* . . 
	ld (lb38ch),hl		;9625	22 8c b3 	" . . 
	ld hl,(lb390h)		;9628	2a 90 b3 	* . . 
	ld a,h			;962b	7c 	| 
	or l			;962c	b5 	. 
	jp z,l9640h		;962d	ca 40 96 	. @ . 
	ld hl,l64b2h		;9630	21 b2 64 	! . d 
	push hl			;9633	e5 	. 
	ld hl,000c3h		;9634	21 c3 00 	! . . 
	push hl			;9637	e5 	. 
	call sub_ad77h		;9638	cd 77 ad 	. w . 
	pop de			;963b	d1 	. 
	pop de			;963c	d1 	. 
	jp l9672h		;963d	c3 72 96 	. r . 
l9640h:
	ld hl,(lb38eh)		;9640	2a 8e b3 	* . . 
	ld a,h			;9643	7c 	| 
	or l			;9644	b5 	. 
	jp z,l9665h		;9645	ca 65 96 	. e . 
	ld hl,(lb38eh)		;9648	2a 8e b3 	* . . 
	push hl			;964b	e5 	. 
	ld hl,00011h		;964c	21 11 00 	! . . 
	push hl			;964f	e5 	. 
	call sub_ad77h		;9650	cd 77 ad 	. w . 
	pop de			;9653	d1 	. 
	pop de			;9654	d1 	. 
	ld hl,l64bdh		;9655	21 bd 64 	! . d 
	push hl			;9658	e5 	. 
	ld hl,000c3h		;9659	21 c3 00 	! . . 
	push hl			;965c	e5 	. 
	call sub_ad77h		;965d	cd 77 ad 	. w . 
	pop de			;9660	d1 	. 
	pop de			;9661	d1 	. 
	jp l9672h		;9662	c3 72 96 	. r . 
l9665h:
	ld hl,l64bah		;9665	21 ba 64 	! . d 
	push hl			;9668	e5 	. 
	ld hl,000c3h		;9669	21 c3 00 	! . . 
	push hl			;966c	e5 	. 
	call sub_ad77h		;966d	cd 77 ad 	. w . 
	pop de			;9670	d1 	. 
	pop de			;9671	d1 	. 
l9672h:
	pop bc			;9672	c1 	. 
	ret			;9673	c9 	. 
sub_9674h:
	push bc			;9674	c5 	. 
	ld hl,00000h		;9675	21 00 00 	! . . 
	add hl,sp			;9678	39 	9 
	ld sp,hl			;9679	f9 	. 
	ld b,h			;967a	44 	D 
	ld c,l			;967b	4d 	M 
	call sub_7510h		;967c	cd 10 75 	. . u 
	ld b,011h		;967f	06 11 	. . 
	add a,b			;9681	80 	. 
	nop			;9682	00 	. 
	add hl,de			;9683	19 	. 
	ld a,h			;9684	7c 	| 
	rla			;9685	17 	. 
	jp c,l9696h		;9686	da 96 96 	. . . 
	call sub_7510h		;9689	cd 10 75 	. . u 
	ld b,011h		;968c	06 11 	. . 
	add a,c			;968e	81 	. 
	rst 38h			;968f	ff 	. 
	add hl,de			;9690	19 	. 
	ld a,h			;9691	7c 	| 
	rla			;9692	17 	. 
	jp c,l96aeh		;9693	da ae 96 	. . . 
l9696h:
	call sub_7510h		;9696	cd 10 75 	. . u 
	ld b,011h		;9699	06 11 	. . 
	add a,c			;969b	81 	. 
	rst 38h			;969c	ff 	. 
	add hl,de			;969d	19 	. 
	ld a,h			;969e	7c 	| 
	or l			;969f	b5 	. 
	jp nz,l96eah		;96a0	c2 ea 96 	. . . 
	call sub_7510h		;96a3	cd 10 75 	. . u 
	inc b			;96a6	04 	. 
	dec hl			;96a7	2b 	+ 
	dec hl			;96a8	2b 	+ 
	ld a,h			;96a9	7c 	| 
	or l			;96aa	b5 	. 
	jp nz,l96eah		;96ab	c2 ea 96 	. . . 
l96aeh:
	ld hl,06eddh		;96ae	21 dd 6e 	! . n 
	push hl			;96b1	e5 	. 
	call sub_ad3bh		;96b2	cd 3b ad 	. ; . 
	pop de			;96b5	d1 	. 
	call sub_7510h		;96b6	cd 10 75 	. . u 
	ld b,0e5h		;96b9	06 e5 	. . 
	call sub_ad34h		;96bb	cd 34 ad 	. 4 . 
	pop de			;96be	d1 	. 
	call sub_7510h		;96bf	cd 10 75 	. . u 
	inc b			;96c2	04 	. 
	dec hl			;96c3	2b 	+ 
	dec hl			;96c4	2b 	+ 
	ld a,h			;96c5	7c 	| 
	or l			;96c6	b5 	. 
	jp z,l96dfh		;96c7	ca df 96 	. . . 
	ld hl,l66ddh		;96ca	21 dd 66 	! . f 
	push hl			;96cd	e5 	. 
	call sub_ad3bh		;96ce	cd 3b ad 	. ; . 
	pop de			;96d1	d1 	. 
	call sub_7510h		;96d2	cd 10 75 	. . u 
	ld b,023h		;96d5	06 23 	. # 
	push hl			;96d7	e5 	. 
	call sub_ad34h		;96d8	cd 34 ad 	. 4 . 
	pop de			;96db	d1 	. 
	jp l96e7h		;96dc	c3 e7 96 	. . . 
l96dfh:
	ld hl,00026h		;96df	21 26 00 	! & . 
	push hl			;96e2	e5 	. 
	call sub_ad3bh		;96e3	cd 3b ad 	. ; . 
	pop de			;96e6	d1 	. 
l96e7h:
	jp l9716h		;96e7	c3 16 97 	. . . 
l96eah:
	call sub_7510h		;96ea	cd 10 75 	. . u 
	ld b,0e5h		;96ed	06 e5 	. . 
	ld hl,00021h		;96ef	21 21 00 	! ! . 
	push hl			;96f2	e5 	. 
	call sub_ad77h		;96f3	cd 77 ad 	. w . 
	pop de			;96f6	d1 	. 
	pop de			;96f7	d1 	. 
	call sub_7510h		;96f8	cd 10 75 	. . u 
	inc b			;96fb	04 	. 
	dec hl			;96fc	2b 	+ 
	dec hl			;96fd	2b 	+ 
	ld a,h			;96fe	7c 	| 
	or l			;96ff	b5 	. 
	jp z,l970eh		;9700	ca 0e 97 	. . . 
	ld hl,l641dh		;9703	21 1d 64 	! . d 
	push hl			;9706	e5 	. 
	call sub_95bch		;9707	cd bc 95 	. . . 
	pop de			;970a	d1 	. 
	jp l9716h		;970b	c3 16 97 	. . . 
l970eh:
	ld hl,l6426h		;970e	21 26 64 	! & d 
	push hl			;9711	e5 	. 
	call sub_95bch		;9712	cd bc 95 	. . . 
	pop de			;9715	d1 	. 
l9716h:
	pop bc			;9716	c1 	. 
	ret			;9717	c9 	. 
sub_9718h:
	push bc			;9718	c5 	. 
	ld hl,0fffeh		;9719	21 fe ff 	! . . 
	add hl,sp			;971c	39 	9 
	ld sp,hl			;971d	f9 	. 
	ld b,h			;971e	44 	D 
	ld c,l			;971f	4d 	M 
	call sub_9b8eh		;9720	cd 8e 9b 	. . . 
	call sub_9a0fh		;9723	cd 0f 9a 	. . . 
	ld hl,(lb3fdh)		;9726	2a fd b3 	* . . 
	inc hl			;9729	23 	# 
	ld a,(hl)			;972a	7e 	~ 
	inc hl			;972b	23 	# 
	ld h,(hl)			;972c	66 	f 
	ld l,a			;972d	6f 	o 
	ex de,hl			;972e	eb 	. 
	ld h,b			;972f	60 	` 
	ld l,c			;9730	69 	i 
	ld (hl),e			;9731	73 	s 
	inc hl			;9732	23 	# 
	ld (hl),d			;9733	72 	r 
	ld hl,(lb3fdh)		;9734	2a fd b3 	* . . 
	ld l,(hl)			;9737	6e 	n 
	ld h,000h		;9738	26 00 	& . 
	ld de,00004h		;973a	11 04 00 	. . . 
	ld a,h			;973d	7c 	| 
	and d			;973e	a2 	. 
	ld h,a			;973f	67 	g 
	ld a,l			;9740	7d 	} 
	and e			;9741	a3 	. 
	ld l,a			;9742	6f 	o 
	ld a,h			;9743	7c 	| 
	or l			;9744	b5 	. 
	jp z,l975bh		;9745	ca 5b 97 	. [ . 
	call sub_7510h		;9748	cd 10 75 	. . u 
	nop			;974b	00 	. 
	push hl			;974c	e5 	. 
	ld hl,(lb39fh)		;974d	2a 9f b3 	* . . 
	ld h,000h		;9750	26 00 	& . 
	push hl			;9752	e5 	. 
	call sub_ae35h		;9753	cd 35 ae 	. 5 . 
	pop de			;9756	d1 	. 
	pop de			;9757	d1 	. 
	jp l978ch		;9758	c3 8c 97 	. . . 
l975bh:
	ld hl,(lb3fdh)		;975b	2a fd b3 	* . . 
	ld l,(hl)			;975e	6e 	n 
	ld h,000h		;975f	26 00 	& . 
	ld de,00002h		;9761	11 02 00 	. . . 
	ld a,h			;9764	7c 	| 
	and d			;9765	a2 	. 
	ld h,a			;9766	67 	g 
	ld a,l			;9767	7d 	} 
	and e			;9768	a3 	. 
	ld l,a			;9769	6f 	o 
	ld a,h			;976a	7c 	| 
	or l			;976b	b5 	. 
	jp z,l9782h		;976c	ca 82 97 	. . . 
	call sub_7510h		;976f	cd 10 75 	. . u 
	nop			;9772	00 	. 
	push hl			;9773	e5 	. 
	ld hl,(lb39fh)		;9774	2a 9f b3 	* . . 
	ld h,000h		;9777	26 00 	& . 
	push hl			;9779	e5 	. 
	call sub_97a6h		;977a	cd a6 97 	. . . 
	pop de			;977d	d1 	. 
	pop de			;977e	d1 	. 
	jp l978ch		;977f	c3 8c 97 	. . . 
l9782h:
	ld hl,(lb39fh)		;9782	2a 9f b3 	* . . 
	ld h,000h		;9785	26 00 	& . 
	push hl			;9787	e5 	. 
	call 0ae50h		;9788	cd 50 ae 	. P . 
	pop de			;978b	d1 	. 
l978ch:
	ld hl,(lb39fh)		;978c	2a 9f b3 	* . . 
	ld a,l			;978f	7d 	} 
	cp 002h		;9790	fe 02 	. . 
	jp nz,l979dh		;9792	c2 9d 97 	. . . 
	ld hl,00026h		;9795	21 26 00 	! & . 
	push hl			;9798	e5 	. 
	call sub_ad3bh		;9799	cd 3b ad 	. ; . 
	pop de			;979c	d1 	. 
l979dh:
	ex de,hl			;979d	eb 	. 
	ld hl,00002h		;979e	21 02 00 	! . . 
	add hl,sp			;97a1	39 	9 
	ld sp,hl			;97a2	f9 	. 
	ex de,hl			;97a3	eb 	. 
	pop bc			;97a4	c1 	. 
	ret			;97a5	c9 	. 
sub_97a6h:
	push bc			;97a6	c5 	. 
	ld hl,00000h		;97a7	21 00 00 	! . . 
	add hl,sp			;97aa	39 	9 
	ld sp,hl			;97ab	f9 	. 
	ld b,h			;97ac	44 	D 
	ld c,l			;97ad	4d 	M 
	call sub_7510h		;97ae	cd 10 75 	. . u 
	ld b,011h		;97b1	06 11 	. . 
	add a,b			;97b3	80 	. 
	nop			;97b4	00 	. 
	add hl,de			;97b5	19 	. 
	ld a,h			;97b6	7c 	| 
	rla			;97b7	17 	. 
	jp c,l97c8h		;97b8	da c8 97 	. . . 
	call sub_7510h		;97bb	cd 10 75 	. . u 
	ld b,011h		;97be	06 11 	. . 
	add a,c			;97c0	81 	. 
	rst 38h			;97c1	ff 	. 
	add hl,de			;97c2	19 	. 
	ld a,h			;97c3	7c 	| 
	rla			;97c4	17 	. 
	jp c,l97e0h		;97c5	da e0 97 	. . . 
l97c8h:
	call sub_7510h		;97c8	cd 10 75 	. . u 
	ld b,011h		;97cb	06 11 	. . 
	add a,c			;97cd	81 	. 
	rst 38h			;97ce	ff 	. 
	add hl,de			;97cf	19 	. 
	ld a,h			;97d0	7c 	| 
	or l			;97d1	b5 	. 
	jp nz,l9811h		;97d2	c2 11 98 	. . . 
	call sub_7510h		;97d5	cd 10 75 	. . u 
	inc b			;97d8	04 	. 
	dec hl			;97d9	2b 	+ 
	dec hl			;97da	2b 	+ 
	ld a,h			;97db	7c 	| 
	or l			;97dc	b5 	. 
	jp nz,l9811h		;97dd	c2 11 98 	. . . 
l97e0h:
	ld hl,l75ddh		;97e0	21 dd 75 	! . u 
	push hl			;97e3	e5 	. 
	call sub_ad3bh		;97e4	cd 3b ad 	. ; . 
	pop de			;97e7	d1 	. 
	call sub_7510h		;97e8	cd 10 75 	. . u 
	ld b,0e5h		;97eb	06 e5 	. . 
	call sub_ad34h		;97ed	cd 34 ad 	. 4 . 
	pop de			;97f0	d1 	. 
	call sub_7510h		;97f1	cd 10 75 	. . u 
	inc b			;97f4	04 	. 
	dec hl			;97f5	2b 	+ 
	dec hl			;97f6	2b 	+ 
	ld a,h			;97f7	7c 	| 
	or l			;97f8	b5 	. 
	jp z,l980eh		;97f9	ca 0e 98 	. . . 
	ld hl,l74ddh		;97fc	21 dd 74 	! . t 
	push hl			;97ff	e5 	. 
	call sub_ad3bh		;9800	cd 3b ad 	. ; . 
	pop de			;9803	d1 	. 
	call sub_7510h		;9804	cd 10 75 	. . u 
	ld b,023h		;9807	06 23 	. # 
	push hl			;9809	e5 	. 
	call sub_ad34h		;980a	cd 34 ad 	. 4 . 
	pop de			;980d	d1 	. 
l980eh:
	jp l983dh		;980e	c3 3d 98 	. = . 
l9811h:
	call sub_7510h		;9811	cd 10 75 	. . u 
	ld b,0e5h		;9814	06 e5 	. . 
	ld hl,00011h		;9816	21 11 00 	! . . 
	push hl			;9819	e5 	. 
	call sub_ad77h		;981a	cd 77 ad 	. w . 
	pop de			;981d	d1 	. 
	pop de			;981e	d1 	. 
	call sub_7510h		;981f	cd 10 75 	. . u 
	inc b			;9822	04 	. 
	dec hl			;9823	2b 	+ 
	dec hl			;9824	2b 	+ 
	ld a,h			;9825	7c 	| 
	or l			;9826	b5 	. 
	jp z,l9835h		;9827	ca 35 98 	. 5 . 
	ld hl,l642eh		;982a	21 2e 64 	! . d 
	push hl			;982d	e5 	. 
	call sub_95bch		;982e	cd bc 95 	. . . 
	pop de			;9831	d1 	. 
	jp l983dh		;9832	c3 3d 98 	. = . 
l9835h:
	ld hl,l6438h		;9835	21 38 64 	! 8 d 
	push hl			;9838	e5 	. 
	call sub_95bch		;9839	cd bc 95 	. . . 
	pop de			;983c	d1 	. 
l983dh:
	pop bc			;983d	c1 	. 
	ret			;983e	c9 	. 
sub_983fh:
	push bc			;983f	c5 	. 
	ld hl,0ffffh		;9840	21 ff ff 	! . . 
	add hl,sp			;9843	39 	9 
	ld sp,hl			;9844	f9 	. 
	ld b,h			;9845	44 	D 
	ld c,l			;9846	4d 	M 
	ld hl,(lb3fbh)		;9847	2a fb b3 	* . . 
	ld l,(hl)			;984a	6e 	n 
	ex de,hl			;984b	eb 	. 
	ld h,b			;984c	60 	` 
	ld l,c			;984d	69 	i 
	ld (hl),e			;984e	73 	s 
	ld h,b			;984f	60 	` 
	ld l,c			;9850	69 	i 
	ld l,(hl)			;9851	6e 	n 
	ld h,000h		;9852	26 00 	& . 
	ld de,00004h		;9854	11 04 00 	. . . 
	ld a,h			;9857	7c 	| 
	and d			;9858	a2 	. 
	ld h,a			;9859	67 	g 
	ld a,l			;985a	7d 	} 
	and e			;985b	a3 	. 
	ld l,a			;985c	6f 	o 
	ld a,h			;985d	7c 	| 
	or l			;985e	b5 	. 
	jp z,l987ah		;985f	ca 7a 98 	. z . 
	call sub_99f7h		;9862	cd f7 99 	. . . 
	ld hl,(lb3fbh)		;9865	2a fb b3 	* . . 
	inc hl			;9868	23 	# 
	ld a,(hl)			;9869	7e 	~ 
	inc hl			;986a	23 	# 
	ld h,(hl)			;986b	66 	f 
	ld l,a			;986c	6f 	o 
	push hl			;986d	e5 	. 
	ld hl,00021h		;986e	21 21 00 	! ! . 
	push hl			;9871	e5 	. 
	call sub_ad77h		;9872	cd 77 ad 	. w . 
	pop de			;9875	d1 	. 
	pop de			;9876	d1 	. 
	jp l98d8h		;9877	c3 d8 98 	. . . 
l987ah:
	ld h,b			;987a	60 	` 
	ld l,c			;987b	69 	i 
	ld l,(hl)			;987c	6e 	n 
	ld h,000h		;987d	26 00 	& . 
	ld de,00002h		;987f	11 02 00 	. . . 
	ld a,h			;9882	7c 	| 
	and d			;9883	a2 	. 
	ld h,a			;9884	67 	g 
	ld a,l			;9885	7d 	} 
	and e			;9886	a3 	. 
	ld l,a			;9887	6f 	o 
	ld a,h			;9888	7c 	| 
	or l			;9889	b5 	. 
	jp z,l98bdh		;988a	ca bd 98 	. . . 
	call sub_99f7h		;988d	cd f7 99 	. . . 
	ld hl,(lb3fbh)		;9890	2a fb b3 	* . . 
	inc hl			;9893	23 	# 
	ld a,(hl)			;9894	7e 	~ 
	inc hl			;9895	23 	# 
	ld h,(hl)			;9896	66 	f 
	ld l,a			;9897	6f 	o 
	push hl			;9898	e5 	. 
	ld hl,00021h		;9899	21 21 00 	! ! . 
	push hl			;989c	e5 	. 
	call sub_ad77h		;989d	cd 77 ad 	. w . 
	pop de			;98a0	d1 	. 
	pop de			;98a1	d1 	. 
	ld hl,0e5ddh		;98a2	21 dd e5 	! . . 
	push hl			;98a5	e5 	. 
	call sub_ad3bh		;98a6	cd 3b ad 	. ; . 
	pop de			;98a9	d1 	. 
	ld hl,000c1h		;98aa	21 c1 00 	! . . 
	push hl			;98ad	e5 	. 
	call sub_ad34h		;98ae	cd 34 ad 	. 4 . 
	pop de			;98b1	d1 	. 
	ld hl,00009h		;98b2	21 09 00 	! . . 
	push hl			;98b5	e5 	. 
	call sub_ad34h		;98b6	cd 34 ad 	. 4 . 
	pop de			;98b9	d1 	. 
	jp l98d8h		;98ba	c3 d8 98 	. . . 
l98bdh:
	ld h,b			;98bd	60 	` 
	ld l,c			;98be	69 	i 
	ld l,(hl)			;98bf	6e 	n 
	ld h,000h		;98c0	26 00 	& . 
	ld de,00008h		;98c2	11 08 00 	. . . 
	ld a,h			;98c5	7c 	| 
	and d			;98c6	a2 	. 
	ld h,a			;98c7	67 	g 
	ld a,l			;98c8	7d 	} 
	and e			;98c9	a3 	. 
	ld l,a			;98ca	6f 	o 
	ld a,h			;98cb	7c 	| 
	or l			;98cc	b5 	. 
	jp nz,l98d8h		;98cd	c2 d8 98 	. . . 
	ld hl,00022h		;98d0	21 22 00 	! " . 
	push hl			;98d3	e5 	. 
	call sub_aec5h		;98d4	cd c5 ae 	. . . 
	pop de			;98d7	d1 	. 
l98d8h:
	ld a,001h		;98d8	3e 01 	> . 
	ld (lb3a2h),a		;98da	32 a2 b3 	2 . . 
	ex de,hl			;98dd	eb 	. 
	ld hl,00001h		;98de	21 01 00 	! . . 
	add hl,sp			;98e1	39 	9 
	ld sp,hl			;98e2	f9 	. 
	ex de,hl			;98e3	eb 	. 
	pop bc			;98e4	c1 	. 
	ret			;98e5	c9 	. 
sub_98e6h:
	push bc			;98e6	c5 	. 
	ld hl,0fffch		;98e7	21 fc ff 	! . . 
	add hl,sp			;98ea	39 	9 
	ld sp,hl			;98eb	f9 	. 
	ld b,h			;98ec	44 	D 
	ld c,l			;98ed	4d 	M 
	call sub_7510h		;98ee	cd 10 75 	. . u 
	ex af,af'			;98f1	08 	. 
	inc hl			;98f2	23 	# 
	inc hl			;98f3	23 	# 
	inc hl			;98f4	23 	# 
	ld a,(hl)			;98f5	7e 	~ 
	inc hl			;98f6	23 	# 
	ld h,(hl)			;98f7	66 	f 
	ld l,a			;98f8	6f 	o 
	ld l,(hl)			;98f9	6e 	n 
	ex de,hl			;98fa	eb 	. 
	ld h,b			;98fb	60 	` 
	ld l,c			;98fc	69 	i 
	ld (hl),e			;98fd	73 	s 
	call sub_7510h		;98fe	cd 10 75 	. . u 
	ex af,af'			;9901	08 	. 
	inc hl			;9902	23 	# 
	ld a,(hl)			;9903	7e 	~ 
	inc hl			;9904	23 	# 
	ld h,(hl)			;9905	66 	f 
	ld l,a			;9906	6f 	o 
	ex de,hl			;9907	eb 	. 
	ld hl,00001h		;9908	21 01 00 	! . . 
	add hl,bc			;990b	09 	. 
	ld (hl),e			;990c	73 	s 
	inc hl			;990d	23 	# 
	ld (hl),d			;990e	72 	r 
	call sub_7510h		;990f	cd 10 75 	. . u 
	ex af,af'			;9912	08 	. 
	ld l,(hl)			;9913	6e 	n 
	ex de,hl			;9914	eb 	. 
	ld hl,00003h		;9915	21 03 00 	! . . 
	add hl,bc			;9918	09 	. 
	ld (hl),e			;9919	73 	s 
	ld hl,00003h		;991a	21 03 00 	! . . 
	add hl,bc			;991d	09 	. 
	ld l,(hl)			;991e	6e 	n 
	ld h,000h		;991f	26 00 	& . 
	ld de,00010h		;9921	11 10 00 	. . . 
	ld a,h			;9924	7c 	| 
	and d			;9925	a2 	. 
	ld h,a			;9926	67 	g 
	ld a,l			;9927	7d 	} 
	and e			;9928	a3 	. 
	ld l,a			;9929	6f 	o 
	ld a,h			;992a	7c 	| 
	or l			;992b	b5 	. 
	jp z,l9948h		;992c	ca 48 99 	. H . 
	call sub_99f7h		;992f	cd f7 99 	. . . 
	call sub_7510h		;9932	cd 10 75 	. . u 
	ld bc,021e5h		;9935	01 e5 21 	. . ! 
	ld hl,0e500h		;9938	21 00 e5 	! . . 
	ld hl,00000h		;993b	21 00 00 	! . . 
	push hl			;993e	e5 	. 
	call sub_9503h		;993f	cd 03 95 	. . . 
	pop de			;9942	d1 	. 
	pop de			;9943	d1 	. 
	pop de			;9944	d1 	. 
	jp l99e9h		;9945	c3 e9 99 	. . . 
l9948h:
	ld hl,00003h		;9948	21 03 00 	! . . 
	add hl,bc			;994b	09 	. 
	ld l,(hl)			;994c	6e 	n 
	ld h,000h		;994d	26 00 	& . 
	ld de,00001h		;994f	11 01 00 	. . . 
	ld a,h			;9952	7c 	| 
	and d			;9953	a2 	. 
	ld h,a			;9954	67 	g 
	ld a,l			;9955	7d 	} 
	and e			;9956	a3 	. 
	ld l,a			;9957	6f 	o 
	ld a,h			;9958	7c 	| 
	or l			;9959	b5 	. 
	jp z,l9971h		;995a	ca 71 99 	. q . 
	call sub_99f7h		;995d	cd f7 99 	. . . 
	call sub_7510h		;9960	cd 10 75 	. . u 
	ld bc,021e5h		;9963	01 e5 21 	. . ! 
	ld hl,0e500h		;9966	21 00 e5 	! . . 
	call sub_ad77h		;9969	cd 77 ad 	. w . 
	pop de			;996c	d1 	. 
	pop de			;996d	d1 	. 
	jp l99e9h		;996e	c3 e9 99 	. . . 
l9971h:
	ld hl,00003h		;9971	21 03 00 	! . . 
	add hl,bc			;9974	09 	. 
	ld l,(hl)			;9975	6e 	n 
	ld h,000h		;9976	26 00 	& . 
	ld de,00004h		;9978	11 04 00 	. . . 
	ld a,h			;997b	7c 	| 
	and d			;997c	a2 	. 
	ld h,a			;997d	67 	g 
	ld a,l			;997e	7d 	} 
	and e			;997f	a3 	. 
	ld l,a			;9980	6f 	o 
	ld a,h			;9981	7c 	| 
	or l			;9982	b5 	. 
	jp z,l999ch		;9983	ca 9c 99 	. . . 
	call sub_99f7h		;9986	cd f7 99 	. . . 
	call sub_7510h		;9989	cd 10 75 	. . u 
	ld bc,060e5h		;998c	01 e5 60 	. . ` 
	ld l,c			;998f	69 	i 
	ld l,(hl)			;9990	6e 	n 
	ld h,000h		;9991	26 00 	& . 
	push hl			;9993	e5 	. 
	call sub_add9h		;9994	cd d9 ad 	. . . 
	pop de			;9997	d1 	. 
	pop de			;9998	d1 	. 
	jp l99e9h		;9999	c3 e9 99 	. . . 
l999ch:
	ld hl,00003h		;999c	21 03 00 	! . . 
	add hl,bc			;999f	09 	. 
	ld l,(hl)			;99a0	6e 	n 
	ld h,000h		;99a1	26 00 	& . 
	ld de,00002h		;99a3	11 02 00 	. . . 
	ld a,h			;99a6	7c 	| 
	and d			;99a7	a2 	. 
	ld h,a			;99a8	67 	g 
	ld a,l			;99a9	7d 	} 
	and e			;99aa	a3 	. 
	ld l,a			;99ab	6f 	o 
	ld a,h			;99ac	7c 	| 
	or l			;99ad	b5 	. 
	jp z,l99c7h		;99ae	ca c7 99 	. . . 
	call sub_99f7h		;99b1	cd f7 99 	. . . 
	call sub_7510h		;99b4	cd 10 75 	. . u 
	ld bc,060e5h		;99b7	01 e5 60 	. . ` 
	ld l,c			;99ba	69 	i 
	ld l,(hl)			;99bb	6e 	n 
	ld h,000h		;99bc	26 00 	& . 
	push hl			;99be	e5 	. 
	call sub_9674h		;99bf	cd 74 96 	. t . 
	pop de			;99c2	d1 	. 
	pop de			;99c3	d1 	. 
	jp l99e9h		;99c4	c3 e9 99 	. . . 
l99c7h:
	ld hl,00003h		;99c7	21 03 00 	! . . 
	add hl,bc			;99ca	09 	. 
	ld l,(hl)			;99cb	6e 	n 
	ld h,000h		;99cc	26 00 	& . 
	ld de,00008h		;99ce	11 08 00 	. . . 
	ld a,h			;99d1	7c 	| 
	and d			;99d2	a2 	. 
	ld h,a			;99d3	67 	g 
	ld a,l			;99d4	7d 	} 
	and e			;99d5	a3 	. 
	ld l,a			;99d6	6f 	o 
	ld a,h			;99d7	7c 	| 
	or l			;99d8	b5 	. 
	jp z,l99e9h		;99d9	ca e9 99 	. . . 
	ld h,b			;99dc	60 	` 
	ld l,c			;99dd	69 	i 
	ld l,(hl)			;99de	6e 	n 
	ld h,000h		;99df	26 00 	& . 
	push hl			;99e1	e5 	. 
	call sub_ae09h		;99e2	cd 09 ae 	. . . 
	pop de			;99e5	d1 	. 
	jp l99e9h		;99e6	c3 e9 99 	. . . 
l99e9h:
	ld a,001h		;99e9	3e 01 	> . 
	ld (lb3a2h),a		;99eb	32 a2 b3 	2 . . 
	ex de,hl			;99ee	eb 	. 
	ld hl,00004h		;99ef	21 04 00 	! . . 
	add hl,sp			;99f2	39 	9 
	ld sp,hl			;99f3	f9 	. 
	ex de,hl			;99f4	eb 	. 
	pop bc			;99f5	c1 	. 
	ret			;99f6	c9 	. 
sub_99f7h:
	push bc			;99f7	c5 	. 
	ld hl,(lb3a2h)		;99f8	2a a2 b3 	* . . 
	ld a,l			;99fb	7d 	} 
	or a			;99fc	b7 	. 
	jp z,l9a08h		;99fd	ca 08 9a 	. . . 
	ld hl,000e5h		;9a00	21 e5 00 	! . . 
	push hl			;9a03	e5 	. 
	call sub_ad34h		;9a04	cd 34 ad 	. 4 . 
	pop de			;9a07	d1 	. 
l9a08h:
	ld a,000h		;9a08	3e 00 	> . 
	ld (lb3a2h),a		;9a0a	32 a2 b3 	2 . . 
	pop bc			;9a0d	c1 	. 
	ret			;9a0e	c9 	. 
sub_9a0fh:
	push bc			;9a0f	c5 	. 
	ld hl,(lb3fbh)		;9a10	2a fb b3 	* . . 
	push hl			;9a13	e5 	. 
	call sub_98e6h		;9a14	cd e6 98 	. . . 
	pop de			;9a17	d1 	. 
	pop bc			;9a18	c1 	. 
	ret			;9a19	c9 	. 
sub_9a1ah:
	push bc			;9a1a	c5 	. 
	ld hl,(lb3fdh)		;9a1b	2a fd b3 	* . . 
	push hl			;9a1e	e5 	. 
	call sub_98e6h		;9a1f	cd e6 98 	. . . 
	pop de			;9a22	d1 	. 
	pop bc			;9a23	c1 	. 
	ret			;9a24	c9 	. 
sub_9a25h:
	push bc			;9a25	c5 	. 
	ld hl,0fffeh		;9a26	21 fe ff 	! . . 
	add hl,sp			;9a29	39 	9 
	ld sp,hl			;9a2a	f9 	. 
	ld b,h			;9a2b	44 	D 
	ld c,l			;9a2c	4d 	M 
	call sub_9b8eh		;9a2d	cd 8e 9b 	. . . 
	ld hl,(lb3fdh)		;9a30	2a fd b3 	* . . 
	ld l,(hl)			;9a33	6e 	n 
	ld h,000h		;9a34	26 00 	& . 
	ld de,00007h		;9a36	11 07 00 	. . . 
	ld a,h			;9a39	7c 	| 
	and d			;9a3a	a2 	. 
	ld h,a			;9a3b	67 	g 
	ld a,l			;9a3c	7d 	} 
	and e			;9a3d	a3 	. 
	ld l,a			;9a3e	6f 	o 
	ex de,hl			;9a3f	eb 	. 
	ld h,b			;9a40	60 	` 
	ld l,c			;9a41	69 	i 
	ld (hl),e			;9a42	73 	s 
	inc hl			;9a43	23 	# 
	ld (hl),d			;9a44	72 	r 
	ld hl,(lb3ffh)		;9a45	2a ff b3 	* . . 
	inc hl			;9a48	23 	# 
	ld a,(hl)			;9a49	7e 	~ 
	inc hl			;9a4a	23 	# 
	ld h,(hl)			;9a4b	66 	f 
	ld l,a			;9a4c	6f 	o 
	ld (lb3a0h),hl		;9a4d	22 a0 b3 	" . . 
	call sub_9c08h		;9a50	cd 08 9c 	. . . 
	ld a,h			;9a53	7c 	| 
	or l			;9a54	b5 	. 
	jp z,l9a6dh		;9a55	ca 6d 9a 	. m . 
	call sub_9a1ah		;9a58	cd 1a 9a 	. . . 
	ld hl,(lb3a0h)		;9a5b	2a a0 b3 	* . . 
	push hl			;9a5e	e5 	. 
	ld hl,00011h		;9a5f	21 11 00 	! . . 
	push hl			;9a62	e5 	. 
	ld hl,00011h		;9a63	21 11 00 	! . . 
	push hl			;9a66	e5 	. 
	call sub_9503h		;9a67	cd 03 95 	. . . 
	pop de			;9a6a	d1 	. 
	pop de			;9a6b	d1 	. 
	pop de			;9a6c	d1 	. 
l9a6dh:
	call sub_9c1ch		;9a6d	cd 1c 9c 	. . . 
	ld a,h			;9a70	7c 	| 
	or l			;9a71	b5 	. 
	jp z,l9a88h		;9a72	ca 88 9a 	. . . 
	call sub_9a1ah		;9a75	cd 1a 9a 	. . . 
	ld hl,(lb3a0h)		;9a78	2a a0 b3 	* . . 
	push hl			;9a7b	e5 	. 
	ld hl,00011h		;9a7c	21 11 00 	! . . 
	push hl			;9a7f	e5 	. 
	call sub_ad77h		;9a80	cd 77 ad 	. w . 
	pop de			;9a83	d1 	. 
	pop de			;9a84	d1 	. 
	jp l9b4eh		;9a85	c3 4e 9b 	. N . 
l9a88h:
	call sub_9c12h		;9a88	cd 12 9c 	. . . 
	ld a,h			;9a8b	7c 	| 
	or l			;9a8c	b5 	. 
	jp z,l9aa5h		;9a8d	ca a5 9a 	. . . 
	call sub_9a1ah		;9a90	cd 1a 9a 	. . . 
	ld hl,(lb3a0h)		;9a93	2a a0 b3 	* . . 
	push hl			;9a96	e5 	. 
	ld hl,(lb39eh)		;9a97	2a 9e b3 	* . . 
	ld h,000h		;9a9a	26 00 	& . 
	push hl			;9a9c	e5 	. 
	call sub_adefh		;9a9d	cd ef ad 	. . . 
	pop de			;9aa0	d1 	. 
	pop de			;9aa1	d1 	. 
	jp l9b4eh		;9aa2	c3 4e 9b 	. N . 
l9aa5h:
	call sub_9c17h		;9aa5	cd 17 9c 	. . . 
	ld a,h			;9aa8	7c 	| 
	or l			;9aa9	b5 	. 
	jp z,l9af9h		;9aaa	ca f9 9a 	. . . 
	call sub_7510h		;9aad	cd 10 75 	. . u 
	nop			;9ab0	00 	. 
	ld a,h			;9ab1	7c 	| 
	or l			;9ab2	b5 	. 
	jp nz,l9ac6h		;9ab3	c2 c6 9a 	. . . 
	call sub_9a1ah		;9ab6	cd 1a 9a 	. . . 
	ld hl,000ebh		;9ab9	21 eb 00 	! . . 
	push hl			;9abc	e5 	. 
	call sub_ad34h		;9abd	cd 34 ad 	. 4 . 
	pop de			;9ac0	d1 	. 
	ld a,000h		;9ac1	3e 00 	> . 
	ld (lb3a2h),a		;9ac3	32 a2 b3 	2 . . 
l9ac6h:
	call sub_99f7h		;9ac6	cd f7 99 	. . . 
	ld hl,(lb3a0h)		;9ac9	2a a0 b3 	* . . 
	push hl			;9acc	e5 	. 
	ld hl,(lb39eh)		;9acd	2a 9e b3 	* . . 
	ld h,000h		;9ad0	26 00 	& . 
	push hl			;9ad2	e5 	. 
	call sub_9674h		;9ad3	cd 74 96 	. t . 
	pop de			;9ad6	d1 	. 
	pop de			;9ad7	d1 	. 
	ld a,001h		;9ad8	3e 01 	> . 
	ld (lb3a2h),a		;9ada	32 a2 b3 	2 . . 
	ld hl,000ebh		;9add	21 eb 00 	! . . 
	push hl			;9ae0	e5 	. 
	call sub_ad34h		;9ae1	cd 34 ad 	. 4 . 
	pop de			;9ae4	d1 	. 
	call sub_7510h		;9ae5	cd 10 75 	. . u 
	nop			;9ae8	00 	. 
	ld a,h			;9ae9	7c 	| 
	or l			;9aea	b5 	. 
	jp z,l9af6h		;9aeb	ca f6 9a 	. . . 
	ld a,000h		;9aee	3e 00 	> . 
	ld (lb3a2h),a		;9af0	32 a2 b3 	2 . . 
	call sub_9a1ah		;9af3	cd 1a 9a 	. . . 
l9af6h:
	jp l9b4eh		;9af6	c3 4e 9b 	. N . 
l9af9h:
	call sub_9c0dh		;9af9	cd 0d 9c 	. . . 
	ld a,h			;9afc	7c 	| 
	or l			;9afd	b5 	. 
	jp z,l9b2ah		;9afe	ca 2a 9b 	. * . 
	ld hl,(lb39eh)		;9b01	2a 9e b3 	* . . 
	ld h,000h		;9b04	26 00 	& . 
	push hl			;9b06	e5 	. 
	call sub_ae1fh		;9b07	cd 1f ae 	. . . 
	pop de			;9b0a	d1 	. 
	call sub_7510h		;9b0b	cd 10 75 	. . u 
	nop			;9b0e	00 	. 
	ld a,h			;9b0f	7c 	| 
	or l			;9b10	b5 	. 
	jp nz,l9b1fh		;9b11	c2 1f 9b 	. . . 
	ld hl,000e1h		;9b14	21 e1 00 	! . . 
	push hl			;9b17	e5 	. 
	call sub_ad34h		;9b18	cd 34 ad 	. 4 . 
	pop de			;9b1b	d1 	. 
	jp l9b24h		;9b1c	c3 24 9b 	. $ . 
l9b1fh:
	ld a,000h		;9b1f	3e 00 	> . 
	ld (lb3a2h),a		;9b21	32 a2 b3 	2 . . 
l9b24h:
	call sub_9a1ah		;9b24	cd 1a 9a 	. . . 
	jp l9b4eh		;9b27	c3 4e 9b 	. N . 
l9b2ah:
	ld hl,000ebh		;9b2a	21 eb 00 	! . . 
	push hl			;9b2d	e5 	. 
	call sub_ad34h		;9b2e	cd 34 ad 	. 4 . 
	pop de			;9b31	d1 	. 
	call sub_7510h		;9b32	cd 10 75 	. . u 
	nop			;9b35	00 	. 
	ld a,h			;9b36	7c 	| 
	or l			;9b37	b5 	. 
	jp nz,l9b46h		;9b38	c2 46 9b 	. F . 
	ld hl,000e1h		;9b3b	21 e1 00 	! . . 
	push hl			;9b3e	e5 	. 
	call sub_ad34h		;9b3f	cd 34 ad 	. 4 . 
	pop de			;9b42	d1 	. 
	jp l9b4bh		;9b43	c3 4b 9b 	. K . 
l9b46h:
	ld a,000h		;9b46	3e 00 	> . 
	ld (lb3a2h),a		;9b48	32 a2 b3 	2 . . 
l9b4bh:
	call sub_9a1ah		;9b4b	cd 1a 9a 	. . . 
l9b4eh:
	ex de,hl			;9b4e	eb 	. 
	ld hl,00002h		;9b4f	21 02 00 	! . . 
	add hl,sp			;9b52	39 	9 
	ld sp,hl			;9b53	f9 	. 
	ex de,hl			;9b54	eb 	. 
	pop bc			;9b55	c1 	. 
	ret			;9b56	c9 	. 
sub_9b57h:
	call sub_9f36h		;9b57	cd 36 9f 	. 6 . 
	call sub_9a0fh		;9b5a	cd 0f 9a 	. . . 
	call 09bc1h		;9b5d	cd c1 9b 	. . . 
	jp la24ah		;9b60	c3 4a a2 	. J . 
sub_9b63h:
	call sub_9f39h		;9b63	cd 39 9f 	. 9 . 
	call sub_9c1ch		;9b66	cd 1c 9c 	. . . 
	jr z,l9b78h		;9b69	28 0d 	( . 
	ld hl,(lb3fbh)		;9b6b	2a fb b3 	* . . 
	inc hl			;9b6e	23 	# 
	ld e,(hl)			;9b6f	5e 	^ 
	inc hl			;9b70	23 	# 
	ld d,(hl)			;9b71	56 	V 
	push de			;9b72	d5 	. 
	call 09bc1h		;9b73	cd c1 9b 	. . . 
	pop hl			;9b76	e1 	. 
	ret			;9b77	c9 	. 
l9b78h:
	call sub_ae66h		;9b78	cd 66 ae 	. f . 
	daa			;9b7b	27 	' 
sub_9b7ch:
	ld hl,lb3c9h		;9b7c	21 c9 b3 	! . . 
	ld (lb3fbh),hl		;9b7f	22 fb b3 	" . . 
	ld hl,lb3a7h		;9b82	21 a7 b3 	! . . 
	ld (lb3c7h),hl		;9b85	22 c7 b3 	" . . 
	xor a			;9b88	af 	. 
	ld (hl),a			;9b89	77 	w 
	ld (lb3a2h),a		;9b8a	32 a2 b3 	2 . . 
	ret			;9b8d	c9 	. 
sub_9b8eh:
	ld hl,(lb3fbh)		;9b8e	2a fb b3 	* . . 
	ld (lb3ffh),hl		;9b91	22 ff b3 	" . . 
	push hl			;9b94	e5 	. 
	call sub_9e80h		;9b95	cd 80 9e 	. . . 
	ld (lb39eh),a		;9b98	32 9e b3 	2 . . 
	ld de,0fffbh		;9b9b	11 fb ff 	. . . 
	pop hl			;9b9e	e1 	. 
	add hl,de			;9b9f	19 	. 
	ld (lb3fdh),hl		;9ba0	22 fd b3 	" . . 
	call sub_9e80h		;9ba3	cd 80 9e 	. . . 
	ld (lb39fh),a		;9ba6	32 9f b3 	2 . . 
	ret			;9ba9	c9 	. 
sub_9baah:
	ld hl,(lb3fbh)		;9baa	2a fb b3 	* . . 
	ld de,04c0ah		;9bad	11 0a 4c 	. . L 
	add hl,de			;9bb0	19 	. 
	jr c,l9bbdh		;9bb1	38 0a 	8 . 
	ld de,lb3fbh		;9bb3	11 fb b3 	. . . 
	add hl,de			;9bb6	19 	. 
	ld (lb3fbh),hl		;9bb7	22 fb b3 	" . . 
	jp sub_9b8eh		;9bba	c3 8e 9b 	. . . 
l9bbdh:
	call sub_ae66h		;9bbd	cd 66 ae 	. f . 
	ld e,02ah		;9bc0	1e 2a 	. * 
	ei			;9bc2	fb 	. 
	or e			;9bc3	b3 	. 
	ld de,0fffbh		;9bc4	11 fb ff 	. . . 
	add hl,de			;9bc7	19 	. 
	ld (lb3fbh),hl		;9bc8	22 fb b3 	" . . 
	ret			;9bcb	c9 	. 
sub_9bcch:
	pop hl			;9bcc	e1 	. 
	xor a			;9bcd	af 	. 
	pop de			;9bce	d1 	. 
	add a,e			;9bcf	83 	. 
	add a,a			;9bd0	87 	. 
	pop de			;9bd1	d1 	. 
	add a,e			;9bd2	83 	. 
	add a,a			;9bd3	87 	. 
	pop de			;9bd4	d1 	. 
	add a,e			;9bd5	83 	. 
	add a,a			;9bd6	87 	. 
	pop de			;9bd7	d1 	. 
	add a,e			;9bd8	83 	. 
	pop de			;9bd9	d1 	. 
	ex (sp),hl			;9bda	e3 	. 
	call sub_9be6h		;9bdb	cd e6 9b 	. . . 
	pop hl			;9bde	e1 	. 
	push de			;9bdf	d5 	. 
	push de			;9be0	d5 	. 
	push de			;9be1	d5 	. 
	push de			;9be2	d5 	. 
	push de			;9be3	d5 	. 
	push de			;9be4	d5 	. 
	jp (hl)			;9be5	e9 	. 
sub_9be6h:
	push hl			;9be6	e5 	. 
	push de			;9be7	d5 	. 
	push af			;9be8	f5 	. 
	call sub_9baah		;9be9	cd aa 9b 	. . . 
	ld hl,(lb3fbh)		;9bec	2a fb b3 	* . . 
	pop af			;9bef	f1 	. 
	ld (hl),a			;9bf0	77 	w 
	pop de			;9bf1	d1 	. 
	ld (lb3a0h),de		;9bf2	ed 53 a0 b3 	. S . . 
	inc hl			;9bf6	23 	# 
	ld (hl),e			;9bf7	73 	s 
	inc hl			;9bf8	23 	# 
	ld (hl),d			;9bf9	72 	r 
	pop de			;9bfa	d1 	. 
	inc hl			;9bfb	23 	# 
	ld (hl),e			;9bfc	73 	s 
	inc hl			;9bfd	23 	# 
	ld (hl),d			;9bfe	72 	r 
	ld a,(de)			;9bff	1a 	. 
	ld (lb39eh),a		;9c00	32 9e b3 	2 . . 
	call sub_aecah		;9c03	cd ca ae 	. . . 
	inc b			;9c06	04 	. 
	ret			;9c07	c9 	. 
sub_9c08h:
	ld a,010h		;9c08	3e 10 	> . 
	jp l9c1eh		;9c0a	c3 1e 9c 	. . . 
sub_9c0dh:
	ld a,008h		;9c0d	3e 08 	> . 
	jp l9c1eh		;9c0f	c3 1e 9c 	. . . 
sub_9c12h:
	ld a,004h		;9c12	3e 04 	> . 
	jp l9c1eh		;9c14	c3 1e 9c 	. . . 
sub_9c17h:
	ld a,002h		;9c17	3e 02 	> . 
	jp l9c1eh		;9c19	c3 1e 9c 	. . . 
sub_9c1ch:
	ld a,001h		;9c1c	3e 01 	> . 
l9c1eh:
	ld hl,(lb3fbh)		;9c1e	2a fb b3 	* . . 
	and (hl)			;9c21	a6 	. 
	ld hl,00000h		;9c22	21 00 00 	! . . 
	ret z			;9c25	c8 	. 
	inc hl			;9c26	23 	# 
	ret			;9c27	c9 	. 
sub_9c28h:
	ld hl,(lb3fbh)		;9c28	2a fb b3 	* . . 
	inc hl			;9c2b	23 	# 
	inc hl			;9c2c	23 	# 
	inc hl			;9c2d	23 	# 
	ld d,h			;9c2e	54 	T 
	ld e,l			;9c2f	5d 	] 
	call sub_9e83h		;9c30	cd 83 9e 	. . . 
	cp 008h		;9c33	fe 08 	. . 
	ret nz			;9c35	c0 	. 
	call sub_9e80h		;9c36	cd 80 9e 	. . . 
	ex de,hl			;9c39	eb 	. 
	ld (hl),e			;9c3a	73 	s 
	inc hl			;9c3b	23 	# 
	ld (hl),d			;9c3c	72 	r 
sub_9c3dh:
	push bc			;9c3d	c5 	. 
	ld hl,(lb3fbh)		;9c3e	2a fb b3 	* . . 
	bit 2,(hl)		;9c41	cb 56 	. V 
	jr z,l9c49h		;9c43	28 04 	( . 
	ld (hl),001h		;9c45	36 01 	6 . 
	jr l9c50h		;9c47	18 07 	. . 
l9c49h:
	push hl			;9c49	e5 	. 
	call sub_983fh		;9c4a	cd 3f 98 	. ? . 
	pop hl			;9c4d	e1 	. 
	ld (hl),000h		;9c4e	36 00 	6 . 
l9c50h:
	ld a,006h		;9c50	3e 06 	> . 
	ld (lb39eh),a		;9c52	32 9e b3 	2 . . 
	inc hl			;9c55	23 	# 
	inc hl			;9c56	23 	# 
	inc hl			;9c57	23 	# 
	ld bc,00002h		;9c58	01 02 00 	. . . 
	call sub_8897h		;9c5b	cd 97 88 	. . . 
	pop bc			;9c5e	c1 	. 
	ret			;9c5f	c9 	. 
sub_9c60h:
	ld hl,(lb3fbh)		;9c60	2a fb b3 	* . . 
	ld (hl),000h		;9c63	36 00 	6 . 
	ret			;9c65	c9 	. 
sub_9c66h:
	call sub_9a25h		;9c66	cd 25 9a 	. % . 
	call sub_adc6h		;9c69	cd c6 ad 	. . . 
sub_9c6ch:
	ld a,(lb3a6h)		;9c6c	3a a6 b3 	: . . 
	cp 007h		;9c6f	fe 07 	. . 
	jr c,l9c77h		;9c71	38 04 	8 . 
	cp 00dh		;9c73	fe 0d 	. . 
	jr c,l9c7fh		;9c75	38 08 	8 . 
l9c77h:
	cp 017h		;9c77	fe 17 	. . 
	jr c,l9c91h		;9c79	38 16 	8 . 
	cp 01bh		;9c7b	fe 1b 	. . 
	jr nc,l9c91h		;9c7d	30 12 	0 . 
l9c7fh:
	ld de,lafb1h		;9c7f	11 b1 af 	. . . 
l9c82h:
	ld hl,(lb3fdh)		;9c82	2a fd b3 	* . . 
	inc hl			;9c85	23 	# 
	inc hl			;9c86	23 	# 
	inc hl			;9c87	23 	# 
	ld (hl),e			;9c88	73 	s 
	inc hl			;9c89	23 	# 
	ld (hl),d			;9c8a	72 	r 
l9c8bh:
	call 09bc1h		;9c8b	cd c1 9b 	. . . 
	ld (hl),000h		;9c8e	36 00 	6 . 
	ret			;9c90	c9 	. 
l9c91h:
	cp 011h		;9c91	fe 11 	. . 
	jr z,l9c8bh		;9c93	28 f6 	( . 
	cp 010h		;9c95	fe 10 	. . 
	jr z,l9c8bh		;9c97	28 f2 	( . 
	cp 01ch		;9c99	fe 1c 	. . 
	jr z,l9c8bh		;9c9b	28 ee 	( . 
	call sub_9b8eh		;9c9d	cd 8e 9b 	. . . 
	cp 006h		;9ca0	fe 06 	. . 
	jr z,l9c8bh		;9ca2	28 e7 	( . 
	ld a,(lb3a5h)		;9ca4	3a a5 b3 	: . . 
	or a			;9ca7	b7 	. 
	jr z,l9c7fh		;9ca8	28 d5 	( . 
	ld de,lafbbh		;9caa	11 bb af 	. . . 
	jr l9c82h		;9cad	18 d3 	. . 
sub_9cafh:
	pop de			;9caf	d1 	. 
	pop hl			;9cb0	e1 	. 
	push hl			;9cb1	e5 	. 
	push de			;9cb2	d5 	. 
	push bc			;9cb3	c5 	. 
	ld a,l			;9cb4	7d 	} 
	call sub_9ce5h		;9cb5	cd e5 9c 	. . . 
	pop bc			;9cb8	c1 	. 
	ret			;9cb9	c9 	. 
sub_9cbah:
	ld hl,(lb3fdh)		;9cba	2a fd b3 	* . . 
	call sub_9e80h		;9cbd	cd 80 9e 	. . . 
	call sub_9e80h		;9cc0	cd 80 9e 	. . . 
	call sub_9e82h		;9cc3	cd 82 9e 	. . . 
	ex de,hl			;9cc6	eb 	. 
	ld hl,lafb1h		;9cc7	21 b1 af 	! . . 
	ld a,001h		;9cca	3e 01 	> . 
	call sub_9be6h		;9ccc	cd e6 9b 	. . . 
	ld a,(lb3a6h)		;9ccf	3a a6 b3 	: . . 
	cp 012h		;9cd2	fe 12 	. . 
	jr nz,l9cdah		;9cd4	20 04 	  . 
	ld a,01dh		;9cd6	3e 1d 	> . 
	jr l9cdch		;9cd8	18 02 	. . 
l9cdah:
	ld a,01eh		;9cda	3e 1e 	> . 
l9cdch:
	ld hl,(lb3c7h)		;9cdc	2a c7 b3 	* . . 
	ld (hl),a			;9cdf	77 	w 
	ld a,014h		;9ce0	3e 14 	> . 
	ld (lb3a6h),a		;9ce2	32 a6 b3 	2 . . 
sub_9ce5h:
	ld de,(lb3c7h)		;9ce5	ed 5b c7 b3 	. [ . . 
	ld hl,04c3dh		;9ce9	21 3d 4c 	! = L 
	add hl,de			;9cec	19 	. 
	jr c,l9cfah		;9ced	38 0b 	8 . 
	inc de			;9cef	13 	. 
	ld (de),a			;9cf0	12 	. 
	ld (lb3c7h),de		;9cf1	ed 53 c7 b3 	. S . . 
	call sub_aecah		;9cf5	cd ca ae 	. . . 
	dec b			;9cf8	05 	. 
	ret			;9cf9	c9 	. 
l9cfah:
	call sub_ae66h		;9cfa	cd 66 ae 	. f . 
	rra			;9cfd	1f 	. 
sub_9cfeh:
	ld b,000h		;9cfe	06 00 	. . 
	cp 005h		;9d00	fe 05 	. . 
	jr nc,l9d06h		;9d02	30 02 	0 . 
	set 1,b		;9d04	cb c8 	. . 
l9d06h:
	cp 006h		;9d06	fe 06 	. . 
	jr nc,l9d0ch		;9d08	30 02 	0 . 
	set 2,b		;9d0a	cb d0 	. . 
l9d0ch:
	cp 003h		;9d0c	fe 03 	. . 
	jr nz,l9d12h		;9d0e	20 02 	  . 
	set 0,b		;9d10	cb c0 	. . 
l9d12h:
	cp 006h		;9d12	fe 06 	. . 
	jr nz,l9d18h		;9d14	20 02 	  . 
	set 3,b		;9d16	cb d8 	. . 
l9d18h:
	ld a,007h		;9d18	3e 07 	> . 
	and c			;9d1a	a1 	. 
	ret z			;9d1b	c8 	. 
	set 4,b		;9d1c	cb e0 	. . 
	ret			;9d1e	c9 	. 
sub_9d1fh:
	push bc			;9d1f	c5 	. 
	call sub_aecah		;9d20	cd ca ae 	. . . 
	ld b,02ah		;9d23	06 2a 	. * 
	rst 38h			;9d25	ff 	. 
	or e			;9d26	b3 	. 
	ld c,(hl)			;9d27	4e 	N 
	ld a,(lb39eh)		;9d28	3a 9e b3 	: . . 
	call sub_9cfeh		;9d2b	cd fe 9c 	. . . 
	ld e,b			;9d2e	58 	X 
	ld hl,(lb3fdh)		;9d2f	2a fd b3 	* . . 
	ld c,(hl)			;9d32	4e 	N 
	ld a,(lb39fh)		;9d33	3a 9f b3 	: . . 
	call sub_9cfeh		;9d36	cd fe 9c 	. . . 
	ld c,e			;9d39	4b 	K 
	ld de,(lb3a6h)		;9d3a	ed 5b a6 b3 	. [ . . 
	xor a			;9d3e	af 	. 
	ld (lb3a3h),a		;9d3f	32 a3 b3 	2 . . 
	ld (lb3a4h),a		;9d42	32 a4 b3 	2 . . 
	ld d,a			;9d45	57 	W 
	ld a,b			;9d46	78 	x 
	or c			;9d47	b1 	. 
	and 009h		;9d48	e6 09 	. . 
	ld (lb3a5h),a		;9d4a	32 a5 b3 	2 . . 
	ld a,b			;9d4d	78 	x 
	and 00ah		;9d4e	e6 0a 	. . 
	jr z,l9d70h		;9d50	28 1e 	( . 
	ld a,c			;9d52	79 	y 
	and 00ah		;9d53	e6 0a 	. . 
	jr z,l9d70h		;9d55	28 19 	( . 
	ld a,e			;9d57	7b 	{ 
	cp 007h		;9d58	fe 07 	. . 
	jr c,l9d70h		;9d5a	38 14 	8 . 
	cp 00dh		;9d5c	fe 0d 	. . 
	jr nc,l9d70h		;9d5e	30 10 	0 . 
	cp 009h		;9d60	fe 09 	. . 
	jr c,l9dc1h		;9d62	38 5d 	8 ] 
	ld a,(lb3a5h)		;9d64	3a a5 b3 	: . . 
	or a			;9d67	b7 	. 
	jr z,l9dc1h		;9d68	28 57 	( W 
	ld a,e			;9d6a	7b 	{ 
	add a,00eh		;9d6b	c6 0e 	. . 
	ld e,a			;9d6d	5f 	_ 
	jr l9dc1h		;9d6e	18 51 	. Q 
l9d70h:
	ld a,b			;9d70	78 	x 
	and c			;9d71	a1 	. 
	bit 2,a		;9d72	cb 57 	. W 
	jr z,l9d98h		;9d74	28 22 	( " 
	and 002h		;9d76	e6 02 	. . 
	jr nz,l9dc1h		;9d78	20 47 	  G 
	inc a			;9d7a	3c 	< 
	ld (lb3a4h),a		;9d7b	32 a4 b3 	2 . . 
	jr l9dc1h		;9d7e	18 41 	. A 
l9d80h:
	ld de,(lb3fdh)		;9d80	ed 5b fd b3 	. [ . . 
	ld hl,(lb3ffh)		;9d84	2a ff b3 	* . . 
	call sub_9e45h		;9d87	cd 45 9e 	. E . 
l9d8ah:
	ld de,(lb3ffh)		;9d8a	ed 5b ff b3 	. [ . . 
	ld hl,(lb3fdh)		;9d8e	2a fd b3 	* . . 
l9d91h:
	call sub_9e45h		;9d91	cd 45 9e 	. E . 
	jr z,$+43		;9d94	28 29 	( ) 
	jr l9dbbh		;9d96	18 23 	. # 
l9d98h:
	ld a,e			;9d98	7b 	{ 
	cp 012h		;9d99	fe 12 	. . 
	jr z,l9de7h		;9d9b	28 4a 	( J 
	cp 013h		;9d9d	fe 13 	. . 
	jr z,l9de7h		;9d9f	28 46 	( F 
	cp 01dh		;9da1	fe 1d 	. . 
	jr z,l9dc1h		;9da3	28 1c 	( . 
	cp 01eh		;9da5	fe 1e 	. . 
	jr z,l9dc1h		;9da7	28 18 	( . 
	cp 005h		;9da9	fe 05 	. . 
	jr z,l9dc1h		;9dab	28 14 	( . 
	cp 006h		;9dad	fe 06 	. . 
	jr z,l9dc1h		;9daf	28 10 	( . 
	push bc			;9db1	c5 	. 
	push de			;9db2	d5 	. 
	cp 002h		;9db3	fe 02 	. . 
	jr z,l9d8ah		;9db5	28 d3 	( . 
	cp 004h		;9db7	fe 04 	. . 
	jr z,l9d80h		;9db9	28 c5 	( . 
l9dbbh:
	call sub_ae66h		;9dbb	cd 66 ae 	. f . 
	jr nz,l9d91h		;9dbe	20 d1 	  . 
	pop bc			;9dc0	c1 	. 
l9dc1h:
	ld a,e			;9dc1	7b 	{ 
	cp 010h		;9dc2	fe 10 	. . 
	jr nz,l9dceh		;9dc4	20 08 	  . 
	bit 0,b		;9dc6	cb 40 	. @ 
	jr z,l9dceh		;9dc8	28 04 	( . 
	ld e,01ch		;9dca	1e 1c 	. . 
	jr l9de1h		;9dcc	18 13 	. . 
l9dceh:
	ld a,(lb3a5h)		;9dce	3a a5 b3 	: . . 
	or a			;9dd1	b7 	. 
	jr z,l9de1h		;9dd2	28 0d 	( . 
	ld a,e			;9dd4	7b 	{ 
	cp 015h		;9dd5	fe 15 	. . 
	jr nz,l9ddbh		;9dd7	20 02 	  . 
	ld e,01bh		;9dd9	1e 1b 	. . 
l9ddbh:
	cp 016h		;9ddb	fe 16 	. . 
	jr nz,l9de1h		;9ddd	20 02 	  . 
	ld e,01fh		;9ddf	1e 1f 	. . 
l9de1h:
	ld a,e			;9de1	7b 	{ 
	ld (lb3a6h),a		;9de2	32 a6 b3 	2 . . 
	pop bc			;9de5	c1 	. 
	ret			;9de6	c9 	. 
l9de7h:
	bit 3,b		;9de7	cb 58 	. X 
	jr z,l9df4h		;9de9	28 09 	( . 
	bit 1,c		;9deb	cb 49 	. I 
	jr z,l9df4h		;9ded	28 05 	( . 
l9defh:
	call sub_9cbah		;9def	cd ba 9c 	. . . 
	pop bc			;9df2	c1 	. 
	ret			;9df3	c9 	. 
l9df4h:
	cp 012h		;9df4	fe 12 	. . 
	jr nz,l9e23h		;9df6	20 2b 	  + 
	bit 1,b		;9df8	cb 48 	. H 
	jr z,l9e23h		;9dfa	28 27 	( ' 
	bit 3,c		;9dfc	cb 59 	. Y 
	jr z,l9e23h		;9dfe	28 23 	( # 
	bit 4,b		;9e00	cb 60 	. ` 
	jr nz,l9e0ch		;9e02	20 08 	  . 
	bit 4,c		;9e04	cb 61 	. a 
	jr nz,l9e0ch		;9e06	20 04 	  . 
	call sub_ad85h		;9e08	cd 85 ad 	. . . 
	ex (sp),hl			;9e0b	e3 	. 
l9e0ch:
	ld bc,00005h		;9e0c	01 05 00 	. . . 
	ld hl,(lb3fdh)		;9e0f	2a fd b3 	* . . 
	ld d,h			;9e12	54 	T 
	ld e,l			;9e13	5d 	] 
	add hl,bc			;9e14	09 	. 
	push hl			;9e15	e5 	. 
	add hl,bc			;9e16	09 	. 
	ex de,hl			;9e17	eb 	. 
	push hl			;9e18	e5 	. 
	ldir		;9e19	ed b0 	. . 
	pop de			;9e1b	d1 	. 
	pop hl			;9e1c	e1 	. 
	ld c,00ah		;9e1d	0e 0a 	. . 
	ldir		;9e1f	ed b0 	. . 
	jr l9defh		;9e21	18 cc 	. . 
l9e23h:
	cp 013h		;9e23	fe 13 	. . 
	jr nz,l9dbbh		;9e25	20 94 	  . 
	bit 3,b		;9e27	cb 58 	. X 
	jr z,l9dbbh		;9e29	28 90 	( . 
	ld hl,(lb3fdh)		;9e2b	2a fd b3 	* . . 
	call sub_9e80h		;9e2e	cd 80 9e 	. . . 
	ex de,hl			;9e31	eb 	. 
	ld hl,(lb3ffh)		;9e32	2a ff b3 	* . . 
	call sub_9e80h		;9e35	cd 80 9e 	. . . 
	sbc hl,de		;9e38	ed 52 	. R 
	ld a,l			;9e3a	7d 	} 
	or h			;9e3b	b4 	. 
	jp nz,l9dbbh		;9e3c	c2 bb 9d 	. . . 
	inc a			;9e3f	3c 	< 
	ld (lb3a3h),a		;9e40	32 a3 b3 	2 . . 
	pop bc			;9e43	c1 	. 
	ret			;9e44	c9 	. 
sub_9e45h:
	call sub_9e80h		;9e45	cd 80 9e 	. . . 
	cp 006h		;9e48	fe 06 	. . 
	ret nz			;9e4a	c0 	. 
	ex de,hl			;9e4b	eb 	. 
	push hl			;9e4c	e5 	. 
	call sub_9e80h		;9e4d	cd 80 9e 	. . . 
	cp 001h		;9e50	fe 01 	. . 
	ex (sp),hl			;9e52	e3 	. 
	jr nz,l9e65h		;9e53	20 10 	  . 
	bit 0,(hl)		;9e55	cb 46 	. F 
	jr z,l9e65h		;9e57	28 0c 	( . 
	inc hl			;9e59	23 	# 
	ld a,(hl)			;9e5a	7e 	~ 
	inc hl			;9e5b	23 	# 
	or (hl)			;9e5c	b6 	. 
	jr nz,l9e65h		;9e5d	20 06 	  . 
	inc hl			;9e5f	23 	# 
	ld (hl),e			;9e60	73 	s 
	inc hl			;9e61	23 	# 
	ld (hl),d			;9e62	72 	r 
	pop hl			;9e63	e1 	. 
	ret			;9e64	c9 	. 
l9e65h:
	pop hl			;9e65	e1 	. 
	or a			;9e66	b7 	. 
	sbc hl,de		;9e67	ed 52 	. R 
	ret			;9e69	c9 	. 
	push de			;9e6a	d5 	. 
	push af			;9e6b	f5 	. 
	ld de,l9e7ch		;9e6c	11 7c 9e 	. | . 
	push de			;9e6f	d5 	. 
	push hl			;9e70	e5 	. 
	ld hl,00006h		;9e71	21 06 00 	! . . 
	push hl			;9e74	e5 	. 
	call sub_653dh		;9e75	cd 3d 65 	. = e 
	pop af			;9e78	f1 	. 
	pop de			;9e79	d1 	. 
	pop hl			;9e7a	e1 	. 
	ret			;9e7b	c9 	. 
l9e7ch:
	jr nz,$+39		;9e7c	20 25 	  % 
	ld h,h			;9e7e	64 	d 
	nop			;9e7f	00 	. 
sub_9e80h:
	inc hl			;9e80	23 	# 
	inc hl			;9e81	23 	# 
sub_9e82h:
	inc hl			;9e82	23 	# 
sub_9e83h:
	ld a,(hl)			;9e83	7e 	~ 
	inc hl			;9e84	23 	# 
	ld h,(hl)			;9e85	66 	f 
	ld l,a			;9e86	6f 	o 
	ld a,(hl)			;9e87	7e 	~ 
	ret			;9e88	c9 	. 
sub_9e89h:
	push bc			;9e89	c5 	. 
	call sub_9e8fh		;9e8a	cd 8f 9e 	. . . 
	pop bc			;9e8d	c1 	. 
	ret			;9e8e	c9 	. 
sub_9e8fh:
	xor a			;9e8f	af 	. 
	ld (lb3a4h),a		;9e90	32 a4 b3 	2 . . 
	ld a,(lb39eh)		;9e93	3a 9e b3 	: . . 
	call sub_9cfeh		;9e96	cd fe 9c 	. . . 
	ld a,(lb3a6h)		;9e99	3a a6 b3 	: . . 
	cp 024h		;9e9c	fe 24 	. $ 
	jr z,l9eb9h		;9e9e	28 19 	( . 
	cp 026h		;9ea0	fe 26 	. & 
	jr z,l9eb9h		;9ea2	28 15 	( . 
	cp 027h		;9ea4	fe 27 	. ' 
	jr z,l9eb9h		;9ea6	28 11 	( . 
	cp 029h		;9ea8	fe 29 	. ) 
	jr z,l9eb9h		;9eaa	28 0d 	( . 
	cp 02ah		;9eac	fe 2a 	. * 
	jr z,l9eb9h		;9eae	28 09 	( . 
	cp 025h		;9eb0	fe 25 	. % 
	jr z,l9ebch		;9eb2	28 08 	( . 
	cp 023h		;9eb4	fe 23 	. # 
	jr z,l9ebch		;9eb6	28 04 	( . 
	ret			;9eb8	c9 	. 
l9eb9h:
	bit 3,b		;9eb9	cb 58 	. X 
	ret nz			;9ebb	c0 	. 
l9ebch:
	bit 2,b		;9ebc	cb 50 	. P 
	jr z,l9ec7h		;9ebe	28 07 	( . 
	bit 1,b		;9ec0	cb 48 	. H 
	ret nz			;9ec2	c0 	. 
	ld (lb3a4h),a		;9ec3	32 a4 b3 	2 . . 
	ret			;9ec6	c9 	. 
l9ec7h:
	call sub_ae66h		;9ec7	cd 66 ae 	. f . 
	ld hl,0cacdh		;9eca	21 cd ca 	! . . 
	ld a,a			;9ecd	7f 	 
	jr z,$-49		;9ece	28 cd 	( . 
	ld b,h			;9ed0	44 	D 
	add a,h			;9ed1	84 	. 
	ld a,l			;9ed2	7d 	} 
	or h			;9ed3	b4 	. 
	jr nz,$+6		;9ed4	20 04 	  . 
	call sub_ae66h		;9ed6	cd 66 ae 	. f . 
	ld h,0cdh		;9ed9	26 cd 	& . 
	jp z,0297fh		;9edb	ca 7f 29 	.  ) 
	ret			;9ede	c9 	. 
sub_9edfh:
	ld hl,(lb3fbh)		;9edf	2a fb b3 	* . . 
	push hl			;9ee2	e5 	. 
	push hl			;9ee3	e5 	. 
	bit 3,(hl)		;9ee4	cb 5e 	. ^ 
	jr nz,$+6		;9ee6	20 04 	  . 
	call sub_ae66h		;9ee8	cd 66 ae 	. f . 
	ld (sub_79cbh+2),hl		;9eeb	22 cd 79 	" . y 
	ld a,c			;9eee	79 	y 
	ld hl,(laf01h)		;9eef	2a 01 af 	* . . 
	call sub_8b55h		;9ef2	cd 55 8b 	. U . 
	ld a,l			;9ef5	7d 	} 
	or h			;9ef6	b4 	. 
	jr z,l9f32h		;9ef7	28 39 	( 9 
	ld a,(hl)			;9ef9	7e 	~ 
	cp 00bh		;9efa	fe 0b 	. . 
	jr nz,l9f32h		;9efc	20 34 	  4 
	inc hl			;9efe	23 	# 
	ld e,(hl)			;9eff	5e 	^ 
	inc hl			;9f00	23 	# 
	ld d,(hl)			;9f01	56 	V 
	call sub_9e82h		;9f02	cd 82 9e 	. . . 
	ex (sp),hl			;9f05	e3 	. 
	ld a,(hl)			;9f06	7e 	~ 
	and 006h		;9f07	e6 06 	. . 
	jr z,l9f17h		;9f09	28 0c 	( . 
	inc hl			;9f0b	23 	# 
	ld c,(hl)			;9f0c	4e 	N 
	inc hl			;9f0d	23 	# 
	ld b,(hl)			;9f0e	46 	F 
	ex de,hl			;9f0f	eb 	. 
	add hl,bc			;9f10	09 	. 
	ex de,hl			;9f11	eb 	. 
	ld (hl),d			;9f12	72 	r 
	dec hl			;9f13	2b 	+ 
	ld (hl),e			;9f14	73 	s 
	jr l9f20h		;9f15	18 09 	. . 
l9f17h:
	ex de,hl			;9f17	eb 	. 
	call sub_ad9ch		;9f18	cd 9c ad 	. . . 
	ld de,l85cch+1		;9f1b	11 cd 85 	. . . 
	xor l			;9f1e	ad 	. 
	add hl,de			;9f1f	19 	. 
l9f20h:
	pop de			;9f20	d1 	. 
	pop hl			;9f21	e1 	. 
	inc hl			;9f22	23 	# 
	inc hl			;9f23	23 	# 
	inc hl			;9f24	23 	# 
	ld (hl),e			;9f25	73 	s 
	inc hl			;9f26	23 	# 
	ld (hl),d			;9f27	72 	r 
	call sub_9c28h		;9f28	cd 28 9c 	. ( . 
	call sub_aecah		;9f2b	cd ca ae 	. . . 
	ld bc,l6dc3h		;9f2e	01 c3 6d 	. . m 
	ld a,c			;9f31	79 	y 
l9f32h:
	call sub_ae66h		;9f32	cd 66 ae 	. f . 
	inc hl			;9f35	23 	# 
sub_9f36h:
	call sub_9b7ch		;9f36	cd 7c 9b 	. | . 
sub_9f39h:
	push bc			;9f39	c5 	. 
	ld hl,(lb3c7h)		;9f3a	2a c7 b3 	* . . 
	push hl			;9f3d	e5 	. 
	xor a			;9f3e	af 	. 
	push af			;9f3f	f5 	. 
l9f40h:
	call sub_9ff3h		;9f40	cd f3 9f 	. . . 
	xor a			;9f43	af 	. 
	ld (l6cb0h),a		;9f44	32 b0 6c 	2 . l 
	call sub_7979h		;9f47	cd 79 79 	. y y 
	ld hl,la16ah		;9f4a	21 6a a1 	! j . 
	ld b,018h		;9f4d	06 18 	. . 
l9f4fh:
	cp (hl)			;9f4f	be 	. 
	jr z,l9f58h		;9f50	28 06 	( . 
	inc hl			;9f52	23 	# 
	djnz l9f4fh		;9f53	10 fa 	. . 
	xor a			;9f55	af 	. 
	jr l9f60h		;9f56	18 08 	. . 
l9f58h:
	ld a,018h		;9f58	3e 18 	> . 
	sub b			;9f5a	90 	. 
	push af			;9f5b	f5 	. 
	call sub_796dh		;9f5c	cd 6d 79 	. m y 
	pop af			;9f5f	f1 	. 
l9f60h:
	push af			;9f60	f5 	. 
	cp 00dh		;9f61	fe 0d 	. . 
	jr c,l9f76h		;9f63	38 11 	8 . 
	cp 017h		;9f65	fe 17 	. . 
	jr nc,l9f76h		;9f67	30 0d 	0 . 
	call sub_7ff2h		;9f69	cd f2 7f 	. .  
	dec a			;9f6c	3d 	= 
	jr nz,l9f76h		;9f6d	20 07 	  . 
	pop af			;9f6f	f1 	. 
	ld (l6cb0h),a		;9f70	32 b0 6c 	2 . l 
	ld a,002h		;9f73	3e 02 	> . 
	push af			;9f75	f5 	. 
l9f76h:
	pop af			;9f76	f1 	. 
	pop de			;9f77	d1 	. 
	cp 003h		;9f78	fe 03 	. . 
	jr nz,l9f7fh		;9f7a	20 03 	  . 
	inc d			;9f7c	14 	. 
	jr l9f95h		;9f7d	18 16 	. . 
l9f7fh:
	or a			;9f7f	b7 	. 
	jr nz,l9f95h		;9f80	20 13 	  . 
	ld e,a			;9f82	5f 	_ 
	ld a,d			;9f83	7a 	z 
	or d			;9f84	b2 	. 
	ld a,e			;9f85	7b 	{ 
	jr z,l9f95h		;9f86	28 0d 	( . 
	push de			;9f88	d5 	. 
	call sub_7ff2h		;9f89	cd f2 7f 	. .  
	ld a,(03ed1h)		;9f8c	3a d1 3e 	: . > 
	nop			;9f8f	00 	. 
	jr nz,l9f95h		;9f90	20 03 	  . 
	dec d			;9f92	15 	. 
	ld a,004h		;9f93	3e 04 	> . 
l9f95h:
	push de			;9f95	d5 	. 
	push af			;9f96	f5 	. 
	ld l,a			;9f97	6f 	o 
	ld h,000h		;9f98	26 00 	& . 
	ld de,la18ch		;9f9a	11 8c a1 	. . . 
	add hl,de			;9f9d	19 	. 
	cp 003h		;9f9e	fe 03 	. . 
	ld a,002h		;9fa0	3e 02 	> . 
	jr z,l9fa5h		;9fa2	28 01 	( . 
	xor a			;9fa4	af 	. 
l9fa5h:
	add a,(hl)			;9fa5	86 	. 
	cp 001h		;9fa6	fe 01 	. . 
	jr nz,l9fabh		;9fa8	20 01 	  . 
	inc a			;9faa	3c 	< 
l9fabh:
	ld c,a			;9fab	4f 	O 
	pop af			;9fac	f1 	. 
	pop de			;9fad	d1 	. 
	pop hl			;9fae	e1 	. 
	push hl			;9faf	e5 	. 
	push de			;9fb0	d5 	. 
	push af			;9fb1	f5 	. 
l9fb2h:
	ld de,(lb3c7h)		;9fb2	ed 5b c7 b3 	. [ . . 
	push hl			;9fb6	e5 	. 
	or a			;9fb7	b7 	. 
	sbc hl,de		;9fb8	ed 52 	. R 
	jr nc,l9fd2h		;9fba	30 16 	0 . 
	ex de,hl			;9fbc	eb 	. 
	ld a,(hl)			;9fbd	7e 	~ 
	ld (lb3a6h),a		;9fbe	32 a6 b3 	2 . . 
	ld l,a			;9fc1	6f 	o 
	ld h,000h		;9fc2	26 00 	& . 
	ld de,la18ch		;9fc4	11 8c a1 	. . . 
	add hl,de			;9fc7	19 	. 
	ld a,(hl)			;9fc8	7e 	~ 
	cp c			;9fc9	b9 	. 
	jr c,l9fd2h		;9fca	38 06 	8 . 
	call sub_a58eh		;9fcc	cd 8e a5 	. . . 
	pop hl			;9fcf	e1 	. 
	jr l9fb2h		;9fd0	18 e0 	. . 
l9fd2h:
	pop hl			;9fd2	e1 	. 
	ld a,(l6cb0h)		;9fd3	3a b0 6c 	: . l 
	ld c,a			;9fd6	4f 	O 
	ld b,000h		;9fd7	06 00 	. . 
	pop af			;9fd9	f1 	. 
	push af			;9fda	f5 	. 
	push bc			;9fdb	c5 	. 
	ld c,a			;9fdc	4f 	O 
	push bc			;9fdd	c5 	. 
	call sub_a431h		;9fde	cd 31 a4 	. 1 . 
	pop de			;9fe1	d1 	. 
	pop de			;9fe2	d1 	. 
	pop af			;9fe3	f1 	. 
	or a			;9fe4	b7 	. 
	jp nz,l9f40h		;9fe5	c2 40 9f 	. @ . 
	pop af			;9fe8	f1 	. 
	pop hl			;9fe9	e1 	. 
	ld hl,(lb3c7h)		;9fea	2a c7 b3 	* . . 
	dec hl			;9fed	2b 	+ 
	ld (lb3c7h),hl		;9fee	22 c7 b3 	" . . 
	pop bc			;9ff1	c1 	. 
	ret			;9ff2	c9 	. 
sub_9ff3h:
	ld hl,la181h		;9ff3	21 81 a1 	! . . 
	ld b,00ch		;9ff6	06 0c 	. . 
	call sub_7979h		;9ff8	cd 79 79 	. y y 
l9ffbh:
	cp (hl)			;9ffb	be 	. 
	jr z,la018h		;9ffc	28 1a 	( . 
	inc hl			;9ffe	23 	# 
	djnz l9ffbh		;9fff	10 fa 	. . 
	call sub_a03ch		;a001	cd 3c a0 	. < . 
	call sub_7ff2h		;a004	cd f2 7f 	. .  
	ld d,(hl)			;a007	56 	V 
	jr nz,la00eh		;a008	20 04 	  . 
	ld a,029h		;a00a	3e 29 	> ) 
	jr la015h		;a00c	18 07 	. . 
la00eh:
	call sub_7ff2h		;a00e	cd f2 7f 	. .  
	ld d,l			;a011	55 	U 
	ret nz			;a012	c0 	. 
	ld a,02ah		;a013	3e 2a 	> * 
la015h:
	jp sub_9ce5h		;a015	c3 e5 9c 	. . . 
la018h:
	ld a,02dh		;a018	3e 2d 	> - 
	sub b			;a01a	90 	. 
	push af			;a01b	f5 	. 
	call sub_796dh		;a01c	cd 6d 79 	. m y 
	pop af			;a01f	f1 	. 
	cp 02bh		;a020	fe 2b 	. + 
	jr nz,la037h		;a022	20 13 	  . 
	call 09ecbh		;a024	cd cb 9e 	. . . 
	ld hl,(lb3c7h)		;a027	2a c7 b3 	* . . 
	inc hl			;a02a	23 	# 
	ld de,(lb398h)		;a02b	ed 5b 98 b3 	. [ . . 
	ld (hl),e			;a02f	73 	s 
	inc hl			;a030	23 	# 
	ld (hl),d			;a031	72 	r 
	ld (lb3c7h),hl		;a032	22 c7 b3 	" . . 
	ld a,02bh		;a035	3e 2b 	> + 
la037h:
	call sub_9ce5h		;a037	cd e5 9c 	. . . 
	jr sub_9ff3h		;a03a	18 b7 	. . 
sub_a03ch:
	push bc			;a03c	c5 	. 
	push hl			;a03d	e5 	. 
	call sub_7979h		;a03e	cd 79 79 	. y y 
	ld de,(laf01h)		;a041	ed 5b 01 af 	. [ . . 
	cp 044h		;a045	fe 44 	. D 
	ld hl,lafb1h		;a047	21 b1 af 	! . . 
	jr z,la06ah		;a04a	28 1e 	( . 
	cp 027h		;a04c	fe 27 	. ' 
	ld hl,lafb6h		;a04e	21 b6 af 	! . . 
	jr z,la06ah		;a051	28 17 	( . 
	cp 022h		;a053	fe 22 	. " 
	ld hl,lafcah		;a055	21 ca af 	! . . 
	jr z,la06ah		;a058	28 10 	( . 
	cp 017h		;a05a	fe 17 	. . 
	jr z,la075h		;a05c	28 17 	( . 
	cp 028h		;a05e	fe 28 	. ( 
	jr z,la08ch		;a060	28 2a 	( * 
	cp 04ch		;a062	fe 4c 	. L 
	jr z,la098h		;a064	28 32 	( 2 
	call sub_ae66h		;a066	cd 66 ae 	. f . 
	inc h			;a069	24 	$ 
la06ah:
	ld a,001h		;a06a	3e 01 	> . 
	call sub_9be6h		;a06c	cd e6 9b 	. . . 
	call sub_796dh		;a06f	cd 6d 79 	. m y 
la072h:
	jp la110h		;a072	c3 10 a1 	. . . 
la075h:
	call sub_796dh		;a075	cd 6d 79 	. m y 
	call 09ecbh		;a078	cd cb 9e 	. . . 
	ld hl,(lb398h)		;a07b	2a 98 b3 	* . . 
	inc hl			;a07e	23 	# 
	ld e,(hl)			;a07f	5e 	^ 
	inc hl			;a080	23 	# 
	ld d,(hl)			;a081	56 	V 
	ld hl,lafb1h		;a082	21 b1 af 	! . . 
	ld a,001h		;a085	3e 01 	> . 
	call sub_9be6h		;a087	cd e6 9b 	. . . 
	jr la072h		;a08a	18 e6 	. . 
la08ch:
	call sub_796dh		;a08c	cd 6d 79 	. m y 
	call sub_9f39h		;a08f	cd 39 9f 	. 9 . 
	call sub_7fcah		;a092	cd ca 7f 	. .  
	add hl,hl			;a095	29 	) 
	jr la072h		;a096	18 da 	. . 
la098h:
	ex de,hl			;a098	eb 	. 
	call sub_8b55h		;a099	cd 55 8b 	. U . 
	ld a,l			;a09c	7d 	} 
	or h			;a09d	b4 	. 
	jr z,la0a7h		;a09e	28 07 	( . 
	pop de			;a0a0	d1 	. 
	push hl			;a0a1	e5 	. 
	call sub_796dh		;a0a2	cd 6d 79 	. m y 
	jr la0cah		;a0a5	18 23 	. # 
la0a7h:
	ld hl,00001h		;a0a7	21 01 00 	! . . 
	push hl			;a0aa	e5 	. 
	ld hl,lafcfh		;a0ab	21 cf af 	! . . 
	push hl			;a0ae	e5 	. 
	ld hl,00001h		;a0af	21 01 00 	! . . 
	push hl			;a0b2	e5 	. 
	ld hl,(laf01h)		;a0b3	2a 01 af 	* . . 
	push hl			;a0b6	e5 	. 
	call sub_8970h		;a0b7	cd 70 89 	. p . 
	pop de			;a0ba	d1 	. 
	push hl			;a0bb	e5 	. 
	call sub_796dh		;a0bc	cd 6d 79 	. m y 
	call sub_7979h		;a0bf	cd 79 79 	. y y 
	cp 028h		;a0c2	fe 28 	. ( 
	jr z,la0cah		;a0c4	28 04 	( . 
	call sub_ae66h		;a0c6	cd 66 ae 	. f . 
	dec h			;a0c9	25 	% 
la0cah:
	pop de			;a0ca	d1 	. 
	push de			;a0cb	d5 	. 
	call sub_895dh		;a0cc	cd 5d 89 	. ] . 
	jr c,la0dah		;a0cf	38 09 	8 . 
	ld a,(hl)			;a0d1	7e 	~ 
	cp 004h		;a0d2	fe 04 	. . 
	jr z,la0dah		;a0d4	28 04 	( . 
	ld a,00ah		;a0d6	3e 0a 	> . 
	jr la0dch		;a0d8	18 02 	. . 
la0dah:
	ld a,00ch		;a0da	3e 0c 	> . 
la0dch:
	pop hl			;a0dc	e1 	. 
	push hl			;a0dd	e5 	. 
	inc hl			;a0de	23 	# 
	ld e,(hl)			;a0df	5e 	^ 
	inc hl			;a0e0	23 	# 
	ld d,(hl)			;a0e1	56 	V 
	inc hl			;a0e2	23 	# 
	ld b,(hl)			;a0e3	46 	F 
	inc hl			;a0e4	23 	# 
	ld h,(hl)			;a0e5	66 	f 
	ld l,b			;a0e6	68 	h 
	call sub_9be6h		;a0e7	cd e6 9b 	. . . 
	call sub_9c28h		;a0ea	cd 28 9c 	. ( . 
	ld a,(lb39eh)		;a0ed	3a 9e b3 	: . . 
	cp 007h		;a0f0	fe 07 	. . 
	jr nz,la110h		;a0f2	20 1c 	  . 
	call sub_7979h		;a0f4	cd 79 79 	. y y 
	cp 028h		;a0f7	fe 28 	. ( 
	jr z,la110h		;a0f9	28 15 	( . 
	call sub_9c3dh		;a0fb	cd 3d 9c 	. = . 
	pop hl			;a0fe	e1 	. 
	push hl			;a0ff	e5 	. 
	ld a,(hl)			;a100	7e 	~ 
	cp 001h		;a101	fe 01 	. . 
	jr nz,la110h		;a103	20 0b 	  . 
	ex de,hl			;a105	eb 	. 
	ld hl,(lb3fbh)		;a106	2a fb b3 	* . . 
	ld (hl),010h		;a109	36 10 	6 . 
	inc de			;a10b	13 	. 
	inc hl			;a10c	23 	# 
	ld (hl),e			;a10d	73 	s 
	inc hl			;a10e	23 	# 
	ld (hl),d			;a10f	72 	r 
la110h:
	call sub_7ff2h		;a110	cd f2 7f 	. .  
	ld e,e			;a113	5b 	[ 
	jr z,la12bh		;a114	28 15 	( . 
	call sub_7ff2h		;a116	cd f2 7f 	. .  
	ld c,(hl)			;a119	4e 	N 
	jr z,la155h		;a11a	28 39 	( 9 
	call sub_7ff2h		;a11c	cd f2 7f 	. .  
	ld l,028h		;a11f	2e 28 	. ( 
	ld a,0cdh		;a121	3e cd 	> . 
	jp p,0287fh		;a123	f2 7f 28 	.  ( 
	jr z,la165h		;a126	28 3d 	( = 
	pop hl			;a128	e1 	. 
	pop bc			;a129	c1 	. 
	ret			;a12a	c9 	. 
la12bh:
	xor a			;a12b	af 	. 
	call sub_9ce5h		;a12c	cd e5 9c 	. . . 
	call sub_9f39h		;a12f	cd 39 9f 	. 9 . 
	call sub_7fcah		;a132	cd ca 7f 	. .  
	ld e,l			;a135	5d 	] 
	ld a,021h		;a136	3e 21 	> ! 
	call sub_9ce5h		;a138	cd e5 9c 	. . . 
	ld a,012h		;a13b	3e 12 	> . 
	call sub_9ce5h		;a13d	cd e5 9c 	. . . 
la140h:
	ld hl,(lb3c7h)		;a140	2a c7 b3 	* . . 
	ld a,(hl)			;a143	7e 	~ 
	ld (lb3a6h),a		;a144	32 a6 b3 	2 . . 
	or a			;a147	b7 	. 
	jr z,la14fh		;a148	28 05 	( . 
	call sub_a58eh		;a14a	cd 8e a5 	. . . 
	jr la140h		;a14d	18 f1 	. . 
la14fh:
	dec hl			;a14f	2b 	+ 
	ld (lb3c7h),hl		;a150	22 c7 b3 	" . . 
	jr la110h		;a153	18 bb 	. . 
la155h:
	ld a,021h		;a155	3e 21 	> ! 
	ld (lb3a6h),a		;a157	32 a6 b3 	2 . . 
	call sub_9ce5h		;a15a	cd e5 9c 	. . . 
	call sub_a58eh		;a15d	cd 8e a5 	. . . 
	call sub_9edfh		;a160	cd df 9e 	. . . 
	jr la110h		;a163	18 ab 	. . 
la165h:
	call sub_a2d5h		;a165	cd d5 a2 	. . . 
	jr la110h		;a168	18 a6 	. . 
la16ah:
	inc h			;a16a	24 	$ 
	inc h			;a16b	24 	$ 
	dec a			;a16c	3d 	= 
	ccf			;a16d	3f 	? 
	jr nz,la1c3h		;a16e	20 53 	  S 
	ld d,h			;a170	54 	T 
	ld e,b			;a171	58 	X 
	ld d,a			;a172	57 	W 
	inc a			;a173	3c 	< 
	ld a,052h		;a174	3e 52 	> R 
	ld d,b			;a176	50 	P 
	ld a,h			;a177	7c 	| 
	ld e,(hl)			;a178	5e 	^ 
	ld h,04fh		;a179	26 4f 	& O 
	ld d,c			;a17b	51 	Q 
	dec hl			;a17c	2b 	+ 
	dec l			;a17d	2d 	- 
	ld hl,(0252fh)		;a17e	2a 2f 25 	* / % 
la181h:
	ld hl,(02d26h)		;a181	2a 26 2d 	* & - 
	ld hl,0567eh		;a184	21 7e 56 	! ~ V 
	ld d,l			;a187	55 	U 
	jr nz,la1aah		;a188	20 20 	    
	jr nz,$+6		;a18a	20 04 	  . 
la18ch:
	nop			;a18c	00 	. 
	nop			;a18d	00 	. 
	ld bc,00302h		;a18e	01 02 03 	. . . 
	inc b			;a191	04 	. 
	dec b			;a192	05 	. 
	add hl,bc			;a193	09 	. 
	add hl,bc			;a194	09 	. 
	ld a,(bc)			;a195	0a 	. 
	ld a,(bc)			;a196	0a 	. 
	ld a,(bc)			;a197	0a 	. 
	ld a,(bc)			;a198	0a 	. 
	ld b,007h		;a199	06 07 	. . 
	ex af,af'			;a19b	08 	. 
	dec bc			;a19c	0b 	. 
	dec bc			;a19d	0b 	. 
	inc c			;a19e	0c 	. 
	inc c			;a19f	0c 	. 
	dec c			;a1a0	0d 	. 
	dec c			;a1a1	0d 	. 
	dec c			;a1a2	0d 	. 
	ld a,(bc)			;a1a3	0a 	. 
	ld a,(bc)			;a1a4	0a 	. 
	ld a,(bc)			;a1a5	0a 	. 
	ld a,(bc)			;a1a6	0a 	. 
	dec c			;a1a7	0d 	. 
	dec bc			;a1a8	0b 	. 
	inc c			;a1a9	0c 	. 
la1aah:
	inc c			;a1aa	0c 	. 
	nop			;a1ab	00 	. 
	nop			;a1ac	00 	. 
	ld c,00eh		;a1ad	0e 0e 	. . 
	ld c,00eh		;a1af	0e 0e 	. . 
	ld c,00eh		;a1b1	0e 0e 	. . 
	ld c,00eh		;a1b3	0e 0e 	. . 
	ld c,00eh		;a1b5	0e 0e 	. . 
	ld c,001h		;a1b7	0e 01 	. . 
	rrca			;a1b9	0f 	. 
sub_a1bah:
	ld hl,(lb3a6h)		;a1ba	2a a6 b3 	* . . 
	ld h,000h		;a1bd	26 00 	& . 
	ld de,sub_a1bah+1		;a1bf	11 bb a1 	. . . 
	add hl,hl			;a1c2	29 	) 
la1c3h:
	add hl,de			;a1c3	19 	. 
	ld e,(hl)			;a1c4	5e 	^ 
	inc hl			;a1c5	23 	# 
	ld d,(hl)			;a1c6	56 	V 
	ex de,hl			;a1c7	eb 	. 
	ret			;a1c8	c9 	. 
	ld l,c			;a1c9	69 	i 
	ld h,e			;a1ca	63 	c 
	ld (hl),d			;a1cb	72 	r 
	ld h,e			;a1cc	63 	c 
	ld a,d			;a1cd	7a 	z 
	ld h,e			;a1ce	63 	c 
	ld a,c			;a1cf	79 	y 
	ld h,e			;a1d0	63 	c 
	adc a,c			;a1d1	89 	. 
	ld h,e			;a1d2	63 	c 
	adc a,b			;a1d3	88 	. 
	ld h,e			;a1d4	63 	c 
	or e			;a1d5	b3 	. 
	ld h,d			;a1d6	62 	b 
	cp d			;a1d7	ba 	. 
	ld h,d			;a1d8	62 	b 
	pop bc			;a1d9	c1 	. 
	ld h,d			;a1da	62 	b 
	push de			;a1db	d5 	. 
	ld h,d			;a1dc	62 	b 
	ret z			;a1dd	c8 	. 
	ld h,d			;a1de	62 	b 
	jp z,0cc64h		;a1df	ca 64 cc 	. d . 
	ld h,h			;a1e2	64 	d 
	sbc hl,hl		;a1e3	ed 62 	. b 
	rla			;a1e5	17 	. 
	ld h,e			;a1e6	63 	c 
	ld e,c			;a1e7	59 	Y 
	ld h,e			;a1e8	63 	c 
	sub c			;a1e9	91 	. 
	ld h,e			;a1ea	63 	c 
	sub b			;a1eb	90 	. 
	ld h,e			;a1ec	63 	c 
la1edh:
	sbc a,b			;a1ed	98 	. 
	ld h,e			;a1ee	63 	c 
	sub a			;a1ef	97 	. 
	ld h,e			;a1f0	63 	c 
	ld sp,0cd63h		;a1f1	31 63 cd 	1 c . 
	ld h,d			;a1f4	62 	b 
	jp z,0cc64h		;a1f5	ca 64 cc 	. d . 
	ld h,h			;a1f8	64 	d 
	ld e,(hl)			;a1f9	5e 	^ 
	ld h,e			;a1fa	63 	c 
	jr nz,la1edh		;a1fb	20 f0 	  . 
	ld hl,022f0h		;a1fd	21 f0 22 	! . " 
	ret p			;a200	f0 	. 
	defb 0ddh,062h,0e5h	;illegal sequence		;a201	dd 62 e5 	. b . 
	ld h,d			;a204	62 	b 
	sbc a,062h		;a205	de 62 	. b 
sub_a207h:
	push bc			;a207	c5 	. 
	ld hl,la21dh		;a208	21 1d a2 	! . . 
	push hl			;a20b	e5 	. 
	call sub_a1bah		;a20c	cd ba a1 	. . . 
	push hl			;a20f	e5 	. 
	ld hl,(lb3ffh)		;a210	2a ff b3 	* . . 
	inc hl			;a213	23 	# 
	ld e,(hl)			;a214	5e 	^ 
	inc hl			;a215	23 	# 
	ld d,(hl)			;a216	56 	V 
	ld hl,(lb3fdh)		;a217	2a fd b3 	* . . 
	jp sub_9e82h		;a21a	c3 82 9e 	. . . 
la21dh:
	push hl			;a21d	e5 	. 
	call sub_9c6ch		;a21e	cd 6c 9c 	. l . 
	ld a,(lb3a3h)		;a221	3a a3 b3 	: . . 
	or a			;a224	b7 	. 
	jr z,la23eh		;a225	28 17 	( . 
	ld hl,(lb3fbh)		;a227	2a fb b3 	* . . 
	inc hl			;a22a	23 	# 
	inc hl			;a22b	23 	# 
	inc hl			;a22c	23 	# 
	ld e,(hl)			;a22d	5e 	^ 
	ld (hl),0b1h		;a22e	36 b1 	6 . 
	inc hl			;a230	23 	# 
	ld d,(hl)			;a231	56 	V 
	ld (hl),0b0h		;a232	36 b0 	6 . 
	ex de,hl			;a234	eb 	. 
	inc hl			;a235	23 	# 
	ld e,(hl)			;a236	5e 	^ 
	inc hl			;a237	23 	# 
	ld d,(hl)			;a238	56 	V 
	pop hl			;a239	e1 	. 
	call sub_6317h		;a23a	cd 17 63 	. . c 
	push hl			;a23d	e5 	. 
la23eh:
	ld hl,(lb3fbh)		;a23e	2a fb b3 	* . . 
	ld (hl),001h		;a241	36 01 	6 . 
	inc hl			;a243	23 	# 
	pop de			;a244	d1 	. 
	ld (hl),e			;a245	73 	s 
	inc hl			;a246	23 	# 
	ld (hl),d			;a247	72 	r 
	pop bc			;a248	c1 	. 
	ret			;a249	c9 	. 
la24ah:
	push bc			;a24a	c5 	. 
	ld hl,0fffeh		;a24b	21 fe ff 	! . . 
	add hl,sp			;a24e	39 	9 
	ld sp,hl			;a24f	f9 	. 
	ld b,h			;a250	44 	D 
	ld c,l			;a251	4d 	M 
	call sub_7510h		;a252	cd 10 75 	. . u 
	ex af,af'			;a255	08 	. 
	ld a,h			;a256	7c 	| 
	or l			;a257	b5 	. 
	jp z,la261h		;a258	ca 61 a2 	. a . 
	ld hl,sub_9503h		;a25b	21 03 95 	! . . 
	jp la264h		;a25e	c3 64 a2 	. d . 
la261h:
	ld hl,sub_94a4h		;a261	21 a4 94 	! . . 
la264h:
	ex de,hl			;a264	eb 	. 
	ld h,b			;a265	60 	` 
	ld l,c			;a266	69 	i 
	ld (hl),e			;a267	73 	s 
	inc hl			;a268	23 	# 
	ld (hl),d			;a269	72 	r 
	ld hl,0007dh		;a26a	21 7d 00 	! } . 
	push hl			;a26d	e5 	. 
	call sub_ad34h		;a26e	cd 34 ad 	. 4 . 
	pop de			;a271	d1 	. 
	ld hl,000b4h		;a272	21 b4 00 	! . . 
	push hl			;a275	e5 	. 
	call sub_ad34h		;a276	cd 34 ad 	. 4 . 
	pop de			;a279	d1 	. 
	call sub_7510h		;a27a	cd 10 75 	. . u 
	ld b,07ch		;a27d	06 7c 	. | 
	or l			;a27f	b5 	. 
	jp z,la2a9h		;a280	ca a9 a2 	. . . 
	call sub_7510h		;a283	cd 10 75 	. . u 
	nop			;a286	00 	. 
	push hl			;a287	e5 	. 
	call sub_7510h		;a288	cd 10 75 	. . u 
	ld a,(bc)			;a28b	0a 	. 
	push hl			;a28c	e5 	. 
	ld hl,000c2h		;a28d	21 c2 00 	! . . 
	push hl			;a290	e5 	. 
	ld hl,00020h		;a291	21 20 00 	!   . 
	push hl			;a294	e5 	. 
	ld hl,la2a2h		;a295	21 a2 a2 	! . . 
	push hl			;a298	e5 	. 
	ld hl,00008h		;a299	21 08 00 	! . . 
	add hl,sp			;a29c	39 	9 
	ld a,(hl)			;a29d	7e 	~ 
	inc hl			;a29e	23 	# 
	ld h,(hl)			;a29f	66 	f 
	ld l,a			;a2a0	6f 	o 
	jp (hl)			;a2a1	e9 	. 
la2a2h:
	pop de			;a2a2	d1 	. 
	pop de			;a2a3	d1 	. 
	pop de			;a2a4	d1 	. 
	pop de			;a2a5	d1 	. 
	jp la2cch		;a2a6	c3 cc a2 	. . . 
la2a9h:
	call sub_7510h		;a2a9	cd 10 75 	. . u 
	nop			;a2ac	00 	. 
	push hl			;a2ad	e5 	. 
	call sub_7510h		;a2ae	cd 10 75 	. . u 
	ld a,(bc)			;a2b1	0a 	. 
	push hl			;a2b2	e5 	. 
	ld hl,000cah		;a2b3	21 ca 00 	! . . 
	push hl			;a2b6	e5 	. 
	ld hl,00028h		;a2b7	21 28 00 	! ( . 
	push hl			;a2ba	e5 	. 
	ld hl,la2c8h		;a2bb	21 c8 a2 	! . . 
	push hl			;a2be	e5 	. 
	ld hl,00008h		;a2bf	21 08 00 	! . . 
	add hl,sp			;a2c2	39 	9 
	ld a,(hl)			;a2c3	7e 	~ 
	inc hl			;a2c4	23 	# 
	ld h,(hl)			;a2c5	66 	f 
	ld l,a			;a2c6	6f 	o 
	jp (hl)			;a2c7	e9 	. 
la2c8h:
	pop de			;a2c8	d1 	. 
	pop de			;a2c9	d1 	. 
	pop de			;a2ca	d1 	. 
	pop de			;a2cb	d1 	. 
la2cch:
	ex de,hl			;a2cc	eb 	. 
	ld hl,00002h		;a2cd	21 02 00 	! . . 
	add hl,sp			;a2d0	39 	9 
	ld sp,hl			;a2d1	f9 	. 
	ex de,hl			;a2d2	eb 	. 
	pop bc			;a2d3	c1 	. 
	ret			;a2d4	c9 	. 
sub_a2d5h:
	push bc			;a2d5	c5 	. 
	ld hl,0fffeh		;a2d6	21 fe ff 	! . . 
	add hl,sp			;a2d9	39 	9 
	ld sp,hl			;a2da	f9 	. 
	ld b,h			;a2db	44 	D 
	ld c,l			;a2dc	4d 	M 
	ld hl,(lb39eh)		;a2dd	2a 9e b3 	* . . 
	ld a,l			;a2e0	7d 	} 
	cp 007h		;a2e1	fe 07 	. . 
	jp z,la2eeh		;a2e3	ca ee a2 	. . . 
	ld hl,00028h		;a2e6	21 28 00 	! ( . 
	push hl			;a2e9	e5 	. 
	call sub_aec5h		;a2ea	cd c5 ae 	. . . 
	pop de			;a2ed	d1 	. 
la2eeh:
	ld h,b			;a2ee	60 	` 
	ld l,c			;a2ef	69 	i 
	ld (hl),002h		;a2f0	36 02 	6 . 
	inc hl			;a2f2	23 	# 
	ld (hl),000h		;a2f3	36 00 	6 . 
	call sub_9c12h		;a2f5	cd 12 9c 	. . . 
	ld a,h			;a2f8	7c 	| 
	or l			;a2f9	b5 	. 
	jp nz,la309h		;a2fa	c2 09 a3 	. . . 
	call sub_7972h		;a2fd	cd 72 79 	. r y 
	ld de,0ffd7h		;a300	11 d7 ff 	. . . 
	add hl,de			;a303	19 	. 
	ld a,h			;a304	7c 	| 
	or l			;a305	b5 	. 
	jp z,la30ch		;a306	ca 0c a3 	. . . 
la309h:
	call sub_99f7h		;a309	cd f7 99 	. . . 
la30ch:
	call sub_7972h		;a30c	cd 72 79 	. r y 
	ld de,0ffd7h		;a30f	11 d7 ff 	. . . 
	add hl,de			;a312	19 	. 
	ld a,h			;a313	7c 	| 
	or l			;a314	b5 	. 
	jp z,la346h		;a315	ca 46 a3 	. F . 
la318h:
	call sub_9f39h		;a318	cd 39 9f 	. 9 . 
	call sub_9a0fh		;a31b	cd 0f 9a 	. . . 
	ld hl,(lb3fbh)		;a31e	2a fb b3 	* . . 
	ld de,0fffbh		;a321	11 fb ff 	. . . 
	add hl,de			;a324	19 	. 
	ld (lb3fbh),hl		;a325	22 fb b3 	" . . 
	ld h,b			;a328	60 	` 
	ld l,c			;a329	69 	i 
	push hl			;a32a	e5 	. 
	ld a,(hl)			;a32b	7e 	~ 
	inc hl			;a32c	23 	# 
	ld h,(hl)			;a32d	66 	f 
	ld l,a			;a32e	6f 	o 
	inc hl			;a32f	23 	# 
	inc hl			;a330	23 	# 
	ex de,hl			;a331	eb 	. 
	pop hl			;a332	e1 	. 
	ld (hl),e			;a333	73 	s 
	inc hl			;a334	23 	# 
	ld (hl),d			;a335	72 	r 
	call sub_99f7h		;a336	cd f7 99 	. . . 
	ld hl,0002ch		;a339	21 2c 00 	! , . 
	push hl			;a33c	e5 	. 
	call sub_7fdfh		;a33d	cd df 7f 	. .  
	pop de			;a340	d1 	. 
	ld a,h			;a341	7c 	| 
	or l			;a342	b5 	. 
	jp nz,la318h		;a343	c2 18 a3 	. . . 
la346h:
	ld hl,00029h		;a346	21 29 00 	! ) . 
	push hl			;a349	e5 	. 
	call sub_7fa9h		;a34a	cd a9 7f 	. .  
	pop de			;a34d	d1 	. 
	call sub_9c12h		;a34e	cd 12 9c 	. . . 
	ld a,h			;a351	7c 	| 
	or l			;a352	b5 	. 
	jp z,la383h		;a353	ca 83 a3 	. . . 
	call sub_7510h		;a356	cd 10 75 	. . u 
	ld b,06eh		;a359	06 6e 	. n 
	ld a,l			;a35b	7d 	} 
	cp 00dh		;a35c	fe 0d 	. . 
	jp nz,la377h		;a35e	c2 77 a3 	. w . 
	call sub_7510h		;a361	cd 10 75 	. . u 
	nop			;a364	00 	. 
	push hl			;a365	e5 	. 
	ld hl,00001h		;a366	21 01 00 	! . . 
	push hl			;a369	e5 	. 
	call sub_ad77h		;a36a	cd 77 ad 	. w . 
	pop de			;a36d	d1 	. 
	pop de			;a36e	d1 	. 
	ld hl,000c5h		;a36f	21 c5 00 	! . . 
	push hl			;a372	e5 	. 
	call sub_ad34h		;a373	cd 34 ad 	. 4 . 
	pop de			;a376	d1 	. 
la377h:
	call sub_7510h		;a377	cd 10 75 	. . u 
	ld b,0e5h		;a37a	06 e5 	. . 
	call sub_95d4h		;a37c	cd d4 95 	. . . 
	pop de			;a37f	d1 	. 
	jp la403h		;a380	c3 03 a4 	. . . 
la383h:
	call sub_7510h		;a383	cd 10 75 	. . u 
	nop			;a386	00 	. 
	dec hl			;a387	2b 	+ 
	dec hl			;a388	2b 	+ 
	ld a,h			;a389	7c 	| 
	or l			;a38a	b5 	. 
	jp z,la3aeh		;a38b	ca ae a3 	. . . 
	call sub_7510h		;a38e	cd 10 75 	. . u 
	nop			;a391	00 	. 
	dec hl			;a392	2b 	+ 
	dec hl			;a393	2b 	+ 
	push hl			;a394	e5 	. 
	ld hl,00021h		;a395	21 21 00 	! ! . 
	push hl			;a398	e5 	. 
	call sub_ad77h		;a399	cd 77 ad 	. w . 
	pop de			;a39c	d1 	. 
	pop de			;a39d	d1 	. 
	ld hl,00039h		;a39e	21 39 00 	! 9 . 
	push hl			;a3a1	e5 	. 
	call sub_ad34h		;a3a2	cd 34 ad 	. 4 . 
	pop de			;a3a5	d1 	. 
	ld hl,00001h		;a3a6	21 01 00 	! . . 
	push hl			;a3a9	e5 	. 
	call sub_ae09h		;a3aa	cd 09 ae 	. . . 
	pop de			;a3ad	d1 	. 
la3aeh:
	call sub_7510h		;a3ae	cd 10 75 	. . u 
	ld b,06eh		;a3b1	06 6e 	. n 
	ld a,l			;a3b3	7d 	} 
	cp 00dh		;a3b4	fe 0d 	. . 
	jp nz,la3cfh		;a3b6	c2 cf a3 	. . . 
	call sub_7510h		;a3b9	cd 10 75 	. . u 
	nop			;a3bc	00 	. 
	push hl			;a3bd	e5 	. 
	ld hl,00001h		;a3be	21 01 00 	! . . 
	push hl			;a3c1	e5 	. 
	call sub_ad77h		;a3c2	cd 77 ad 	. w . 
	pop de			;a3c5	d1 	. 
	pop de			;a3c6	d1 	. 
	ld hl,000c5h		;a3c7	21 c5 00 	! . . 
	push hl			;a3ca	e5 	. 
	call sub_ad34h		;a3cb	cd 34 ad 	. 4 . 
	pop de			;a3ce	d1 	. 
la3cfh:
	call sub_ad25h		;a3cf	cd 25 ad 	. % . 
	ld de,00005h		;a3d2	11 05 00 	. . . 
	add hl,de			;a3d5	19 	. 
	push hl			;a3d6	e5 	. 
	ld hl,00011h		;a3d7	21 11 00 	! . . 
	push hl			;a3da	e5 	. 
	call sub_ad77h		;a3db	cd 77 ad 	. w . 
	pop de			;a3de	d1 	. 
	pop de			;a3df	d1 	. 
	ld hl,000d5h		;a3e0	21 d5 00 	! . . 
	push hl			;a3e3	e5 	. 
	call sub_ad34h		;a3e4	cd 34 ad 	. 4 . 
	pop de			;a3e7	d1 	. 
	ld hl,000e9h		;a3e8	21 e9 00 	! . . 
	push hl			;a3eb	e5 	. 
	call sub_ad34h		;a3ec	cd 34 ad 	. 4 . 
	pop de			;a3ef	d1 	. 
	call sub_7510h		;a3f0	cd 10 75 	. . u 
	nop			;a3f3	00 	. 
	dec hl			;a3f4	2b 	+ 
	dec hl			;a3f5	2b 	+ 
	ld a,h			;a3f6	7c 	| 
	or l			;a3f7	b5 	. 
	jp z,la403h		;a3f8	ca 03 a4 	. . . 
	ld hl,000d1h		;a3fb	21 d1 00 	! . . 
	push hl			;a3fe	e5 	. 
	call sub_ad34h		;a3ff	cd 34 ad 	. 4 . 
	pop de			;a402	d1 	. 
la403h:
	call sub_9c60h		;a403	cd 60 9c 	. ` . 
	ld hl,(lb3fbh)		;a406	2a fb b3 	* . . 
	inc hl			;a409	23 	# 
	inc hl			;a40a	23 	# 
	inc hl			;a40b	23 	# 
	push hl			;a40c	e5 	. 
	ld hl,(lb3fbh)		;a40d	2a fb b3 	* . . 
	inc hl			;a410	23 	# 
	inc hl			;a411	23 	# 
	inc hl			;a412	23 	# 
	ld a,(hl)			;a413	7e 	~ 
	inc hl			;a414	23 	# 
	ld h,(hl)			;a415	66 	f 
	ld l,a			;a416	6f 	o 
	inc hl			;a417	23 	# 
	inc hl			;a418	23 	# 
	inc hl			;a419	23 	# 
	ld a,(hl)			;a41a	7e 	~ 
	inc hl			;a41b	23 	# 
	ld h,(hl)			;a41c	66 	f 
	ld l,a			;a41d	6f 	o 
	ex de,hl			;a41e	eb 	. 
	pop hl			;a41f	e1 	. 
	ld (hl),e			;a420	73 	s 
	inc hl			;a421	23 	# 
	ld (hl),d			;a422	72 	r 
	ld a,001h		;a423	3e 01 	> . 
	ld (lb3a2h),a		;a425	32 a2 b3 	2 . . 
	ex de,hl			;a428	eb 	. 
	ld hl,00002h		;a429	21 02 00 	! . . 
	add hl,sp			;a42c	39 	9 
	ld sp,hl			;a42d	f9 	. 
	ex de,hl			;a42e	eb 	. 
	pop bc			;a42f	c1 	. 
	ret			;a430	c9 	. 
sub_a431h:
	push bc			;a431	c5 	. 
	ld hl,0fffch		;a432	21 fc ff 	! . . 
	add hl,sp			;a435	39 	9 
	ld sp,hl			;a436	f9 	. 
	ld b,h			;a437	44 	D 
	ld c,l			;a438	4d 	M 
	call sub_7510h		;a439	cd 10 75 	. . u 
	ex af,af'			;a43c	08 	. 
	ld a,003h		;a43d	3e 03 	> . 
	cp l			;a43f	bd 	. 
	jp nz,la449h		;a440	c2 49 a4 	. I . 
	ld a,000h		;a443	3e 00 	> . 
	cp h			;a445	bc 	. 
	jp z,la47ch		;a446	ca 7c a4 	. | . 
la449h:
	ld a,006h		;a449	3e 06 	> . 
	cp l			;a44b	bd 	. 
	jp nz,la455h		;a44c	c2 55 a4 	. U . 
	ld a,000h		;a44f	3e 00 	> . 
	cp h			;a451	bc 	. 
	jp z,la47ch		;a452	ca 7c a4 	. | . 
la455h:
	ld a,005h		;a455	3e 05 	> . 
	cp l			;a457	bd 	. 
	jp nz,la461h		;a458	c2 61 a4 	. a . 
	ld a,000h		;a45b	3e 00 	> . 
	cp h			;a45d	bc 	. 
	jp z,la47ch		;a45e	ca 7c a4 	. | . 
la461h:
	ld a,004h		;a461	3e 04 	> . 
	cp l			;a463	bd 	. 
	jp nz,la46dh		;a464	c2 6d a4 	. m . 
	ld a,000h		;a467	3e 00 	> . 
	cp h			;a469	bc 	. 
	jp z,la4c8h		;a46a	ca c8 a4 	. . . 
la46dh:
	ld a,002h		;a46d	3e 02 	> . 
	cp l			;a46f	bd 	. 
	jp nz,la479h		;a470	c2 79 a4 	. y . 
	ld a,000h		;a473	3e 00 	> . 
	cp h			;a475	bc 	. 
	jp z,la521h		;a476	ca 21 a5 	. ! . 
la479h:
	jp la57ch		;a479	c3 7c a5 	. | . 
la47ch:
	ld hl,(lb3c7h)		;a47c	2a c7 b3 	* . . 
	inc hl			;a47f	23 	# 
	ld (lb3c7h),hl		;a480	22 c7 b3 	" . . 
	ld hl,(lb3c7h)		;a483	2a c7 b3 	* . . 
	inc hl			;a486	23 	# 
	push hl			;a487	e5 	. 
	ld hl,(lb3c7h)		;a488	2a c7 b3 	* . . 
	ld e,000h		;a48b	1e 00 	. . 
	ld (hl),e			;a48d	73 	s 
	pop hl			;a48e	e1 	. 
	ld (hl),e			;a48f	73 	s 
	call sub_9a0fh		;a490	cd 0f 9a 	. . . 
	ld hl,(lb3c7h)		;a493	2a c7 b3 	* . . 
	push hl			;a496	e5 	. 
	ld hl,00001h		;a497	21 01 00 	! . . 
	push hl			;a49a	e5 	. 
	call sub_7510h		;a49b	cd 10 75 	. . u 
	ex af,af'			;a49e	08 	. 
	ld de,0fffbh		;a49f	11 fb ff 	. . . 
	add hl,de			;a4a2	19 	. 
	ld a,h			;a4a3	7c 	| 
	or l			;a4a4	b5 	. 
	call sub_751dh		;a4a5	cd 1d 75 	. . u 
	push hl			;a4a8	e5 	. 
	call la24ah		;a4a9	cd 4a a2 	. J . 
	pop de			;a4ac	d1 	. 
	pop de			;a4ad	d1 	. 
	pop de			;a4ae	d1 	. 
	ld a,000h		;a4af	3e 00 	> . 
	ld (lb3a2h),a		;a4b1	32 a2 b3 	2 . . 
	ld hl,(lb3c7h)		;a4b4	2a c7 b3 	* . . 
	inc hl			;a4b7	23 	# 
	ld (lb3c7h),hl		;a4b8	22 c7 b3 	" . . 
	ld hl,(lb3fbh)		;a4bb	2a fb b3 	* . . 
	ld de,0fffbh		;a4be	11 fb ff 	. . . 
	add hl,de			;a4c1	19 	. 
	ld (lb3fbh),hl		;a4c2	22 fb b3 	" . . 
	jp la57ch		;a4c5	c3 7c a5 	. | . 
la4c8h:
	ld hl,(lb3c7h)		;a4c8	2a c7 b3 	* . . 
	ld l,(hl)			;a4cb	6e 	n 
	ld a,l			;a4cc	7d 	} 
	cp 003h		;a4cd	fe 03 	. . 
	jp z,la4dah		;a4cf	ca da a4 	. . . 
	ld hl,00029h		;a4d2	21 29 00 	! ) . 
	push hl			;a4d5	e5 	. 
	call sub_aec5h		;a4d6	cd c5 ae 	. . . 
	pop de			;a4d9	d1 	. 
la4dah:
	call sub_9a0fh		;a4da	cd 0f 9a 	. . . 
	ld a,000h		;a4dd	3e 00 	> . 
	ld (lb3a2h),a		;a4df	32 a2 b3 	2 . . 
	ld hl,(lb3c7h)		;a4e2	2a c7 b3 	* . . 
	dec hl			;a4e5	2b 	+ 
	dec hl			;a4e6	2b 	+ 
	ex de,hl			;a4e7	eb 	. 
	ld h,b			;a4e8	60 	` 
	ld l,c			;a4e9	69 	i 
	ld (hl),e			;a4ea	73 	s 
	inc hl			;a4eb	23 	# 
	ld (hl),d			;a4ec	72 	r 
	call sub_7510h		;a4ed	cd 10 75 	. . u 
	nop			;a4f0	00 	. 
	ld a,(hl)			;a4f1	7e 	~ 
	inc hl			;a4f2	23 	# 
	ld h,(hl)			;a4f3	66 	f 
	ld l,a			;a4f4	6f 	o 
	ex de,hl			;a4f5	eb 	. 
	ld hl,00002h		;a4f6	21 02 00 	! . . 
	add hl,bc			;a4f9	09 	. 
	ld (hl),e			;a4fa	73 	s 
	inc hl			;a4fb	23 	# 
	ld (hl),d			;a4fc	72 	r 
	call sub_7510h		;a4fd	cd 10 75 	. . u 
	nop			;a500	00 	. 
	xor a			;a501	af 	. 
	ld (hl),a			;a502	77 	w 
	inc hl			;a503	23 	# 
	ld (hl),a			;a504	77 	w 
	call sub_7510h		;a505	cd 10 75 	. . u 
	nop			;a508	00 	. 
	push hl			;a509	e5 	. 
	call sub_9487h		;a50a	cd 87 94 	. . . 
	pop de			;a50d	d1 	. 
	ld hl,00002h		;a50e	21 02 00 	! . . 
	add hl,bc			;a511	09 	. 
	push hl			;a512	e5 	. 
	call sub_954eh		;a513	cd 4e 95 	. N . 
	pop de			;a516	d1 	. 
	ld hl,(lb3c7h)		;a517	2a c7 b3 	* . . 
	dec hl			;a51a	2b 	+ 
	ld (lb3c7h),hl		;a51b	22 c7 b3 	" . . 
	jp la57ch		;a51e	c3 7c a5 	. | . 
la521h:
	call sub_9c0dh		;a521	cd 0d 9c 	. . . 
	ld a,h			;a524	7c 	| 
	or l			;a525	b5 	. 
	jp nz,la531h		;a526	c2 31 a5 	. 1 . 
	ld hl,0002ah		;a529	21 2a 00 	! * . 
	push hl			;a52c	e5 	. 
	call sub_aec5h		;a52d	cd c5 ae 	. . . 
	pop de			;a530	d1 	. 
la531h:
	call sub_7510h		;a531	cd 10 75 	. . u 
	ld a,(bc)			;a534	0a 	. 
	ld a,h			;a535	7c 	| 
	or l			;a536	b5 	. 
	jp z,la579h		;a537	ca 79 a5 	. y . 
	call sub_9c12h		;a53a	cd 12 9c 	. . . 
	ld a,h			;a53d	7c 	| 
	or l			;a53e	b5 	. 
	jp nz,la552h		;a53f	c2 52 a5 	. R . 
	call sub_9c17h		;a542	cd 17 9c 	. . . 
	ld a,h			;a545	7c 	| 
	or l			;a546	b5 	. 
	jp nz,la552h		;a547	c2 52 a5 	. R . 
	ld hl,000e5h		;a54a	21 e5 00 	! . . 
	push hl			;a54d	e5 	. 
	call sub_ad34h		;a54e	cd 34 ad 	. 4 . 
	pop de			;a551	d1 	. 
la552h:
	call sub_9baah		;a552	cd aa 9b 	. . . 
	ld hl,(lb3fbh)		;a555	2a fb b3 	* . . 
	push hl			;a558	e5 	. 
	ld hl,(lb3fdh)		;a559	2a fd b3 	* . . 
	push hl			;a55c	e5 	. 
	ld hl,00005h		;a55d	21 05 00 	! . . 
	push hl			;a560	e5 	. 
	call sub_ac76h		;a561	cd 76 ac 	. v . 
	pop de			;a564	d1 	. 
	pop de			;a565	d1 	. 
	pop de			;a566	d1 	. 
	call sub_7510h		;a567	cd 10 75 	. . u 
	ld a,(bc)			;a56a	0a 	. 
	push hl			;a56b	e5 	. 
	call sub_9cafh		;a56c	cd af 9c 	. . . 
	pop de			;a56f	d1 	. 
	ld hl,00008h		;a570	21 08 00 	! . . 
	add hl,bc			;a573	09 	. 
	ld (hl),02ch		;a574	36 2c 	6 , 
	inc hl			;a576	23 	# 
	ld (hl),000h		;a577	36 00 	6 . 
la579h:
	jp la57ch		;a579	c3 7c a5 	. | . 
la57ch:
	call sub_7510h		;a57c	cd 10 75 	. . u 
	ex af,af'			;a57f	08 	. 
	push hl			;a580	e5 	. 
	call sub_9cafh		;a581	cd af 9c 	. . . 
	pop de			;a584	d1 	. 
	ex de,hl			;a585	eb 	. 
	ld hl,00004h		;a586	21 04 00 	! . . 
	add hl,sp			;a589	39 	9 
	ld sp,hl			;a58a	f9 	. 
	ex de,hl			;a58b	eb 	. 
	pop bc			;a58c	c1 	. 
	ret			;a58d	c9 	. 
sub_a58eh:
	push bc			;a58e	c5 	. 
	call sub_9b8eh		;a58f	cd 8e 9b 	. . . 
	ld hl,(lb3a6h)		;a592	2a a6 b3 	* . . 
	ld h,000h		;a595	26 00 	& . 
	ld de,0ffdfh		;a597	11 df ff 	. . . 
	add hl,de			;a59a	19 	. 
	ld a,h			;a59b	7c 	| 
	rla			;a59c	17 	. 
	jp nc,la5a6h		;a59d	d2 a6 a5 	. . . 
	call sub_9d1fh		;a5a0	cd 1f 9d 	. . . 
	jp la5a9h		;a5a3	c3 a9 a5 	. . . 
la5a6h:
	call sub_9e89h		;a5a6	cd 89 9e 	. . . 
la5a9h:
	ld hl,(lb3a6h)		;a5a9	2a a6 b3 	* . . 
	ld h,000h		;a5ac	26 00 	& . 
	ld de,0ffdfh		;a5ae	11 df ff 	. . . 
	add hl,de			;a5b1	19 	. 
	ld a,h			;a5b2	7c 	| 
	rla			;a5b3	17 	. 
	jp nc,la5e7h		;a5b4	d2 e7 a5 	. . . 
	ld hl,(lb3a6h)		;a5b7	2a a6 b3 	* . . 
	ld h,000h		;a5ba	26 00 	& . 
	ld de,0fff9h		;a5bc	11 f9 ff 	. . . 
	add hl,de			;a5bf	19 	. 
	ld a,h			;a5c0	7c 	| 
	rla			;a5c1	17 	. 
	jp c,la5e7h		;a5c2	da e7 a5 	. . . 
	ld hl,(lb3fdh)		;a5c5	2a fd b3 	* . . 
	ld l,(hl)			;a5c8	6e 	n 
	ld h,000h		;a5c9	26 00 	& . 
	ld de,00001h		;a5cb	11 01 00 	. . . 
	ld a,h			;a5ce	7c 	| 
	and d			;a5cf	a2 	. 
	ld h,a			;a5d0	67 	g 
	ld a,l			;a5d1	7d 	} 
	and e			;a5d2	a3 	. 
	ld l,a			;a5d3	6f 	o 
	ld a,h			;a5d4	7c 	| 
	or l			;a5d5	b5 	. 
	jp z,la5e7h		;a5d6	ca e7 a5 	. . . 
	call sub_9c1ch		;a5d9	cd 1c 9c 	. . . 
	ld a,h			;a5dc	7c 	| 
	or l			;a5dd	b5 	. 
	jp z,la5e7h		;a5de	ca e7 a5 	. . . 
	call sub_a207h		;a5e1	cd 07 a2 	. . . 
	jp la5fdh		;a5e4	c3 fd a5 	. . . 
la5e7h:
	ld hl,(lb3a4h)		;a5e7	2a a4 b3 	* . . 
	ld a,l			;a5ea	7d 	} 
	or a			;a5eb	b7 	. 
	jp z,la5fah		;a5ec	ca fa a5 	. . . 
	ld hl,0002eh		;a5ef	21 2e 00 	! . . 
	push hl			;a5f2	e5 	. 
	call sub_aec5h		;a5f3	cd c5 ae 	. . . 
	pop de			;a5f6	d1 	. 
	jp la5fdh		;a5f7	c3 fd a5 	. . . 
la5fah:
	call sub_a609h		;a5fa	cd 09 a6 	. . . 
la5fdh:
	ld hl,(lb3c7h)		;a5fd	2a c7 b3 	* . . 
	dec hl			;a600	2b 	+ 
	ld (lb3c7h),hl		;a601	22 c7 b3 	" . . 
	call sub_aeeeh		;a604	cd ee ae 	. . . 
	pop bc			;a607	c1 	. 
	ret			;a608	c9 	. 
sub_a609h:
	push bc			;a609	c5 	. 
	ld hl,0fffch		;a60a	21 fc ff 	! . . 
	add hl,sp			;a60d	39 	9 
	ld sp,hl			;a60e	f9 	. 
	ld b,h			;a60f	44 	D 
	ld c,l			;a610	4d 	M 
la611h:
	ld hl,(lb3a6h)		;a611	2a a6 b3 	* . . 
	ld a,l			;a614	7d 	} 
	cp 016h		;a615	fe 16 	. . 
	jp z,la6e5h		;a617	ca e5 a6 	. . . 
	cp 01fh		;a61a	fe 1f 	. . 
	jp z,la6e5h		;a61c	ca e5 a6 	. . . 
	cp 015h		;a61f	fe 15 	. . 
	jp z,la6e5h		;a621	ca e5 a6 	. . . 
	cp 01bh		;a624	fe 1b 	. . 
	jp z,la6e5h		;a626	ca e5 a6 	. . . 
	cp 00dh		;a629	fe 0d 	. . 
	jp z,la6e5h		;a62b	ca e5 a6 	. . . 
	cp 00eh		;a62e	fe 0e 	. . 
	jp z,la6e5h		;a630	ca e5 a6 	. . . 
	cp 00fh		;a633	fe 0f 	. . 
	jp z,la6e5h		;a635	ca e5 a6 	. . . 
	cp 009h		;a638	fe 09 	. . 
	jp z,la6e5h		;a63a	ca e5 a6 	. . . 
	cp 00ah		;a63d	fe 0a 	. . 
	jp z,la6e5h		;a63f	ca e5 a6 	. . . 
	cp 00bh		;a642	fe 0b 	. . 
	jp z,la6e5h		;a644	ca e5 a6 	. . . 
	cp 00ch		;a647	fe 0c 	. . 
	jp z,la6e5h		;a649	ca e5 a6 	. . . 
	cp 017h		;a64c	fe 17 	. . 
	jp z,la6e5h		;a64e	ca e5 a6 	. . . 
	cp 018h		;a651	fe 18 	. . 
	jp z,la6e5h		;a653	ca e5 a6 	. . . 
	cp 019h		;a656	fe 19 	. . 
	jp z,la6e5h		;a658	ca e5 a6 	. . . 
	cp 01ah		;a65b	fe 1a 	. . 
	jp z,la6e5h		;a65d	ca e5 a6 	. . . 
	cp 007h		;a660	fe 07 	. . 
	jp z,la6e5h		;a662	ca e5 a6 	. . . 
	cp 008h		;a665	fe 08 	. . 
	jp z,la6e5h		;a667	ca e5 a6 	. . . 
	cp 011h		;a66a	fe 11 	. . 
	jp z,la6e5h		;a66c	ca e5 a6 	. . . 
	cp 010h		;a66f	fe 10 	. . 
	jp z,la6e5h		;a671	ca e5 a6 	. . . 
	cp 01ch		;a674	fe 1c 	. . 
	jp z,la6e5h		;a676	ca e5 a6 	. . . 
	cp 014h		;a679	fe 14 	. . 
	jp z,la6ebh		;a67b	ca eb a6 	. . . 
	cp 012h		;a67e	fe 12 	. . 
	jp z,la714h		;a680	ca 14 a7 	. . . 
	cp 01dh		;a683	fe 1d 	. . 
	jp z,la714h		;a685	ca 14 a7 	. . . 
	cp 013h		;a688	fe 13 	. . 
	jp z,la725h		;a68a	ca 25 a7 	. % . 
	cp 01eh		;a68d	fe 1e 	. . 
	jp z,la725h		;a68f	ca 25 a7 	. % . 
	cp 02ch		;a692	fe 2c 	. , 
	jp z,la7a9h		;a694	ca a9 a7 	. . . 
	cp 002h		;a697	fe 02 	. . 
	jp z,la7c5h		;a699	ca c5 a7 	. . . 
	cp 005h		;a69c	fe 05 	. . 
	jp z,la7d8h		;a69e	ca d8 a7 	. . . 
	cp 006h		;a6a1	fe 06 	. . 
	jp z,la7d8h		;a6a3	ca d8 a7 	. . . 
	cp 004h		;a6a6	fe 04 	. . 
	jp z,la849h		;a6a8	ca 49 a8 	. I . 
	cp 003h		;a6ab	fe 03 	. . 
	jp z,la862h		;a6ad	ca 62 a8 	. b . 
	cp 02bh		;a6b0	fe 2b 	. + 
	jp z,la86dh		;a6b2	ca 6d a8 	. m . 
	cp 024h		;a6b5	fe 24 	. $ 
	jp z,la897h		;a6b7	ca 97 a8 	. . . 
	cp 023h		;a6ba	fe 23 	. # 
	jp z,la897h		;a6bc	ca 97 a8 	. . . 
	cp 025h		;a6bf	fe 25 	. % 
	jp z,la897h		;a6c1	ca 97 a8 	. . . 
	cp 021h		;a6c4	fe 21 	. ! 
	jp z,la93ah		;a6c6	ca 3a a9 	. : . 
	cp 022h		;a6c9	fe 22 	. " 
	jp z,la98fh		;a6cb	ca 8f a9 	. . . 
	cp 026h		;a6ce	fe 26 	. & 
	jp z,la995h		;a6d0	ca 95 a9 	. . . 
	cp 027h		;a6d3	fe 27 	. ' 
	jp z,la9a5h		;a6d5	ca a5 a9 	. . . 
	cp 029h		;a6d8	fe 29 	. ) 
	jp z,la9b5h		;a6da	ca b5 a9 	. . . 
	cp 02ah		;a6dd	fe 2a 	. * 
	jp z,la9c5h		;a6df	ca c5 a9 	. . . 
	jp la9d5h		;a6e2	c3 d5 a9 	. . . 
la6e5h:
	call sub_9c66h		;a6e5	cd 66 9c 	. f . 
	jp la9ddh		;a6e8	c3 dd a9 	. . . 
la6ebh:
	call sub_9c1ch		;a6eb	cd 1c 9c 	. . . 
	ld a,h			;a6ee	7c 	| 
	or l			;a6ef	b5 	. 
	jp z,la70eh		;a6f0	ca 0e a7 	. . . 
	ld hl,(lb3ffh)		;a6f3	2a ff b3 	* . . 
	inc hl			;a6f6	23 	# 
	ld a,(hl)			;a6f7	7e 	~ 
	inc hl			;a6f8	23 	# 
	ld h,(hl)			;a6f9	66 	f 
	ld l,a			;a6fa	6f 	o 
	dec hl			;a6fb	2b 	+ 
	ld a,h			;a6fc	7c 	| 
	or l			;a6fd	b5 	. 
	jp nz,la70eh		;a6fe	c2 0e a7 	. . . 
	ld hl,(lb3fbh)		;a701	2a fb b3 	* . . 
	ld de,0fffbh		;a704	11 fb ff 	. . . 
	add hl,de			;a707	19 	. 
	ld (lb3fbh),hl		;a708	22 fb b3 	" . . 
	jp la9ddh		;a70b	c3 dd a9 	. . . 
la70eh:
	call sub_9c66h		;a70e	cd 66 9c 	. f . 
	jp la9ddh		;a711	c3 dd a9 	. . . 
la714h:
	call sub_9a25h		;a714	cd 25 9a 	. % . 
	ld hl,00019h		;a717	21 19 00 	! . . 
	push hl			;a71a	e5 	. 
	call sub_ad34h		;a71b	cd 34 ad 	. 4 . 
	pop de			;a71e	d1 	. 
	call sub_9c6ch		;a71f	cd 6c 9c 	. l . 
	jp la9ddh		;a722	c3 dd a9 	. . . 
la725h:
	call sub_9a25h		;a725	cd 25 9a 	. % . 
	ld hl,000b7h		;a728	21 b7 00 	! . . 
	push hl			;a72b	e5 	. 
	call sub_ad34h		;a72c	cd 34 ad 	. 4 . 
	pop de			;a72f	d1 	. 
	ld hl,052edh		;a730	21 ed 52 	! . R 
	push hl			;a733	e5 	. 
	call sub_ad3bh		;a734	cd 3b ad 	. ; . 
	pop de			;a737	d1 	. 
	call sub_9c6ch		;a738	cd 6c 9c 	. l . 
	ld hl,(lb3a3h)		;a73b	2a a3 b3 	* . . 
	ld a,l			;a73e	7d 	} 
	or a			;a73f	b7 	. 
	jp z,la7a6h		;a740	ca a6 a7 	. . . 
	ld hl,(lb3fbh)		;a743	2a fb b3 	* . . 
	inc hl			;a746	23 	# 
	inc hl			;a747	23 	# 
	inc hl			;a748	23 	# 
	push hl			;a749	e5 	. 
	ld de,lafb1h		;a74a	11 b1 af 	. . . 
	pop hl			;a74d	e1 	. 
	ld (hl),e			;a74e	73 	s 
	inc hl			;a74f	23 	# 
	ld (hl),d			;a750	72 	r 
	ld hl,(lb3fbh)		;a751	2a fb b3 	* . . 
	ld de,00005h		;a754	11 05 00 	. . . 
	add hl,de			;a757	19 	. 
	inc hl			;a758	23 	# 
	inc hl			;a759	23 	# 
	inc hl			;a75a	23 	# 
	ld a,(hl)			;a75b	7e 	~ 
	inc hl			;a75c	23 	# 
	ld h,(hl)			;a75d	66 	f 
	ld l,a			;a75e	6f 	o 
	inc hl			;a75f	23 	# 
	inc hl			;a760	23 	# 
	inc hl			;a761	23 	# 
	ld a,(hl)			;a762	7e 	~ 
	inc hl			;a763	23 	# 
	ld h,(hl)			;a764	66 	f 
	ld l,a			;a765	6f 	o 
	inc hl			;a766	23 	# 
	ld a,(hl)			;a767	7e 	~ 
	inc hl			;a768	23 	# 
	ld h,(hl)			;a769	66 	f 
	ld l,a			;a76a	6f 	o 
	ex de,hl			;a76b	eb 	. 
	ld h,b			;a76c	60 	` 
	ld l,c			;a76d	69 	i 
	ld (hl),e			;a76e	73 	s 
	inc hl			;a76f	23 	# 
	ld (hl),d			;a770	72 	r 
	dec de			;a771	1b 	. 
	ld a,d			;a772	7a 	z 
	or e			;a773	b3 	. 
	jp z,la7a6h		;a774	ca a6 a7 	. . . 
	ld hl,lafb1h		;a777	21 b1 af 	! . . 
	push hl			;a77a	e5 	. 
	call sub_7510h		;a77b	cd 10 75 	. . u 
	nop			;a77e	00 	. 
	push hl			;a77f	e5 	. 
	ld hl,00001h		;a780	21 01 00 	! . . 
	push hl			;a783	e5 	. 
	ld hl,00000h		;a784	21 00 00 	! . . 
	push hl			;a787	e5 	. 
	ld hl,00000h		;a788	21 00 00 	! . . 
	push hl			;a78b	e5 	. 
	ld hl,00000h		;a78c	21 00 00 	! . . 
	push hl			;a78f	e5 	. 
	call sub_9bcch		;a790	cd cc 9b 	. . . 
	pop de			;a793	d1 	. 
	pop de			;a794	d1 	. 
	pop de			;a795	d1 	. 
	pop de			;a796	d1 	. 
	pop de			;a797	d1 	. 
	pop de			;a798	d1 	. 
	ld hl,(lb3c7h)		;a799	2a c7 b3 	* . . 
	ld e,01bh		;a79c	1e 1b 	. . 
	ld (hl),e			;a79e	73 	s 
	ld a,e			;a79f	7b 	{ 
	ld (lb3a6h),a		;a7a0	32 a6 b3 	2 . . 
	jp la611h		;a7a3	c3 11 a6 	. . . 
la7a6h:
	jp la9ddh		;a7a6	c3 dd a9 	. . . 
la7a9h:
	ld hl,(lb3c7h)		;a7a9	2a c7 b3 	* . . 
	push hl			;a7ac	e5 	. 
	ld hl,(lb3c7h)		;a7ad	2a c7 b3 	* . . 
	dec hl			;a7b0	2b 	+ 
	ld l,(hl)			;a7b1	6e 	n 
	ex de,hl			;a7b2	eb 	. 
	pop hl			;a7b3	e1 	. 
	ld (hl),e			;a7b4	73 	s 
	ld hl,(lb3c7h)		;a7b5	2a c7 b3 	* . . 
	dec hl			;a7b8	2b 	+ 
	ld (hl),002h		;a7b9	36 02 	6 . 
	ld hl,(lb3c7h)		;a7bb	2a c7 b3 	* . . 
	inc hl			;a7be	23 	# 
	ld (lb3c7h),hl		;a7bf	22 c7 b3 	" . . 
	jp la9ddh		;a7c2	c3 dd a9 	. . . 
la7c5h:
	call sub_9718h		;a7c5	cd 18 97 	. . . 
	ld hl,(lb3fbh)		;a7c8	2a fb b3 	* . . 
	ld de,0fffbh		;a7cb	11 fb ff 	. . . 
	add hl,de			;a7ce	19 	. 
	ld (lb3fbh),hl		;a7cf	22 fb b3 	" . . 
	call sub_9c60h		;a7d2	cd 60 9c 	. ` . 
	jp la9ddh		;a7d5	c3 dd a9 	. . . 
la7d8h:
	call sub_9a0fh		;a7d8	cd 0f 9a 	. . . 
	call sub_ad25h		;a7db	cd 25 ad 	. % . 
	ld de,00007h		;a7de	11 07 00 	. . . 
	add hl,de			;a7e1	19 	. 
	ex de,hl			;a7e2	eb 	. 
	ld h,b			;a7e3	60 	` 
	ld l,c			;a7e4	69 	i 
	ld (hl),e			;a7e5	73 	s 
	inc hl			;a7e6	23 	# 
	ld (hl),d			;a7e7	72 	r 
	ld h,b			;a7e8	60 	` 
	ld l,c			;a7e9	69 	i 
	push hl			;a7ea	e5 	. 
	ld hl,00000h		;a7eb	21 00 00 	! . . 
	push hl			;a7ee	e5 	. 
	ld hl,00000h		;a7ef	21 00 00 	! . . 
	push hl			;a7f2	e5 	. 
	call la24ah		;a7f3	cd 4a a2 	. J . 
	pop de			;a7f6	d1 	. 
	pop de			;a7f7	d1 	. 
	pop de			;a7f8	d1 	. 
	ld hl,(lb3a6h)		;a7f9	2a a6 b3 	* . . 
	ld a,l			;a7fc	7d 	} 
	cp 006h		;a7fd	fe 06 	. . 
	jp nz,la80fh		;a7ff	c2 0f a8 	. . . 
	ld hl,00001h		;a802	21 01 00 	! . . 
	push hl			;a805	e5 	. 
	ld hl,00021h		;a806	21 21 00 	! ! . 
	push hl			;a809	e5 	. 
	call sub_ad77h		;a80a	cd 77 ad 	. w . 
	pop de			;a80d	d1 	. 
	pop de			;a80e	d1 	. 
la80fh:
	ld hl,(lb3c7h)		;a80f	2a c7 b3 	* . . 
	dec hl			;a812	2b 	+ 
	dec hl			;a813	2b 	+ 
	ld (lb3c7h),hl		;a814	22 c7 b3 	" . . 
	ld hl,(lb3c7h)		;a817	2a c7 b3 	* . . 
	push hl			;a81a	e5 	. 
	call sub_954eh		;a81b	cd 4e 95 	. N . 
	pop de			;a81e	d1 	. 
	ld hl,(lb3a6h)		;a81f	2a a6 b3 	* . . 
	ld a,l			;a822	7d 	} 
	cp 005h		;a823	fe 05 	. . 
	jp nz,la835h		;a825	c2 35 a8 	. 5 . 
	ld hl,00001h		;a828	21 01 00 	! . . 
	push hl			;a82b	e5 	. 
	ld hl,00021h		;a82c	21 21 00 	! ! . 
	push hl			;a82f	e5 	. 
	call sub_ad77h		;a830	cd 77 ad 	. w . 
	pop de			;a833	d1 	. 
	pop de			;a834	d1 	. 
la835h:
	call sub_9c60h		;a835	cd 60 9c 	. ` . 
	ld hl,(lb3fbh)		;a838	2a fb b3 	* . . 
	inc hl			;a83b	23 	# 
	inc hl			;a83c	23 	# 
	inc hl			;a83d	23 	# 
	push hl			;a83e	e5 	. 
	ld de,lafb1h		;a83f	11 b1 af 	. . . 
	pop hl			;a842	e1 	. 
	ld (hl),e			;a843	73 	s 
	inc hl			;a844	23 	# 
	ld (hl),d			;a845	72 	r 
	jp la9ddh		;a846	c3 dd a9 	. . . 
la849h:
	call sub_9a0fh		;a849	cd 0f 9a 	. . . 
	ld hl,(lb3c7h)		;a84c	2a c7 b3 	* . . 
	dec hl			;a84f	2b 	+ 
	dec hl			;a850	2b 	+ 
	ld (lb3c7h),hl		;a851	22 c7 b3 	" . . 
	ld hl,(lb3c7h)		;a854	2a c7 b3 	* . . 
	push hl			;a857	e5 	. 
	call sub_954eh		;a858	cd 4e 95 	. N . 
	pop de			;a85b	d1 	. 
	call sub_9c6ch		;a85c	cd 6c 9c 	. l . 
	jp la9ddh		;a85f	c3 dd a9 	. . . 
la862h:
	ld hl,0002bh		;a862	21 2b 00 	! + . 
	push hl			;a865	e5 	. 
	call sub_aec5h		;a866	cd c5 ae 	. . . 
	pop de			;a869	d1 	. 
	jp la9ddh		;a86a	c3 dd a9 	. . . 
la86dh:
	ld hl,(lb3c7h)		;a86d	2a c7 b3 	* . . 
	dec hl			;a870	2b 	+ 
	dec hl			;a871	2b 	+ 
	ld (lb3c7h),hl		;a872	22 c7 b3 	" . . 
	ex de,hl			;a875	eb 	. 
	ld hl,00002h		;a876	21 02 00 	! . . 
	add hl,bc			;a879	09 	. 
	ld (hl),e			;a87a	73 	s 
	inc hl			;a87b	23 	# 
	ld (hl),d			;a87c	72 	r 
	ld hl,(lb3fbh)		;a87d	2a fb b3 	* . . 
	inc hl			;a880	23 	# 
	inc hl			;a881	23 	# 
	inc hl			;a882	23 	# 
	push hl			;a883	e5 	. 
	call sub_7510h		;a884	cd 10 75 	. . u 
	ld (bc),a			;a887	02 	. 
	ld a,(hl)			;a888	7e 	~ 
	inc hl			;a889	23 	# 
	ld h,(hl)			;a88a	66 	f 
	ld l,a			;a88b	6f 	o 
	ex de,hl			;a88c	eb 	. 
	pop hl			;a88d	e1 	. 
	ld (hl),e			;a88e	73 	s 
	inc hl			;a88f	23 	# 
	ld (hl),d			;a890	72 	r 
	call sub_9c28h		;a891	cd 28 9c 	. ( . 
	jp la9ddh		;a894	c3 dd a9 	. . . 
la897h:
	call sub_9c1ch		;a897	cd 1c 9c 	. . . 
	ld a,h			;a89a	7c 	| 
	or l			;a89b	b5 	. 
	jp z,la90eh		;a89c	ca 0e a9 	. . . 
	ld hl,(lb3fbh)		;a89f	2a fb b3 	* . . 
	inc hl			;a8a2	23 	# 
	ld a,(hl)			;a8a3	7e 	~ 
	inc hl			;a8a4	23 	# 
	ld h,(hl)			;a8a5	66 	f 
	ld l,a			;a8a6	6f 	o 
	ex de,hl			;a8a7	eb 	. 
	ld h,b			;a8a8	60 	` 
	ld l,c			;a8a9	69 	i 
	ld (hl),e			;a8aa	73 	s 
	inc hl			;a8ab	23 	# 
	ld (hl),d			;a8ac	72 	r 
	ld hl,(lb3a6h)		;a8ad	2a a6 b3 	* . . 
	ld a,l			;a8b0	7d 	} 
	cp 024h		;a8b1	fe 24 	. $ 
	jp z,la8c3h		;a8b3	ca c3 a8 	. . . 
	cp 023h		;a8b6	fe 23 	. # 
	jp z,la8d5h		;a8b8	ca d5 a8 	. . . 
	cp 025h		;a8bb	fe 25 	. % 
	jp z,la8e5h		;a8bd	ca e5 a8 	. . . 
	jp la8f8h		;a8c0	c3 f8 a8 	. . . 
la8c3h:
	call sub_7510h		;a8c3	cd 10 75 	. . u 
	nop			;a8c6	00 	. 
	ld a,h			;a8c7	7c 	| 
	or l			;a8c8	b5 	. 
	call sub_751dh		;a8c9	cd 1d 75 	. . u 
	ex de,hl			;a8cc	eb 	. 
	ld h,b			;a8cd	60 	` 
	ld l,c			;a8ce	69 	i 
	ld (hl),e			;a8cf	73 	s 
	inc hl			;a8d0	23 	# 
	ld (hl),d			;a8d1	72 	r 
	jp la8f8h		;a8d2	c3 f8 a8 	. . . 
la8d5h:
	call sub_7510h		;a8d5	cd 10 75 	. . u 
	nop			;a8d8	00 	. 
	call sub_767ah		;a8d9	cd 7a 76 	. z v 
	ex de,hl			;a8dc	eb 	. 
	ld h,b			;a8dd	60 	` 
	ld l,c			;a8de	69 	i 
	ld (hl),e			;a8df	73 	s 
	inc hl			;a8e0	23 	# 
	ld (hl),d			;a8e1	72 	r 
	jp la8f8h		;a8e2	c3 f8 a8 	. . . 
la8e5h:
	call sub_7510h		;a8e5	cd 10 75 	. . u 
	nop			;a8e8	00 	. 
	ld a,l			;a8e9	7d 	} 
	cpl			;a8ea	2f 	/ 
	ld l,a			;a8eb	6f 	o 
	ld a,h			;a8ec	7c 	| 
	cpl			;a8ed	2f 	/ 
	ld h,a			;a8ee	67 	g 
	ex de,hl			;a8ef	eb 	. 
	ld h,b			;a8f0	60 	` 
	ld l,c			;a8f1	69 	i 
	ld (hl),e			;a8f2	73 	s 
	inc hl			;a8f3	23 	# 
	ld (hl),d			;a8f4	72 	r 
	jp la8f8h		;a8f5	c3 f8 a8 	. . . 
la8f8h:
	ld hl,(lb3fbh)		;a8f8	2a fb b3 	* . . 
	ld (hl),001h		;a8fb	36 01 	6 . 
	ld hl,(lb3fbh)		;a8fd	2a fb b3 	* . . 
	inc hl			;a900	23 	# 
	push hl			;a901	e5 	. 
	call sub_7510h		;a902	cd 10 75 	. . u 
	nop			;a905	00 	. 
	ex de,hl			;a906	eb 	. 
	pop hl			;a907	e1 	. 
	ld (hl),e			;a908	73 	s 
	inc hl			;a909	23 	# 
	ld (hl),d			;a90a	72 	r 
	jp la917h		;a90b	c3 17 a9 	. . . 
la90eh:
	call sub_9a0fh		;a90e	cd 0f 9a 	. . . 
	call sub_adc6h		;a911	cd c6 ad 	. . . 
	call sub_9c60h		;a914	cd 60 9c 	. ` . 
la917h:
	ld hl,(lb39eh)		;a917	2a 9e b3 	* . . 
	ld a,l			;a91a	7d 	} 
	cp 003h		;a91b	fe 03 	. . 
	jp nz,la929h		;a91d	c2 29 a9 	. ) . 
	ld hl,(lb3a6h)		;a920	2a a6 b3 	* . . 
	ld a,l			;a923	7d 	} 
	cp 024h		;a924	fe 24 	. $ 
	jp nz,la937h		;a926	c2 37 a9 	. 7 . 
la929h:
	ld hl,(lb3fbh)		;a929	2a fb b3 	* . . 
	inc hl			;a92c	23 	# 
	inc hl			;a92d	23 	# 
	inc hl			;a92e	23 	# 
	push hl			;a92f	e5 	. 
	ld de,lafb1h		;a930	11 b1 af 	. . . 
	pop hl			;a933	e1 	. 
	ld (hl),e			;a934	73 	s 
	inc hl			;a935	23 	# 
	ld (hl),d			;a936	72 	r 
la937h:
	jp la9ddh		;a937	c3 dd a9 	. . . 
la93ah:
	ld hl,(lb39eh)		;a93a	2a 9e b3 	* . . 
	ld h,000h		;a93d	26 00 	& . 
	push hl			;a93f	e5 	. 
	call sub_894ah		;a940	cd 4a 89 	. J . 
	pop de			;a943	d1 	. 
	ld a,h			;a944	7c 	| 
	or l			;a945	b5 	. 
	jp nz,la951h		;a946	c2 51 a9 	. Q . 
	ld hl,0002ch		;a949	21 2c 00 	! , . 
	push hl			;a94c	e5 	. 
	call sub_aec5h		;a94d	cd c5 ae 	. . . 
	pop de			;a950	d1 	. 
la951h:
	call sub_9c1ch		;a951	cd 1c 9c 	. . . 
	ld a,h			;a954	7c 	| 
	or l			;a955	b5 	. 
	jp z,la961h		;a956	ca 61 a9 	. a . 
	ld hl,(lb3fbh)		;a959	2a fb b3 	* . . 
	ld (hl),00ch		;a95c	36 0c 	6 . 
	jp la969h		;a95e	c3 69 a9 	. i . 
la961h:
	call sub_9a0fh		;a961	cd 0f 9a 	. . . 
	ld hl,(lb3fbh)		;a964	2a fb b3 	* . . 
	ld (hl),008h		;a967	36 08 	6 . 
la969h:
	ld hl,(lb3fbh)		;a969	2a fb b3 	* . . 
	inc hl			;a96c	23 	# 
	inc hl			;a96d	23 	# 
	inc hl			;a96e	23 	# 
	push hl			;a96f	e5 	. 
	ld hl,(lb3fbh)		;a970	2a fb b3 	* . . 
	inc hl			;a973	23 	# 
	inc hl			;a974	23 	# 
	inc hl			;a975	23 	# 
	ld a,(hl)			;a976	7e 	~ 
	inc hl			;a977	23 	# 
	ld h,(hl)			;a978	66 	f 
	ld l,a			;a979	6f 	o 
	inc hl			;a97a	23 	# 
	inc hl			;a97b	23 	# 
	inc hl			;a97c	23 	# 
	ld a,(hl)			;a97d	7e 	~ 
	inc hl			;a97e	23 	# 
	ld h,(hl)			;a97f	66 	f 
	ld l,a			;a980	6f 	o 
	ex de,hl			;a981	eb 	. 
	pop hl			;a982	e1 	. 
	ld (hl),e			;a983	73 	s 
	inc hl			;a984	23 	# 
	ld (hl),d			;a985	72 	r 
	call sub_9c28h		;a986	cd 28 9c 	. ( . 
	call sub_9b8eh		;a989	cd 8e 9b 	. . . 
	jp la9ddh		;a98c	c3 dd a9 	. . . 
la98fh:
	call sub_9c3dh		;a98f	cd 3d 9c 	. = . 
	jp la9ddh		;a992	c3 dd a9 	. . . 
la995h:
	ld hl,00000h		;a995	21 00 00 	! . . 
	push hl			;a998	e5 	. 
	ld hl,00000h		;a999	21 00 00 	! . . 
	push hl			;a99c	e5 	. 
	call sub_a9e6h		;a99d	cd e6 a9 	. . . 
	pop de			;a9a0	d1 	. 
	pop de			;a9a1	d1 	. 
	jp la9ddh		;a9a2	c3 dd a9 	. . . 
la9a5h:
	ld hl,00001h		;a9a5	21 01 00 	! . . 
	push hl			;a9a8	e5 	. 
	ld hl,00000h		;a9a9	21 00 00 	! . . 
	push hl			;a9ac	e5 	. 
	call sub_a9e6h		;a9ad	cd e6 a9 	. . . 
	pop de			;a9b0	d1 	. 
	pop de			;a9b1	d1 	. 
	jp la9ddh		;a9b2	c3 dd a9 	. . . 
la9b5h:
	ld hl,00000h		;a9b5	21 00 00 	! . . 
	push hl			;a9b8	e5 	. 
	ld hl,00001h		;a9b9	21 01 00 	! . . 
	push hl			;a9bc	e5 	. 
	call sub_a9e6h		;a9bd	cd e6 a9 	. . . 
	pop de			;a9c0	d1 	. 
	pop de			;a9c1	d1 	. 
	jp la9ddh		;a9c2	c3 dd a9 	. . . 
la9c5h:
	ld hl,00001h		;a9c5	21 01 00 	! . . 
	push hl			;a9c8	e5 	. 
	ld hl,00001h		;a9c9	21 01 00 	! . . 
	push hl			;a9cc	e5 	. 
	call sub_a9e6h		;a9cd	cd e6 a9 	. . . 
	pop de			;a9d0	d1 	. 
	pop de			;a9d1	d1 	. 
	jp la9ddh		;a9d2	c3 dd a9 	. . . 
la9d5h:
	ld hl,0002dh		;a9d5	21 2d 00 	! - . 
	push hl			;a9d8	e5 	. 
	call sub_aec5h		;a9d9	cd c5 ae 	. . . 
	pop de			;a9dc	d1 	. 
la9ddh:
	ex de,hl			;a9dd	eb 	. 
	ld hl,00004h		;a9de	21 04 00 	! . . 
	add hl,sp			;a9e1	39 	9 
	ld sp,hl			;a9e2	f9 	. 
	ex de,hl			;a9e3	eb 	. 
	pop bc			;a9e4	c1 	. 
	ret			;a9e5	c9 	. 
sub_a9e6h:
	push bc			;a9e6	c5 	. 
	ld hl,0fffeh		;a9e7	21 fe ff 	! . . 
	add hl,sp			;a9ea	39 	9 
	ld sp,hl			;a9eb	f9 	. 
	ld b,h			;a9ec	44 	D 
	ld c,l			;a9ed	4d 	M 
	ld hl,(lb39eh)		;a9ee	2a 9e b3 	* . . 
	ld a,l			;a9f1	7d 	} 
	cp 002h		;a9f2	fe 02 	. . 
	jp nz,laa4eh		;a9f4	c2 4e aa 	. N . 
	call sub_983fh		;a9f7	cd 3f 98 	. ? . 
	call sub_7510h		;a9fa	cd 10 75 	. . u 
	ld b,07ch		;a9fd	06 7c 	. | 
	or l			;a9ff	b5 	. 
	jp z,laa0bh		;aa00	ca 0b aa 	. . . 
	ld hl,0007eh		;aa03	21 7e 00 	! ~ . 
	push hl			;aa06	e5 	. 
	call sub_ad34h		;aa07	cd 34 ad 	. 4 . 
	pop de			;aa0a	d1 	. 
laa0bh:
	call sub_7510h		;aa0b	cd 10 75 	. . u 
	ex af,af'			;aa0e	08 	. 
	ld a,h			;aa0f	7c 	| 
	or l			;aa10	b5 	. 
	jp z,laa1fh		;aa11	ca 1f aa 	. . . 
	ld hl,00035h		;aa14	21 35 00 	! 5 . 
	push hl			;aa17	e5 	. 
	call sub_ad34h		;aa18	cd 34 ad 	. 4 . 
	pop de			;aa1b	d1 	. 
	jp laa27h		;aa1c	c3 27 aa 	. ' . 
laa1fh:
	ld hl,00034h		;aa1f	21 34 00 	! 4 . 
	push hl			;aa22	e5 	. 
	call sub_ad34h		;aa23	cd 34 ad 	. 4 . 
	pop de			;aa26	d1 	. 
laa27h:
	call sub_7510h		;aa27	cd 10 75 	. . u 
	ld b,07ch		;aa2a	06 7c 	. | 
	or l			;aa2c	b5 	. 
	jp z,laa3bh		;aa2d	ca 3b aa 	. ; . 
	ld hl,0006fh		;aa30	21 6f 00 	! o . 
	push hl			;aa33	e5 	. 
	call sub_ad34h		;aa34	cd 34 ad 	. 4 . 
	pop de			;aa37	d1 	. 
	jp laa43h		;aa38	c3 43 aa 	. C . 
laa3bh:
	ld hl,0006eh		;aa3b	21 6e 00 	! n . 
	push hl			;aa3e	e5 	. 
	call sub_ad34h		;aa3f	cd 34 ad 	. 4 . 
	pop de			;aa42	d1 	. 
laa43h:
	ld hl,00026h		;aa43	21 26 00 	! & . 
	push hl			;aa46	e5 	. 
	call sub_ad3bh		;aa47	cd 3b ad 	. ; . 
	pop de			;aa4a	d1 	. 
	jp lab46h		;aa4b	c3 46 ab 	. F . 
laa4eh:
	ld hl,(lb39eh)		;aa4e	2a 9e b3 	* . . 
	ld h,000h		;aa51	26 00 	& . 
	push hl			;aa53	e5 	. 
	call sub_894ah		;aa54	cd 4a 89 	. J . 
	pop de			;aa57	d1 	. 
	ld a,h			;aa58	7c 	| 
	or l			;aa59	b5 	. 
	jp z,laa7ch		;aa5a	ca 7c aa 	. | . 
	ld hl,(lb3fbh)		;aa5d	2a fb b3 	* . . 
	inc hl			;aa60	23 	# 
	inc hl			;aa61	23 	# 
	inc hl			;aa62	23 	# 
	ld a,(hl)			;aa63	7e 	~ 
	inc hl			;aa64	23 	# 
	ld h,(hl)			;aa65	66 	f 
	ld l,a			;aa66	6f 	o 
	inc hl			;aa67	23 	# 
	inc hl			;aa68	23 	# 
	inc hl			;aa69	23 	# 
	ld a,(hl)			;aa6a	7e 	~ 
	inc hl			;aa6b	23 	# 
	ld h,(hl)			;aa6c	66 	f 
	ld l,a			;aa6d	6f 	o 
	inc hl			;aa6e	23 	# 
	ld a,(hl)			;aa6f	7e 	~ 
	inc hl			;aa70	23 	# 
	ld h,(hl)			;aa71	66 	f 
	ld l,a			;aa72	6f 	o 
	ex de,hl			;aa73	eb 	. 
	ld h,b			;aa74	60 	` 
	ld l,c			;aa75	69 	i 
	ld (hl),e			;aa76	73 	s 
	inc hl			;aa77	23 	# 
	ld (hl),d			;aa78	72 	r 
	jp laa83h		;aa79	c3 83 aa 	. . . 
laa7ch:
	ld h,b			;aa7c	60 	` 
	ld l,c			;aa7d	69 	i 
	ld (hl),001h		;aa7e	36 01 	6 . 
	inc hl			;aa80	23 	# 
	ld (hl),000h		;aa81	36 00 	6 . 
laa83h:
	call sub_9c12h		;aa83	cd 12 9c 	. . . 
	ld a,h			;aa86	7c 	| 
	or l			;aa87	b5 	. 
	jp z,laadah		;aa88	ca da aa 	. . . 
	call sub_7510h		;aa8b	cd 10 75 	. . u 
	nop			;aa8e	00 	. 
	dec hl			;aa8f	2b 	+ 
	ld a,h			;aa90	7c 	| 
	or l			;aa91	b5 	. 
	jp nz,laadah		;aa92	c2 da aa 	. . . 
	call sub_9a0fh		;aa95	cd 0f 9a 	. . . 
	call sub_7510h		;aa98	cd 10 75 	. . u 
	ex af,af'			;aa9b	08 	. 
	ld a,h			;aa9c	7c 	| 
	or l			;aa9d	b5 	. 
	jp z,laaa7h		;aa9e	ca a7 aa 	. . . 
	call sub_add4h		;aaa1	cd d4 ad 	. . . 
	jp laaaah		;aaa4	c3 aa aa 	. . . 
laaa7h:
	call sub_adcfh		;aaa7	cd cf ad 	. . . 
laaaah:
	ld hl,(lb3fbh)		;aaaa	2a fb b3 	* . . 
	inc hl			;aaad	23 	# 
	ld a,(hl)			;aaae	7e 	~ 
	inc hl			;aaaf	23 	# 
	ld h,(hl)			;aab0	66 	f 
	ld l,a			;aab1	6f 	o 
	push hl			;aab2	e5 	. 
	ld hl,00022h		;aab3	21 22 00 	! " . 
	push hl			;aab6	e5 	. 
	call sub_ad77h		;aab7	cd 77 ad 	. w . 
	pop de			;aaba	d1 	. 
	pop de			;aabb	d1 	. 
	call sub_7510h		;aabc	cd 10 75 	. . u 
	ld b,07ch		;aabf	06 7c 	. | 
	or l			;aac1	b5 	. 
	jp z,laad7h		;aac2	ca d7 aa 	. . . 
	call sub_7510h		;aac5	cd 10 75 	. . u 
	ex af,af'			;aac8	08 	. 
	ld a,h			;aac9	7c 	| 
	or l			;aaca	b5 	. 
	jp z,laad4h		;aacb	ca d4 aa 	. . . 
	call sub_adcfh		;aace	cd cf ad 	. . . 
	jp laad7h		;aad1	c3 d7 aa 	. . . 
laad4h:
	call sub_add4h		;aad4	cd d4 ad 	. . . 
laad7h:
	jp lab46h		;aad7	c3 46 ab 	. F . 
laadah:
	call sub_983fh		;aada	cd 3f 98 	. ? . 
	call sub_7510h		;aadd	cd 10 75 	. . u 
	ex af,af'			;aae0	08 	. 
	ld a,h			;aae1	7c 	| 
	or l			;aae2	b5 	. 
	jp z,laaf3h		;aae3	ca f3 aa 	. . . 
	call sub_7510h		;aae6	cd 10 75 	. . u 
	nop			;aae9	00 	. 
	call sub_767ah		;aaea	cd 7a 76 	. z v 
	ex de,hl			;aaed	eb 	. 
	ld h,b			;aaee	60 	` 
	ld l,c			;aaef	69 	i 
	ld (hl),e			;aaf0	73 	s 
	inc hl			;aaf1	23 	# 
	ld (hl),d			;aaf2	72 	r 
laaf3h:
	call sub_7510h		;aaf3	cd 10 75 	. . u 
	nop			;aaf6	00 	. 
	dec hl			;aaf7	2b 	+ 
	ld a,h			;aaf8	7c 	| 
	or l			;aaf9	b5 	. 
	jp nz,lab1ch		;aafa	c2 1c ab 	. . . 
	call sub_7510h		;aafd	cd 10 75 	. . u 
	ld b,07ch		;ab00	06 7c 	. | 
	or l			;ab02	b5 	. 
	jp z,lab11h		;ab03	ca 11 ab 	. . . 
	ld hl,l6456h		;ab06	21 56 64 	! V d 
	push hl			;ab09	e5 	. 
	call sub_95bch		;ab0a	cd bc 95 	. . . 
	pop de			;ab0d	d1 	. 
	jp lab19h		;ab0e	c3 19 ab 	. . . 
lab11h:
	ld hl,l6448h		;ab11	21 48 64 	! H d 
	push hl			;ab14	e5 	. 
	call sub_95bch		;ab15	cd bc 95 	. . . 
	pop de			;ab18	d1 	. 
lab19h:
	jp lab46h		;ab19	c3 46 ab 	. F . 
lab1ch:
	call sub_7510h		;ab1c	cd 10 75 	. . u 
	nop			;ab1f	00 	. 
	push hl			;ab20	e5 	. 
	ld hl,00001h		;ab21	21 01 00 	! . . 
	push hl			;ab24	e5 	. 
	call sub_ad77h		;ab25	cd 77 ad 	. w . 
	pop de			;ab28	d1 	. 
	pop de			;ab29	d1 	. 
	call sub_7510h		;ab2a	cd 10 75 	. . u 
	ld b,07ch		;ab2d	06 7c 	. | 
	or l			;ab2f	b5 	. 
	jp z,lab3eh		;ab30	ca 3e ab 	. > . 
	ld hl,l6459h		;ab33	21 59 64 	! Y d 
	push hl			;ab36	e5 	. 
	call sub_95bch		;ab37	cd bc 95 	. . . 
	pop de			;ab3a	d1 	. 
	jp lab46h		;ab3b	c3 46 ab 	. F . 
lab3eh:
	ld hl,l644bh		;ab3e	21 4b 64 	! K d 
	push hl			;ab41	e5 	. 
	call sub_95bch		;ab42	cd bc 95 	. . . 
	pop de			;ab45	d1 	. 
lab46h:
	call sub_9c60h		;ab46	cd 60 9c 	. ` . 
	ex de,hl			;ab49	eb 	. 
	ld hl,00002h		;ab4a	21 02 00 	! . . 
	add hl,sp			;ab4d	39 	9 
	ld sp,hl			;ab4e	f9 	. 
	ex de,hl			;ab4f	eb 	. 
	pop bc			;ab50	c1 	. 
	ret			;ab51	c9 	. 
sub_ab52h:
	ld a,038h		;ab52	3e 38 	> 8 
	ld hl,lab61h		;ab54	21 61 ab 	! a . 
	call lac94h		;ab57	cd 94 ac 	. . . 
	ld hl,(05c8dh)		;ab5a	2a 8d 5c 	* . \ 
	ld (05c8fh),hl		;ab5d	22 8f 5c 	" . \ 
	ret			;ab60	c9 	. 
lab61h:
	ld a,(bc)			;ab61	0a 	. 
	djnz lab66h		;ab62	10 02 	. . 
	ld c,b			;ab64	48 	H 
	ld l,c			;ab65	69 	i 
lab66h:
	ld d,e			;ab66	53 	S 
	ld l,a			;ab67	6f 	o 
	ld h,(hl)			;ab68	66 	f 
	ld (hl),h			;ab69	74 	t 
	jr nz,lab8ch		;ab6a	20 20 	    
	ld b,e			;ab6c	43 	C 
	jr nz,lab8fh		;ab6d	20 20 	    
	ld b,e			;ab6f	43 	C 
	ld l,a			;ab70	6f 	o 
	ld l,l			;ab71	6d 	m 
	ld (hl),b			;ab72	70 	p 
	ld l,c			;ab73	69 	i 
	ld l,h			;ab74	6c 	l 
	ld h,l			;ab75	65 	e 
	ld (hl),d			;ab76	72 	r 
	jr nz,sub_ab99h		;ab77	20 20 	    
	ld d,(hl)			;ab79	56 	V 
	ld sp,0332eh		;ab7a	31 2e 33 	1 . 3 
	ld a,(bc)			;ab7d	0a 	. 
	ld b,e			;ab7e	43 	C 
	ld l,a			;ab7f	6f 	o 
	ld (hl),b			;ab80	70 	p 
	ld a,c			;ab81	79 	y 
	ld (hl),d			;ab82	72 	r 
	ld l,c			;ab83	69 	i 
	ld h,a			;ab84	67 	g 
	ld l,b			;ab85	68 	h 
	ld (hl),h			;ab86	74 	t 
	jr nz,lac08h		;ab87	20 7f 	   
	jr nz,labbch		;ab89	20 31 	  1 
	add hl,sp			;ab8b	39 	9 
lab8ch:
	jr c,$+54		;ab8c	38 34 	8 4 
	inc l			;ab8e	2c 	, 
lab8fh:
	ld (hl),020h		;ab8f	36 20 	6   
	ld c,b			;ab91	48 	H 
	ld l,c			;ab92	69 	i 
	ld d,e			;ab93	53 	S 
	ld l,a			;ab94	6f 	o 
	ld h,(hl)			;ab95	66 	f 
	ld (hl),h			;ab96	74 	t 
	ld a,(bc)			;ab97	0a 	. 
	ld a,(bc)			;ab98	0a 	. 
sub_ab99h:
	ld hl,(laf4eh)		;ab99	2a 4e af 	* N . 
	ld bc,(laf62h)		;ab9c	ed 4b 62 af 	. K b . 
	ld de,(lafa6h)		;aba0	ed 5b a6 af 	. [ . . 
	ldir		;aba4	ed b0 	. . 
	ld hl,(laf4ch)		;aba6	2a 4c af 	* L . 
	ex de,hl			;aba9	eb 	. 
	sbc hl,de		;abaa	ed 52 	. R 
	ld b,h			;abac	44 	D 
	ld c,l			;abad	4d 	M 
	ld de,00ad8h		;abae	11 d8 0a 	. . . 
	add hl,de			;abb1	19 	. 
	ld (l6d2dh),hl		;abb2	22 2d 6d 	" - m 
	ld de,l6270h		;abb5	11 70 62 	. p b 
	ld (l6d2fh),de		;abb8	ed 53 2f 6d 	. S / m 
labbch:
	push de			;abbc	d5 	. 
	push hl			;abbd	e5 	. 
	push de			;abbe	d5 	. 
	push bc			;abbf	c5 	. 
	push de			;abc0	d5 	. 
	ld hl,laf38h		;abc1	21 38 af 	! 8 . 
	push hl			;abc4	e5 	. 
	ld hl,labedh		;abc5	21 ed ab 	! . . 
	push hl			;abc8	e5 	. 
	call sub_6276h		;abc9	cd 76 62 	. v b 
	ld a,l			;abcc	7d 	} 
	ld hl,labe7h		;abcd	21 e7 ab 	! . . 
	ld bc,00006h		;abd0	01 06 00 	. . . 
	pop de			;abd3	d1 	. 
	ldir		;abd4	ed b0 	. . 
	ld hl,(laf4ch)		;abd6	2a 4c af 	* L . 
	ld de,l6d48h		;abd9	11 48 6d 	. H m 
	pop bc			;abdc	c1 	. 
	cp 010h		;abdd	fe 10 	. . 
	jp nz,l6c89h		;abdf	c2 89 6c 	. . l 
	ld a,0ffh		;abe2	3e ff 	> . 
	jp l6c82h		;abe4	c3 82 6c 	. . l 
labe7h:
	call l6872h		;abe7	cd 72 68 	. r h 
	jp 00000h		;abea	c3 00 00 	. . . 
labedh:
	ld (hl),a			;abed	77 	w 
	nop			;abee	00 	. 
sub_abefh:
	jp l6d4eh		;abef	c3 4e 6d 	. N m 
sub_abf2h:
	jp l6d4bh		;abf2	c3 4b 6d 	. K m 
sub_abf5h:
	pop de			;abf5	d1 	. 
	pop hl			;abf6	e1 	. 
	ld a,l			;abf7	7d 	} 
	pop hl			;abf8	e1 	. 
	push hl			;abf9	e5 	. 
	push hl			;abfa	e5 	. 
	push de			;abfb	d5 	. 
sub_abfch:
	push bc			;abfc	c5 	. 
	push de			;abfd	d5 	. 
	push hl			;abfe	e5 	. 
	ld b,h			;abff	44 	D 
	ld c,l			;ac00	4d 	M 
	ld l,a			;ac01	6f 	o 
	ld h,000h		;ac02	26 00 	& . 
	add hl,hl			;ac04	29 	) 
	ld de,0af5eh		;ac05	11 5e af 	. ^ . 
lac08h:
	add hl,de			;ac08	19 	. 
	ld e,(hl)			;ac09	5e 	^ 
	inc hl			;ac0a	23 	# 
	ld d,(hl)			;ac0b	56 	V 
	ex de,hl			;ac0c	eb 	. 
	add hl,bc			;ac0d	09 	. 
	ex de,hl			;ac0e	eb 	. 
	ld (hl),d			;ac0f	72 	r 
	dec hl			;ac10	2b 	+ 
	ld (hl),e			;ac11	73 	s 
	ld bc,0ffech		;ac12	01 ec ff 	. . . 
	add hl,bc			;ac15	09 	. 
	ld c,(hl)			;ac16	4e 	N 
	inc hl			;ac17	23 	# 
	ld b,(hl)			;ac18	46 	F 
	inc hl			;ac19	23 	# 
	ex de,hl			;ac1a	eb 	. 
	add hl,bc			;ac1b	09 	. 
	ex de,hl			;ac1c	eb 	. 
	ld c,(hl)			;ac1d	4e 	N 
	inc hl			;ac1e	23 	# 
	ld b,(hl)			;ac1f	46 	F 
	ex de,hl			;ac20	eb 	. 
	dec hl			;ac21	2b 	+ 
	or a			;ac22	b7 	. 
	sbc hl,bc		;ac23	ed 42 	. B 
	ld de,00100h		;ac25	11 00 01 	. . . 
	jp p,lac37h		;ac28	f2 37 ac 	. 7 . 
	push hl			;ac2b	e5 	. 
	or a			;ac2c	b7 	. 
	adc hl,de		;ac2d	ed 5a 	. Z 
	pop hl			;ac2f	e1 	. 
	jp m,lac3eh		;ac30	fa 3e ac 	. > . 
lac33h:
	pop hl			;ac33	e1 	. 
	pop de			;ac34	d1 	. 
	pop bc			;ac35	c1 	. 
	ret			;ac36	c9 	. 
lac37h:
	or a			;ac37	b7 	. 
	sbc hl,de		;ac38	ed 52 	. R 
	add hl,de			;ac3a	19 	. 
	jr nc,lac3eh		;ac3b	30 01 	0 . 
	ex de,hl			;ac3d	eb 	. 
lac3eh:
	inc hl			;ac3e	23 	# 
	ld d,h			;ac3f	54 	T 
	ld e,l			;ac40	5d 	] 
	add hl,bc			;ac41	09 	. 
	push hl			;ac42	e5 	. 
	push bc			;ac43	c5 	. 
	ld hl,(laf5ch)		;ac44	2a 5c af 	* \ . 
	or a			;ac47	b7 	. 
	sbc hl,bc		;ac48	ed 42 	. B 
	push hl			;ac4a	e5 	. 
	push de			;ac4b	d5 	. 
	push bc			;ac4c	c5 	. 
	ld l,a			;ac4d	6f 	o 
	ld h,000h		;ac4e	26 00 	& . 
	push hl			;ac50	e5 	. 
	ld l,h			;ac51	6c 	l 
	add hl,sp			;ac52	39 	9 
	push hl			;ac53	e5 	. 
	call sub_775ah		;ac54	cd 5a 77 	. Z w 
	pop de			;ac57	d1 	. 
	pop de			;ac58	d1 	. 
	pop de			;ac59	d1 	. 
	pop de			;ac5a	d1 	. 
	call sub_6404h		;ac5b	cd 04 64 	. . d 
	jr lac33h		;ac5e	18 d3 	. . 
sub_ac60h:
	pop de			;ac60	d1 	. 
	pop hl			;ac61	e1 	. 
	push hl			;ac62	e5 	. 
	push de			;ac63	d5 	. 
sub_ac64h:
	ld a,l			;ac64	7d 	} 
	push af			;ac65	f5 	. 
	add hl,hl			;ac66	29 	) 
	ld de,0af5eh		;ac67	11 5e af 	. ^ . 
	add hl,de			;ac6a	19 	. 
	ld e,(hl)			;ac6b	5e 	^ 
	inc hl			;ac6c	23 	# 
	ld d,(hl)			;ac6d	56 	V 
	ex de,hl			;ac6e	eb 	. 
	call sub_62ddh		;ac6f	cd dd 62 	. . b 
	pop af			;ac72	f1 	. 
	jp sub_abfch		;ac73	c3 fc ab 	. . . 
sub_ac76h:
	pop hl			;ac76	e1 	. 
	pop af			;ac77	f1 	. 
	pop de			;ac78	d1 	. 
	ex (sp),hl			;ac79	e3 	. 
	push bc			;ac7a	c5 	. 
	push hl			;ac7b	e5 	. 
	push de			;ac7c	d5 	. 
	push af			;ac7d	f5 	. 
	call sub_6404h		;ac7e	cd 04 64 	. . d 
	pop bc			;ac81	c1 	. 
	pop hl			;ac82	e1 	. 
	push hl			;ac83	e5 	. 
	push hl			;ac84	e5 	. 
	push hl			;ac85	e5 	. 
	jp (hl)			;ac86	e9 	. 
sub_ac87h:
	push hl			;ac87	e5 	. 
lac88h:
	ld a,(hl)			;ac88	7e 	~ 
	or a			;ac89	b7 	. 
	jr z,lac92h		;ac8a	28 06 	( . 
	call l62a6h		;ac8c	cd a6 62 	. . b 
	inc hl			;ac8f	23 	# 
	jr lac88h		;ac90	18 f6 	. . 
lac92h:
	pop hl			;ac92	e1 	. 
	ret			;ac93	c9 	. 
lac94h:
	push hl			;ac94	e5 	. 
	push bc			;ac95	c5 	. 
	ld b,a			;ac96	47 	G 
lac97h:
	ld a,(hl)			;ac97	7e 	~ 
	call l62a6h		;ac98	cd a6 62 	. . b 
	inc hl			;ac9b	23 	# 
	djnz lac97h		;ac9c	10 f9 	. . 
	pop bc			;ac9e	c1 	. 
	pop hl			;ac9f	e1 	. 
	ret			;aca0	c9 	. 
sub_aca1h:
	pop de			;aca1	d1 	. 
	pop hl			;aca2	e1 	. 
	push hl			;aca3	e5 	. 
	push de			;aca4	d5 	. 
	jp sub_ac87h		;aca5	c3 87 ac 	. . . 
sub_aca8h:
	pop de			;aca8	d1 	. 
	pop hl			;aca9	e1 	. 
	push hl			;acaa	e5 	. 
	push de			;acab	d5 	. 
	push bc			;acac	c5 	. 
	ld de,lacb2h		;acad	11 b2 ac 	. . . 
	push de			;acb0	d5 	. 
	jp (hl)			;acb1	e9 	. 
lacb2h:
	pop bc			;acb2	c1 	. 
	ret			;acb3	c9 	. 
sub_acb4h:
	pop af			;acb4	f1 	. 
	pop de			;acb5	d1 	. 
	ld hl,(lb1ach)		;acb6	2a ac b1 	* . . 
	ld sp,hl			;acb9	f9 	. 
	push af			;acba	f5 	. 
	push af			;acbb	f5 	. 
	ex de,hl			;acbc	eb 	. 
	jp (hl)			;acbd	e9 	. 
sub_acbeh:
	call l6c98h		;acbe	cd 98 6c 	. . l 
	pop de			;acc1	d1 	. 
	ld (lb1ach),hl		;acc2	22 ac b1 	" . . 
	ld (lb413h),hl		;acc5	22 13 b4 	" . . 
	ld sp,hl			;acc8	f9 	. 
	push de			;acc9	d5 	. 
	ld hl,(laf5ch)		;acca	2a 5c af 	* \ . 
	call sub_62ddh		;accd	cd dd 62 	. . b 
	add hl,sp			;acd0	39 	9 
	ld (laf70h),hl		;acd1	22 70 af 	" p . 
	push bc			;acd4	c5 	. 
	call sub_6d54h		;acd5	cd 54 6d 	. T m 
	pop bc			;acd8	c1 	. 
	call sub_8005h		;acd9	cd 05 80 	. . . 
	call lacf4h		;acdc	cd f4 ac 	. . . 
	call sub_91c9h		;acdf	cd c9 91 	. . . 
	call sub_6294h		;ace2	cd 94 62 	. . b 
	call sub_6282h		;ace5	cd 82 62 	. . b 
	call l8c23h		;ace8	cd 23 8c 	. # . 
	call sub_8ca6h		;aceb	cd a6 8c 	. . . 
	call sub_83a4h		;acee	cd a4 83 	. . . 
	jp sub_9b7ch		;acf1	c3 7c 9b 	. | . 
lacf4h:
	ld hl,00001h		;acf4	21 01 00 	! . . 
	call sub_ac64h		;acf7	cd 64 ac 	. d . 
	ld hl,(laf4ch)		;acfa	2a 4c af 	* L . 
	ld (lafa6h),hl		;acfd	22 a6 af 	" . . 
	ld a,(lb403h)		;ad00	3a 03 b4 	: . . 
	or a			;ad03	b7 	. 
	jr z,lad09h		;ad04	28 03 	( . 
	ld hl,l6d48h		;ad06	21 48 6d 	! H m 
lad09h:
	ld (lafa8h),hl		;ad09	22 a8 af 	" . . 
	ret			;ad0c	c9 	. 
sub_ad0dh:
	pop hl			;ad0d	e1 	. 
	pop de			;ad0e	d1 	. 
	push de			;ad0f	d5 	. 
	push hl			;ad10	e5 	. 
	ld hl,(lafa8h)		;ad11	2a a8 af 	* . . 
	or a			;ad14	b7 	. 
	sbc hl,de		;ad15	ed 52 	. R 
	ex de,hl			;ad17	eb 	. 
	ld (lafa8h),hl		;ad18	22 a8 af 	" . . 
	ld hl,(lafa6h)		;ad1b	2a a6 af 	* . . 
	or a			;ad1e	b7 	. 
	sbc hl,de		;ad1f	ed 52 	. R 
	ld (lafa6h),hl		;ad21	22 a6 af 	" . . 
	ret			;ad24	c9 	. 
sub_ad25h:
	ld hl,(lafa8h)		;ad25	2a a8 af 	* . . 
	ret			;ad28	c9 	. 
sub_ad29h:
	ld hl,(lafa8h)		;ad29	2a a8 af 	* . . 
	ld de,(lafa6h)		;ad2c	ed 5b a6 af 	. [ . . 
	or a			;ad30	b7 	. 
	sbc hl,de		;ad31	ed 52 	. R 
	ret			;ad33	c9 	. 
sub_ad34h:
	pop hl			;ad34	e1 	. 
	pop de			;ad35	d1 	. 
	push de			;ad36	d5 	. 
	push hl			;ad37	e5 	. 
	jp sub_ad42h		;ad38	c3 42 ad 	. B . 
sub_ad3bh:
	pop hl			;ad3b	e1 	. 
	pop de			;ad3c	d1 	. 
	push de			;ad3d	d5 	. 
	push hl			;ad3e	e5 	. 
	jp lad70h		;ad3f	c3 70 ad 	. p . 
sub_ad42h:
	push de			;ad42	d5 	. 
	ld hl,(laf4ch)		;ad43	2a 4c af 	* L . 
	ld de,(laf60h)		;ad46	ed 5b 60 af 	. [ ` . 
	add hl,de			;ad4a	19 	. 
	ex de,hl			;ad4b	eb 	. 
	ld hl,(lafa6h)		;ad4c	2a a6 af 	* . . 
	or a			;ad4f	b7 	. 
	sbc hl,de		;ad50	ed 52 	. R 
	inc hl			;ad52	23 	# 
	ld a,001h		;ad53	3e 01 	> . 
	call sub_abfch		;ad55	cd fc ab 	. . . 
	pop de			;ad58	d1 	. 
	ld hl,(lafa6h)		;ad59	2a a6 af 	* . . 
	ld (hl),e			;ad5c	73 	s 
	push hl			;ad5d	e5 	. 
	push de			;ad5e	d5 	. 
	call sub_aeeeh		;ad5f	cd ee ae 	. . . 
	pop de			;ad62	d1 	. 
	pop hl			;ad63	e1 	. 
	inc hl			;ad64	23 	# 
	ld (lafa6h),hl		;ad65	22 a6 af 	" . . 
	ld hl,(lafa8h)		;ad68	2a a8 af 	* . . 
	inc hl			;ad6b	23 	# 
	ld (lafa8h),hl		;ad6c	22 a8 af 	" . . 
	ret			;ad6f	c9 	. 
lad70h:
	call sub_ad42h		;ad70	cd 42 ad 	. B . 
	ld e,d			;ad73	5a 	Z 
	jp sub_ad42h		;ad74	c3 42 ad 	. B . 
sub_ad77h:
	pop af			;ad77	f1 	. 
	pop de			;ad78	d1 	. 
	pop hl			;ad79	e1 	. 
	push hl			;ad7a	e5 	. 
	push de			;ad7b	d5 	. 
	push af			;ad7c	f5 	. 
	push hl			;ad7d	e5 	. 
	call sub_ad42h		;ad7e	cd 42 ad 	. B . 
	pop de			;ad81	d1 	. 
	jp lad70h		;ad82	c3 70 ad 	. p . 
sub_ad85h:
	pop hl			;ad85	e1 	. 
	ld e,(hl)			;ad86	5e 	^ 
	inc hl			;ad87	23 	# 
	push hl			;ad88	e5 	. 
	jp sub_ad42h		;ad89	c3 42 ad 	. B . 
sub_ad8ch:
	pop hl			;ad8c	e1 	. 
	ld e,(hl)			;ad8d	5e 	^ 
	inc hl			;ad8e	23 	# 
	push hl			;ad8f	e5 	. 
	call sub_ad42h		;ad90	cd 42 ad 	. B . 
sub_ad93h:
	pop hl			;ad93	e1 	. 
	ld e,(hl)			;ad94	5e 	^ 
	inc hl			;ad95	23 	# 
	ld d,(hl)			;ad96	56 	V 
	inc hl			;ad97	23 	# 
	push hl			;ad98	e5 	. 
	jp lad70h		;ad99	c3 70 ad 	. p . 
sub_ad9ch:
	pop de			;ad9c	d1 	. 
	ld a,(de)			;ad9d	1a 	. 
	inc de			;ad9e	13 	. 
	push de			;ad9f	d5 	. 
	push hl			;ada0	e5 	. 
	ld e,a			;ada1	5f 	_ 
	call sub_ad42h		;ada2	cd 42 ad 	. B . 
	pop de			;ada5	d1 	. 
	jp lad70h		;ada6	c3 70 ad 	. p . 
sub_ada9h:
	ld e,(hl)			;ada9	5e 	^ 
	push hl			;adaa	e5 	. 
	call sub_ad42h		;adab	cd 42 ad 	. B . 
	pop hl			;adae	e1 	. 
	cpi		;adaf	ed a1 	. . 
	ret po			;adb1	e0 	. 
	jr sub_ada9h		;adb2	18 f5 	. . 
sub_adb4h:
	push hl			;adb4	e5 	. 
	call sub_954eh		;adb5	cd 4e 95 	. N . 
	pop de			;adb8	d1 	. 
	ret			;adb9	c9 	. 
sub_adbah:
	push hl			;adba	e5 	. 
	call sub_9487h		;adbb	cd 87 94 	. . . 
	pop de			;adbe	d1 	. 
	ret			;adbf	c9 	. 
sub_adc0h:
	push hl			;adc0	e5 	. 
	call sub_946ah		;adc1	cd 6a 94 	. j . 
	pop de			;adc4	d1 	. 
	ret			;adc5	c9 	. 
sub_adc6h:
	call sub_a1bah		;adc6	cd ba a1 	. . . 
sub_adc9h:
	push hl			;adc9	e5 	. 
	call sub_95bch		;adca	cd bc 95 	. . . 
	pop hl			;adcd	e1 	. 
	ret			;adce	c9 	. 
sub_adcfh:
	ld e,023h		;adcf	1e 23 	. # 
	jp sub_ad42h		;add1	c3 42 ad 	. B . 
sub_add4h:
	ld e,02bh		;add4	1e 2b 	. + 
	jp sub_ad42h		;add6	c3 42 ad 	. B . 
sub_add9h:
	pop af			;add9	f1 	. 
	pop de			;adda	d1 	. 
	pop hl			;addb	e1 	. 
	push de			;addc	d5 	. 
	push de			;addd	d5 	. 
	push af			;adde	f5 	. 
	push de			;addf	d5 	. 
	call sub_ad9ch		;ade0	cd 9c ad 	. . . 
	ld hl,(07de1h)		;ade3	2a e1 7d 	* . } 
	cp 002h		;ade6	fe 02 	. . 
	ret nz			;ade8	c0 	. 
	call sub_ad93h		;ade9	cd 93 ad 	. . . 
	ld h,000h		;adec	26 00 	& . 
	ret			;adee	c9 	. 
sub_adefh:
	call sub_ad93h		;adef	cd 93 ad 	. . . 
	ld de,(0e1f1h)		;adf2	ed 5b f1 e1 	. [ . . 
	pop de			;adf6	d1 	. 
	push de			;adf7	d5 	. 
	push de			;adf8	d5 	. 
	push af			;adf9	f5 	. 
	push hl			;adfa	e5 	. 
	call lad70h		;adfb	cd 70 ad 	. p . 
	pop hl			;adfe	e1 	. 
	ld a,l			;adff	7d 	} 
	cp 002h		;ae00	fe 02 	. . 
	ret nz			;ae02	c0 	. 
	call sub_ad93h		;ae03	cd 93 ad 	. . . 
	ld d,000h		;ae06	16 00 	. . 
	ret			;ae08	c9 	. 
sub_ae09h:
	pop af			;ae09	f1 	. 
	pop hl			;ae0a	e1 	. 
	push hl			;ae0b	e5 	. 
	push af			;ae0c	f5 	. 
	ld a,l			;ae0d	7d 	} 
	cp 002h		;ae0e	fe 02 	. . 
	jr z,lae18h		;ae10	28 06 	( . 
	ld hl,sub_6421h		;ae12	21 21 64 	! ! d 
	jp sub_adc9h		;ae15	c3 c9 ad 	. . . 
lae18h:
	call sub_ad8ch		;ae18	cd 8c ad 	. . . 
	ld l,(hl)			;ae1b	6e 	n 
	ld h,000h		;ae1c	26 00 	& . 
	ret			;ae1e	c9 	. 
sub_ae1fh:
	call sub_ad85h		;ae1f	cd 85 ad 	. . . 
	ld e,(hl)			;ae22	5e 	^ 
	pop af			;ae23	f1 	. 
	pop hl			;ae24	e1 	. 
	push hl			;ae25	e5 	. 
	push af			;ae26	f5 	. 
	ld a,l			;ae27	7d 	} 
	cp 002h		;ae28	fe 02 	. . 
	ld de,00016h		;ae2a	11 16 00 	. . . 
	jr z,lae32h		;ae2d	28 03 	( . 
	ld de,05623h		;ae2f	11 23 56 	. # V 
lae32h:
	jp lad70h		;ae32	c3 70 ad 	. p . 
sub_ae35h:
	pop af			;ae35	f1 	. 
	pop de			;ae36	d1 	. 
	pop hl			;ae37	e1 	. 
	push hl			;ae38	e5 	. 
	push de			;ae39	d5 	. 
	push af			;ae3a	f5 	. 
	ld a,e			;ae3b	7b 	{ 
	cp 002h		;ae3c	fe 02 	. . 
	jr z,$+7		;ae3e	28 05 	( . 
	call sub_ad9ch		;ae40	cd 9c ad 	. . . 
	ld (0e5c9h),hl		;ae43	22 c9 e5 	" . . 
	call sub_ad85h		;ae46	cd 85 ad 	. . . 
	ld a,l			;ae49	7d 	} 
	pop hl			;ae4a	e1 	. 
	call sub_ad9ch		;ae4b	cd 9c ad 	. . . 
	ld (0f1c9h),a		;ae4e	32 c9 f1 	2 . . 
	pop hl			;ae51	e1 	. 
	push hl			;ae52	e5 	. 
	push af			;ae53	f5 	. 
	ld a,l			;ae54	7d 	} 
	cp 002h		;ae55	fe 02 	. . 
	jr z,lae5fh		;ae57	28 06 	( . 
	ld hl,l6440h		;ae59	21 40 64 	! @ d 
	jp sub_adc9h		;ae5c	c3 c9 ad 	. . . 
lae5fh:
	call sub_ad8ch		;ae5f	cd 8c ad 	. . . 
	pop de			;ae62	d1 	. 
	ld a,l			;ae63	7d 	} 
	ld (de),a			;ae64	12 	. 
	ret			;ae65	c9 	. 
sub_ae66h:
	pop hl			;ae66	e1 	. 
	ld e,(hl)			;ae67	5e 	^ 
lae68h:
	ld bc,laeach		;ae68	01 ac ae 	. . . 
	push bc			;ae6b	c5 	. 
	xor a			;ae6c	af 	. 
	ld d,a			;ae6d	57 	W 
	push de			;ae6e	d5 	. 
	ld bc,(laf19h)		;ae6f	ed 4b 19 af 	. K . . 
	push bc			;ae73	c5 	. 
	xor a			;ae74	af 	. 
	cp e			;ae75	bb 	. 
	jr z,lae91h		;ae76	28 19 	( . 
	ld hl,(laf6eh)		;ae78	2a 6e af 	* n . 
	ld a,h			;ae7b	7c 	| 
	or l			;ae7c	b5 	. 
	ld hl,laec4h		;ae7d	21 c4 ae 	! . . 
	jr z,lae96h		;ae80	28 14 	( . 
	ld hl,(laf5ah)		;ae82	2a 5a af 	* Z . 
lae85h:
	dec de			;ae85	1b 	. 
	ld a,e			;ae86	7b 	{ 
	or d			;ae87	b2 	. 
	jr z,lae96h		;ae88	28 0c 	( . 
	xor a			;ae8a	af 	. 
lae8bh:
	cp (hl)			;ae8b	be 	. 
	inc hl			;ae8c	23 	# 
	jr nz,lae8bh		;ae8d	20 fc 	  . 
	jr lae85h		;ae8f	18 f4 	. . 
lae91h:
	inc hl			;ae91	23 	# 
	ld a,(hl)			;ae92	7e 	~ 
	inc hl			;ae93	23 	# 
	ld h,(hl)			;ae94	66 	f 
	ld l,a			;ae95	6f 	o 
lae96h:
	push hl			;ae96	e5 	. 
	ld hl,0000ah		;ae97	21 0a 00 	! . . 
	push hl			;ae9a	e5 	. 
	call sub_653dh		;ae9b	cd 3d 65 	. = e 
	call sub_acbeh		;ae9e	cd be ac 	. . . 
	call sub_6285h		;aea1	cd 85 62 	. . b 
	cp 007h		;aea4	fe 07 	. . 
	jp z,l6d51h		;aea6	ca 51 6d 	. Q m 
	jp l6273h		;aea9	c3 73 62 	. s b 
laeach:
	ld a,(bc)			;aeac	0a 	. 
	ld b,l			;aead	45 	E 
	ld d,d			;aeae	52 	R 
	ld d,d			;aeaf	52 	R 
	ld c,a			;aeb0	4f 	O 
	ld d,d			;aeb1	52 	R 
	jr nz,$+39		;aeb2	20 25 	  % 
	ld h,h			;aeb4	64 	d 
	jr nz,laef8h		;aeb5	20 41 	  A 
	ld d,h			;aeb7	54 	T 
	jr nz,laf06h		;aeb8	20 4c 	  L 
	ld c,c			;aeba	49 	I 
	ld c,(hl)			;aebb	4e 	N 
	ld b,l			;aebc	45 	E 
	jr nz,laee4h		;aebd	20 25 	  % 
	ld (hl),l			;aebf	75 	u 
	ld a,(bc)			;aec0	0a 	. 
	dec h			;aec1	25 	% 
	ld (hl),e			;aec2	73 	s 
	ld a,(bc)			;aec3	0a 	. 
laec4h:
	nop			;aec4	00 	. 
sub_aec5h:
	pop hl			;aec5	e1 	. 
	pop de			;aec6	d1 	. 
	jp lae68h		;aec7	c3 68 ae 	. h . 
sub_aecah:
	ld a,(laf15h)		;aeca	3a 15 af 	: . . 
	or a			;aecd	b7 	. 
	pop hl			;aece	e1 	. 
	ld a,(hl)			;aecf	7e 	~ 
	inc hl			;aed0	23 	# 
	push hl			;aed1	e5 	. 
	ret z			;aed2	c8 	. 
	ld l,a			;aed3	6f 	o 
	ld h,000h		;aed4	26 00 	& . 
	add hl,hl			;aed6	29 	) 
	ld de,laee0h		;aed7	11 e0 ae 	. . . 
	add hl,de			;aeda	19 	. 
	ld e,(hl)			;aedb	5e 	^ 
	inc hl			;aedc	23 	# 
	ld d,(hl)			;aedd	56 	V 
	ex de,hl			;aede	eb 	. 
	jp (hl)			;aedf	e9 	. 
laee0h:
	nop			;aee0	00 	. 
	nop			;aee1	00 	. 
	xor 0aeh		;aee2	ee ae 	. . 
laee4h:
	xor 0aeh		;aee4	ee ae 	. . 
	xor 0aeh		;aee6	ee ae 	. . 
	xor 0aeh		;aee8	ee ae 	. . 
	xor 0aeh		;aeea	ee ae 	. . 
	xor 0aeh		;aeec	ee ae 	. . 
sub_aeeeh:
	ret			;aeee	c9 	. 
	nop			;aeef	00 	. 
	nop			;aef0	00 	. 
	nop			;aef1	00 	. 
	nop			;aef2	00 	. 
	nop			;aef3	00 	. 
	nop			;aef4	00 	. 
	nop			;aef5	00 	. 
	nop			;aef6	00 	. 
	nop			;aef7	00 	. 
laef8h:
	nop			;aef8	00 	. 
	nop			;aef9	00 	. 
	nop			;aefa	00 	. 
	nop			;aefb	00 	. 
	nop			;aefc	00 	. 
	nop			;aefd	00 	. 
	nop			;aefe	00 	. 
	nop			;aeff	00 	. 
laf00h:
	nop			;af00	00 	. 
laf01h:
	nop			;af01	00 	. 
	nop			;af02	00 	. 
	nop			;af03	00 	. 
laf04h:
	nop			;af04	00 	. 
	nop			;af05	00 	. 
laf06h:
	nop			;af06	00 	. 
	nop			;af07	00 	. 
laf08h:
	nop			;af08	00 	. 
	nop			;af09	00 	. 
	nop			;af0a	00 	. 
	nop			;af0b	00 	. 
laf0ch:
	ld a,(bc)			;af0c	0a 	. 
laf0dh:
	jr nz,laf0fh		;af0d	20 00 	  . 
laf0fh:
	nop			;af0f	00 	. 
laf10h:
	nop			;af10	00 	. 
	nop			;af11	00 	. 
	nop			;af12	00 	. 
laf13h:
	nop			;af13	00 	. 
	nop			;af14	00 	. 
laf15h:
	nop			;af15	00 	. 
	nop			;af16	00 	. 
laf17h:
	nop			;af17	00 	. 
	nop			;af18	00 	. 
laf19h:
	nop			;af19	00 	. 
	nop			;af1a	00 	. 
	nop			;af1b	00 	. 
laf1ch:
	nop			;af1c	00 	. 
	nop			;af1d	00 	. 
laf1eh:
	nop			;af1e	00 	. 
	nop			;af1f	00 	. 
	nop			;af20	00 	. 
	nop			;af21	00 	. 
	nop			;af22	00 	. 
	nop			;af23	00 	. 
	nop			;af24	00 	. 
	nop			;af25	00 	. 
	nop			;af26	00 	. 
	nop			;af27	00 	. 
	nop			;af28	00 	. 
	nop			;af29	00 	. 
	nop			;af2a	00 	. 
	nop			;af2b	00 	. 
	nop			;af2c	00 	. 
	nop			;af2d	00 	. 
	nop			;af2e	00 	. 
	nop			;af2f	00 	. 
	nop			;af30	00 	. 
	nop			;af31	00 	. 
laf32h:
	nop			;af32	00 	. 
	nop			;af33	00 	. 
	nop			;af34	00 	. 
	nop			;af35	00 	. 
	nop			;af36	00 	. 
	nop			;af37	00 	. 
laf38h:
	nop			;af38	00 	. 
	nop			;af39	00 	. 
	nop			;af3a	00 	. 
	nop			;af3b	00 	. 
	nop			;af3c	00 	. 
	nop			;af3d	00 	. 
	nop			;af3e	00 	. 
	nop			;af3f	00 	. 
	nop			;af40	00 	. 
	nop			;af41	00 	. 
	nop			;af42	00 	. 
	nop			;af43	00 	. 
	nop			;af44	00 	. 
	nop			;af45	00 	. 
	nop			;af46	00 	. 
	nop			;af47	00 	. 
	nop			;af48	00 	. 
laf49h:
	nop			;af49	00 	. 
laf4ah:
	nop			;af4a	00 	. 
	cp b			;af4b	b8 	. 
laf4ch:
	nop			;af4c	00 	. 
	cp b			;af4d	b8 	. 
laf4eh:
	nop			;af4e	00 	. 
	cp b			;af4f	b8 	. 
laf50h:
	nop			;af50	00 	. 
	cp b			;af51	b8 	. 
	nop			;af52	00 	. 
	cp b			;af53	b8 	. 
laf54h:
	nop			;af54	00 	. 
	cp b			;af55	b8 	. 
laf56h:
	nop			;af56	00 	. 
	cp b			;af57	b8 	. 
	nop			;af58	00 	. 
	cp e			;af59	bb 	. 
laf5ah:
	nop			;af5a	00 	. 
	cp e			;af5b	bb 	. 
laf5ch:
	nop			;af5c	00 	. 
	jp 00000h		;af5d	c3 00 00 	. . . 
laf60h:
	nop			;af60	00 	. 
	nop			;af61	00 	. 
laf62h:
	nop			;af62	00 	. 
	nop			;af63	00 	. 
laf64h:
	nop			;af64	00 	. 
	nop			;af65	00 	. 
	nop			;af66	00 	. 
	nop			;af67	00 	. 
laf68h:
	nop			;af68	00 	. 
	nop			;af69	00 	. 
laf6ah:
	ld a,h			;af6a	7c 	| 
	ld (bc),a			;af6b	02 	. 
	nop			;af6c	00 	. 
	nop			;af6d	00 	. 
laf6eh:
	nop			;af6e	00 	. 
	ex af,af'			;af6f	08 	. 
laf70h:
	nop			;af70	00 	. 
	nop			;af71	00 	. 
laf72h:
	nop			;af72	00 	. 
	nop			;af73	00 	. 
	nop			;af74	00 	. 
	nop			;af75	00 	. 
	nop			;af76	00 	. 
	nop			;af77	00 	. 
	nop			;af78	00 	. 
	nop			;af79	00 	. 
	nop			;af7a	00 	. 
	nop			;af7b	00 	. 
	nop			;af7c	00 	. 
	nop			;af7d	00 	. 
	nop			;af7e	00 	. 
	nop			;af7f	00 	. 
	nop			;af80	00 	. 
	nop			;af81	00 	. 
	nop			;af82	00 	. 
	nop			;af83	00 	. 
	nop			;af84	00 	. 
	nop			;af85	00 	. 
	nop			;af86	00 	. 
	nop			;af87	00 	. 
	nop			;af88	00 	. 
	nop			;af89	00 	. 
	nop			;af8a	00 	. 
	nop			;af8b	00 	. 
	nop			;af8c	00 	. 
	nop			;af8d	00 	. 
	nop			;af8e	00 	. 
	nop			;af8f	00 	. 
	nop			;af90	00 	. 
	nop			;af91	00 	. 
	nop			;af92	00 	. 
	nop			;af93	00 	. 
	nop			;af94	00 	. 
	nop			;af95	00 	. 
	nop			;af96	00 	. 
	nop			;af97	00 	. 
	nop			;af98	00 	. 
	nop			;af99	00 	. 
	nop			;af9a	00 	. 
	nop			;af9b	00 	. 
	nop			;af9c	00 	. 
	nop			;af9d	00 	. 
	nop			;af9e	00 	. 
	nop			;af9f	00 	. 
	nop			;afa0	00 	. 
	nop			;afa1	00 	. 
	nop			;afa2	00 	. 
	nop			;afa3	00 	. 
lafa4h:
	and h			;afa4	a4 	. 
	xor a			;afa5	af 	. 
lafa6h:
	nop			;afa6	00 	. 
	nop			;afa7	00 	. 
lafa8h:
	nop			;afa8	00 	. 
	nop			;afa9	00 	. 
lafaah:
	ld a,h			;afaa	7c 	| 
	ld (bc),a			;afab	02 	. 
lafach:
	nop			;afac	00 	. 
	nop			;afad	00 	. 
	nop			;afae	00 	. 
	nop			;afaf	00 	. 
	nop			;afb0	00 	. 
lafb1h:
	ld bc,00002h		;afb1	01 02 00 	. . . 
	nop			;afb4	00 	. 
	nop			;afb5	00 	. 
lafb6h:
	ld (bc),a			;afb6	02 	. 
	ld bc,00000h		;afb7	01 00 00 	. . . 
	nop			;afba	00 	. 
lafbbh:
	inc bc			;afbb	03 	. 
	ld (bc),a			;afbc	02 	. 
	nop			;afbd	00 	. 
	nop			;afbe	00 	. 
	nop			;afbf	00 	. 
	inc b			;afc0	04 	. 
	ld (bc),a			;afc1	02 	. 
	nop			;afc2	00 	. 
	nop			;afc3	00 	. 
	nop			;afc4	00 	. 
lafc5h:
	dec b			;afc5	05 	. 
	dec b			;afc6	05 	. 
	nop			;afc7	00 	. 
	nop			;afc8	00 	. 
	nop			;afc9	00 	. 
lafcah:
	ld b,002h		;afca	06 02 	. . 
	nop			;afcc	00 	. 
	or (hl)			;afcd	b6 	. 
	xor a			;afce	af 	. 
lafcfh:
	rlca			;afcf	07 	. 
	ld (bc),a			;afd0	02 	. 
	nop			;afd1	00 	. 
	or c			;afd2	b1 	. 
	xor a			;afd3	af 	. 
	ld b,002h		;afd4	06 02 	. . 
	nop			;afd6	00 	. 
	or c			;afd7	b1 	. 
	xor a			;afd8	af 	. 
lafd9h:
	rlca			;afd9	07 	. 
	ld (bc),a			;afda	02 	. 
	nop			;afdb	00 	. 
	call nc,000afh		;afdc	d4 af 00 	. . . 
	nop			;afdf	00 	. 
	nop			;afe0	00 	. 
	nop			;afe1	00 	. 
	nop			;afe2	00 	. 
	nop			;afe3	00 	. 
	nop			;afe4	00 	. 
	nop			;afe5	00 	. 
	nop			;afe6	00 	. 
	nop			;afe7	00 	. 
	nop			;afe8	00 	. 
	nop			;afe9	00 	. 
	nop			;afea	00 	. 
	nop			;afeb	00 	. 
	nop			;afec	00 	. 
	nop			;afed	00 	. 
	nop			;afee	00 	. 
	nop			;afef	00 	. 
	nop			;aff0	00 	. 
	nop			;aff1	00 	. 
	nop			;aff2	00 	. 
	nop			;aff3	00 	. 
	nop			;aff4	00 	. 
	nop			;aff5	00 	. 
	nop			;aff6	00 	. 
	nop			;aff7	00 	. 
	nop			;aff8	00 	. 
	nop			;aff9	00 	. 
	nop			;affa	00 	. 
	nop			;affb	00 	. 
	nop			;affc	00 	. 
	nop			;affd	00 	. 
	nop			;affe	00 	. 
	nop			;afff	00 	. 
	nop			;b000	00 	. 
	nop			;b001	00 	. 
	nop			;b002	00 	. 
	nop			;b003	00 	. 
	nop			;b004	00 	. 
	nop			;b005	00 	. 
	nop			;b006	00 	. 
	nop			;b007	00 	. 
	nop			;b008	00 	. 
	nop			;b009	00 	. 
	nop			;b00a	00 	. 
	nop			;b00b	00 	. 
	nop			;b00c	00 	. 
	nop			;b00d	00 	. 
	nop			;b00e	00 	. 
	nop			;b00f	00 	. 
	nop			;b010	00 	. 
	nop			;b011	00 	. 
	nop			;b012	00 	. 
	nop			;b013	00 	. 
	nop			;b014	00 	. 
	nop			;b015	00 	. 
	nop			;b016	00 	. 
	nop			;b017	00 	. 
	nop			;b018	00 	. 
	nop			;b019	00 	. 
	nop			;b01a	00 	. 
	nop			;b01b	00 	. 
	nop			;b01c	00 	. 
	nop			;b01d	00 	. 
	nop			;b01e	00 	. 
	nop			;b01f	00 	. 
	nop			;b020	00 	. 
	nop			;b021	00 	. 
	nop			;b022	00 	. 
	nop			;b023	00 	. 
	nop			;b024	00 	. 
	nop			;b025	00 	. 
	nop			;b026	00 	. 
	nop			;b027	00 	. 
	nop			;b028	00 	. 
	nop			;b029	00 	. 
	nop			;b02a	00 	. 
	nop			;b02b	00 	. 
	nop			;b02c	00 	. 
	nop			;b02d	00 	. 
	nop			;b02e	00 	. 
	nop			;b02f	00 	. 
	nop			;b030	00 	. 
	nop			;b031	00 	. 
	nop			;b032	00 	. 
	nop			;b033	00 	. 
	nop			;b034	00 	. 
	nop			;b035	00 	. 
	nop			;b036	00 	. 
	nop			;b037	00 	. 
	nop			;b038	00 	. 
	nop			;b039	00 	. 
	nop			;b03a	00 	. 
	nop			;b03b	00 	. 
	nop			;b03c	00 	. 
	nop			;b03d	00 	. 
	nop			;b03e	00 	. 
	nop			;b03f	00 	. 
	nop			;b040	00 	. 
	nop			;b041	00 	. 
	nop			;b042	00 	. 
	nop			;b043	00 	. 
	nop			;b044	00 	. 
	nop			;b045	00 	. 
	nop			;b046	00 	. 
	nop			;b047	00 	. 
	nop			;b048	00 	. 
	nop			;b049	00 	. 
	nop			;b04a	00 	. 
	nop			;b04b	00 	. 
	nop			;b04c	00 	. 
	nop			;b04d	00 	. 
	nop			;b04e	00 	. 
	nop			;b04f	00 	. 
	nop			;b050	00 	. 
	nop			;b051	00 	. 
	nop			;b052	00 	. 
	nop			;b053	00 	. 
	nop			;b054	00 	. 
	nop			;b055	00 	. 
	nop			;b056	00 	. 
	nop			;b057	00 	. 
	nop			;b058	00 	. 
	nop			;b059	00 	. 
	nop			;b05a	00 	. 
	nop			;b05b	00 	. 
	nop			;b05c	00 	. 
	nop			;b05d	00 	. 
	nop			;b05e	00 	. 
	nop			;b05f	00 	. 
	nop			;b060	00 	. 
	nop			;b061	00 	. 
	nop			;b062	00 	. 
	nop			;b063	00 	. 
	nop			;b064	00 	. 
	nop			;b065	00 	. 
	nop			;b066	00 	. 
	nop			;b067	00 	. 
	nop			;b068	00 	. 
	nop			;b069	00 	. 
	nop			;b06a	00 	. 
	nop			;b06b	00 	. 
	nop			;b06c	00 	. 
	nop			;b06d	00 	. 
	nop			;b06e	00 	. 
	nop			;b06f	00 	. 
	nop			;b070	00 	. 
	nop			;b071	00 	. 
	nop			;b072	00 	. 
	nop			;b073	00 	. 
	nop			;b074	00 	. 
	nop			;b075	00 	. 
	nop			;b076	00 	. 
	nop			;b077	00 	. 
	nop			;b078	00 	. 
	nop			;b079	00 	. 
	nop			;b07a	00 	. 
	nop			;b07b	00 	. 
	nop			;b07c	00 	. 
	nop			;b07d	00 	. 
	nop			;b07e	00 	. 
	nop			;b07f	00 	. 
	nop			;b080	00 	. 
	nop			;b081	00 	. 
	nop			;b082	00 	. 
	nop			;b083	00 	. 
	nop			;b084	00 	. 
	nop			;b085	00 	. 
	nop			;b086	00 	. 
	nop			;b087	00 	. 
	nop			;b088	00 	. 
	nop			;b089	00 	. 
	nop			;b08a	00 	. 
	nop			;b08b	00 	. 
	nop			;b08c	00 	. 
	nop			;b08d	00 	. 
	nop			;b08e	00 	. 
	nop			;b08f	00 	. 
	nop			;b090	00 	. 
	nop			;b091	00 	. 
	nop			;b092	00 	. 
	nop			;b093	00 	. 
	nop			;b094	00 	. 
	nop			;b095	00 	. 
	nop			;b096	00 	. 
	nop			;b097	00 	. 
	nop			;b098	00 	. 
	nop			;b099	00 	. 
	nop			;b09a	00 	. 
	nop			;b09b	00 	. 
	nop			;b09c	00 	. 
	nop			;b09d	00 	. 
	nop			;b09e	00 	. 
	nop			;b09f	00 	. 
	nop			;b0a0	00 	. 
	nop			;b0a1	00 	. 
	nop			;b0a2	00 	. 
	nop			;b0a3	00 	. 
	nop			;b0a4	00 	. 
	nop			;b0a5	00 	. 
	nop			;b0a6	00 	. 
	nop			;b0a7	00 	. 
	nop			;b0a8	00 	. 
	nop			;b0a9	00 	. 
	nop			;b0aa	00 	. 
	nop			;b0ab	00 	. 
	nop			;b0ac	00 	. 
	nop			;b0ad	00 	. 
	nop			;b0ae	00 	. 
	nop			;b0af	00 	. 
	nop			;b0b0	00 	. 
	nop			;b0b1	00 	. 
	nop			;b0b2	00 	. 
	nop			;b0b3	00 	. 
	nop			;b0b4	00 	. 
	nop			;b0b5	00 	. 
	nop			;b0b6	00 	. 
	nop			;b0b7	00 	. 
	nop			;b0b8	00 	. 
	nop			;b0b9	00 	. 
	nop			;b0ba	00 	. 
	nop			;b0bb	00 	. 
	nop			;b0bc	00 	. 
	nop			;b0bd	00 	. 
	nop			;b0be	00 	. 
	nop			;b0bf	00 	. 
	nop			;b0c0	00 	. 
	nop			;b0c1	00 	. 
	nop			;b0c2	00 	. 
	nop			;b0c3	00 	. 
	nop			;b0c4	00 	. 
	nop			;b0c5	00 	. 
	nop			;b0c6	00 	. 
	nop			;b0c7	00 	. 
	nop			;b0c8	00 	. 
	nop			;b0c9	00 	. 
	nop			;b0ca	00 	. 
	nop			;b0cb	00 	. 
	nop			;b0cc	00 	. 
	nop			;b0cd	00 	. 
	nop			;b0ce	00 	. 
	nop			;b0cf	00 	. 
	nop			;b0d0	00 	. 
	nop			;b0d1	00 	. 
	nop			;b0d2	00 	. 
	nop			;b0d3	00 	. 
	nop			;b0d4	00 	. 
	nop			;b0d5	00 	. 
	nop			;b0d6	00 	. 
	nop			;b0d7	00 	. 
	nop			;b0d8	00 	. 
	nop			;b0d9	00 	. 
	nop			;b0da	00 	. 
	nop			;b0db	00 	. 
	nop			;b0dc	00 	. 
	nop			;b0dd	00 	. 
	nop			;b0de	00 	. 
	nop			;b0df	00 	. 
	nop			;b0e0	00 	. 
	nop			;b0e1	00 	. 
	nop			;b0e2	00 	. 
	nop			;b0e3	00 	. 
	nop			;b0e4	00 	. 
	nop			;b0e5	00 	. 
	nop			;b0e6	00 	. 
	nop			;b0e7	00 	. 
	nop			;b0e8	00 	. 
	nop			;b0e9	00 	. 
	nop			;b0ea	00 	. 
	nop			;b0eb	00 	. 
	nop			;b0ec	00 	. 
	nop			;b0ed	00 	. 
	nop			;b0ee	00 	. 
	nop			;b0ef	00 	. 
	nop			;b0f0	00 	. 
	nop			;b0f1	00 	. 
	nop			;b0f2	00 	. 
	nop			;b0f3	00 	. 
	nop			;b0f4	00 	. 
	nop			;b0f5	00 	. 
	nop			;b0f6	00 	. 
	nop			;b0f7	00 	. 
	nop			;b0f8	00 	. 
	nop			;b0f9	00 	. 
	nop			;b0fa	00 	. 
	nop			;b0fb	00 	. 
	nop			;b0fc	00 	. 
	nop			;b0fd	00 	. 
	nop			;b0fe	00 	. 
	nop			;b0ff	00 	. 
	nop			;b100	00 	. 
	nop			;b101	00 	. 
	nop			;b102	00 	. 
	nop			;b103	00 	. 
	nop			;b104	00 	. 
	nop			;b105	00 	. 
	nop			;b106	00 	. 
	nop			;b107	00 	. 
	nop			;b108	00 	. 
	nop			;b109	00 	. 
	nop			;b10a	00 	. 
	nop			;b10b	00 	. 
	nop			;b10c	00 	. 
	nop			;b10d	00 	. 
	nop			;b10e	00 	. 
	nop			;b10f	00 	. 
	nop			;b110	00 	. 
	nop			;b111	00 	. 
	nop			;b112	00 	. 
	nop			;b113	00 	. 
	nop			;b114	00 	. 
	nop			;b115	00 	. 
	nop			;b116	00 	. 
	nop			;b117	00 	. 
	nop			;b118	00 	. 
	nop			;b119	00 	. 
	nop			;b11a	00 	. 
	nop			;b11b	00 	. 
	nop			;b11c	00 	. 
	nop			;b11d	00 	. 
	nop			;b11e	00 	. 
	nop			;b11f	00 	. 
	nop			;b120	00 	. 
	nop			;b121	00 	. 
	nop			;b122	00 	. 
	nop			;b123	00 	. 
	nop			;b124	00 	. 
	nop			;b125	00 	. 
	nop			;b126	00 	. 
	nop			;b127	00 	. 
	nop			;b128	00 	. 
	nop			;b129	00 	. 
	nop			;b12a	00 	. 
	nop			;b12b	00 	. 
	nop			;b12c	00 	. 
	nop			;b12d	00 	. 
	nop			;b12e	00 	. 
	nop			;b12f	00 	. 
	nop			;b130	00 	. 
	nop			;b131	00 	. 
	nop			;b132	00 	. 
	nop			;b133	00 	. 
	nop			;b134	00 	. 
	nop			;b135	00 	. 
	nop			;b136	00 	. 
	nop			;b137	00 	. 
	nop			;b138	00 	. 
	nop			;b139	00 	. 
	nop			;b13a	00 	. 
	nop			;b13b	00 	. 
	nop			;b13c	00 	. 
	nop			;b13d	00 	. 
	nop			;b13e	00 	. 
	nop			;b13f	00 	. 
	nop			;b140	00 	. 
	nop			;b141	00 	. 
	nop			;b142	00 	. 
	nop			;b143	00 	. 
	nop			;b144	00 	. 
	nop			;b145	00 	. 
	nop			;b146	00 	. 
	nop			;b147	00 	. 
	nop			;b148	00 	. 
	nop			;b149	00 	. 
	nop			;b14a	00 	. 
	nop			;b14b	00 	. 
	nop			;b14c	00 	. 
	nop			;b14d	00 	. 
	nop			;b14e	00 	. 
	nop			;b14f	00 	. 
	nop			;b150	00 	. 
	nop			;b151	00 	. 
	nop			;b152	00 	. 
	nop			;b153	00 	. 
	nop			;b154	00 	. 
	nop			;b155	00 	. 
	nop			;b156	00 	. 
	nop			;b157	00 	. 
	nop			;b158	00 	. 
	nop			;b159	00 	. 
	nop			;b15a	00 	. 
	nop			;b15b	00 	. 
	nop			;b15c	00 	. 
	nop			;b15d	00 	. 
	nop			;b15e	00 	. 
	nop			;b15f	00 	. 
	nop			;b160	00 	. 
	nop			;b161	00 	. 
	nop			;b162	00 	. 
	nop			;b163	00 	. 
	nop			;b164	00 	. 
	nop			;b165	00 	. 
	nop			;b166	00 	. 
	nop			;b167	00 	. 
	nop			;b168	00 	. 
	nop			;b169	00 	. 
	nop			;b16a	00 	. 
	nop			;b16b	00 	. 
	nop			;b16c	00 	. 
	nop			;b16d	00 	. 
	nop			;b16e	00 	. 
	nop			;b16f	00 	. 
	nop			;b170	00 	. 
	nop			;b171	00 	. 
	nop			;b172	00 	. 
	nop			;b173	00 	. 
	nop			;b174	00 	. 
	nop			;b175	00 	. 
	nop			;b176	00 	. 
	nop			;b177	00 	. 
	nop			;b178	00 	. 
	nop			;b179	00 	. 
	nop			;b17a	00 	. 
	nop			;b17b	00 	. 
	nop			;b17c	00 	. 
	nop			;b17d	00 	. 
	nop			;b17e	00 	. 
	nop			;b17f	00 	. 
	nop			;b180	00 	. 
	nop			;b181	00 	. 
	nop			;b182	00 	. 
	nop			;b183	00 	. 
	nop			;b184	00 	. 
	nop			;b185	00 	. 
	nop			;b186	00 	. 
	nop			;b187	00 	. 
	nop			;b188	00 	. 
	nop			;b189	00 	. 
	nop			;b18a	00 	. 
	nop			;b18b	00 	. 
	nop			;b18c	00 	. 
	nop			;b18d	00 	. 
	nop			;b18e	00 	. 
	nop			;b18f	00 	. 
	nop			;b190	00 	. 
	nop			;b191	00 	. 
	nop			;b192	00 	. 
	nop			;b193	00 	. 
	nop			;b194	00 	. 
	nop			;b195	00 	. 
	nop			;b196	00 	. 
	nop			;b197	00 	. 
	nop			;b198	00 	. 
	nop			;b199	00 	. 
	nop			;b19a	00 	. 
lb19bh:
	nop			;b19b	00 	. 
	nop			;b19c	00 	. 
	nop			;b19d	00 	. 
	nop			;b19e	00 	. 
	nop			;b19f	00 	. 
lb1a0h:
	exx			;b1a0	d9 	. 
	xor a			;b1a1	af 	. 
lb1a2h:
	nop			;b1a2	00 	. 
	nop			;b1a3	00 	. 
lb1a4h:
	add a,l			;b1a4	85 	. 
	or a			;b1a5	b7 	. 
lb1a6h:
	ret m			;b1a6	f8 	. 
	or a			;b1a7	b7 	. 
lb1a8h:
	dec d			;b1a8	15 	. 
	or h			;b1a9	b4 	. 
lb1aah:
	add a,l			;b1aa	85 	. 
	or a			;b1ab	b7 	. 
lb1ach:
	nop			;b1ac	00 	. 
	nop			;b1ad	00 	. 
lb1aeh:
	nop			;b1ae	00 	. 
	nop			;b1af	00 	. 
lb1b0h:
	nop			;b1b0	00 	. 
	nop			;b1b1	00 	. 
	nop			;b1b2	00 	. 
	nop			;b1b3	00 	. 
	nop			;b1b4	00 	. 
	nop			;b1b5	00 	. 
	nop			;b1b6	00 	. 
	nop			;b1b7	00 	. 
	nop			;b1b8	00 	. 
	nop			;b1b9	00 	. 
	nop			;b1ba	00 	. 
	nop			;b1bb	00 	. 
	nop			;b1bc	00 	. 
	nop			;b1bd	00 	. 
	nop			;b1be	00 	. 
	nop			;b1bf	00 	. 
	nop			;b1c0	00 	. 
	nop			;b1c1	00 	. 
	nop			;b1c2	00 	. 
	nop			;b1c3	00 	. 
	nop			;b1c4	00 	. 
	nop			;b1c5	00 	. 
	nop			;b1c6	00 	. 
	nop			;b1c7	00 	. 
	nop			;b1c8	00 	. 
	nop			;b1c9	00 	. 
	nop			;b1ca	00 	. 
	nop			;b1cb	00 	. 
	nop			;b1cc	00 	. 
	nop			;b1cd	00 	. 
	nop			;b1ce	00 	. 
	nop			;b1cf	00 	. 
	nop			;b1d0	00 	. 
	nop			;b1d1	00 	. 
	nop			;b1d2	00 	. 
	nop			;b1d3	00 	. 
	nop			;b1d4	00 	. 
	nop			;b1d5	00 	. 
	nop			;b1d6	00 	. 
	nop			;b1d7	00 	. 
	nop			;b1d8	00 	. 
	nop			;b1d9	00 	. 
	nop			;b1da	00 	. 
	nop			;b1db	00 	. 
	nop			;b1dc	00 	. 
	nop			;b1dd	00 	. 
	nop			;b1de	00 	. 
	nop			;b1df	00 	. 
	nop			;b1e0	00 	. 
	nop			;b1e1	00 	. 
	nop			;b1e2	00 	. 
	nop			;b1e3	00 	. 
	nop			;b1e4	00 	. 
	nop			;b1e5	00 	. 
	nop			;b1e6	00 	. 
	nop			;b1e7	00 	. 
	nop			;b1e8	00 	. 
	nop			;b1e9	00 	. 
	nop			;b1ea	00 	. 
	nop			;b1eb	00 	. 
	nop			;b1ec	00 	. 
	nop			;b1ed	00 	. 
	nop			;b1ee	00 	. 
	nop			;b1ef	00 	. 
	nop			;b1f0	00 	. 
	nop			;b1f1	00 	. 
	nop			;b1f2	00 	. 
	nop			;b1f3	00 	. 
	nop			;b1f4	00 	. 
	nop			;b1f5	00 	. 
	nop			;b1f6	00 	. 
	nop			;b1f7	00 	. 
	nop			;b1f8	00 	. 
	nop			;b1f9	00 	. 
	nop			;b1fa	00 	. 
	nop			;b1fb	00 	. 
	nop			;b1fc	00 	. 
	nop			;b1fd	00 	. 
	nop			;b1fe	00 	. 
	nop			;b1ff	00 	. 
	nop			;b200	00 	. 
	nop			;b201	00 	. 
	nop			;b202	00 	. 
	nop			;b203	00 	. 
	nop			;b204	00 	. 
	nop			;b205	00 	. 
	nop			;b206	00 	. 
	nop			;b207	00 	. 
	nop			;b208	00 	. 
	nop			;b209	00 	. 
	nop			;b20a	00 	. 
	nop			;b20b	00 	. 
	nop			;b20c	00 	. 
	nop			;b20d	00 	. 
	nop			;b20e	00 	. 
	nop			;b20f	00 	. 
	nop			;b210	00 	. 
	nop			;b211	00 	. 
	nop			;b212	00 	. 
	nop			;b213	00 	. 
	nop			;b214	00 	. 
	nop			;b215	00 	. 
	nop			;b216	00 	. 
	nop			;b217	00 	. 
	nop			;b218	00 	. 
	nop			;b219	00 	. 
	nop			;b21a	00 	. 
	nop			;b21b	00 	. 
	nop			;b21c	00 	. 
	nop			;b21d	00 	. 
	nop			;b21e	00 	. 
	nop			;b21f	00 	. 
	nop			;b220	00 	. 
	nop			;b221	00 	. 
	nop			;b222	00 	. 
	nop			;b223	00 	. 
	nop			;b224	00 	. 
	nop			;b225	00 	. 
	nop			;b226	00 	. 
	nop			;b227	00 	. 
	nop			;b228	00 	. 
	nop			;b229	00 	. 
	nop			;b22a	00 	. 
	nop			;b22b	00 	. 
	nop			;b22c	00 	. 
	nop			;b22d	00 	. 
	nop			;b22e	00 	. 
	nop			;b22f	00 	. 
	nop			;b230	00 	. 
	nop			;b231	00 	. 
	nop			;b232	00 	. 
	nop			;b233	00 	. 
	nop			;b234	00 	. 
	nop			;b235	00 	. 
	nop			;b236	00 	. 
	nop			;b237	00 	. 
	nop			;b238	00 	. 
	nop			;b239	00 	. 
	nop			;b23a	00 	. 
	nop			;b23b	00 	. 
	nop			;b23c	00 	. 
	nop			;b23d	00 	. 
	nop			;b23e	00 	. 
	nop			;b23f	00 	. 
	nop			;b240	00 	. 
	nop			;b241	00 	. 
	nop			;b242	00 	. 
	nop			;b243	00 	. 
	nop			;b244	00 	. 
	nop			;b245	00 	. 
	nop			;b246	00 	. 
	nop			;b247	00 	. 
	nop			;b248	00 	. 
	nop			;b249	00 	. 
	nop			;b24a	00 	. 
	nop			;b24b	00 	. 
	nop			;b24c	00 	. 
	nop			;b24d	00 	. 
	nop			;b24e	00 	. 
	nop			;b24f	00 	. 
	nop			;b250	00 	. 
	nop			;b251	00 	. 
	nop			;b252	00 	. 
	nop			;b253	00 	. 
	nop			;b254	00 	. 
	nop			;b255	00 	. 
	nop			;b256	00 	. 
	nop			;b257	00 	. 
	nop			;b258	00 	. 
	nop			;b259	00 	. 
	nop			;b25a	00 	. 
	nop			;b25b	00 	. 
	nop			;b25c	00 	. 
	nop			;b25d	00 	. 
	nop			;b25e	00 	. 
	nop			;b25f	00 	. 
	nop			;b260	00 	. 
	nop			;b261	00 	. 
	nop			;b262	00 	. 
	nop			;b263	00 	. 
	nop			;b264	00 	. 
	nop			;b265	00 	. 
	nop			;b266	00 	. 
	nop			;b267	00 	. 
	nop			;b268	00 	. 
	nop			;b269	00 	. 
	nop			;b26a	00 	. 
	nop			;b26b	00 	. 
	nop			;b26c	00 	. 
	nop			;b26d	00 	. 
	nop			;b26e	00 	. 
	nop			;b26f	00 	. 
	nop			;b270	00 	. 
	nop			;b271	00 	. 
	nop			;b272	00 	. 
	nop			;b273	00 	. 
	nop			;b274	00 	. 
	nop			;b275	00 	. 
	nop			;b276	00 	. 
	nop			;b277	00 	. 
	nop			;b278	00 	. 
	nop			;b279	00 	. 
	nop			;b27a	00 	. 
	nop			;b27b	00 	. 
	nop			;b27c	00 	. 
	nop			;b27d	00 	. 
	nop			;b27e	00 	. 
	nop			;b27f	00 	. 
	nop			;b280	00 	. 
	nop			;b281	00 	. 
	nop			;b282	00 	. 
	nop			;b283	00 	. 
	nop			;b284	00 	. 
	nop			;b285	00 	. 
	nop			;b286	00 	. 
	nop			;b287	00 	. 
	nop			;b288	00 	. 
	nop			;b289	00 	. 
	nop			;b28a	00 	. 
	nop			;b28b	00 	. 
	nop			;b28c	00 	. 
	nop			;b28d	00 	. 
	nop			;b28e	00 	. 
	nop			;b28f	00 	. 
	nop			;b290	00 	. 
	nop			;b291	00 	. 
	nop			;b292	00 	. 
	nop			;b293	00 	. 
	nop			;b294	00 	. 
	nop			;b295	00 	. 
	nop			;b296	00 	. 
	nop			;b297	00 	. 
	nop			;b298	00 	. 
	nop			;b299	00 	. 
	nop			;b29a	00 	. 
	nop			;b29b	00 	. 
	nop			;b29c	00 	. 
	nop			;b29d	00 	. 
	nop			;b29e	00 	. 
	nop			;b29f	00 	. 
	nop			;b2a0	00 	. 
	nop			;b2a1	00 	. 
	nop			;b2a2	00 	. 
	nop			;b2a3	00 	. 
	nop			;b2a4	00 	. 
lb2a5h:
	nop			;b2a5	00 	. 
	nop			;b2a6	00 	. 
	nop			;b2a7	00 	. 
	nop			;b2a8	00 	. 
	nop			;b2a9	00 	. 
lb2aah:
	nop			;b2aa	00 	. 
	nop			;b2ab	00 	. 
lb2ach:
	nop			;b2ac	00 	. 
	nop			;b2ad	00 	. 
lb2aeh:
	nop			;b2ae	00 	. 
	nop			;b2af	00 	. 
lb2b0h:
	nop			;b2b0	00 	. 
	nop			;b2b1	00 	. 
lb2b2h:
	ld bc,00000h		;b2b2	01 00 00 	. . . 
	nop			;b2b5	00 	. 
	nop			;b2b6	00 	. 
	nop			;b2b7	00 	. 
	nop			;b2b8	00 	. 
	nop			;b2b9	00 	. 
lb2bah:
	nop			;b2ba	00 	. 
lb2bbh:
	nop			;b2bb	00 	. 
	nop			;b2bc	00 	. 
lb2bdh:
	nop			;b2bd	00 	. 
	nop			;b2be	00 	. 
lb2bfh:
	nop			;b2bf	00 	. 
lb2c0h:
	nop			;b2c0	00 	. 
	nop			;b2c1	00 	. 
lb2c2h:
	nop			;b2c2	00 	. 
	nop			;b2c3	00 	. 
lb2c4h:
	nop			;b2c4	00 	. 
	nop			;b2c5	00 	. 
	nop			;b2c6	00 	. 
	nop			;b2c7	00 	. 
	nop			;b2c8	00 	. 
	nop			;b2c9	00 	. 
	nop			;b2ca	00 	. 
	nop			;b2cb	00 	. 
	nop			;b2cc	00 	. 
	nop			;b2cd	00 	. 
	nop			;b2ce	00 	. 
	nop			;b2cf	00 	. 
	nop			;b2d0	00 	. 
	nop			;b2d1	00 	. 
	nop			;b2d2	00 	. 
	nop			;b2d3	00 	. 
	nop			;b2d4	00 	. 
	nop			;b2d5	00 	. 
	nop			;b2d6	00 	. 
	nop			;b2d7	00 	. 
	nop			;b2d8	00 	. 
	nop			;b2d9	00 	. 
	nop			;b2da	00 	. 
	nop			;b2db	00 	. 
	nop			;b2dc	00 	. 
	nop			;b2dd	00 	. 
	nop			;b2de	00 	. 
	nop			;b2df	00 	. 
	nop			;b2e0	00 	. 
	nop			;b2e1	00 	. 
	nop			;b2e2	00 	. 
	nop			;b2e3	00 	. 
	nop			;b2e4	00 	. 
	nop			;b2e5	00 	. 
	nop			;b2e6	00 	. 
	nop			;b2e7	00 	. 
	nop			;b2e8	00 	. 
	nop			;b2e9	00 	. 
	nop			;b2ea	00 	. 
	nop			;b2eb	00 	. 
	nop			;b2ec	00 	. 
	nop			;b2ed	00 	. 
	nop			;b2ee	00 	. 
	nop			;b2ef	00 	. 
	nop			;b2f0	00 	. 
	nop			;b2f1	00 	. 
	nop			;b2f2	00 	. 
	nop			;b2f3	00 	. 
	nop			;b2f4	00 	. 
	nop			;b2f5	00 	. 
	nop			;b2f6	00 	. 
	nop			;b2f7	00 	. 
	nop			;b2f8	00 	. 
	nop			;b2f9	00 	. 
	nop			;b2fa	00 	. 
	nop			;b2fb	00 	. 
	nop			;b2fc	00 	. 
	nop			;b2fd	00 	. 
	nop			;b2fe	00 	. 
	nop			;b2ff	00 	. 
	nop			;b300	00 	. 
	nop			;b301	00 	. 
	nop			;b302	00 	. 
	nop			;b303	00 	. 
	nop			;b304	00 	. 
	nop			;b305	00 	. 
	nop			;b306	00 	. 
	nop			;b307	00 	. 
	nop			;b308	00 	. 
	nop			;b309	00 	. 
	nop			;b30a	00 	. 
	nop			;b30b	00 	. 
	nop			;b30c	00 	. 
	nop			;b30d	00 	. 
	nop			;b30e	00 	. 
	nop			;b30f	00 	. 
	nop			;b310	00 	. 
	nop			;b311	00 	. 
	nop			;b312	00 	. 
	nop			;b313	00 	. 
	nop			;b314	00 	. 
	nop			;b315	00 	. 
	nop			;b316	00 	. 
	nop			;b317	00 	. 
	nop			;b318	00 	. 
	nop			;b319	00 	. 
	nop			;b31a	00 	. 
	nop			;b31b	00 	. 
	nop			;b31c	00 	. 
	nop			;b31d	00 	. 
	nop			;b31e	00 	. 
	nop			;b31f	00 	. 
	nop			;b320	00 	. 
	nop			;b321	00 	. 
	nop			;b322	00 	. 
	nop			;b323	00 	. 
	nop			;b324	00 	. 
	nop			;b325	00 	. 
	nop			;b326	00 	. 
	nop			;b327	00 	. 
	nop			;b328	00 	. 
	nop			;b329	00 	. 
	nop			;b32a	00 	. 
	nop			;b32b	00 	. 
	nop			;b32c	00 	. 
	nop			;b32d	00 	. 
	nop			;b32e	00 	. 
	nop			;b32f	00 	. 
	nop			;b330	00 	. 
	nop			;b331	00 	. 
	nop			;b332	00 	. 
	nop			;b333	00 	. 
	nop			;b334	00 	. 
	nop			;b335	00 	. 
	nop			;b336	00 	. 
	nop			;b337	00 	. 
	nop			;b338	00 	. 
	nop			;b339	00 	. 
	nop			;b33a	00 	. 
	nop			;b33b	00 	. 
	nop			;b33c	00 	. 
	nop			;b33d	00 	. 
	nop			;b33e	00 	. 
	nop			;b33f	00 	. 
	nop			;b340	00 	. 
	nop			;b341	00 	. 
	nop			;b342	00 	. 
	nop			;b343	00 	. 
	nop			;b344	00 	. 
	nop			;b345	00 	. 
	nop			;b346	00 	. 
	nop			;b347	00 	. 
	nop			;b348	00 	. 
	nop			;b349	00 	. 
	nop			;b34a	00 	. 
	nop			;b34b	00 	. 
	nop			;b34c	00 	. 
	nop			;b34d	00 	. 
	nop			;b34e	00 	. 
	nop			;b34f	00 	. 
	nop			;b350	00 	. 
	nop			;b351	00 	. 
	nop			;b352	00 	. 
	nop			;b353	00 	. 
	nop			;b354	00 	. 
	nop			;b355	00 	. 
	nop			;b356	00 	. 
	nop			;b357	00 	. 
	nop			;b358	00 	. 
	nop			;b359	00 	. 
	nop			;b35a	00 	. 
	nop			;b35b	00 	. 
	nop			;b35c	00 	. 
	nop			;b35d	00 	. 
	nop			;b35e	00 	. 
	nop			;b35f	00 	. 
	nop			;b360	00 	. 
	nop			;b361	00 	. 
	nop			;b362	00 	. 
	nop			;b363	00 	. 
	nop			;b364	00 	. 
	nop			;b365	00 	. 
	nop			;b366	00 	. 
	nop			;b367	00 	. 
	nop			;b368	00 	. 
	nop			;b369	00 	. 
	nop			;b36a	00 	. 
	nop			;b36b	00 	. 
	nop			;b36c	00 	. 
	nop			;b36d	00 	. 
	nop			;b36e	00 	. 
	nop			;b36f	00 	. 
	nop			;b370	00 	. 
	nop			;b371	00 	. 
	nop			;b372	00 	. 
	nop			;b373	00 	. 
	nop			;b374	00 	. 
	nop			;b375	00 	. 
	nop			;b376	00 	. 
	nop			;b377	00 	. 
	nop			;b378	00 	. 
	nop			;b379	00 	. 
	nop			;b37a	00 	. 
	nop			;b37b	00 	. 
	nop			;b37c	00 	. 
	nop			;b37d	00 	. 
	nop			;b37e	00 	. 
	nop			;b37f	00 	. 
	nop			;b380	00 	. 
	nop			;b381	00 	. 
	nop			;b382	00 	. 
	nop			;b383	00 	. 
	nop			;b384	00 	. 
	nop			;b385	00 	. 
	nop			;b386	00 	. 
	nop			;b387	00 	. 
	nop			;b388	00 	. 
	nop			;b389	00 	. 
	nop			;b38a	00 	. 
	nop			;b38b	00 	. 
lb38ch:
	nop			;b38c	00 	. 
	nop			;b38d	00 	. 
lb38eh:
	nop			;b38e	00 	. 
	nop			;b38f	00 	. 
lb390h:
	nop			;b390	00 	. 
	nop			;b391	00 	. 
lb392h:
	nop			;b392	00 	. 
	nop			;b393	00 	. 
lb394h:
	nop			;b394	00 	. 
	nop			;b395	00 	. 
lb396h:
	nop			;b396	00 	. 
	nop			;b397	00 	. 
lb398h:
	nop			;b398	00 	. 
	nop			;b399	00 	. 
lb39ah:
	nop			;b39a	00 	. 
	nop			;b39b	00 	. 
lb39ch:
	nop			;b39c	00 	. 
	nop			;b39d	00 	. 
lb39eh:
	nop			;b39e	00 	. 
lb39fh:
	nop			;b39f	00 	. 
lb3a0h:
	nop			;b3a0	00 	. 
	nop			;b3a1	00 	. 
lb3a2h:
	nop			;b3a2	00 	. 
lb3a3h:
	nop			;b3a3	00 	. 
lb3a4h:
	nop			;b3a4	00 	. 
lb3a5h:
	nop			;b3a5	00 	. 
lb3a6h:
	nop			;b3a6	00 	. 
lb3a7h:
	nop			;b3a7	00 	. 
	nop			;b3a8	00 	. 
	nop			;b3a9	00 	. 
	nop			;b3aa	00 	. 
	nop			;b3ab	00 	. 
	nop			;b3ac	00 	. 
	nop			;b3ad	00 	. 
	nop			;b3ae	00 	. 
	nop			;b3af	00 	. 
	nop			;b3b0	00 	. 
	nop			;b3b1	00 	. 
	nop			;b3b2	00 	. 
	nop			;b3b3	00 	. 
	nop			;b3b4	00 	. 
	nop			;b3b5	00 	. 
	nop			;b3b6	00 	. 
	nop			;b3b7	00 	. 
	nop			;b3b8	00 	. 
	nop			;b3b9	00 	. 
	nop			;b3ba	00 	. 
	nop			;b3bb	00 	. 
	nop			;b3bc	00 	. 
	nop			;b3bd	00 	. 
	nop			;b3be	00 	. 
	nop			;b3bf	00 	. 
	nop			;b3c0	00 	. 
	nop			;b3c1	00 	. 
	nop			;b3c2	00 	. 
	nop			;b3c3	00 	. 
	nop			;b3c4	00 	. 
	nop			;b3c5	00 	. 
	nop			;b3c6	00 	. 
lb3c7h:
	nop			;b3c7	00 	. 
	nop			;b3c8	00 	. 
lb3c9h:
	nop			;b3c9	00 	. 
	nop			;b3ca	00 	. 
	nop			;b3cb	00 	. 
	nop			;b3cc	00 	. 
	nop			;b3cd	00 	. 
	nop			;b3ce	00 	. 
	nop			;b3cf	00 	. 
	nop			;b3d0	00 	. 
	nop			;b3d1	00 	. 
	nop			;b3d2	00 	. 
	nop			;b3d3	00 	. 
	nop			;b3d4	00 	. 
	nop			;b3d5	00 	. 
	nop			;b3d6	00 	. 
	nop			;b3d7	00 	. 
	nop			;b3d8	00 	. 
	nop			;b3d9	00 	. 
	nop			;b3da	00 	. 
	nop			;b3db	00 	. 
	nop			;b3dc	00 	. 
	nop			;b3dd	00 	. 
	nop			;b3de	00 	. 
	nop			;b3df	00 	. 
	nop			;b3e0	00 	. 
	nop			;b3e1	00 	. 
	nop			;b3e2	00 	. 
	nop			;b3e3	00 	. 
	nop			;b3e4	00 	. 
	nop			;b3e5	00 	. 
	nop			;b3e6	00 	. 
	nop			;b3e7	00 	. 
	nop			;b3e8	00 	. 
	nop			;b3e9	00 	. 
	nop			;b3ea	00 	. 
	nop			;b3eb	00 	. 
	nop			;b3ec	00 	. 
	nop			;b3ed	00 	. 
	nop			;b3ee	00 	. 
	nop			;b3ef	00 	. 
	nop			;b3f0	00 	. 
	nop			;b3f1	00 	. 
	nop			;b3f2	00 	. 
	nop			;b3f3	00 	. 
	nop			;b3f4	00 	. 
	nop			;b3f5	00 	. 
	nop			;b3f6	00 	. 
	nop			;b3f7	00 	. 
	nop			;b3f8	00 	. 
	nop			;b3f9	00 	. 
	nop			;b3fa	00 	. 
lb3fbh:
	nop			;b3fb	00 	. 
	nop			;b3fc	00 	. 
lb3fdh:
	nop			;b3fd	00 	. 
	nop			;b3fe	00 	. 
lb3ffh:
	nop			;b3ff	00 	. 
	nop			;b400	00 	. 
lb401h:
	nop			;b401	00 	. 
	nop			;b402	00 	. 
lb403h:
	nop			;b403	00 	. 
lb404h:
	nop			;b404	00 	. 
lb405h:
	nop			;b405	00 	. 
	nop			;b406	00 	. 
lb407h:
	nop			;b407	00 	. 
	nop			;b408	00 	. 
lb409h:
	nop			;b409	00 	. 
	nop			;b40a	00 	. 
lb40bh:
	nop			;b40b	00 	. 
	nop			;b40c	00 	. 
lb40dh:
	nop			;b40d	00 	. 
	nop			;b40e	00 	. 
lb40fh:
	nop			;b40f	00 	. 
	nop			;b410	00 	. 
lb411h:
	nop			;b411	00 	. 
	nop			;b412	00 	. 
lb413h:
	nop			;b413	00 	. 
	nop			;b414	00 	. 
lb415h:
	nop			;b415	00 	. 
	nop			;b416	00 	. 
	nop			;b417	00 	. 
	nop			;b418	00 	. 
	nop			;b419	00 	. 
	nop			;b41a	00 	. 
	nop			;b41b	00 	. 
	nop			;b41c	00 	. 
	nop			;b41d	00 	. 
	nop			;b41e	00 	. 
	nop			;b41f	00 	. 
	nop			;b420	00 	. 
	nop			;b421	00 	. 
	nop			;b422	00 	. 
	nop			;b423	00 	. 
	nop			;b424	00 	. 
	nop			;b425	00 	. 
	nop			;b426	00 	. 
	nop			;b427	00 	. 
	nop			;b428	00 	. 
	nop			;b429	00 	. 
	nop			;b42a	00 	. 
	nop			;b42b	00 	. 
	nop			;b42c	00 	. 
	nop			;b42d	00 	. 
	nop			;b42e	00 	. 
	nop			;b42f	00 	. 
	nop			;b430	00 	. 
	nop			;b431	00 	. 
	nop			;b432	00 	. 
	nop			;b433	00 	. 
	nop			;b434	00 	. 
	nop			;b435	00 	. 
	nop			;b436	00 	. 
	nop			;b437	00 	. 
	nop			;b438	00 	. 
	nop			;b439	00 	. 
	nop			;b43a	00 	. 
	nop			;b43b	00 	. 
	nop			;b43c	00 	. 
	nop			;b43d	00 	. 
	nop			;b43e	00 	. 
	nop			;b43f	00 	. 
	nop			;b440	00 	. 
	nop			;b441	00 	. 
	nop			;b442	00 	. 
	nop			;b443	00 	. 
	nop			;b444	00 	. 
	nop			;b445	00 	. 
	nop			;b446	00 	. 
	nop			;b447	00 	. 
	nop			;b448	00 	. 
	nop			;b449	00 	. 
	nop			;b44a	00 	. 
	nop			;b44b	00 	. 
	nop			;b44c	00 	. 
	nop			;b44d	00 	. 
	nop			;b44e	00 	. 
	nop			;b44f	00 	. 
	nop			;b450	00 	. 
	nop			;b451	00 	. 
	nop			;b452	00 	. 
	nop			;b453	00 	. 
	nop			;b454	00 	. 
	nop			;b455	00 	. 
	nop			;b456	00 	. 
	nop			;b457	00 	. 
	nop			;b458	00 	. 
	nop			;b459	00 	. 
	nop			;b45a	00 	. 
	nop			;b45b	00 	. 
	nop			;b45c	00 	. 
	nop			;b45d	00 	. 
	nop			;b45e	00 	. 
	nop			;b45f	00 	. 
	nop			;b460	00 	. 
	nop			;b461	00 	. 
	nop			;b462	00 	. 
	nop			;b463	00 	. 
	nop			;b464	00 	. 
	nop			;b465	00 	. 
	nop			;b466	00 	. 
	nop			;b467	00 	. 
	nop			;b468	00 	. 
	nop			;b469	00 	. 
	nop			;b46a	00 	. 
	nop			;b46b	00 	. 
	nop			;b46c	00 	. 
	nop			;b46d	00 	. 
	nop			;b46e	00 	. 
	nop			;b46f	00 	. 
	nop			;b470	00 	. 
	nop			;b471	00 	. 
	nop			;b472	00 	. 
	nop			;b473	00 	. 
	nop			;b474	00 	. 
	nop			;b475	00 	. 
	nop			;b476	00 	. 
	nop			;b477	00 	. 
	nop			;b478	00 	. 
	nop			;b479	00 	. 
	nop			;b47a	00 	. 
	nop			;b47b	00 	. 
	nop			;b47c	00 	. 
	nop			;b47d	00 	. 
	nop			;b47e	00 	. 
	nop			;b47f	00 	. 
	nop			;b480	00 	. 
	nop			;b481	00 	. 
	nop			;b482	00 	. 
	nop			;b483	00 	. 
	nop			;b484	00 	. 
	nop			;b485	00 	. 
	nop			;b486	00 	. 
	nop			;b487	00 	. 
	nop			;b488	00 	. 
	nop			;b489	00 	. 
	nop			;b48a	00 	. 
	nop			;b48b	00 	. 
	nop			;b48c	00 	. 
	nop			;b48d	00 	. 
	nop			;b48e	00 	. 
	nop			;b48f	00 	. 
	nop			;b490	00 	. 
	nop			;b491	00 	. 
	nop			;b492	00 	. 
	nop			;b493	00 	. 
	nop			;b494	00 	. 
	nop			;b495	00 	. 
	nop			;b496	00 	. 
	nop			;b497	00 	. 
	nop			;b498	00 	. 
	nop			;b499	00 	. 
	nop			;b49a	00 	. 
	nop			;b49b	00 	. 
	nop			;b49c	00 	. 
	nop			;b49d	00 	. 
	nop			;b49e	00 	. 
	nop			;b49f	00 	. 
	nop			;b4a0	00 	. 
	nop			;b4a1	00 	. 
	nop			;b4a2	00 	. 
	nop			;b4a3	00 	. 
	nop			;b4a4	00 	. 
	nop			;b4a5	00 	. 
	nop			;b4a6	00 	. 
	nop			;b4a7	00 	. 
	nop			;b4a8	00 	. 
	nop			;b4a9	00 	. 
	nop			;b4aa	00 	. 
	nop			;b4ab	00 	. 
	nop			;b4ac	00 	. 
	nop			;b4ad	00 	. 
	nop			;b4ae	00 	. 
	nop			;b4af	00 	. 
	nop			;b4b0	00 	. 
	nop			;b4b1	00 	. 
	nop			;b4b2	00 	. 
	nop			;b4b3	00 	. 
	nop			;b4b4	00 	. 
	nop			;b4b5	00 	. 
	nop			;b4b6	00 	. 
	nop			;b4b7	00 	. 
	nop			;b4b8	00 	. 
	nop			;b4b9	00 	. 
	nop			;b4ba	00 	. 
	nop			;b4bb	00 	. 
	nop			;b4bc	00 	. 
	nop			;b4bd	00 	. 
	nop			;b4be	00 	. 
	nop			;b4bf	00 	. 
	nop			;b4c0	00 	. 
	nop			;b4c1	00 	. 
	nop			;b4c2	00 	. 
	nop			;b4c3	00 	. 
	nop			;b4c4	00 	. 
	nop			;b4c5	00 	. 
	nop			;b4c6	00 	. 
	nop			;b4c7	00 	. 
	nop			;b4c8	00 	. 
	nop			;b4c9	00 	. 
	nop			;b4ca	00 	. 
	nop			;b4cb	00 	. 
	nop			;b4cc	00 	. 
	nop			;b4cd	00 	. 
	nop			;b4ce	00 	. 
	nop			;b4cf	00 	. 
	nop			;b4d0	00 	. 
	nop			;b4d1	00 	. 
	nop			;b4d2	00 	. 
	nop			;b4d3	00 	. 
	nop			;b4d4	00 	. 
	nop			;b4d5	00 	. 
	nop			;b4d6	00 	. 
	nop			;b4d7	00 	. 
	nop			;b4d8	00 	. 
	nop			;b4d9	00 	. 
	nop			;b4da	00 	. 
	nop			;b4db	00 	. 
	nop			;b4dc	00 	. 
	nop			;b4dd	00 	. 
	nop			;b4de	00 	. 
	nop			;b4df	00 	. 
	nop			;b4e0	00 	. 
	nop			;b4e1	00 	. 
	nop			;b4e2	00 	. 
	nop			;b4e3	00 	. 
	nop			;b4e4	00 	. 
	nop			;b4e5	00 	. 
	nop			;b4e6	00 	. 
	nop			;b4e7	00 	. 
	nop			;b4e8	00 	. 
	nop			;b4e9	00 	. 
	nop			;b4ea	00 	. 
	nop			;b4eb	00 	. 
	nop			;b4ec	00 	. 
	nop			;b4ed	00 	. 
	nop			;b4ee	00 	. 
	nop			;b4ef	00 	. 
	nop			;b4f0	00 	. 
	nop			;b4f1	00 	. 
	nop			;b4f2	00 	. 
	nop			;b4f3	00 	. 
	nop			;b4f4	00 	. 
	nop			;b4f5	00 	. 
	nop			;b4f6	00 	. 
	nop			;b4f7	00 	. 
	nop			;b4f8	00 	. 
	nop			;b4f9	00 	. 
	nop			;b4fa	00 	. 
	nop			;b4fb	00 	. 
	nop			;b4fc	00 	. 
	nop			;b4fd	00 	. 
	nop			;b4fe	00 	. 
	nop			;b4ff	00 	. 
	nop			;b500	00 	. 
	nop			;b501	00 	. 
	nop			;b502	00 	. 
	nop			;b503	00 	. 
	nop			;b504	00 	. 
	nop			;b505	00 	. 
	nop			;b506	00 	. 
	nop			;b507	00 	. 
	nop			;b508	00 	. 
	nop			;b509	00 	. 
	nop			;b50a	00 	. 
	nop			;b50b	00 	. 
	nop			;b50c	00 	. 
	nop			;b50d	00 	. 
	nop			;b50e	00 	. 
	nop			;b50f	00 	. 
	nop			;b510	00 	. 
	nop			;b511	00 	. 
	nop			;b512	00 	. 
	nop			;b513	00 	. 
	nop			;b514	00 	. 
	nop			;b515	00 	. 
	nop			;b516	00 	. 
	nop			;b517	00 	. 
	nop			;b518	00 	. 
	nop			;b519	00 	. 
	nop			;b51a	00 	. 
	nop			;b51b	00 	. 
	nop			;b51c	00 	. 
	nop			;b51d	00 	. 
	nop			;b51e	00 	. 
	nop			;b51f	00 	. 
	nop			;b520	00 	. 
	nop			;b521	00 	. 
	nop			;b522	00 	. 
	nop			;b523	00 	. 
	nop			;b524	00 	. 
	nop			;b525	00 	. 
	nop			;b526	00 	. 
	nop			;b527	00 	. 
	nop			;b528	00 	. 
	nop			;b529	00 	. 
	nop			;b52a	00 	. 
	nop			;b52b	00 	. 
	nop			;b52c	00 	. 
	nop			;b52d	00 	. 
	nop			;b52e	00 	. 
	nop			;b52f	00 	. 
	nop			;b530	00 	. 
	nop			;b531	00 	. 
	nop			;b532	00 	. 
	nop			;b533	00 	. 
	nop			;b534	00 	. 
	nop			;b535	00 	. 
	nop			;b536	00 	. 
	nop			;b537	00 	. 
	nop			;b538	00 	. 
	nop			;b539	00 	. 
	nop			;b53a	00 	. 
	nop			;b53b	00 	. 
	nop			;b53c	00 	. 
	nop			;b53d	00 	. 
	nop			;b53e	00 	. 
	nop			;b53f	00 	. 
	nop			;b540	00 	. 
	nop			;b541	00 	. 
	nop			;b542	00 	. 
	nop			;b543	00 	. 
	nop			;b544	00 	. 
	nop			;b545	00 	. 
	nop			;b546	00 	. 
	nop			;b547	00 	. 
	nop			;b548	00 	. 
	nop			;b549	00 	. 
	nop			;b54a	00 	. 
	nop			;b54b	00 	. 
	nop			;b54c	00 	. 
	nop			;b54d	00 	. 
	nop			;b54e	00 	. 
	nop			;b54f	00 	. 
	nop			;b550	00 	. 
	nop			;b551	00 	. 
	nop			;b552	00 	. 
	nop			;b553	00 	. 
	nop			;b554	00 	. 
	nop			;b555	00 	. 
	nop			;b556	00 	. 
	nop			;b557	00 	. 
	nop			;b558	00 	. 
	nop			;b559	00 	. 
	nop			;b55a	00 	. 
	nop			;b55b	00 	. 
	nop			;b55c	00 	. 
	nop			;b55d	00 	. 
	nop			;b55e	00 	. 
	nop			;b55f	00 	. 
	nop			;b560	00 	. 
	nop			;b561	00 	. 
	nop			;b562	00 	. 
	nop			;b563	00 	. 
	nop			;b564	00 	. 
	nop			;b565	00 	. 
	nop			;b566	00 	. 
	nop			;b567	00 	. 
	nop			;b568	00 	. 
	nop			;b569	00 	. 
	nop			;b56a	00 	. 
	nop			;b56b	00 	. 
	nop			;b56c	00 	. 
	nop			;b56d	00 	. 
	nop			;b56e	00 	. 
	nop			;b56f	00 	. 
	nop			;b570	00 	. 
	nop			;b571	00 	. 
	nop			;b572	00 	. 
	nop			;b573	00 	. 
	nop			;b574	00 	. 
	nop			;b575	00 	. 
	nop			;b576	00 	. 
	nop			;b577	00 	. 
	nop			;b578	00 	. 
	nop			;b579	00 	. 
	nop			;b57a	00 	. 
	nop			;b57b	00 	. 
	nop			;b57c	00 	. 
	nop			;b57d	00 	. 
	nop			;b57e	00 	. 
	nop			;b57f	00 	. 
	nop			;b580	00 	. 
	nop			;b581	00 	. 
	nop			;b582	00 	. 
	nop			;b583	00 	. 
	nop			;b584	00 	. 
	nop			;b585	00 	. 
	nop			;b586	00 	. 
	nop			;b587	00 	. 
	nop			;b588	00 	. 
	nop			;b589	00 	. 
	nop			;b58a	00 	. 
	nop			;b58b	00 	. 
	nop			;b58c	00 	. 
	nop			;b58d	00 	. 
	nop			;b58e	00 	. 
	nop			;b58f	00 	. 
	nop			;b590	00 	. 
	nop			;b591	00 	. 
	nop			;b592	00 	. 
	nop			;b593	00 	. 
	nop			;b594	00 	. 
	nop			;b595	00 	. 
	nop			;b596	00 	. 
	nop			;b597	00 	. 
	nop			;b598	00 	. 
	nop			;b599	00 	. 
	nop			;b59a	00 	. 
	nop			;b59b	00 	. 
	nop			;b59c	00 	. 
	nop			;b59d	00 	. 
	nop			;b59e	00 	. 
	nop			;b59f	00 	. 
	nop			;b5a0	00 	. 
	nop			;b5a1	00 	. 
	nop			;b5a2	00 	. 
	nop			;b5a3	00 	. 
	nop			;b5a4	00 	. 
	nop			;b5a5	00 	. 
	nop			;b5a6	00 	. 
	nop			;b5a7	00 	. 
	nop			;b5a8	00 	. 
	nop			;b5a9	00 	. 
	nop			;b5aa	00 	. 
	nop			;b5ab	00 	. 
	nop			;b5ac	00 	. 
	nop			;b5ad	00 	. 
	nop			;b5ae	00 	. 
	nop			;b5af	00 	. 
	nop			;b5b0	00 	. 
	nop			;b5b1	00 	. 
	nop			;b5b2	00 	. 
	nop			;b5b3	00 	. 
	nop			;b5b4	00 	. 
	nop			;b5b5	00 	. 
	nop			;b5b6	00 	. 
	nop			;b5b7	00 	. 
	nop			;b5b8	00 	. 
	nop			;b5b9	00 	. 
	nop			;b5ba	00 	. 
	nop			;b5bb	00 	. 
	nop			;b5bc	00 	. 
	nop			;b5bd	00 	. 
	nop			;b5be	00 	. 
	nop			;b5bf	00 	. 
	nop			;b5c0	00 	. 
	nop			;b5c1	00 	. 
	nop			;b5c2	00 	. 
	nop			;b5c3	00 	. 
	nop			;b5c4	00 	. 
	nop			;b5c5	00 	. 
	nop			;b5c6	00 	. 
	nop			;b5c7	00 	. 
	nop			;b5c8	00 	. 
	nop			;b5c9	00 	. 
	nop			;b5ca	00 	. 
	nop			;b5cb	00 	. 
	nop			;b5cc	00 	. 
	nop			;b5cd	00 	. 
	nop			;b5ce	00 	. 
	nop			;b5cf	00 	. 
	nop			;b5d0	00 	. 
	nop			;b5d1	00 	. 
	nop			;b5d2	00 	. 
	nop			;b5d3	00 	. 
	nop			;b5d4	00 	. 
	nop			;b5d5	00 	. 
	nop			;b5d6	00 	. 
	nop			;b5d7	00 	. 
	nop			;b5d8	00 	. 
	nop			;b5d9	00 	. 
	nop			;b5da	00 	. 
	nop			;b5db	00 	. 
	nop			;b5dc	00 	. 
	nop			;b5dd	00 	. 
	nop			;b5de	00 	. 
	nop			;b5df	00 	. 
	nop			;b5e0	00 	. 
	nop			;b5e1	00 	. 
	nop			;b5e2	00 	. 
	nop			;b5e3	00 	. 
	nop			;b5e4	00 	. 
	nop			;b5e5	00 	. 
	nop			;b5e6	00 	. 
	nop			;b5e7	00 	. 
	nop			;b5e8	00 	. 
	nop			;b5e9	00 	. 
	nop			;b5ea	00 	. 
	nop			;b5eb	00 	. 
	nop			;b5ec	00 	. 
	nop			;b5ed	00 	. 
	nop			;b5ee	00 	. 
	nop			;b5ef	00 	. 
	nop			;b5f0	00 	. 
	nop			;b5f1	00 	. 
	nop			;b5f2	00 	. 
	nop			;b5f3	00 	. 
	nop			;b5f4	00 	. 
	nop			;b5f5	00 	. 
	nop			;b5f6	00 	. 
	nop			;b5f7	00 	. 
	nop			;b5f8	00 	. 
	nop			;b5f9	00 	. 
	nop			;b5fa	00 	. 
	nop			;b5fb	00 	. 
	nop			;b5fc	00 	. 
	nop			;b5fd	00 	. 
	nop			;b5fe	00 	. 
	nop			;b5ff	00 	. 
	nop			;b600	00 	. 
	nop			;b601	00 	. 
	nop			;b602	00 	. 
	nop			;b603	00 	. 
	nop			;b604	00 	. 
	nop			;b605	00 	. 
	nop			;b606	00 	. 
	nop			;b607	00 	. 
	nop			;b608	00 	. 
	nop			;b609	00 	. 
	nop			;b60a	00 	. 
	nop			;b60b	00 	. 
	nop			;b60c	00 	. 
	nop			;b60d	00 	. 
	nop			;b60e	00 	. 
	nop			;b60f	00 	. 
	nop			;b610	00 	. 
	nop			;b611	00 	. 
	nop			;b612	00 	. 
	nop			;b613	00 	. 
	nop			;b614	00 	. 
	nop			;b615	00 	. 
	nop			;b616	00 	. 
	nop			;b617	00 	. 
	nop			;b618	00 	. 
	nop			;b619	00 	. 
	nop			;b61a	00 	. 
	nop			;b61b	00 	. 
	nop			;b61c	00 	. 
	nop			;b61d	00 	. 
	nop			;b61e	00 	. 
	nop			;b61f	00 	. 
	nop			;b620	00 	. 
	nop			;b621	00 	. 
	nop			;b622	00 	. 
	nop			;b623	00 	. 
	nop			;b624	00 	. 
	nop			;b625	00 	. 
	nop			;b626	00 	. 
	nop			;b627	00 	. 
	nop			;b628	00 	. 
	nop			;b629	00 	. 
	nop			;b62a	00 	. 
	nop			;b62b	00 	. 
	nop			;b62c	00 	. 
	nop			;b62d	00 	. 
	nop			;b62e	00 	. 
	nop			;b62f	00 	. 
	nop			;b630	00 	. 
	nop			;b631	00 	. 
	nop			;b632	00 	. 
	nop			;b633	00 	. 
	nop			;b634	00 	. 
	nop			;b635	00 	. 
	nop			;b636	00 	. 
	nop			;b637	00 	. 
	nop			;b638	00 	. 
	nop			;b639	00 	. 
	nop			;b63a	00 	. 
	nop			;b63b	00 	. 
	nop			;b63c	00 	. 
	nop			;b63d	00 	. 
	nop			;b63e	00 	. 
	nop			;b63f	00 	. 
	nop			;b640	00 	. 
	nop			;b641	00 	. 
	nop			;b642	00 	. 
	nop			;b643	00 	. 
	nop			;b644	00 	. 
	nop			;b645	00 	. 
	nop			;b646	00 	. 
	nop			;b647	00 	. 
	nop			;b648	00 	. 
	nop			;b649	00 	. 
	nop			;b64a	00 	. 
	nop			;b64b	00 	. 
	nop			;b64c	00 	. 
	nop			;b64d	00 	. 
	nop			;b64e	00 	. 
	nop			;b64f	00 	. 
	nop			;b650	00 	. 
	nop			;b651	00 	. 
	nop			;b652	00 	. 
	nop			;b653	00 	. 
	nop			;b654	00 	. 
	nop			;b655	00 	. 
	nop			;b656	00 	. 
	nop			;b657	00 	. 
	nop			;b658	00 	. 
	nop			;b659	00 	. 
	nop			;b65a	00 	. 
	nop			;b65b	00 	. 
	nop			;b65c	00 	. 
	nop			;b65d	00 	. 
	nop			;b65e	00 	. 
	nop			;b65f	00 	. 
	nop			;b660	00 	. 
	nop			;b661	00 	. 
	nop			;b662	00 	. 
	nop			;b663	00 	. 
	nop			;b664	00 	. 
	nop			;b665	00 	. 
	nop			;b666	00 	. 
	nop			;b667	00 	. 
	nop			;b668	00 	. 
	nop			;b669	00 	. 
	nop			;b66a	00 	. 
	nop			;b66b	00 	. 
	nop			;b66c	00 	. 
	nop			;b66d	00 	. 
	nop			;b66e	00 	. 
	nop			;b66f	00 	. 
	nop			;b670	00 	. 
	nop			;b671	00 	. 
	nop			;b672	00 	. 
	nop			;b673	00 	. 
	nop			;b674	00 	. 
	nop			;b675	00 	. 
	nop			;b676	00 	. 
	nop			;b677	00 	. 
	nop			;b678	00 	. 
	nop			;b679	00 	. 
	nop			;b67a	00 	. 
	nop			;b67b	00 	. 
	nop			;b67c	00 	. 
	nop			;b67d	00 	. 
	nop			;b67e	00 	. 
	nop			;b67f	00 	. 
	nop			;b680	00 	. 
	nop			;b681	00 	. 
	nop			;b682	00 	. 
	nop			;b683	00 	. 
	nop			;b684	00 	. 
	nop			;b685	00 	. 
	nop			;b686	00 	. 
	nop			;b687	00 	. 
	nop			;b688	00 	. 
	nop			;b689	00 	. 
	nop			;b68a	00 	. 
	nop			;b68b	00 	. 
	nop			;b68c	00 	. 
	nop			;b68d	00 	. 
	nop			;b68e	00 	. 
	nop			;b68f	00 	. 
	nop			;b690	00 	. 
	nop			;b691	00 	. 
	nop			;b692	00 	. 
	nop			;b693	00 	. 
	nop			;b694	00 	. 
	nop			;b695	00 	. 
	nop			;b696	00 	. 
	nop			;b697	00 	. 
	nop			;b698	00 	. 
	nop			;b699	00 	. 
	nop			;b69a	00 	. 
	nop			;b69b	00 	. 
	nop			;b69c	00 	. 
	nop			;b69d	00 	. 
	nop			;b69e	00 	. 
	nop			;b69f	00 	. 
	nop			;b6a0	00 	. 
	nop			;b6a1	00 	. 
	nop			;b6a2	00 	. 
	nop			;b6a3	00 	. 
	nop			;b6a4	00 	. 
	nop			;b6a5	00 	. 
	nop			;b6a6	00 	. 
	nop			;b6a7	00 	. 
	nop			;b6a8	00 	. 
	nop			;b6a9	00 	. 
	nop			;b6aa	00 	. 
	nop			;b6ab	00 	. 
	nop			;b6ac	00 	. 
	nop			;b6ad	00 	. 
	nop			;b6ae	00 	. 
	nop			;b6af	00 	. 
	nop			;b6b0	00 	. 
	nop			;b6b1	00 	. 
	nop			;b6b2	00 	. 
	nop			;b6b3	00 	. 
	nop			;b6b4	00 	. 
	nop			;b6b5	00 	. 
	nop			;b6b6	00 	. 
	nop			;b6b7	00 	. 
	nop			;b6b8	00 	. 
	nop			;b6b9	00 	. 
	nop			;b6ba	00 	. 
	nop			;b6bb	00 	. 
	nop			;b6bc	00 	. 
	nop			;b6bd	00 	. 
	nop			;b6be	00 	. 
	nop			;b6bf	00 	. 
	nop			;b6c0	00 	. 
	nop			;b6c1	00 	. 
	nop			;b6c2	00 	. 
	nop			;b6c3	00 	. 
	nop			;b6c4	00 	. 
	nop			;b6c5	00 	. 
	nop			;b6c6	00 	. 
	nop			;b6c7	00 	. 
	nop			;b6c8	00 	. 
	nop			;b6c9	00 	. 
	nop			;b6ca	00 	. 
	nop			;b6cb	00 	. 
	nop			;b6cc	00 	. 
	nop			;b6cd	00 	. 
	nop			;b6ce	00 	. 
	nop			;b6cf	00 	. 
	nop			;b6d0	00 	. 
	nop			;b6d1	00 	. 
	nop			;b6d2	00 	. 
	nop			;b6d3	00 	. 
	nop			;b6d4	00 	. 
	nop			;b6d5	00 	. 
	nop			;b6d6	00 	. 
	nop			;b6d7	00 	. 
	nop			;b6d8	00 	. 
	nop			;b6d9	00 	. 
	nop			;b6da	00 	. 
	nop			;b6db	00 	. 
	nop			;b6dc	00 	. 
	nop			;b6dd	00 	. 
	nop			;b6de	00 	. 
	nop			;b6df	00 	. 
	nop			;b6e0	00 	. 
	nop			;b6e1	00 	. 
	nop			;b6e2	00 	. 
	nop			;b6e3	00 	. 
	nop			;b6e4	00 	. 
	nop			;b6e5	00 	. 
	nop			;b6e6	00 	. 
	nop			;b6e7	00 	. 
	nop			;b6e8	00 	. 
	nop			;b6e9	00 	. 
	nop			;b6ea	00 	. 
	nop			;b6eb	00 	. 
	nop			;b6ec	00 	. 
	nop			;b6ed	00 	. 
	nop			;b6ee	00 	. 
	nop			;b6ef	00 	. 
	nop			;b6f0	00 	. 
	nop			;b6f1	00 	. 
	nop			;b6f2	00 	. 
	nop			;b6f3	00 	. 
	nop			;b6f4	00 	. 
	nop			;b6f5	00 	. 
	nop			;b6f6	00 	. 
	nop			;b6f7	00 	. 
	nop			;b6f8	00 	. 
	nop			;b6f9	00 	. 
	nop			;b6fa	00 	. 
	nop			;b6fb	00 	. 
	nop			;b6fc	00 	. 
	nop			;b6fd	00 	. 
	nop			;b6fe	00 	. 
	nop			;b6ff	00 	. 
	nop			;b700	00 	. 
	nop			;b701	00 	. 
	nop			;b702	00 	. 
	nop			;b703	00 	. 
	nop			;b704	00 	. 
	nop			;b705	00 	. 
	nop			;b706	00 	. 
	nop			;b707	00 	. 
	nop			;b708	00 	. 
	nop			;b709	00 	. 
	nop			;b70a	00 	. 
	nop			;b70b	00 	. 
	nop			;b70c	00 	. 
	nop			;b70d	00 	. 
	nop			;b70e	00 	. 
	nop			;b70f	00 	. 
	nop			;b710	00 	. 
	nop			;b711	00 	. 
	nop			;b712	00 	. 
	nop			;b713	00 	. 
	nop			;b714	00 	. 
	nop			;b715	00 	. 
	nop			;b716	00 	. 
	nop			;b717	00 	. 
	nop			;b718	00 	. 
	nop			;b719	00 	. 
	nop			;b71a	00 	. 
	nop			;b71b	00 	. 
	nop			;b71c	00 	. 
	nop			;b71d	00 	. 
	nop			;b71e	00 	. 
	nop			;b71f	00 	. 
	nop			;b720	00 	. 
	nop			;b721	00 	. 
	nop			;b722	00 	. 
	nop			;b723	00 	. 
	nop			;b724	00 	. 
	nop			;b725	00 	. 
	nop			;b726	00 	. 
	nop			;b727	00 	. 
	nop			;b728	00 	. 
	nop			;b729	00 	. 
	nop			;b72a	00 	. 
	nop			;b72b	00 	. 
	nop			;b72c	00 	. 
	nop			;b72d	00 	. 
	nop			;b72e	00 	. 
	nop			;b72f	00 	. 
	nop			;b730	00 	. 
	nop			;b731	00 	. 
	nop			;b732	00 	. 
	nop			;b733	00 	. 
	nop			;b734	00 	. 
	nop			;b735	00 	. 
	nop			;b736	00 	. 
	nop			;b737	00 	. 
	nop			;b738	00 	. 
	nop			;b739	00 	. 
	nop			;b73a	00 	. 
	nop			;b73b	00 	. 
	nop			;b73c	00 	. 
	nop			;b73d	00 	. 
	nop			;b73e	00 	. 
	nop			;b73f	00 	. 
	nop			;b740	00 	. 
	nop			;b741	00 	. 
	nop			;b742	00 	. 
	nop			;b743	00 	. 
	nop			;b744	00 	. 
	nop			;b745	00 	. 
	nop			;b746	00 	. 
	nop			;b747	00 	. 
	nop			;b748	00 	. 
	nop			;b749	00 	. 
	nop			;b74a	00 	. 
	nop			;b74b	00 	. 
	nop			;b74c	00 	. 
	nop			;b74d	00 	. 
	nop			;b74e	00 	. 
	nop			;b74f	00 	. 
	nop			;b750	00 	. 
	nop			;b751	00 	. 
	nop			;b752	00 	. 
	nop			;b753	00 	. 
	nop			;b754	00 	. 
	nop			;b755	00 	. 
	nop			;b756	00 	. 
	nop			;b757	00 	. 
	nop			;b758	00 	. 
	nop			;b759	00 	. 
	nop			;b75a	00 	. 
	nop			;b75b	00 	. 
	nop			;b75c	00 	. 
	nop			;b75d	00 	. 
	nop			;b75e	00 	. 
	nop			;b75f	00 	. 
	nop			;b760	00 	. 
	nop			;b761	00 	. 
	nop			;b762	00 	. 
	nop			;b763	00 	. 
	nop			;b764	00 	. 
	nop			;b765	00 	. 
	nop			;b766	00 	. 
	nop			;b767	00 	. 
	nop			;b768	00 	. 
	nop			;b769	00 	. 
	nop			;b76a	00 	. 
	nop			;b76b	00 	. 
	nop			;b76c	00 	. 
	nop			;b76d	00 	. 
	nop			;b76e	00 	. 
	nop			;b76f	00 	. 
	nop			;b770	00 	. 
	nop			;b771	00 	. 
	nop			;b772	00 	. 
	nop			;b773	00 	. 
	nop			;b774	00 	. 
	nop			;b775	00 	. 
	nop			;b776	00 	. 
	nop			;b777	00 	. 
	nop			;b778	00 	. 
	nop			;b779	00 	. 
	nop			;b77a	00 	. 
	nop			;b77b	00 	. 
	nop			;b77c	00 	. 
	nop			;b77d	00 	. 
	nop			;b77e	00 	. 
	nop			;b77f	00 	. 
	nop			;b780	00 	. 
	nop			;b781	00 	. 
	nop			;b782	00 	. 
	nop			;b783	00 	. 
	nop			;b784	00 	. 
	ld (bc),a			;b785	02 	. 
	ld a,a			;b786	7f 	 
	ld h,d			;b787	62 	b 
	rst 8			;b788	cf 	. 
	xor a			;b789	af 	. 
	ld (bc),a			;b78a	02 	. 
	ld a,h			;b78b	7c 	| 
	ld h,d			;b78c	62 	b 
	rst 8			;b78d	cf 	. 
	xor a			;b78e	af 	. 
	ld (bc),a			;b78f	02 	. 
	sbc a,d			;b790	9a 	. 
	ld h,d			;b791	62 	b 
	rst 8			;b792	cf 	. 
	xor a			;b793	af 	. 
	ld (bc),a			;b794	02 	. 
	ld a,c			;b795	79 	y 
	ld h,d			;b796	62 	b 
	rst 8			;b797	cf 	. 
	xor a			;b798	af 	. 
	ld (bc),a			;b799	02 	. 
	halt			;b79a	76 	v 
	ld h,d			;b79b	62 	b 
	exx			;b79c	d9 	. 
	xor a			;b79d	af 	. 
	ld (bc),a			;b79e	02 	. 
	call pe,0cf63h		;b79f	ec 63 cf 	. c . 
	xor a			;b7a2	af 	. 
	ld (bc),a			;b7a3	02 	. 
	ret po			;b7a4	e0 	. 
	ld h,e			;b7a5	63 	c 
	rst 8			;b7a6	cf 	. 
	xor a			;b7a7	af 	. 
	ld (bc),a			;b7a8	02 	. 
	adc a,063h		;b7a9	ce 63 	. c 
	rst 8			;b7ab	cf 	. 
	xor a			;b7ac	af 	. 
	ld (bc),a			;b7ad	02 	. 
	cp e			;b7ae	bb 	. 
	ld h,e			;b7af	63 	c 
	rst 8			;b7b0	cf 	. 
	xor a			;b7b1	af 	. 
	ld (bc),a			;b7b2	02 	. 
	rst 0			;b7b3	c7 	. 
	ld h,e			;b7b4	63 	c 
	rst 8			;b7b5	cf 	. 
	xor a			;b7b6	af 	. 
	ld (bc),a			;b7b7	02 	. 
	xor c			;b7b8	a9 	. 
	ld h,e			;b7b9	63 	c 
	rst 8			;b7ba	cf 	. 
	xor a			;b7bb	af 	. 
	ld (bc),a			;b7bc	02 	. 
	or d			;b7bd	b2 	. 
	ld h,e			;b7be	63 	c 
	rst 8			;b7bf	cf 	. 
	xor a			;b7c0	af 	. 
	ld (bc),a			;b7c1	02 	. 
	inc b			;b7c2	04 	. 
	ld h,h			;b7c3	64 	d 
	rst 8			;b7c4	cf 	. 
	xor a			;b7c5	af 	. 
	ld (bc),a			;b7c6	02 	. 
	or 063h		;b7c7	f6 63 	. c 
	rst 8			;b7c9	cf 	. 
	xor a			;b7ca	af 	. 
	dec c			;b7cb	0d 	. 
	cp l			;b7cc	bd 	. 
	ld h,(hl)			;b7cd	66 	f 
	rst 8			;b7ce	cf 	. 
	xor a			;b7cf	af 	. 
	dec c			;b7d0	0d 	. 
	push bc			;b7d1	c5 	. 
	ld h,(hl)			;b7d2	66 	f 
	rst 8			;b7d3	cf 	. 
	xor a			;b7d4	af 	. 
	dec c			;b7d5	0d 	. 
	call nc,0cf66h		;b7d6	d4 66 cf 	. f . 
	xor a			;b7d9	af 	. 
	dec c			;b7da	0d 	. 
	jr nc,lb842h		;b7db	30 65 	0 e 
	rst 8			;b7dd	cf 	. 
	xor a			;b7de	af 	. 
	dec c			;b7df	0d 	. 
	dec (hl)			;b7e0	35 	5 
	ld h,l			;b7e1	65 	e 
	rst 8			;b7e2	cf 	. 
	xor a			;b7e3	af 	. 
	dec c			;b7e4	0d 	. 
	dec a			;b7e5	3d 	= 
	ld h,l			;b7e6	65 	e 
	rst 8			;b7e7	cf 	. 
	xor a			;b7e8	af 	. 
	ld (bc),a			;b7e9	02 	. 
	adc a,(hl)			;b7ea	8e 	. 
	ld h,d			;b7eb	62 	b 
	rst 8			;b7ec	cf 	. 
	xor a			;b7ed	af 	. 
	ld (bc),a			;b7ee	02 	. 
	sub c			;b7ef	91 	. 
	ld h,d			;b7f0	62 	b 
	rst 8			;b7f1	cf 	. 
	xor a			;b7f2	af 	. 
	ld (bc),a			;b7f3	02 	. 
	add a,l			;b7f4	85 	. 
	ld h,d			;b7f5	62 	b 
	rst 8			;b7f6	cf 	. 
	xor a			;b7f7	af 	. 
lb7f8h:
	ld (bc),a			;b7f8	02 	. 
	adc a,e			;b7f9	8b 	. 
	ld h,d			;b7fa	62 	b 
	rst 8			;b7fb	cf 	. 
	xor a			;b7fc	af 	. 
	nop			;b7fd	00 	. 
	nop			;b7fe	00 	. 
	nop			;b7ff	00 	. 
	ld h,c			;b800	61 	a 
	ld (hl),l			;b801	75 	u 
	ld (hl),h			;b802	74 	t 
	ld l,a			;b803	6f 	o 
	jr nz,lb826h		;b804	20 20 	    
	jr nz,lb828h		;b806	20 20 	    
	nop			;b808	00 	. 
	nop			;b809	00 	. 
	ld bc,062ffh		;b80a	01 ff 62 	. . b 
	ld (hl),d			;b80d	72 	r 
	ld h,l			;b80e	65 	e 
	ld h,c			;b80f	61 	a 
	ld l,e			;b810	6b 	k 
	jr nz,lb833h		;b811	20 20 	    
	jr nz,lb815h		;b813	20 00 	  . 
lb815h:
	nop			;b815	00 	. 
	ld (bc),a			;b816	02 	. 
	rst 38h			;b817	ff 	. 
	ld h,e			;b818	63 	c 
	ld h,c			;b819	61 	a 
	ld (hl),e			;b81a	73 	s 
	ld h,l			;b81b	65 	e 
	jr nz,lb83eh		;b81c	20 20 	    
	jr nz,lb840h		;b81e	20 20 	    
	nop			;b820	00 	. 
	nop			;b821	00 	. 
	inc bc			;b822	03 	. 
	rst 38h			;b823	ff 	. 
	ld h,e			;b824	63 	c 
	ld h,c			;b825	61 	a 
lb826h:
	ld (hl),e			;b826	73 	s 
	ld (hl),h			;b827	74 	t 
lb828h:
	jr nz,lb84ah		;b828	20 20 	    
	jr nz,lb84ch		;b82a	20 20 	    
	nop			;b82c	00 	. 
	nop			;b82d	00 	. 
	inc b			;b82e	04 	. 
	rst 38h			;b82f	ff 	. 
	ld h,e			;b830	63 	c 
	ld l,b			;b831	68 	h 
	ld h,c			;b832	61 	a 
lb833h:
	ld (hl),d			;b833	72 	r 
	jr nz,lb856h		;b834	20 20 	    
	jr nz,lb858h		;b836	20 20 	    
	nop			;b838	00 	. 
	nop			;b839	00 	. 
	dec b			;b83a	05 	. 
	rst 38h			;b83b	ff 	. 
	ld h,e			;b83c	63 	c 
	ld l,a			;b83d	6f 	o 
lb83eh:
	ld l,(hl)			;b83e	6e 	n 
	ld (hl),h			;b83f	74 	t 
lb840h:
	ld l,c			;b840	69 	i 
	ld l,(hl)			;b841	6e 	n 
lb842h:
	ld (hl),l			;b842	75 	u 
	ld h,l			;b843	65 	e 
	nop			;b844	00 	. 
	nop			;b845	00 	. 
	ld b,0ffh		;b846	06 ff 	. . 
	ld h,h			;b848	64 	d 
	ld h,l			;b849	65 	e 
lb84ah:
	ld h,(hl)			;b84a	66 	f 
	ld h,c			;b84b	61 	a 
lb84ch:
	ld (hl),l			;b84c	75 	u 
	ld l,h			;b84d	6c 	l 
	ld (hl),h			;b84e	74 	t 
	jr nz,lb851h		;b84f	20 00 	  . 
lb851h:
	nop			;b851	00 	. 
	rlca			;b852	07 	. 
	rst 38h			;b853	ff 	. 
	ld h,h			;b854	64 	d 
	ld l,a			;b855	6f 	o 
lb856h:
	ld (hl),l			;b856	75 	u 
	ld h,d			;b857	62 	b 
lb858h:
	ld l,h			;b858	6c 	l 
	ld h,l			;b859	65 	e 
	jr nz,lb87ch		;b85a	20 20 	    
	nop			;b85c	00 	. 
	nop			;b85d	00 	. 
	ex af,af'			;b85e	08 	. 
	rst 38h			;b85f	ff 	. 
	ld h,h			;b860	64 	d 
	ld l,a			;b861	6f 	o 
	jr nz,lb884h		;b862	20 20 	    
	jr nz,lb886h		;b864	20 20 	    
	jr nz,lb888h		;b866	20 20 	    
	nop			;b868	00 	. 
	nop			;b869	00 	. 
	add hl,bc			;b86a	09 	. 
	rst 38h			;b86b	ff 	. 
	ld h,l			;b86c	65 	e 
	ld l,h			;b86d	6c 	l 
	ld (hl),e			;b86e	73 	s 
	ld h,l			;b86f	65 	e 
	jr nz,lb892h		;b870	20 20 	    
	jr nz,lb894h		;b872	20 20 	    
	nop			;b874	00 	. 
	nop			;b875	00 	. 
	dec bc			;b876	0b 	. 
	rst 38h			;b877	ff 	. 
	ld h,l			;b878	65 	e 
	ld l,(hl)			;b879	6e 	n 
	ld (hl),h			;b87a	74 	t 
	ld (hl),d			;b87b	72 	r 
lb87ch:
	ld a,c			;b87c	79 	y 
	jr nz,lb89fh		;b87d	20 20 	    
	jr nz,lb881h		;b87f	20 00 	  . 
lb881h:
	nop			;b881	00 	. 
	inc c			;b882	0c 	. 
	rst 38h			;b883	ff 	. 
lb884h:
	ld h,l			;b884	65 	e 
	ld a,b			;b885	78 	x 
lb886h:
	ld (hl),h			;b886	74 	t 
	ld h,l			;b887	65 	e 
lb888h:
	ld (hl),d			;b888	72 	r 
	ld l,(hl)			;b889	6e 	n 
	jr nz,lb8ach		;b88a	20 20 	    
	nop			;b88c	00 	. 
	nop			;b88d	00 	. 
	dec c			;b88e	0d 	. 
	rst 38h			;b88f	ff 	. 
	ld h,(hl)			;b890	66 	f 
	ld l,h			;b891	6c 	l 
lb892h:
	ld l,a			;b892	6f 	o 
	ld h,c			;b893	61 	a 
lb894h:
	ld (hl),h			;b894	74 	t 
	jr nz,$+34		;b895	20 20 	    
	jr nz,lb899h		;b897	20 00 	  . 
lb899h:
	nop			;b899	00 	. 
	ld c,0ffh		;b89a	0e ff 	. . 
	ld h,(hl)			;b89c	66 	f 
	ld l,a			;b89d	6f 	o 
	ld (hl),d			;b89e	72 	r 
lb89fh:
	jr nz,lb8c1h		;b89f	20 20 	    
	jr nz,lb8c3h		;b8a1	20 20 	    
	jr nz,lb8a5h		;b8a3	20 00 	  . 
lb8a5h:
	nop			;b8a5	00 	. 
	rrca			;b8a6	0f 	. 
	rst 38h			;b8a7	ff 	. 
	ld h,a			;b8a8	67 	g 
	ld l,a			;b8a9	6f 	o 
	ld (hl),h			;b8aa	74 	t 
	ld l,a			;b8ab	6f 	o 
lb8ach:
	jr nz,lb8ceh		;b8ac	20 20 	    
	jr nz,lb8d0h		;b8ae	20 20 	    
	nop			;b8b0	00 	. 
	nop			;b8b1	00 	. 
	djnz $+1		;b8b2	10 ff 	. . 
	ld l,c			;b8b4	69 	i 
	ld h,(hl)			;b8b5	66 	f 
	jr nz,lb8d8h		;b8b6	20 20 	    
	jr nz,lb8dah		;b8b8	20 20 	    
	jr nz,lb8dch		;b8ba	20 20 	    
	nop			;b8bc	00 	. 
	nop			;b8bd	00 	. 
	ld de,069ffh		;b8be	11 ff 69 	. . i 
lb8c1h:
	ld l,(hl)			;b8c1	6e 	n 
	ld (hl),h			;b8c2	74 	t 
lb8c3h:
	jr nz,lb8e5h		;b8c3	20 20 	    
	jr nz,lb8e7h		;b8c5	20 20 	    
	jr nz,lb8c9h		;b8c7	20 00 	  . 
lb8c9h:
	nop			;b8c9	00 	. 
	ld (de),a			;b8ca	12 	. 
	rst 38h			;b8cb	ff 	. 
	ld l,h			;b8cc	6c 	l 
	ld l,a			;b8cd	6f 	o 
lb8ceh:
	ld l,(hl)			;b8ce	6e 	n 
	ld h,a			;b8cf	67 	g 
lb8d0h:
	jr nz,lb8f2h		;b8d0	20 20 	    
	jr nz,lb8f4h		;b8d2	20 20 	    
	nop			;b8d4	00 	. 
	nop			;b8d5	00 	. 
	inc de			;b8d6	13 	. 
	rst 38h			;b8d7	ff 	. 
lb8d8h:
	ld (hl),d			;b8d8	72 	r 
	ld h,l			;b8d9	65 	e 
lb8dah:
	ld h,a			;b8da	67 	g 
	ld l,c			;b8db	69 	i 
lb8dch:
	ld (hl),e			;b8dc	73 	s 
	ld (hl),h			;b8dd	74 	t 
	ld h,l			;b8de	65 	e 
	ld (hl),d			;b8df	72 	r 
	nop			;b8e0	00 	. 
	nop			;b8e1	00 	. 
	inc d			;b8e2	14 	. 
	rst 38h			;b8e3	ff 	. 
	ld (hl),d			;b8e4	72 	r 
lb8e5h:
	ld h,l			;b8e5	65 	e 
	ld (hl),h			;b8e6	74 	t 
lb8e7h:
	ld (hl),l			;b8e7	75 	u 
	ld (hl),d			;b8e8	72 	r 
	ld l,(hl)			;b8e9	6e 	n 
	jr nz,lb90ch		;b8ea	20 20 	    
	nop			;b8ec	00 	. 
	nop			;b8ed	00 	. 
	dec d			;b8ee	15 	. 
	rst 38h			;b8ef	ff 	. 
	ld (hl),e			;b8f0	73 	s 
	ld l,b			;b8f1	68 	h 
lb8f2h:
	ld l,a			;b8f2	6f 	o 
	ld (hl),d			;b8f3	72 	r 
lb8f4h:
	ld (hl),h			;b8f4	74 	t 
	jr nz,lb917h		;b8f5	20 20 	    
	jr nz,lb8f9h		;b8f7	20 00 	  . 
lb8f9h:
	nop			;b8f9	00 	. 
	ld d,0ffh		;b8fa	16 ff 	. . 
	ld (hl),e			;b8fc	73 	s 
	ld l,c			;b8fd	69 	i 
	ld a,d			;b8fe	7a 	z 
	ld h,l			;b8ff	65 	e 
	ld l,a			;b900	6f 	o 
	ld h,(hl)			;b901	66 	f 
	jr nz,lb924h		;b902	20 20 	    
	nop			;b904	00 	. 
	nop			;b905	00 	. 
	rla			;b906	17 	. 
	rst 38h			;b907	ff 	. 
	ld (hl),e			;b908	73 	s 
	ld (hl),h			;b909	74 	t 
	ld h,c			;b90a	61 	a 
	ld (hl),h			;b90b	74 	t 
lb90ch:
	ld l,c			;b90c	69 	i 
	ld h,e			;b90d	63 	c 
	jr nz,lb930h		;b90e	20 20 	    
	nop			;b910	00 	. 
	nop			;b911	00 	. 
	jr $+1		;b912	18 ff 	. . 
	ld (hl),e			;b914	73 	s 
	ld (hl),h			;b915	74 	t 
	ld (hl),d			;b916	72 	r 
lb917h:
	ld (hl),l			;b917	75 	u 
	ld h,e			;b918	63 	c 
	ld (hl),h			;b919	74 	t 
	jr nz,lb93ch		;b91a	20 20 	    
	nop			;b91c	00 	. 
	nop			;b91d	00 	. 
	add hl,de			;b91e	19 	. 
	rst 38h			;b91f	ff 	. 
	ld (hl),e			;b920	73 	s 
	ld (hl),a			;b921	77 	w 
	ld l,c			;b922	69 	i 
	ld (hl),h			;b923	74 	t 
lb924h:
	ld h,e			;b924	63 	c 
	ld l,b			;b925	68 	h 
	jr nz,lb948h		;b926	20 20 	    
	nop			;b928	00 	. 
	nop			;b929	00 	. 
	ld a,(de)			;b92a	1a 	. 
	rst 38h			;b92b	ff 	. 
	ld (hl),h			;b92c	74 	t 
	ld a,c			;b92d	79 	y 
	ld (hl),b			;b92e	70 	p 
	ld h,l			;b92f	65 	e 
lb930h:
	ld h,h			;b930	64 	d 
	ld h,l			;b931	65 	e 
	ld h,(hl)			;b932	66 	f 
	jr nz,lb935h		;b933	20 00 	  . 
lb935h:
	nop			;b935	00 	. 
	dec de			;b936	1b 	. 
	rst 38h			;b937	ff 	. 
	ld (hl),l			;b938	75 	u 
	ld l,(hl)			;b939	6e 	n 
	ld l,c			;b93a	69 	i 
	ld l,a			;b93b	6f 	o 
lb93ch:
	ld l,(hl)			;b93c	6e 	n 
	jr nz,lb95fh		;b93d	20 20 	    
	jr nz,lb941h		;b93f	20 00 	  . 
lb941h:
	nop			;b941	00 	. 
	inc e			;b942	1c 	. 
	rst 38h			;b943	ff 	. 
	ld (hl),l			;b944	75 	u 
	ld l,(hl)			;b945	6e 	n 
	ld (hl),e			;b946	73 	s 
	ld l,c			;b947	69 	i 
lb948h:
	ld h,a			;b948	67 	g 
	ld l,(hl)			;b949	6e 	n 
	ld h,l			;b94a	65 	e 
	ld h,h			;b94b	64 	d 
	nop			;b94c	00 	. 
	nop			;b94d	00 	. 
	dec e			;b94e	1d 	. 
	rst 38h			;b94f	ff 	. 
	ld (hl),a			;b950	77 	w 
	ld l,b			;b951	68 	h 
	ld l,c			;b952	69 	i 
	ld l,h			;b953	6c 	l 
	ld h,l			;b954	65 	e 
	jr nz,lb977h		;b955	20 20 	    
	jr nz,lb959h		;b957	20 00 	  . 
lb959h:
	nop			;b959	00 	. 
	ld e,0ffh		;b95a	1e ff 	. . 
	ld l,e			;b95c	6b 	k 
	ld h,l			;b95d	65 	e 
	ld a,c			;b95e	79 	y 
lb95fh:
	ld l,b			;b95f	68 	h 
	ld l,c			;b960	69 	i 
	ld (hl),h			;b961	74 	t 
	jr nz,lb984h		;b962	20 20 	    
	nop			;b964	00 	. 
	nop			;b965	00 	. 
	ret m			;b966	f8 	. 
	or a			;b967	b7 	. 
	ld (hl),d			;b968	72 	r 
	ld h,c			;b969	61 	a 
	ld (hl),a			;b96a	77 	w 
	ld l,c			;b96b	69 	i 
	ld l,(hl)			;b96c	6e 	n 
	jr nz,lb98fh		;b96d	20 20 	    
	jr nz,lb971h		;b96f	20 00 	  . 
lb971h:
	nop			;b971	00 	. 
	di			;b972	f3 	. 
	or a			;b973	b7 	. 
	ld (hl),b			;b974	70 	p 
	ld (hl),l			;b975	75 	u 
	ld (hl),h			;b976	74 	t 
lb977h:
	ld h,e			;b977	63 	c 
	ld l,b			;b978	68 	h 
	ld h,c			;b979	61 	a 
	ld (hl),d			;b97a	72 	r 
	jr nz,lb97dh		;b97b	20 00 	  . 
lb97dh:
	nop			;b97d	00 	. 
	xor 0b7h		;b97e	ee b7 	. . 
	ld h,a			;b980	67 	g 
	ld h,l			;b981	65 	e 
	ld (hl),h			;b982	74 	t 
	ld h,e			;b983	63 	c 
lb984h:
	ld l,b			;b984	68 	h 
	ld h,c			;b985	61 	a 
	ld (hl),d			;b986	72 	r 
	jr nz,lb989h		;b987	20 00 	  . 
lb989h:
	nop			;b989	00 	. 
	jp (hl)			;b98a	e9 	. 
	or a			;b98b	b7 	. 
	ld (hl),b			;b98c	70 	p 
	ld (hl),d			;b98d	72 	r 
	ld l,c			;b98e	69 	i 
lb98fh:
	ld l,(hl)			;b98f	6e 	n 
	ld (hl),h			;b990	74 	t 
	ld h,(hl)			;b991	66 	f 
	jr nz,lb9b4h		;b992	20 20 	    
	nop			;b994	00 	. 
	nop			;b995	00 	. 
	call po,066b7h		;b996	e4 b7 66 	. . f 
	ld (hl),b			;b999	70 	p 
	ld (hl),d			;b99a	72 	r 
	ld l,c			;b99b	69 	i 
	ld l,(hl)			;b99c	6e 	n 
	ld (hl),h			;b99d	74 	t 
	ld h,(hl)			;b99e	66 	f 
	jr nz,lb9a1h		;b99f	20 00 	  . 
lb9a1h:
	nop			;b9a1	00 	. 
	rst 18h			;b9a2	df 	. 
	or a			;b9a3	b7 	. 
	ld (hl),e			;b9a4	73 	s 
	ld (hl),b			;b9a5	70 	p 
	ld (hl),d			;b9a6	72 	r 
	ld l,c			;b9a7	69 	i 
	ld l,(hl)			;b9a8	6e 	n 
	ld (hl),h			;b9a9	74 	t 
	ld h,(hl)			;b9aa	66 	f 
	jr nz,lb9adh		;b9ab	20 00 	  . 
lb9adh:
	nop			;b9ad	00 	. 
	jp c,073b7h		;b9ae	da b7 73 	. . s 
	ld h,e			;b9b1	63 	c 
	ld h,c			;b9b2	61 	a 
	ld l,(hl)			;b9b3	6e 	n 
lb9b4h:
	ld h,(hl)			;b9b4	66 	f 
	jr nz,lb9d7h		;b9b5	20 20 	    
	jr nz,lb9b9h		;b9b7	20 00 	  . 
lb9b9h:
	nop			;b9b9	00 	. 
	push de			;b9ba	d5 	. 
	or a			;b9bb	b7 	. 
	ld h,(hl)			;b9bc	66 	f 
	ld (hl),e			;b9bd	73 	s 
	ld h,e			;b9be	63 	c 
	ld h,c			;b9bf	61 	a 
	ld l,(hl)			;b9c0	6e 	n 
	ld h,(hl)			;b9c1	66 	f 
	jr nz,lb9e4h		;b9c2	20 20 	    
	nop			;b9c4	00 	. 
	nop			;b9c5	00 	. 
	ret nc			;b9c6	d0 	. 
	or a			;b9c7	b7 	. 
	ld (hl),e			;b9c8	73 	s 
	ld (hl),e			;b9c9	73 	s 
	ld h,e			;b9ca	63 	c 
	ld h,c			;b9cb	61 	a 
	ld l,(hl)			;b9cc	6e 	n 
	ld h,(hl)			;b9cd	66 	f 
	jr nz,lb9f0h		;b9ce	20 20 	    
	nop			;b9d0	00 	. 
	nop			;b9d1	00 	. 
	res 6,a		;b9d2	cb b7 	. . 
	ld (hl),e			;b9d4	73 	s 
	ld (hl),a			;b9d5	77 	w 
	ld h,c			;b9d6	61 	a 
lb9d7h:
	ld (hl),b			;b9d7	70 	p 
	jr nz,lb9fah		;b9d8	20 20 	    
	jr nz,lb9fch		;b9da	20 20 	    
	nop			;b9dc	00 	. 
	nop			;b9dd	00 	. 
	add a,0b7h		;b9de	c6 b7 	. . 
	ld l,l			;b9e0	6d 	m 
	ld l,a			;b9e1	6f 	o 
	halt			;b9e2	76 	v 
	ld h,l			;b9e3	65 	e 
lb9e4h:
	jr nz,lba06h		;b9e4	20 20 	    
	jr nz,lba08h		;b9e6	20 20 	    
	nop			;b9e8	00 	. 
	nop			;b9e9	00 	. 
	pop bc			;b9ea	c1 	. 
	or a			;b9eb	b7 	. 
	ld l,c			;b9ec	69 	i 
	ld (hl),e			;b9ed	73 	s 
	ld h,c			;b9ee	61 	a 
	ld l,h			;b9ef	6c 	l 
lb9f0h:
	ld (hl),b			;b9f0	70 	p 
	ld l,b			;b9f1	68 	h 
	ld h,c			;b9f2	61 	a 
	jr nz,lb9f5h		;b9f3	20 00 	  . 
lb9f5h:
	nop			;b9f5	00 	. 
	cp h			;b9f6	bc 	. 
	or a			;b9f7	b7 	. 
	ld l,c			;b9f8	69 	i 
	ld (hl),e			;b9f9	73 	s 
lb9fah:
	ld h,h			;b9fa	64 	d 
	ld l,c			;b9fb	69 	i 
lb9fch:
	ld h,a			;b9fc	67 	g 
	ld l,c			;b9fd	69 	i 
	ld (hl),h			;b9fe	74 	t 
	jr nz,lba01h		;b9ff	20 00 	  . 
lba01h:
	nop			;ba01	00 	. 
	or a			;ba02	b7 	. 
	or a			;ba03	b7 	. 
	ld l,c			;ba04	69 	i 
	ld (hl),e			;ba05	73 	s 
lba06h:
	ld l,h			;ba06	6c 	l 
	ld l,a			;ba07	6f 	o 
lba08h:
	ld (hl),a			;ba08	77 	w 
	ld h,l			;ba09	65 	e 
	ld (hl),d			;ba0a	72 	r 
	jr nz,lba0dh		;ba0b	20 00 	  . 
lba0dh:
	nop			;ba0d	00 	. 
	or d			;ba0e	b2 	. 
	or a			;ba0f	b7 	. 
	ld l,c			;ba10	69 	i 
	ld (hl),e			;ba11	73 	s 
	ld (hl),l			;ba12	75 	u 
	ld (hl),b			;ba13	70 	p 
	ld (hl),b			;ba14	70 	p 
	ld h,l			;ba15	65 	e 
	ld (hl),d			;ba16	72 	r 
	jr nz,lba19h		;ba17	20 00 	  . 
lba19h:
	nop			;ba19	00 	. 
	xor l			;ba1a	ad 	. 
	or a			;ba1b	b7 	. 
	ld l,c			;ba1c	69 	i 
	ld (hl),e			;ba1d	73 	s 
	ld (hl),e			;ba1e	73 	s 
	ld (hl),b			;ba1f	70 	p 
	ld h,c			;ba20	61 	a 
	ld h,e			;ba21	63 	c 
	ld h,l			;ba22	65 	e 
	jr nz,lba25h		;ba23	20 00 	  . 
lba25h:
	nop			;ba25	00 	. 
	xor b			;ba26	a8 	. 
	or a			;ba27	b7 	. 
	ld (hl),h			;ba28	74 	t 
	ld l,a			;ba29	6f 	o 
	ld l,h			;ba2a	6c 	l 
	ld l,a			;ba2b	6f 	o 
	ld (hl),a			;ba2c	77 	w 
	ld h,l			;ba2d	65 	e 
	ld (hl),d			;ba2e	72 	r 
	jr nz,lba31h		;ba2f	20 00 	  . 
lba31h:
	nop			;ba31	00 	. 
	and e			;ba32	a3 	. 
	or a			;ba33	b7 	. 
	ld (hl),h			;ba34	74 	t 
	ld l,a			;ba35	6f 	o 
	ld (hl),l			;ba36	75 	u 
	ld (hl),b			;ba37	70 	p 
	ld (hl),b			;ba38	70 	p 
	ld h,l			;ba39	65 	e 
	ld (hl),d			;ba3a	72 	r 
	jr nz,lba3dh		;ba3b	20 00 	  . 
lba3dh:
	nop			;ba3d	00 	. 
	sbc a,(hl)			;ba3e	9e 	. 
	or a			;ba3f	b7 	. 
	ld h,(hl)			;ba40	66 	f 
	ld l,a			;ba41	6f 	o 
	ld (hl),b			;ba42	70 	p 
	ld h,l			;ba43	65 	e 
	ld l,(hl)			;ba44	6e 	n 
	jr nz,lba67h		;ba45	20 20 	    
	jr nz,lba49h		;ba47	20 00 	  . 
lba49h:
	nop			;ba49	00 	. 
	sbc a,c			;ba4a	99 	. 
	or a			;ba4b	b7 	. 
	ld h,a			;ba4c	67 	g 
	ld h,l			;ba4d	65 	e 
	ld (hl),h			;ba4e	74 	t 
	ld h,e			;ba4f	63 	c 
	jr nz,lba72h		;ba50	20 20 	    
	jr nz,lba74h		;ba52	20 20 	    
	nop			;ba54	00 	. 
	nop			;ba55	00 	. 
	sub h			;ba56	94 	. 
	or a			;ba57	b7 	. 
	ld (hl),l			;ba58	75 	u 
	ld l,(hl)			;ba59	6e 	n 
	ld h,a			;ba5a	67 	g 
	ld h,l			;ba5b	65 	e 
	ld (hl),h			;ba5c	74 	t 
	ld h,e			;ba5d	63 	c 
	jr nz,lba80h		;ba5e	20 20 	    
	nop			;ba60	00 	. 
	nop			;ba61	00 	. 
	adc a,a			;ba62	8f 	. 
	or a			;ba63	b7 	. 
	ld (hl),b			;ba64	70 	p 
	ld (hl),l			;ba65	75 	u 
	ld (hl),h			;ba66	74 	t 
lba67h:
	ld h,e			;ba67	63 	c 
	jr nz,lba8ah		;ba68	20 20 	    
	jr nz,lba8ch		;ba6a	20 20 	    
	nop			;ba6c	00 	. 
	nop			;ba6d	00 	. 
	adc a,d			;ba6e	8a 	. 
	or a			;ba6f	b7 	. 
	ld h,(hl)			;ba70	66 	f 
	ld h,e			;ba71	63 	c 
lba72h:
	ld l,h			;ba72	6c 	l 
	ld l,a			;ba73	6f 	o 
lba74h:
	ld (hl),e			;ba74	73 	s 
	ld h,l			;ba75	65 	e 
	jr nz,lba98h		;ba76	20 20 	    
	nop			;ba78	00 	. 
	nop			;ba79	00 	. 
	add a,l			;ba7a	85 	. 
	or a			;ba7b	b7 	. 
	nop			;ba7c	00 	. 
	nop			;ba7d	00 	. 
	nop			;ba7e	00 	. 
	nop			;ba7f	00 	. 
lba80h:
	nop			;ba80	00 	. 
	nop			;ba81	00 	. 
	nop			;ba82	00 	. 
	nop			;ba83	00 	. 
	nop			;ba84	00 	. 
	nop			;ba85	00 	. 
	nop			;ba86	00 	. 
	nop			;ba87	00 	. 
	nop			;ba88	00 	. 
	nop			;ba89	00 	. 
lba8ah:
	nop			;ba8a	00 	. 
	nop			;ba8b	00 	. 
lba8ch:
	nop			;ba8c	00 	. 
	nop			;ba8d	00 	. 
	nop			;ba8e	00 	. 
	nop			;ba8f	00 	. 
	nop			;ba90	00 	. 
	nop			;ba91	00 	. 
	nop			;ba92	00 	. 
	nop			;ba93	00 	. 
	nop			;ba94	00 	. 
	nop			;ba95	00 	. 
	nop			;ba96	00 	. 
	nop			;ba97	00 	. 
lba98h:
	nop			;ba98	00 	. 
	nop			;ba99	00 	. 
	nop			;ba9a	00 	. 
	nop			;ba9b	00 	. 
	nop			;ba9c	00 	. 
	nop			;ba9d	00 	. 
	nop			;ba9e	00 	. 
	nop			;ba9f	00 	. 
	nop			;baa0	00 	. 
	nop			;baa1	00 	. 
	nop			;baa2	00 	. 
	nop			;baa3	00 	. 
	nop			;baa4	00 	. 
	nop			;baa5	00 	. 
	nop			;baa6	00 	. 
	nop			;baa7	00 	. 
	nop			;baa8	00 	. 
	nop			;baa9	00 	. 
	nop			;baaa	00 	. 
	nop			;baab	00 	. 
	nop			;baac	00 	. 
	nop			;baad	00 	. 
	nop			;baae	00 	. 
	nop			;baaf	00 	. 
	nop			;bab0	00 	. 
	nop			;bab1	00 	. 
	nop			;bab2	00 	. 
	nop			;bab3	00 	. 
	nop			;bab4	00 	. 
	nop			;bab5	00 	. 
	nop			;bab6	00 	. 
	nop			;bab7	00 	. 
	nop			;bab8	00 	. 
	nop			;bab9	00 	. 
	nop			;baba	00 	. 
	nop			;babb	00 	. 
	nop			;babc	00 	. 
	nop			;babd	00 	. 
	nop			;babe	00 	. 
	nop			;babf	00 	. 
	nop			;bac0	00 	. 
	nop			;bac1	00 	. 
	nop			;bac2	00 	. 
	nop			;bac3	00 	. 
	nop			;bac4	00 	. 
	nop			;bac5	00 	. 
	nop			;bac6	00 	. 
	nop			;bac7	00 	. 
	nop			;bac8	00 	. 
	nop			;bac9	00 	. 
	nop			;baca	00 	. 
	nop			;bacb	00 	. 
	nop			;bacc	00 	. 
	nop			;bacd	00 	. 
	nop			;bace	00 	. 
	nop			;bacf	00 	. 
	nop			;bad0	00 	. 
	nop			;bad1	00 	. 
	nop			;bad2	00 	. 
	nop			;bad3	00 	. 
	nop			;bad4	00 	. 
	nop			;bad5	00 	. 
	nop			;bad6	00 	. 
	nop			;bad7	00 	. 
	nop			;bad8	00 	. 
	nop			;bad9	00 	. 
	nop			;bada	00 	. 
	nop			;badb	00 	. 
	nop			;badc	00 	. 
	nop			;badd	00 	. 
	nop			;bade	00 	. 
	nop			;badf	00 	. 
	nop			;bae0	00 	. 
	nop			;bae1	00 	. 
	nop			;bae2	00 	. 
	nop			;bae3	00 	. 
	nop			;bae4	00 	. 
	nop			;bae5	00 	. 
	nop			;bae6	00 	. 
	nop			;bae7	00 	. 
	nop			;bae8	00 	. 
	nop			;bae9	00 	. 
	nop			;baea	00 	. 
	nop			;baeb	00 	. 
	nop			;baec	00 	. 
	nop			;baed	00 	. 
	nop			;baee	00 	. 
	nop			;baef	00 	. 
	nop			;baf0	00 	. 
	nop			;baf1	00 	. 
	nop			;baf2	00 	. 
	nop			;baf3	00 	. 
	nop			;baf4	00 	. 
	nop			;baf5	00 	. 
	nop			;baf6	00 	. 
	nop			;baf7	00 	. 
	nop			;baf8	00 	. 
	nop			;baf9	00 	. 
	nop			;bafa	00 	. 
	nop			;bafb	00 	. 
	nop			;bafc	00 	. 
	nop			;bafd	00 	. 
	nop			;bafe	00 	. 
	nop			;baff	00 	. 

; BLOCK 'data3' (start 0xbb00 end 0xc66f)
data3_start:
	defb 052h		;bb00	52 	R 
	defb 045h		;bb01	45 	E 
	defb 053h		;bb02	53 	S 
	defb 054h		;bb03	54 	T 
	defb 052h		;bb04	52 	R 
	defb 049h		;bb05	49 	I 
	defb 043h		;bb06	43 	C 
	defb 054h		;bb07	54 	T 
	defb 049h		;bb08	49 	I 
	defb 04fh		;bb09	4f 	O 
	defb 04eh		;bb0a	4e 	N 
	defb 020h		;bb0b	20 	  
	defb 03ah		;bb0c	3a 	: 
	defb 020h		;bb0d	20 	  
	defb 066h		;bb0e	66 	f 
	defb 06ch		;bb0f	6c 	l 
	defb 06fh		;bb10	6f 	o 
	defb 061h		;bb11	61 	a 
	defb 074h		;bb12	74 	t 
	defb 073h		;bb13	73 	s 
	defb 020h		;bb14	20 	  
	defb 06eh		;bb15	6e 	n 
	defb 06fh		;bb16	6f 	o 
	defb 074h		;bb17	74 	t 
	defb 020h		;bb18	20 	  
	defb 069h		;bb19	69 	i 
	defb 06dh		;bb1a	6d 	m 
	defb 070h		;bb1b	70 	p 
	defb 06ch		;bb1c	6c 	l 
	defb 065h		;bb1d	65 	e 
	defb 06dh		;bb1e	6d 	m 
	defb 065h		;bb1f	65 	e 
	defb 06eh		;bb20	6e 	n 
	defb 074h		;bb21	74 	t 
	defb 065h		;bb22	65 	e 
	defb 064h		;bb23	64 	d 
	defb 000h		;bb24	00 	. 
	defb 062h		;bb25	62 	b 
	defb 061h		;bb26	61 	a 
	defb 064h		;bb27	64 	d 
	defb 020h		;bb28	20 	  
	defb 063h		;bb29	63 	c 
	defb 068h		;bb2a	68 	h 
	defb 061h		;bb2b	61 	a 
	defb 072h		;bb2c	72 	r 
	defb 061h		;bb2d	61 	a 
	defb 063h		;bb2e	63 	c 
	defb 074h		;bb2f	74 	t 
	defb 065h		;bb30	65 	e 
	defb 072h		;bb31	72 	r 
	defb 020h		;bb32	20 	  
	defb 063h		;bb33	63 	c 
	defb 06fh		;bb34	6f 	o 
	defb 06eh		;bb35	6e 	n 
	defb 073h		;bb36	73 	s 
	defb 074h		;bb37	74 	t 
	defb 061h		;bb38	61 	a 
	defb 06eh		;bb39	6e 	n 
	defb 074h		;bb3a	74 	t 
	defb 000h		;bb3b	00 	. 
	defb 06eh		;bb3c	6e 	n 
	defb 06fh		;bb3d	6f 	o 
	defb 074h		;bb3e	74 	t 
	defb 020h		;bb3f	20 	  
	defb 061h		;bb40	61 	a 
	defb 020h		;bb41	20 	  
	defb 070h		;bb42	70 	p 
	defb 072h		;bb43	72 	r 
	defb 065h		;bb44	65 	e 
	defb 070h		;bb45	70 	p 
	defb 072h		;bb46	72 	r 
	defb 06fh		;bb47	6f 	o 
	defb 063h		;bb48	63 	c 
	defb 065h		;bb49	65 	e 
	defb 073h		;bb4a	73 	s 
	defb 073h		;bb4b	73 	s 
	defb 06fh		;bb4c	6f 	o 
	defb 072h		;bb4d	72 	r 
	defb 020h		;bb4e	20 	  
	defb 063h		;bb4f	63 	c 
	defb 06fh		;bb50	6f 	o 
	defb 06dh		;bb51	6d 	m 
	defb 06dh		;bb52	6d 	m 
	defb 061h		;bb53	61 	a 
	defb 06eh		;bb54	6e 	n 
	defb 064h		;bb55	64 	d 
	defb 000h		;bb56	00 	. 
	defb 06dh		;bb57	6d 	m 
	defb 061h		;bb58	61 	a 
	defb 063h		;bb59	63 	c 
	defb 072h		;bb5a	72 	r 
	defb 06fh		;bb5b	6f 	o 
	defb 020h		;bb5c	20 	  
	defb 062h		;bb5d	62 	b 
	defb 075h		;bb5e	75 	u 
	defb 066h		;bb5f	66 	f 
	defb 066h		;bb60	66 	f 
	defb 065h		;bb61	65 	e 
	defb 072h		;bb62	72 	r 
	defb 020h		;bb63	20 	  
	defb 066h		;bb64	66 	f 
	defb 075h		;bb65	75 	u 
	defb 06ch		;bb66	6c 	l 
	defb 06ch		;bb67	6c 	l 
	defb 000h		;bb68	00 	. 
	defb 063h		;bb69	63 	c 
	defb 061h		;bb6a	61 	a 
	defb 06eh		;bb6b	6e 	n 
	defb 020h		;bb6c	20 	  
	defb 06fh		;bb6d	6f 	o 
	defb 06eh		;bb6e	6e 	n 
	defb 06ch		;bb6f	6c 	l 
	defb 079h		;bb70	79 	y 
	defb 020h		;bb71	20 	  
	defb 064h		;bb72	64 	d 
	defb 065h		;bb73	65 	e 
	defb 066h		;bb74	66 	f 
	defb 069h		;bb75	69 	i 
	defb 06eh		;bb76	6e 	n 
	defb 065h		;bb77	65 	e 
	defb 020h		;bb78	20 	  
	defb 069h		;bb79	69 	i 
	defb 064h		;bb7a	64 	d 
	defb 065h		;bb7b	65 	e 
	defb 06eh		;bb7c	6e 	n 
	defb 074h		;bb7d	74 	t 
	defb 069h		;bb7e	69 	i 
	defb 066h		;bb7f	66 	f 
	defb 069h		;bb80	69 	i 
	defb 065h		;bb81	65 	e 
	defb 072h		;bb82	72 	r 
	defb 073h		;bb83	73 	s 
	defb 020h		;bb84	20 	  
	defb 061h		;bb85	61 	a 
	defb 073h		;bb86	73 	s 
	defb 020h		;bb87	20 	  
	defb 06dh		;bb88	6d 	m 
	defb 061h		;bb89	61 	a 
	defb 063h		;bb8a	63 	c 
	defb 072h		;bb8b	72 	r 
	defb 06fh		;bb8c	6f 	o 
	defb 073h		;bb8d	73 	s 
	defb 000h		;bb8e	00 	. 
	defb 052h		;bb8f	52 	R 
	defb 045h		;bb90	45 	E 
	defb 053h		;bb91	53 	S 
	defb 054h		;bb92	54 	T 
	defb 052h		;bb93	52 	R 
	defb 049h		;bb94	49 	I 
	defb 043h		;bb95	43 	C 
	defb 054h		;bb96	54 	T 
	defb 049h		;bb97	49 	I 
	defb 04fh		;bb98	4f 	O 
	defb 04eh		;bb99	4e 	N 
	defb 03ah		;bb9a	3a 	: 
	defb 020h		;bb9b	20 	  
	defb 06dh		;bb9c	6d 	m 
	defb 061h		;bb9d	61 	a 
	defb 063h		;bb9e	63 	c 
	defb 072h		;bb9f	72 	r 
	defb 06fh		;bba0	6f 	o 
	defb 073h		;bba1	73 	s 
	defb 020h		;bba2	20 	  
	defb 06dh		;bba3	6d 	m 
	defb 061h		;bba4	61 	a 
	defb 079h		;bba5	79 	y 
	defb 020h		;bba6	20 	  
	defb 06eh		;bba7	6e 	n 
	defb 06fh		;bba8	6f 	o 
	defb 074h		;bba9	74 	t 
	defb 020h		;bbaa	20 	  
	defb 068h		;bbab	68 	h 
	defb 061h		;bbac	61 	a 
	defb 076h		;bbad	76 	v 
	defb 065h		;bbae	65 	e 
	defb 020h		;bbaf	20 	  
	defb 070h		;bbb0	70 	p 
	defb 061h		;bbb1	61 	a 
	defb 072h		;bbb2	72 	r 
	defb 061h		;bbb3	61 	a 
	defb 06dh		;bbb4	6d 	m 
	defb 065h		;bbb5	65 	e 
	defb 074h		;bbb6	74 	t 
	defb 065h		;bbb7	65 	e 
	defb 072h		;bbb8	72 	r 
	defb 073h		;bbb9	73 	s 
	defb 000h		;bbba	00 	. 
	defb 063h		;bbbb	63 	c 
	defb 061h		;bbbc	61 	a 
	defb 06eh		;bbbd	6e 	n 
	defb 06eh		;bbbe	6e 	n 
	defb 06fh		;bbbf	6f 	o 
	defb 074h		;bbc0	74 	t 
	defb 020h		;bbc1	20 	  
	defb 06fh		;bbc2	6f 	o 
	defb 070h		;bbc3	70 	p 
	defb 065h		;bbc4	65 	e 
	defb 06eh		;bbc5	6e 	n 
	defb 020h		;bbc6	20 	  
	defb 066h		;bbc7	66 	f 
	defb 069h		;bbc8	69 	i 
	defb 06ch		;bbc9	6c 	l 
	defb 065h		;bbca	65 	e 
	defb 000h		;bbcb	00 	. 
	defb 052h		;bbcc	52 	R 
	defb 045h		;bbcd	45 	E 
	defb 053h		;bbce	53 	S 
	defb 054h		;bbcf	54 	T 
	defb 052h		;bbd0	52 	R 
	defb 049h		;bbd1	49 	I 
	defb 043h		;bbd2	43 	C 
	defb 054h		;bbd3	54 	T 
	defb 049h		;bbd4	49 	I 
	defb 04fh		;bbd5	4f 	O 
	defb 04eh		;bbd6	4e 	N 
	defb 03ah		;bbd7	3a 	: 
	defb 020h		;bbd8	20 	  
	defb 063h		;bbd9	63 	c 
	defb 061h		;bbda	61 	a 
	defb 06eh		;bbdb	6e 	n 
	defb 06eh		;bbdc	6e 	n 
	defb 06fh		;bbdd	6f 	o 
	defb 074h		;bbde	74 	t 
	defb 020h		;bbdf	20 	  
	defb 06eh		;bbe0	6e 	n 
	defb 065h		;bbe1	65 	e 
	defb 073h		;bbe2	73 	s 
	defb 074h		;bbe3	74 	t 
	defb 020h		;bbe4	20 	  
	defb 069h		;bbe5	69 	i 
	defb 06eh		;bbe6	6e 	n 
	defb 063h		;bbe7	63 	c 
	defb 06ch		;bbe8	6c 	l 
	defb 075h		;bbe9	75 	u 
	defb 064h		;bbea	64 	d 
	defb 065h		;bbeb	65 	e 
	defb 073h		;bbec	73 	s 
	defb 000h		;bbed	00 	. 
	defb 06dh		;bbee	6d 	m 
	defb 069h		;bbef	69 	i 
	defb 073h		;bbf0	73 	s 
	defb 073h		;bbf1	73 	s 
	defb 069h		;bbf2	69 	i 
	defb 06eh		;bbf3	6e 	n 
	defb 067h		;bbf4	67 	g 
	defb 020h		;bbf5	20 	  
	defb 027h		;bbf6	27 	' 
	defb 077h		;bbf7	77 	w 
	defb 068h		;bbf8	68 	h 
	defb 069h		;bbf9	69 	i 
	defb 06ch		;bbfa	6c 	l 
	defb 065h		;bbfb	65 	e 
	defb 027h		;bbfc	27 	' 
	defb 000h		;bbfd	00 	. 
	defb 06eh		;bbfe	6e 	n 
	defb 06fh		;bbff	6f 	o 
	defb 074h		;bc00	74 	t 
	defb 020h		;bc01	20 	  
	defb 069h		;bc02	69 	i 
	defb 06eh		;bc03	6e 	n 
	defb 020h		;bc04	20 	  
	defb 06ch		;bc05	6c 	l 
	defb 06fh		;bc06	6f 	o 
	defb 06fh		;bc07	6f 	o 
	defb 070h		;bc08	70 	p 
	defb 020h		;bc09	20 	  
	defb 06fh		;bc0a	6f 	o 
	defb 072h		;bc0b	72 	r 
	defb 020h		;bc0c	20 	  
	defb 073h		;bc0d	73 	s 
	defb 077h		;bc0e	77 	w 
	defb 069h		;bc0f	69 	i 
	defb 074h		;bc10	74 	t 
	defb 063h		;bc11	63 	c 
	defb 068h		;bc12	68 	h 
	defb 000h		;bc13	00 	. 
	defb 06eh		;bc14	6e 	n 
	defb 06fh		;bc15	6f 	o 
	defb 074h		;bc16	74 	t 
	defb 020h		;bc17	20 	  
	defb 069h		;bc18	69 	i 
	defb 06eh		;bc19	6e 	n 
	defb 020h		;bc1a	20 	  
	defb 06ch		;bc1b	6c 	l 
	defb 06fh		;bc1c	6f 	o 
	defb 06fh		;bc1d	6f 	o 
	defb 070h		;bc1e	70 	p 
	defb 000h		;bc1f	00 	. 
	defb 06eh		;bc20	6e 	n 
	defb 06fh		;bc21	6f 	o 
	defb 074h		;bc22	74 	t 
	defb 020h		;bc23	20 	  
	defb 069h		;bc24	69 	i 
	defb 06eh		;bc25	6e 	n 
	defb 020h		;bc26	20 	  
	defb 073h		;bc27	73 	s 
	defb 077h		;bc28	77 	w 
	defb 069h		;bc29	69 	i 
	defb 074h		;bc2a	74 	t 
	defb 063h		;bc2b	63 	c 
	defb 068h		;bc2c	68 	h 
	defb 000h		;bc2d	00 	. 
	defb 04ch		;bc2e	4c 	L 
	defb 049h		;bc2f	49 	I 
	defb 04dh		;bc30	4d 	M 
	defb 049h		;bc31	49 	I 
	defb 054h		;bc32	54 	T 
	defb 020h		;bc33	20 	  
	defb 03ah		;bc34	3a 	: 
	defb 020h		;bc35	20 	  
	defb 074h		;bc36	74 	t 
	defb 06fh		;bc37	6f 	o 
	defb 06fh		;bc38	6f 	o 
	defb 020h		;bc39	20 	  
	defb 06dh		;bc3a	6d 	m 
	defb 061h		;bc3b	61 	a 
	defb 06eh		;bc3c	6e 	n 
	defb 079h		;bc3d	79 	y 
	defb 020h		;bc3e	20 	  
	defb 063h		;bc3f	63 	c 
	defb 061h		;bc40	61 	a 
	defb 073h		;bc41	73 	s 
	defb 065h		;bc42	65 	e 
	defb 020h		;bc43	20 	  
	defb 073h		;bc44	73 	s 
	defb 074h		;bc45	74 	t 
	defb 061h		;bc46	61 	a 
	defb 074h		;bc47	74 	t 
	defb 065h		;bc48	65 	e 
	defb 06dh		;bc49	6d 	m 
	defb 065h		;bc4a	65 	e 
	defb 06eh		;bc4b	6e 	n 
	defb 074h		;bc4c	74 	t 
	defb 073h		;bc4d	73 	s 
	defb 000h		;bc4e	00 	. 
	defb 06dh		;bc4f	6d 	m 
	defb 075h		;bc50	75 	u 
	defb 06ch		;bc51	6c 	l 
	defb 074h		;bc52	74 	t 
	defb 069h		;bc53	69 	i 
	defb 070h		;bc54	70 	p 
	defb 06ch		;bc55	6c 	l 
	defb 065h		;bc56	65 	e 
	defb 020h		;bc57	20 	  
	defb 064h		;bc58	64 	d 
	defb 065h		;bc59	65 	e 
	defb 066h		;bc5a	66 	f 
	defb 061h		;bc5b	61 	a 
	defb 075h		;bc5c	75 	u 
	defb 06ch		;bc5d	6c 	l 
	defb 074h		;bc5e	74 	t 
	defb 020h		;bc5f	20 	  
	defb 073h		;bc60	73 	s 
	defb 074h		;bc61	74 	t 
	defb 061h		;bc62	61 	a 
	defb 074h		;bc63	74 	t 
	defb 065h		;bc64	65 	e 
	defb 06dh		;bc65	6d 	m 
	defb 065h		;bc66	65 	e 
	defb 06eh		;bc67	6e 	n 
	defb 074h		;bc68	74 	t 
	defb 073h		;bc69	73 	s 
	defb 000h		;bc6a	00 	. 
	defb 067h		;bc6b	67 	g 
	defb 06fh		;bc6c	6f 	o 
	defb 074h		;bc6d	74 	t 
	defb 06fh		;bc6e	6f 	o 
	defb 020h		;bc6f	20 	  
	defb 06eh		;bc70	6e 	n 
	defb 065h		;bc71	65 	e 
	defb 065h		;bc72	65 	e 
	defb 064h		;bc73	64 	d 
	defb 073h		;bc74	73 	s 
	defb 020h		;bc75	20 	  
	defb 061h		;bc76	61 	a 
	defb 020h		;bc77	20 	  
	defb 06ch		;bc78	6c 	l 
	defb 061h		;bc79	61 	a 
	defb 062h		;bc7a	62 	b 
	defb 065h		;bc7b	65 	e 
	defb 06ch		;bc7c	6c 	l 
	defb 000h		;bc7d	00 	. 
	defb 06dh		;bc7e	6d 	m 
	defb 075h		;bc7f	75 	u 
	defb 06ch		;bc80	6c 	l 
	defb 074h		;bc81	74 	t 
	defb 069h		;bc82	69 	i 
	defb 070h		;bc83	70 	p 
	defb 06ch		;bc84	6c 	l 
	defb 065h		;bc85	65 	e 
	defb 020h		;bc86	20 	  
	defb 075h		;bc87	75 	u 
	defb 073h		;bc88	73 	s 
	defb 065h		;bc89	65 	e 
	defb 020h		;bc8a	20 	  
	defb 06fh		;bc8b	6f 	o 
	defb 066h		;bc8c	66 	f 
	defb 020h		;bc8d	20 	  
	defb 069h		;bc8e	69 	i 
	defb 064h		;bc8f	64 	d 
	defb 065h		;bc90	65 	e 
	defb 06eh		;bc91	6e 	n 
	defb 074h		;bc92	74 	t 
	defb 069h		;bc93	69 	i 
	defb 066h		;bc94	66 	f 
	defb 069h		;bc95	69 	i 
	defb 065h		;bc96	65 	e 
	defb 072h		;bc97	72 	r 
	defb 000h		;bc98	00 	. 
	defb 064h		;bc99	64 	d 
	defb 069h		;bc9a	69 	i 
	defb 072h		;bc9b	72 	r 
	defb 065h		;bc9c	65 	e 
	defb 063h		;bc9d	63 	c 
	defb 074h		;bc9e	74 	t 
	defb 020h		;bc9f	20 	  
	defb 065h		;bca0	65 	e 
	defb 078h		;bca1	78 	x 
	defb 065h		;bca2	65 	e 
	defb 063h		;bca3	63 	c 
	defb 075h		;bca4	75 	u 
	defb 074h		;bca5	74 	t 
	defb 069h		;bca6	69 	i 
	defb 06fh		;bca7	6f 	o 
	defb 06eh		;bca8	6e 	n 
	defb 020h		;bca9	20 	  
	defb 06eh		;bcaa	6e 	n 
	defb 06fh		;bcab	6f 	o 
	defb 074h		;bcac	74 	t 
	defb 020h		;bcad	20 	  
	defb 070h		;bcae	70 	p 
	defb 06fh		;bcaf	6f 	o 
	defb 073h		;bcb0	73 	s 
	defb 073h		;bcb1	73 	s 
	defb 069h		;bcb2	69 	i 
	defb 062h		;bcb3	62 	b 
	defb 06ch		;bcb4	6c 	l 
	defb 065h		;bcb5	65 	e 
	defb 020h		;bcb6	20 	  
	defb 077h		;bcb7	77 	w 
	defb 068h		;bcb8	68 	h 
	defb 065h		;bcb9	65 	e 
	defb 06eh		;bcba	6e 	n 
	defb 020h		;bcbb	20 	  
	defb 074h		;bcbc	74 	t 
	defb 072h		;bcbd	72 	r 
	defb 061h		;bcbe	61 	a 
	defb 06eh		;bcbf	6e 	n 
	defb 073h		;bcc0	73 	s 
	defb 06ch		;bcc1	6c 	l 
	defb 061h		;bcc2	61 	a 
	defb 074h		;bcc3	74 	t 
	defb 069h		;bcc4	69 	i 
	defb 06eh		;bcc5	6e 	n 
	defb 067h		;bcc6	67 	g 
	defb 000h		;bcc7	00 	. 
	defb 04ch		;bcc8	4c 	L 
	defb 049h		;bcc9	49 	I 
	defb 04dh		;bcca	4d 	M 
	defb 049h		;bccb	49 	I 
	defb 054h		;bccc	54 	T 
	defb 020h		;bccd	20 	  
	defb 03ah		;bcce	3a 	: 
	defb 020h		;bccf	20 	  
	defb 06eh		;bcd0	6e 	n 
	defb 061h		;bcd1	61 	a 
	defb 06dh		;bcd2	6d 	m 
	defb 065h		;bcd3	65 	e 
	defb 020h		;bcd4	20 	  
	defb 074h		;bcd5	74 	t 
	defb 061h		;bcd6	61 	a 
	defb 062h		;bcd7	62 	b 
	defb 06ch		;bcd8	6c 	l 
	defb 065h		;bcd9	65 	e 
	defb 020h		;bcda	20 	  
	defb 066h		;bcdb	66 	f 
	defb 075h		;bcdc	75 	u 
	defb 06ch		;bcdd	6c 	l 
	defb 06ch		;bcde	6c 	l 
	defb 000h		;bcdf	00 	. 
	defb 04ch		;bce0	4c 	L 
	defb 049h		;bce1	49 	I 
	defb 04dh		;bce2	4d 	M 
	defb 049h		;bce3	49 	I 
	defb 054h		;bce4	54 	T 
	defb 020h		;bce5	20 	  
	defb 03ah		;bce6	3a 	: 
	defb 020h		;bce7	20 	  
	defb 074h		;bce8	74 	t 
	defb 06fh		;bce9	6f 	o 
	defb 06fh		;bcea	6f 	o 
	defb 020h		;bceb	20 	  
	defb 06dh		;bcec	6d 	m 
	defb 061h		;bced	61 	a 
	defb 06eh		;bcee	6e 	n 
	defb 079h		;bcef	79 	y 
	defb 020h		;bcf0	20 	  
	defb 074h		;bcf1	74 	t 
	defb 079h		;bcf2	79 	y 
	defb 070h		;bcf3	70 	p 
	defb 065h		;bcf4	65 	e 
	defb 073h		;bcf5	73 	s 
	defb 000h		;bcf6	00 	. 
	defb 064h		;bcf7	64 	d 
	defb 075h		;bcf8	75 	u 
	defb 070h		;bcf9	70 	p 
	defb 06ch		;bcfa	6c 	l 
	defb 069h		;bcfb	69 	i 
	defb 063h		;bcfc	63 	c 
	defb 061h		;bcfd	61 	a 
	defb 074h		;bcfe	74 	t 
	defb 065h		;bcff	65 	e 
	defb 020h		;bd00	20 	  
	defb 064h		;bd01	64 	d 
	defb 065h		;bd02	65 	e 
	defb 063h		;bd03	63 	c 
	defb 06ch		;bd04	6c 	l 
	defb 061h		;bd05	61 	a 
	defb 072h		;bd06	72 	r 
	defb 061h		;bd07	61 	a 
	defb 074h		;bd08	74 	t 
	defb 069h		;bd09	69 	i 
	defb 06fh		;bd0a	6f 	o 
	defb 06eh		;bd0b	6e 	n 
	defb 020h		;bd0c	20 	  
	defb 02dh		;bd0d	2d 	- 
	defb 020h		;bd0e	20 	  
	defb 074h		;bd0f	74 	t 
	defb 079h		;bd10	79 	y 
	defb 070h		;bd11	70 	p 
	defb 065h		;bd12	65 	e 
	defb 020h		;bd13	20 	  
	defb 06dh		;bd14	6d 	m 
	defb 069h		;bd15	69 	i 
	defb 073h		;bd16	73 	s 
	defb 06dh		;bd17	6d 	m 
	defb 061h		;bd18	61 	a 
	defb 074h		;bd19	74 	t 
	defb 063h		;bd1a	63 	c 
	defb 068h		;bd1b	68 	h 
	defb 000h		;bd1c	00 	. 
	defb 064h		;bd1d	64 	d 
	defb 075h		;bd1e	75 	u 
	defb 070h		;bd1f	70 	p 
	defb 06ch		;bd20	6c 	l 
	defb 069h		;bd21	69 	i 
	defb 063h		;bd22	63 	c 
	defb 061h		;bd23	61 	a 
	defb 074h		;bd24	74 	t 
	defb 065h		;bd25	65 	e 
	defb 020h		;bd26	20 	  
	defb 064h		;bd27	64 	d 
	defb 065h		;bd28	65 	e 
	defb 063h		;bd29	63 	c 
	defb 06ch		;bd2a	6c 	l 
	defb 061h		;bd2b	61 	a 
	defb 072h		;bd2c	72 	r 
	defb 061h		;bd2d	61 	a 
	defb 074h		;bd2e	74 	t 
	defb 069h		;bd2f	69 	i 
	defb 06fh		;bd30	6f 	o 
	defb 06eh		;bd31	6e 	n 
	defb 020h		;bd32	20 	  
	defb 02dh		;bd33	2d 	- 
	defb 020h		;bd34	20 	  
	defb 073h		;bd35	73 	s 
	defb 074h		;bd36	74 	t 
	defb 06fh		;bd37	6f 	o 
	defb 072h		;bd38	72 	r 
	defb 061h		;bd39	61 	a 
	defb 067h		;bd3a	67 	g 
	defb 065h		;bd3b	65 	e 
	defb 020h		;bd3c	20 	  
	defb 063h		;bd3d	63 	c 
	defb 06ch		;bd3e	6c 	l 
	defb 061h		;bd3f	61 	a 
	defb 073h		;bd40	73 	s 
	defb 073h		;bd41	73 	s 
	defb 020h		;bd42	20 	  
	defb 06dh		;bd43	6d 	m 
	defb 069h		;bd44	69 	i 
	defb 073h		;bd45	73 	s 
	defb 06dh		;bd46	6d 	m 
	defb 061h		;bd47	61 	a 
	defb 074h		;bd48	74 	t 
	defb 063h		;bd49	63 	c 
	defb 068h		;bd4a	68 	h 
	defb 000h		;bd4b	00 	. 
	defb 04ch		;bd4c	4c 	L 
	defb 049h		;bd4d	49 	I 
	defb 04dh		;bd4e	4d 	M 
	defb 049h		;bd4f	49 	I 
	defb 054h		;bd50	54 	T 
	defb 020h		;bd51	20 	  
	defb 03ah		;bd52	3a 	: 
	defb 020h		;bd53	20 	  
	defb 067h		;bd54	67 	g 
	defb 06ch		;bd55	6c 	l 
	defb 06fh		;bd56	6f 	o 
	defb 062h		;bd57	62 	b 
	defb 061h		;bd58	61 	a 
	defb 06ch		;bd59	6c 	l 
	defb 020h		;bd5a	20 	  
	defb 073h		;bd5b	73 	s 
	defb 079h		;bd5c	79 	y 
	defb 06dh		;bd5d	6d 	m 
	defb 062h		;bd5e	62 	b 
	defb 06fh		;bd5f	6f 	o 
	defb 06ch		;bd60	6c 	l 
	defb 020h		;bd61	20 	  
	defb 074h		;bd62	74 	t 
	defb 061h		;bd63	61 	a 
	defb 062h		;bd64	62 	b 
	defb 06ch		;bd65	6c 	l 
	defb 065h		;bd66	65 	e 
	defb 020h		;bd67	20 	  
	defb 066h		;bd68	66 	f 
	defb 075h		;bd69	75 	u 
	defb 06ch		;bd6a	6c 	l 
	defb 06ch		;bd6b	6c 	l 
	defb 000h		;bd6c	00 	. 
	defb 04ch		;bd6d	4c 	L 
	defb 049h		;bd6e	49 	I 
	defb 04dh		;bd6f	4d 	M 
	defb 049h		;bd70	49 	I 
	defb 054h		;bd71	54 	T 
	defb 020h		;bd72	20 	  
	defb 03ah		;bd73	3a 	: 
	defb 020h		;bd74	20 	  
	defb 074h		;bd75	74 	t 
	defb 06fh		;bd76	6f 	o 
	defb 06fh		;bd77	6f 	o 
	defb 020h		;bd78	20 	  
	defb 06dh		;bd79	6d 	m 
	defb 075h		;bd7a	75 	u 
	defb 063h		;bd7b	63 	c 
	defb 068h		;bd7c	68 	h 
	defb 020h		;bd7d	20 	  
	defb 067h		;bd7e	67 	g 
	defb 06ch		;bd7f	6c 	l 
	defb 06fh		;bd80	6f 	o 
	defb 062h		;bd81	62 	b 
	defb 061h		;bd82	61 	a 
	defb 06ch		;bd83	6c 	l 
	defb 020h		;bd84	20 	  
	defb 064h		;bd85	64 	d 
	defb 061h		;bd86	61 	a 
	defb 074h		;bd87	74 	t 
	defb 061h		;bd88	61 	a 
	defb 000h		;bd89	00 	. 
	defb 064h		;bd8a	64 	d 
	defb 075h		;bd8b	75 	u 
	defb 070h		;bd8c	70 	p 
	defb 06ch		;bd8d	6c 	l 
	defb 069h		;bd8e	69 	i 
	defb 063h		;bd8f	63 	c 
	defb 061h		;bd90	61 	a 
	defb 074h		;bd91	74 	t 
	defb 065h		;bd92	65 	e 
	defb 020h		;bd93	20 	  
	defb 064h		;bd94	64 	d 
	defb 065h		;bd95	65 	e 
	defb 063h		;bd96	63 	c 
	defb 06ch		;bd97	6c 	l 
	defb 061h		;bd98	61 	a 
	defb 072h		;bd99	72 	r 
	defb 061h		;bd9a	61 	a 
	defb 074h		;bd9b	74 	t 
	defb 069h		;bd9c	69 	i 
	defb 06fh		;bd9d	6f 	o 
	defb 06eh		;bd9e	6e 	n 
	defb 000h		;bd9f	00 	. 
	defb 04ch		;bda0	4c 	L 
	defb 049h		;bda1	49 	I 
	defb 04dh		;bda2	4d 	M 
	defb 049h		;bda3	49 	I 
	defb 054h		;bda4	54 	T 
	defb 020h		;bda5	20 	  
	defb 03ah		;bda6	3a 	: 
	defb 020h		;bda7	20 	  
	defb 06ch		;bda8	6c 	l 
	defb 06fh		;bda9	6f 	o 
	defb 063h		;bdaa	63 	c 
	defb 061h		;bdab	61 	a 
	defb 06ch		;bdac	6c 	l 
	defb 020h		;bdad	20 	  
	defb 073h		;bdae	73 	s 
	defb 079h		;bdaf	79 	y 
	defb 06dh		;bdb0	6d 	m 
	defb 062h		;bdb1	62 	b 
	defb 06fh		;bdb2	6f 	o 
	defb 06ch		;bdb3	6c 	l 
	defb 020h		;bdb4	20 	  
	defb 074h		;bdb5	74 	t 
	defb 061h		;bdb6	61 	a 
	defb 062h		;bdb7	62 	b 
	defb 06ch		;bdb8	6c 	l 
	defb 065h		;bdb9	65 	e 
	defb 020h		;bdba	20 	  
	defb 066h		;bdbb	66 	f 
	defb 075h		;bdbc	75 	u 
	defb 06ch		;bdbd	6c 	l 
	defb 06ch		;bdbe	6c 	l 
	defb 000h		;bdbf	00 	. 
	defb 074h		;bdc0	74 	t 
	defb 068h		;bdc1	68 	h 
	defb 069h		;bdc2	69 	i 
	defb 073h		;bdc3	73 	s 
	defb 020h		;bdc4	20 	  
	defb 076h		;bdc5	76 	v 
	defb 061h		;bdc6	61 	a 
	defb 072h		;bdc7	72 	r 
	defb 069h		;bdc8	69 	i 
	defb 061h		;bdc9	61 	a 
	defb 062h		;bdca	62 	b 
	defb 06ch		;bdcb	6c 	l 
	defb 065h		;bdcc	65 	e 
	defb 020h		;bdcd	20 	  
	defb 077h		;bdce	77 	w 
	defb 061h		;bdcf	61 	a 
	defb 073h		;bdd0	73 	s 
	defb 020h		;bdd1	20 	  
	defb 06eh		;bdd2	6e 	n 
	defb 06fh		;bdd3	6f 	o 
	defb 074h		;bdd4	74 	t 
	defb 020h		;bdd5	20 	  
	defb 069h		;bdd6	69 	i 
	defb 06eh		;bdd7	6e 	n 
	defb 020h		;bdd8	20 	  
	defb 070h		;bdd9	70 	p 
	defb 061h		;bdda	61 	a 
	defb 072h		;bddb	72 	r 
	defb 061h		;bddc	61 	a 
	defb 06dh		;bddd	6d 	m 
	defb 065h		;bdde	65 	e 
	defb 074h		;bddf	74 	t 
	defb 065h		;bde0	65 	e 
	defb 072h		;bde1	72 	r 
	defb 020h		;bde2	20 	  
	defb 06ch		;bde3	6c 	l 
	defb 069h		;bde4	69 	i 
	defb 073h		;bde5	73 	s 
	defb 074h		;bde6	74 	t 
	defb 000h		;bde7	00 	. 
	defb 075h		;bde8	75 	u 
	defb 06eh		;bde9	6e 	n 
	defb 064h		;bdea	64 	d 
	defb 065h		;bdeb	65 	e 
	defb 066h		;bdec	66 	f 
	defb 069h		;bded	69 	i 
	defb 06eh		;bdee	6e 	n 
	defb 065h		;bdef	65 	e 
	defb 064h		;bdf0	64 	d 
	defb 020h		;bdf1	20 	  
	defb 076h		;bdf2	76 	v 
	defb 061h		;bdf3	61 	a 
	defb 072h		;bdf4	72 	r 
	defb 069h		;bdf5	69 	i 
	defb 061h		;bdf6	61 	a 
	defb 062h		;bdf7	62 	b 
	defb 06ch		;bdf8	6c 	l 
	defb 065h		;bdf9	65 	e 
	defb 028h		;bdfa	28 	( 
	defb 073h		;bdfb	73 	s 
	defb 029h		;bdfc	29 	) 
	defb 000h		;bdfd	00 	. 
	defb 062h		;bdfe	62 	b 
	defb 061h		;bdff	61 	a 
	defb 064h		;be00	64 	d 
	defb 020h		;be01	20 	  
	defb 066h		;be02	66 	f 
	defb 075h		;be03	75 	u 
	defb 06eh		;be04	6e 	n 
	defb 063h		;be05	63 	c 
	defb 074h		;be06	74 	t 
	defb 069h		;be07	69 	i 
	defb 06fh		;be08	6f 	o 
	defb 06eh		;be09	6e 	n 
	defb 020h		;be0a	20 	  
	defb 072h		;be0b	72 	r 
	defb 065h		;be0c	65 	e 
	defb 074h		;be0d	74 	t 
	defb 075h		;be0e	75 	u 
	defb 072h		;be0f	72 	r 
	defb 06eh		;be10	6e 	n 
	defb 020h		;be11	20 	  
	defb 074h		;be12	74 	t 
	defb 079h		;be13	79 	y 
	defb 070h		;be14	70 	p 
	defb 065h		;be15	65 	e 
	defb 000h		;be16	00 	. 
	defb 06eh		;be17	6e 	n 
	defb 06fh		;be18	6f 	o 
	defb 020h		;be19	20 	  
	defb 061h		;be1a	61 	a 
	defb 072h		;be1b	72 	r 
	defb 072h		;be1c	72 	r 
	defb 061h		;be1d	61 	a 
	defb 079h		;be1e	79 	y 
	defb 073h		;be1f	73 	s 
	defb 020h		;be20	20 	  
	defb 06fh		;be21	6f 	o 
	defb 066h		;be22	66 	f 
	defb 020h		;be23	20 	  
	defb 066h		;be24	66 	f 
	defb 075h		;be25	75 	u 
	defb 06eh		;be26	6e 	n 
	defb 063h		;be27	63 	c 
	defb 074h		;be28	74 	t 
	defb 069h		;be29	69 	i 
	defb 06fh		;be2a	6f 	o 
	defb 06eh		;be2b	6e 	n 
	defb 073h		;be2c	73 	s 
	defb 000h		;be2d	00 	. 
	defb 04ch		;be2e	4c 	L 
	defb 049h		;be2f	49 	I 
	defb 04dh		;be30	4d 	M 
	defb 049h		;be31	49 	I 
	defb 054h		;be32	54 	T 
	defb 020h		;be33	20 	  
	defb 03ah		;be34	3a 	: 
	defb 020h		;be35	20 	  
	defb 065h		;be36	65 	e 
	defb 078h		;be37	78 	x 
	defb 070h		;be38	70 	p 
	defb 072h		;be39	72 	r 
	defb 065h		;be3a	65 	e 
	defb 073h		;be3b	73 	s 
	defb 073h		;be3c	73 	s 
	defb 069h		;be3d	69 	i 
	defb 06fh		;be3e	6f 	o 
	defb 06eh		;be3f	6e 	n 
	defb 020h		;be40	20 	  
	defb 074h		;be41	74 	t 
	defb 06fh		;be42	6f 	o 
	defb 06fh		;be43	6f 	o 
	defb 020h		;be44	20 	  
	defb 063h		;be45	63 	c 
	defb 06fh		;be46	6f 	o 
	defb 06dh		;be47	6d 	m 
	defb 070h		;be48	70 	p 
	defb 06ch		;be49	6c 	l 
	defb 069h		;be4a	69 	i 
	defb 063h		;be4b	63 	c 
	defb 061h		;be4c	61 	a 
	defb 074h		;be4d	74 	t 
	defb 065h		;be4e	65 	e 
	defb 064h		;be4f	64 	d 
	defb 020h		;be50	20 	  
	defb 02dh		;be51	2d 	- 
	defb 020h		;be52	20 	  
	defb 074h		;be53	74 	t 
	defb 06fh		;be54	6f 	o 
	defb 06fh		;be55	6f 	o 
	defb 020h		;be56	20 	  
	defb 06dh		;be57	6d 	m 
	defb 061h		;be58	61 	a 
	defb 06eh		;be59	6e 	n 
	defb 079h		;be5a	79 	y 
	defb 020h		;be5b	20 	  
	defb 061h		;be5c	61 	a 
	defb 072h		;be5d	72 	r 
	defb 067h		;be5e	67 	g 
	defb 075h		;be5f	75 	u 
	defb 06dh		;be60	6d 	m 
	defb 065h		;be61	65 	e 
	defb 06eh		;be62	6e 	n 
	defb 074h		;be63	74 	t 
	defb 073h		;be64	73 	s 
	defb 000h		;be65	00 	. 
	defb 04ch		;be66	4c 	L 
	defb 049h		;be67	49 	I 
	defb 04dh		;be68	4d 	M 
	defb 049h		;be69	49 	I 
	defb 054h		;be6a	54 	T 
	defb 020h		;be6b	20 	  
	defb 03ah		;be6c	3a 	: 
	defb 020h		;be6d	20 	  
	defb 065h		;be6e	65 	e 
	defb 078h		;be6f	78 	x 
	defb 070h		;be70	70 	p 
	defb 072h		;be71	72 	r 
	defb 065h		;be72	65 	e 
	defb 073h		;be73	73 	s 
	defb 073h		;be74	73 	s 
	defb 069h		;be75	69 	i 
	defb 06fh		;be76	6f 	o 
	defb 06eh		;be77	6e 	n 
	defb 020h		;be78	20 	  
	defb 074h		;be79	74 	t 
	defb 06fh		;be7a	6f 	o 
	defb 06fh		;be7b	6f 	o 
	defb 020h		;be7c	20 	  
	defb 063h		;be7d	63 	c 
	defb 06fh		;be7e	6f 	o 
	defb 06dh		;be7f	6d 	m 
	defb 070h		;be80	70 	p 
	defb 06ch		;be81	6c 	l 
	defb 069h		;be82	69 	i 
	defb 063h		;be83	63 	c 
	defb 061h		;be84	61 	a 
	defb 074h		;be85	74 	t 
	defb 065h		;be86	65 	e 
	defb 064h		;be87	64 	d 
	defb 020h		;be88	20 	  
	defb 02dh		;be89	2d 	- 
	defb 020h		;be8a	20 	  
	defb 074h		;be8b	74 	t 
	defb 06fh		;be8c	6f 	o 
	defb 06fh		;be8d	6f 	o 
	defb 020h		;be8e	20 	  
	defb 06dh		;be8f	6d 	m 
	defb 061h		;be90	61 	a 
	defb 06eh		;be91	6e 	n 
	defb 079h		;be92	79 	y 
	defb 020h		;be93	20 	  
	defb 06fh		;be94	6f 	o 
	defb 070h		;be95	70 	p 
	defb 065h		;be96	65 	e 
	defb 072h		;be97	72 	r 
	defb 061h		;be98	61 	a 
	defb 074h		;be99	74 	t 
	defb 06fh		;be9a	6f 	o 
	defb 072h		;be9b	72 	r 
	defb 073h		;be9c	73 	s 
	defb 000h		;be9d	00 	. 
	defb 062h		;be9e	62 	b 
	defb 061h		;be9f	61 	a 
	defb 064h		;bea0	64 	d 
	defb 020h		;bea1	20 	  
	defb 074h		;bea2	74 	t 
	defb 079h		;bea3	79 	y 
	defb 070h		;bea4	70 	p 
	defb 065h		;bea5	65 	e 
	defb 020h		;bea6	20 	  
	defb 063h		;bea7	63 	c 
	defb 06fh		;bea8	6f 	o 
	defb 06dh		;bea9	6d 	m 
	defb 062h		;beaa	62 	b 
	defb 069h		;beab	69 	i 
	defb 06eh		;beac	6e 	n 
	defb 061h		;bead	61 	a 
	defb 074h		;beae	74 	t 
	defb 069h		;beaf	69 	i 
	defb 06fh		;beb0	6f 	o 
	defb 06eh		;beb1	6e 	n 
	defb 000h		;beb2	00 	. 
	defb 062h		;beb3	62 	b 
	defb 061h		;beb4	61 	a 
	defb 064h		;beb5	64 	d 
	defb 020h		;beb6	20 	  
	defb 06fh		;beb7	6f 	o 
	defb 070h		;beb8	70 	p 
	defb 065h		;beb9	65 	e 
	defb 072h		;beba	72 	r 
	defb 061h		;bebb	61 	a 
	defb 06eh		;bebc	6e 	n 
	defb 064h		;bebd	64 	d 
	defb 020h		;bebe	20 	  
	defb 074h		;bebf	74 	t 
	defb 079h		;bec0	79 	y 
	defb 070h		;bec1	70 	p 
	defb 065h		;bec2	65 	e 
	defb 000h		;bec3	00 	. 
	defb 06eh		;bec4	6e 	n 
	defb 065h		;bec5	65 	e 
	defb 065h		;bec6	65 	e 
	defb 064h		;bec7	64 	d 
	defb 020h		;bec8	20 	  
	defb 061h		;bec9	61 	a 
	defb 06eh		;beca	6e 	n 
	defb 020h		;becb	20 	  
	defb 06ch		;becc	6c 	l 
	defb 076h		;becd	76 	v 
	defb 061h		;bece	61 	a 
	defb 06ch		;becf	6c 	l 
	defb 075h		;bed0	75 	u 
	defb 065h		;bed1	65 	e 
	defb 000h		;bed2	00 	. 
	defb 06eh		;bed3	6e 	n 
	defb 06fh		;bed4	6f 	o 
	defb 074h		;bed5	74 	t 
	defb 020h		;bed6	20 	  
	defb 061h		;bed7	61 	a 
	defb 020h		;bed8	20 	  
	defb 064h		;bed9	64 	d 
	defb 065h		;beda	65 	e 
	defb 066h		;bedb	66 	f 
	defb 069h		;bedc	69 	i 
	defb 06eh		;bedd	6e 	n 
	defb 065h		;bede	65 	e 
	defb 064h		;bedf	64 	d 
	defb 020h		;bee0	20 	  
	defb 06dh		;bee1	6d 	m 
	defb 065h		;bee2	65 	e 
	defb 06dh		;bee3	6d 	m 
	defb 062h		;bee4	62 	b 
	defb 065h		;bee5	65 	e 
	defb 072h		;bee6	72 	r 
	defb 020h		;bee7	20 	  
	defb 06fh		;bee8	6f 	o 
	defb 066h		;bee9	66 	f 
	defb 020h		;beea	20 	  
	defb 061h		;beeb	61 	a 
	defb 020h		;beec	20 	  
	defb 073h		;beed	73 	s 
	defb 074h		;beee	74 	t 
	defb 072h		;beef	72 	r 
	defb 075h		;bef0	75 	u 
	defb 063h		;bef1	63 	c 
	defb 074h		;bef2	74 	t 
	defb 075h		;bef3	75 	u 
	defb 072h		;bef4	72 	r 
	defb 065h		;bef5	65 	e 
	defb 000h		;bef6	00 	. 
	defb 065h		;bef7	65 	e 
	defb 078h		;bef8	78 	x 
	defb 070h		;bef9	70 	p 
	defb 065h		;befa	65 	e 
	defb 063h		;befb	63 	c 
	defb 074h		;befc	74 	t 
	defb 069h		;befd	69 	i 
	defb 06eh		;befe	6e 	n 
	defb 067h		;beff	67 	g 
	defb 020h		;bf00	20 	  
	defb 061h		;bf01	61 	a 
	defb 020h		;bf02	20 	  
	defb 070h		;bf03	70 	p 
	defb 072h		;bf04	72 	r 
	defb 069h		;bf05	69 	i 
	defb 06dh		;bf06	6d 	m 
	defb 061h		;bf07	61 	a 
	defb 072h		;bf08	72 	r 
	defb 079h		;bf09	79 	y 
	defb 020h		;bf0a	20 	  
	defb 068h		;bf0b	68 	h 
	defb 065h		;bf0c	65 	e 
	defb 072h		;bf0d	72 	r 
	defb 065h		;bf0e	65 	e 
	defb 000h		;bf0f	00 	. 
	defb 075h		;bf10	75 	u 
	defb 06eh		;bf11	6e 	n 
	defb 064h		;bf12	64 	d 
	defb 065h		;bf13	65 	e 
	defb 066h		;bf14	66 	f 
	defb 069h		;bf15	69 	i 
	defb 06eh		;bf16	6e 	n 
	defb 065h		;bf17	65 	e 
	defb 064h		;bf18	64 	d 
	defb 020h		;bf19	20 	  
	defb 076h		;bf1a	76 	v 
	defb 061h		;bf1b	61 	a 
	defb 072h		;bf1c	72 	r 
	defb 069h		;bf1d	69 	i 
	defb 061h		;bf1e	61 	a 
	defb 062h		;bf1f	62 	b 
	defb 06ch		;bf20	6c 	l 
	defb 065h		;bf21	65 	e 
	defb 000h		;bf22	00 	. 
	defb 06eh		;bf23	6e 	n 
	defb 065h		;bf24	65 	e 
	defb 065h		;bf25	65 	e 
	defb 064h		;bf26	64 	d 
	defb 020h		;bf27	20 	  
	defb 061h		;bf28	61 	a 
	defb 020h		;bf29	20 	  
	defb 074h		;bf2a	74 	t 
	defb 079h		;bf2b	79 	y 
	defb 070h		;bf2c	70 	p 
	defb 065h		;bf2d	65 	e 
	defb 020h		;bf2e	20 	  
	defb 06eh		;bf2f	6e 	n 
	defb 061h		;bf30	61 	a 
	defb 06dh		;bf31	6d 	m 
	defb 065h		;bf32	65 	e 
	defb 000h		;bf33	00 	. 
	defb 06eh		;bf34	6e 	n 
	defb 065h		;bf35	65 	e 
	defb 065h		;bf36	65 	e 
	defb 064h		;bf37	64 	d 
	defb 020h		;bf38	20 	  
	defb 061h		;bf39	61 	a 
	defb 020h		;bf3a	20 	  
	defb 063h		;bf3b	63 	c 
	defb 06fh		;bf3c	6f 	o 
	defb 06eh		;bf3d	6e 	n 
	defb 073h		;bf3e	73 	s 
	defb 074h		;bf3f	74 	t 
	defb 061h		;bf40	61 	a 
	defb 06eh		;bf41	6e 	n 
	defb 074h		;bf42	74 	t 
	defb 020h		;bf43	20 	  
	defb 065h		;bf44	65 	e 
	defb 078h		;bf45	78 	x 
	defb 070h		;bf46	70 	p 
	defb 072h		;bf47	72 	r 
	defb 065h		;bf48	65 	e 
	defb 073h		;bf49	73 	s 
	defb 073h		;bf4a	73 	s 
	defb 069h		;bf4b	69 	i 
	defb 06fh		;bf4c	6f 	o 
	defb 06eh		;bf4d	6e 	n 
	defb 000h		;bf4e	00 	. 
	defb 063h		;bf4f	63 	c 
	defb 061h		;bf50	61 	a 
	defb 06eh		;bf51	6e 	n 
	defb 020h		;bf52	20 	  
	defb 06fh		;bf53	6f 	o 
	defb 06eh		;bf54	6e 	n 
	defb 06ch		;bf55	6c 	l 
	defb 079h		;bf56	79 	y 
	defb 020h		;bf57	20 	  
	defb 063h		;bf58	63 	c 
	defb 061h		;bf59	61 	a 
	defb 06ch		;bf5a	6c 	l 
	defb 06ch		;bf5b	6c 	l 
	defb 020h		;bf5c	20 	  
	defb 066h		;bf5d	66 	f 
	defb 075h		;bf5e	75 	u 
	defb 06eh		;bf5f	6e 	n 
	defb 063h		;bf60	63 	c 
	defb 074h		;bf61	74 	t 
	defb 069h		;bf62	69 	i 
	defb 06fh		;bf63	6f 	o 
	defb 06eh		;bf64	6e 	n 
	defb 073h		;bf65	73 	s 
	defb 000h		;bf66	00 	. 
	defb 020h		;bf67	20 	  
	defb 03ah		;bf68	3a 	: 
	defb 020h		;bf69	20 	  
	defb 064h		;bf6a	64 	d 
	defb 06fh		;bf6b	6f 	o 
	defb 065h		;bf6c	65 	e 
	defb 073h		;bf6d	73 	s 
	defb 020h		;bf6e	20 	  
	defb 06eh		;bf6f	6e 	n 
	defb 06fh		;bf70	6f 	o 
	defb 074h		;bf71	74 	t 
	defb 020h		;bf72	20 	  
	defb 066h		;bf73	66 	f 
	defb 06fh		;bf74	6f 	o 
	defb 06ch		;bf75	6c 	l 
	defb 06ch		;bf76	6c 	l 
	defb 06fh		;bf77	6f 	o 
	defb 077h		;bf78	77 	w 
	defb 020h		;bf79	20 	  
	defb 061h		;bf7a	61 	a 
	defb 020h		;bf7b	20 	  
	defb 03fh		;bf7c	3f 	? 
	defb 020h		;bf7d	20 	  
	defb 070h		;bf7e	70 	p 
	defb 072h		;bf7f	72 	r 
	defb 06fh		;bf80	6f 	o 
	defb 070h		;bf81	70 	p 
	defb 065h		;bf82	65 	e 
	defb 072h		;bf83	72 	r 
	defb 06ch		;bf84	6c 	l 
	defb 079h		;bf85	79 	y 
	defb 000h		;bf86	00 	. 
	defb 044h		;bf87	44 	D 
	defb 065h		;bf88	65 	e 
	defb 073h		;bf89	73 	s 
	defb 074h		;bf8a	74 	t 
	defb 069h		;bf8b	69 	i 
	defb 06eh		;bf8c	6e 	n 
	defb 061h		;bf8d	61 	a 
	defb 074h		;bf8e	74 	t 
	defb 069h		;bf8f	69 	i 
	defb 06fh		;bf90	6f 	o 
	defb 06eh		;bf91	6e 	n 
	defb 020h		;bf92	20 	  
	defb 06fh		;bf93	6f 	o 
	defb 066h		;bf94	66 	f 
	defb 020h		;bf95	20 	  
	defb 061h		;bf96	61 	a 
	defb 06eh		;bf97	6e 	n 
	defb 020h		;bf98	20 	  
	defb 061h		;bf99	61 	a 
	defb 073h		;bf9a	73 	s 
	defb 073h		;bf9b	73 	s 
	defb 069h		;bf9c	69 	i 
	defb 067h		;bf9d	67 	g 
	defb 06eh		;bf9e	6e 	n 
	defb 06dh		;bf9f	6d 	m 
	defb 065h		;bfa0	65 	e 
	defb 06eh		;bfa1	6e 	n 
	defb 074h		;bfa2	74 	t 
	defb 020h		;bfa3	20 	  
	defb 06dh		;bfa4	6d 	m 
	defb 075h		;bfa5	75 	u 
	defb 073h		;bfa6	73 	s 
	defb 074h		;bfa7	74 	t 
	defb 020h		;bfa8	20 	  
	defb 062h		;bfa9	62 	b 
	defb 065h		;bfaa	65 	e 
	defb 020h		;bfab	20 	  
	defb 061h		;bfac	61 	a 
	defb 06eh		;bfad	6e 	n 
	defb 020h		;bfae	20 	  
	defb 06ch		;bfaf	6c 	l 
	defb 076h		;bfb0	76 	v 
	defb 061h		;bfb1	61 	a 
	defb 06ch		;bfb2	6c 	l 
	defb 075h		;bfb3	75 	u 
	defb 065h		;bfb4	65 	e 
	defb 000h		;bfb5	00 	. 
	defb 06eh		;bfb6	6e 	n 
	defb 065h		;bfb7	65 	e 
	defb 065h		;bfb8	65 	e 
	defb 064h		;bfb9	64 	d 
	defb 020h		;bfba	20 	  
	defb 061h		;bfbb	61 	a 
	defb 020h		;bfbc	20 	  
	defb 03ah		;bfbd	3a 	: 
	defb 020h		;bfbe	20 	  
	defb 074h		;bfbf	74 	t 
	defb 06fh		;bfc0	6f 	o 
	defb 020h		;bfc1	20 	  
	defb 066h		;bfc2	66 	f 
	defb 06fh		;bfc3	6f 	o 
	defb 06ch		;bfc4	6c 	l 
	defb 06ch		;bfc5	6c 	l 
	defb 06fh		;bfc6	6f 	o 
	defb 077h		;bfc7	77 	w 
	defb 020h		;bfc8	20 	  
	defb 061h		;bfc9	61 	a 
	defb 020h		;bfca	20 	  
	defb 03fh		;bfcb	3f 	? 
	defb 020h		;bfcc	20 	  
	defb 02dh		;bfcd	2d 	- 
	defb 020h		;bfce	20 	  
	defb 063h		;bfcf	63 	c 
	defb 068h		;bfd0	68 	h 
	defb 065h		;bfd1	65 	e 
	defb 063h		;bfd2	63 	c 
	defb 06bh		;bfd3	6b 	k 
	defb 020h		;bfd4	20 	  
	defb 062h		;bfd5	62 	b 
	defb 072h		;bfd6	72 	r 
	defb 061h		;bfd7	61 	a 
	defb 063h		;bfd8	63 	c 
	defb 06bh		;bfd9	6b 	k 
	defb 065h		;bfda	65 	e 
	defb 074h		;bfdb	74 	t 
	defb 074h		;bfdc	74 	t 
	defb 069h		;bfdd	69 	i 
	defb 06eh		;bfde	6e 	n 
	defb 067h		;bfdf	67 	g 
	defb 000h		;bfe0	00 	. 
	defb 06eh		;bfe1	6e 	n 
	defb 065h		;bfe2	65 	e 
	defb 065h		;bfe3	65 	e 
	defb 064h		;bfe4	64 	d 
	defb 020h		;bfe5	20 	  
	defb 061h		;bfe6	61 	a 
	defb 020h		;bfe7	20 	  
	defb 070h		;bfe8	70 	p 
	defb 06fh		;bfe9	6f 	o 
	defb 069h		;bfea	69 	i 
	defb 06eh		;bfeb	6e 	n 
	defb 074h		;bfec	74 	t 
	defb 065h		;bfed	65 	e 
	defb 072h		;bfee	72 	r 
	defb 000h		;bfef	00 	. 
	defb 069h		;bff0	69 	i 
	defb 06ch		;bff1	6c 	l 
	defb 06ch		;bff2	6c 	l 
	defb 065h		;bff3	65 	e 
	defb 067h		;bff4	67 	g 
	defb 061h		;bff5	61 	a 
	defb 06ch		;bff6	6c 	l 
	defb 020h		;bff7	20 	  
	defb 070h		;bff8	70 	p 
	defb 061h		;bff9	61 	a 
	defb 072h		;bffa	72 	r 
	defb 061h		;bffb	61 	a 
	defb 06dh		;bffc	6d 	m 
	defb 065h		;bffd	65 	e 
	defb 074h		;bffe	74 	t 
	defb 065h		;bfff	65 	e 
	defb 072h		;c000	72 	r 
	defb 020h		;c001	20 	  
	defb 074h		;c002	74 	t 
	defb 079h		;c003	79 	y 
	defb 070h		;c004	70 	p 
	defb 065h		;c005	65 	e 
	defb 000h		;c006	00 	. 
	defb 052h		;c007	52 	R 
	defb 045h		;c008	45 	E 
	defb 053h		;c009	53 	S 
	defb 054h		;c00a	54 	T 
	defb 052h		;c00b	52 	R 
	defb 049h		;c00c	49 	I 
	defb 043h		;c00d	43 	C 
	defb 054h		;c00e	54 	T 
	defb 049h		;c00f	49 	I 
	defb 04fh		;c010	4f 	O 
	defb 04eh		;c011	4e 	N 
	defb 03ah		;c012	3a 	: 
	defb 020h		;c013	20 	  
	defb 046h		;c014	46 	F 
	defb 06ch		;c015	6c 	l 
	defb 06fh		;c016	6f 	o 
	defb 061h		;c017	61 	a 
	defb 074h		;c018	74 	t 
	defb 069h		;c019	69 	i 
	defb 06eh		;c01a	6e 	n 
	defb 067h		;c01b	67 	g 
	defb 020h		;c01c	20 	  
	defb 050h		;c01d	50 	P 
	defb 06fh		;c01e	6f 	o 
	defb 069h		;c01f	69 	i 
	defb 06eh		;c020	6e 	n 
	defb 074h		;c021	74 	t 
	defb 020h		;c022	20 	  
	defb 06eh		;c023	6e 	n 
	defb 06fh		;c024	6f 	o 
	defb 074h		;c025	74 	t 
	defb 020h		;c026	20 	  
	defb 069h		;c027	69 	i 
	defb 06dh		;c028	6d 	m 
	defb 070h		;c029	70 	p 
	defb 06ch		;c02a	6c 	l 
	defb 065h		;c02b	65 	e 
	defb 06dh		;c02c	6d 	m 
	defb 065h		;c02d	65 	e 
	defb 06eh		;c02e	6e 	n 
	defb 074h		;c02f	74 	t 
	defb 065h		;c030	65 	e 
	defb 064h		;c031	64 	d 
	defb 000h		;c032	00 	. 
	defb 063h		;c033	63 	c 
	defb 061h		;c034	61 	a 
	defb 06eh		;c035	6e 	n 
	defb 06eh		;c036	6e 	n 
	defb 06fh		;c037	6f 	o 
	defb 074h		;c038	74 	t 
	defb 020h		;c039	20 	  
	defb 075h		;c03a	75 	u 
	defb 073h		;c03b	73 	s 
	defb 065h		;c03c	65 	e 
	defb 020h		;c03d	20 	  
	defb 074h		;c03e	74 	t 
	defb 068h		;c03f	68 	h 
	defb 069h		;c040	69 	i 
	defb 073h		;c041	73 	s 
	defb 020h		;c042	20 	  
	defb 06fh		;c043	6f 	o 
	defb 070h		;c044	70 	p 
	defb 065h		;c045	65 	e 
	defb 072h		;c046	72 	r 
	defb 061h		;c047	61 	a 
	defb 074h		;c048	74 	t 
	defb 06fh		;c049	6f 	o 
	defb 072h		;c04a	72 	r 
	defb 020h		;c04b	20 	  
	defb 077h		;c04c	77 	w 
	defb 069h		;c04d	69 	i 
	defb 074h		;c04e	74 	t 
	defb 068h		;c04f	68 	h 
	defb 020h		;c050	20 	  
	defb 066h		;c051	66 	f 
	defb 06ch		;c052	6c 	l 
	defb 06fh		;c053	6f 	o 
	defb 061h		;c054	61 	a 
	defb 074h		;c055	74 	t 
	defb 020h		;c056	20 	  
	defb 061h		;c057	61 	a 
	defb 072h		;c058	72 	r 
	defb 067h		;c059	67 	g 
	defb 075h		;c05a	75 	u 
	defb 06dh		;c05b	6d 	m 
	defb 065h		;c05c	65 	e 
	defb 06eh		;c05d	6e 	n 
	defb 074h		;c05e	74 	t 
	defb 073h		;c05f	73 	s 
	defb 000h		;c060	00 	. 
	defb 062h		;c061	62 	b 
	defb 061h		;c062	61 	a 
	defb 064h		;c063	64 	d 
	defb 020h		;c064	20 	  
	defb 064h		;c065	64 	d 
	defb 065h		;c066	65 	e 
	defb 063h		;c067	63 	c 
	defb 06ch		;c068	6c 	l 
	defb 061h		;c069	61 	a 
	defb 072h		;c06a	72 	r 
	defb 061h		;c06b	61 	a 
	defb 074h		;c06c	74 	t 
	defb 069h		;c06d	69 	i 
	defb 06fh		;c06e	6f 	o 
	defb 06eh		;c06f	6e 	n 
	defb 000h		;c070	00 	. 
	defb 073h		;c071	73 	s 
	defb 074h		;c072	74 	t 
	defb 06fh		;c073	6f 	o 
	defb 072h		;c074	72 	r 
	defb 061h		;c075	61 	a 
	defb 067h		;c076	67 	g 
	defb 065h		;c077	65 	e 
	defb 020h		;c078	20 	  
	defb 063h		;c079	63 	c 
	defb 06ch		;c07a	6c 	l 
	defb 061h		;c07b	61 	a 
	defb 073h		;c07c	73 	s 
	defb 073h		;c07d	73 	s 
	defb 020h		;c07e	20 	  
	defb 06eh		;c07f	6e 	n 
	defb 06fh		;c080	6f 	o 
	defb 074h		;c081	74 	t 
	defb 020h		;c082	20 	  
	defb 076h		;c083	76 	v 
	defb 061h		;c084	61 	a 
	defb 06ch		;c085	6c 	l 
	defb 069h		;c086	69 	i 
	defb 064h		;c087	64 	d 
	defb 020h		;c088	20 	  
	defb 069h		;c089	69 	i 
	defb 06eh		;c08a	6e 	n 
	defb 020h		;c08b	20 	  
	defb 074h		;c08c	74 	t 
	defb 068h		;c08d	68 	h 
	defb 069h		;c08e	69 	i 
	defb 073h		;c08f	73 	s 
	defb 020h		;c090	20 	  
	defb 063h		;c091	63 	c 
	defb 06fh		;c092	6f 	o 
	defb 06eh		;c093	6e 	n 
	defb 074h		;c094	74 	t 
	defb 065h		;c095	65 	e 
	defb 078h		;c096	78 	x 
	defb 074h		;c097	74 	t 
	defb 000h		;c098	00 	. 
	defb 075h		;c099	75 	u 
	defb 06eh		;c09a	6e 	n 
	defb 074h		;c09b	74 	t 
	defb 065h		;c09c	65 	e 
	defb 072h		;c09d	72 	r 
	defb 06dh		;c09e	6d 	m 
	defb 069h		;c09f	69 	i 
	defb 06eh		;c0a0	6e 	n 
	defb 061h		;c0a1	61 	a 
	defb 074h		;c0a2	74 	t 
	defb 065h		;c0a3	65 	e 
	defb 064h		;c0a4	64 	d 
	defb 020h		;c0a5	20 	  
	defb 073h		;c0a6	73 	s 
	defb 074h		;c0a7	74 	t 
	defb 072h		;c0a8	72 	r 
	defb 069h		;c0a9	69 	i 
	defb 06eh		;c0aa	6e 	n 
	defb 067h		;c0ab	67 	g 
	defb 020h		;c0ac	20 	  
	defb 06fh		;c0ad	6f 	o 
	defb 072h		;c0ae	72 	r 
	defb 020h		;c0af	20 	  
	defb 063h		;c0b0	63 	c 
	defb 068h		;c0b1	68 	h 
	defb 061h		;c0b2	61 	a 
	defb 072h		;c0b3	72 	r 
	defb 061h		;c0b4	61 	a 
	defb 063h		;c0b5	63 	c 
	defb 074h		;c0b6	74 	t 
	defb 065h		;c0b7	65 	e 
	defb 072h		;c0b8	72 	r 
	defb 020h		;c0b9	20 	  
	defb 063h		;c0ba	63 	c 
	defb 06fh		;c0bb	6f 	o 
	defb 06eh		;c0bc	6e 	n 
	defb 073h		;c0bd	73 	s 
	defb 074h		;c0be	74 	t 
	defb 061h		;c0bf	61 	a 
	defb 06eh		;c0c0	6e 	n 
	defb 074h		;c0c1	74 	t 
	defb 020h		;c0c2	20 	  
	defb 06fh		;c0c3	6f 	o 
	defb 06eh		;c0c4	6e 	n 
	defb 020h		;c0c5	20 	  
	defb 06ch		;c0c6	6c 	l 
	defb 069h		;c0c7	69 	i 
	defb 06eh		;c0c8	6e 	n 
	defb 065h		;c0c9	65 	e 
	defb 020h		;c0ca	20 	  
	defb 061h		;c0cb	61 	a 
	defb 062h		;c0cc	62 	b 
	defb 06fh		;c0cd	6f 	o 
	defb 076h		;c0ce	76 	v 
	defb 065h		;c0cf	65 	e 
	defb 000h		;c0d0	00 	. 
	defb 064h		;c0d1	64 	d 
	defb 075h		;c0d2	75 	u 
	defb 070h		;c0d3	70 	p 
	defb 06ch		;c0d4	6c 	l 
	defb 069h		;c0d5	69 	i 
	defb 063h		;c0d6	63 	c 
	defb 061h		;c0d7	61 	a 
	defb 074h		;c0d8	74 	t 
	defb 065h		;c0d9	65 	e 
	defb 020h		;c0da	20 	  
	defb 064h		;c0db	64 	d 
	defb 065h		;c0dc	65 	e 
	defb 063h		;c0dd	63 	c 
	defb 06ch		;c0de	6c 	l 
	defb 061h		;c0df	61 	a 
	defb 072h		;c0e0	72 	r 
	defb 061h		;c0e1	61 	a 
	defb 074h		;c0e2	74 	t 
	defb 069h		;c0e3	69 	i 
	defb 06fh		;c0e4	6f 	o 
	defb 06eh		;c0e5	6e 	n 
	defb 020h		;c0e6	20 	  
	defb 06fh		;c0e7	6f 	o 
	defb 066h		;c0e8	66 	f 
	defb 020h		;c0e9	20 	  
	defb 073h		;c0ea	73 	s 
	defb 074h		;c0eb	74 	t 
	defb 072h		;c0ec	72 	r 
	defb 075h		;c0ed	75 	u 
	defb 063h		;c0ee	63 	c 
	defb 074h		;c0ef	74 	t 
	defb 075h		;c0f0	75 	u 
	defb 072h		;c0f1	72 	r 
	defb 065h		;c0f2	65 	e 
	defb 020h		;c0f3	20 	  
	defb 074h		;c0f4	74 	t 
	defb 061h		;c0f5	61 	a 
	defb 067h		;c0f6	67 	g 
	defb 000h		;c0f7	00 	. 
	defb 075h		;c0f8	75 	u 
	defb 073h		;c0f9	73 	s 
	defb 065h		;c0fa	65 	e 
	defb 020h		;c0fb	20 	  
	defb 061h		;c0fc	61 	a 
	defb 020h		;c0fd	20 	  
	defb 070h		;c0fe	70 	p 
	defb 072h		;c0ff	72 	r 
	defb 065h		;c100	65 	e 
	defb 064h		;c101	64 	d 
	defb 065h		;c102	65 	e 
	defb 063h		;c103	63 	c 
	defb 06ch		;c104	6c 	l 
	defb 061h		;c105	61 	a 
	defb 072h		;c106	72 	r 
	defb 065h		;c107	65 	e 
	defb 064h		;c108	64 	d 
	defb 020h		;c109	20 	  
	defb 073h		;c10a	73 	s 
	defb 074h		;c10b	74 	t 
	defb 072h		;c10c	72 	r 
	defb 075h		;c10d	75 	u 
	defb 063h		;c10e	63 	c 
	defb 074h		;c10f	74 	t 
	defb 075h		;c110	75 	u 
	defb 072h		;c111	72 	r 
	defb 065h		;c112	65 	e 
	defb 020h		;c113	20 	  
	defb 066h		;c114	66 	f 
	defb 06fh		;c115	6f 	o 
	defb 072h		;c116	72 	r 
	defb 020h		;c117	20 	  
	defb 070h		;c118	70 	p 
	defb 061h		;c119	61 	a 
	defb 072h		;c11a	72 	r 
	defb 061h		;c11b	61 	a 
	defb 06dh		;c11c	6d 	m 
	defb 065h		;c11d	65 	e 
	defb 074h		;c11e	74 	t 
	defb 065h		;c11f	65 	e 
	defb 072h		;c120	72 	r 
	defb 073h		;c121	73 	s 
	defb 000h		;c122	00 	. 
	defb 073h		;c123	73 	s 
	defb 074h		;c124	74 	t 
	defb 072h		;c125	72 	r 
	defb 075h		;c126	75 	u 
	defb 063h		;c127	63 	c 
	defb 074h		;c128	74 	t 
	defb 075h		;c129	75 	u 
	defb 072h		;c12a	72 	r 
	defb 065h		;c12b	65 	e 
	defb 020h		;c12c	20 	  
	defb 063h		;c12d	63 	c 
	defb 061h		;c12e	61 	a 
	defb 06eh		;c12f	6e 	n 
	defb 06eh		;c130	6e 	n 
	defb 06fh		;c131	6f 	o 
	defb 074h		;c132	74 	t 
	defb 020h		;c133	20 	  
	defb 063h		;c134	63 	c 
	defb 06fh		;c135	6f 	o 
	defb 06eh		;c136	6e 	n 
	defb 074h		;c137	74 	t 
	defb 061h		;c138	61 	a 
	defb 069h		;c139	69 	i 
	defb 06eh		;c13a	6e 	n 
	defb 020h		;c13b	20 	  
	defb 069h		;c13c	69 	i 
	defb 074h		;c13d	74 	t 
	defb 073h		;c13e	73 	s 
	defb 065h		;c13f	65 	e 
	defb 06ch		;c140	6c 	l 
	defb 066h		;c141	66 	f 
	defb 000h		;c142	00 	. 
	defb 062h		;c143	62 	b 
	defb 061h		;c144	61 	a 
	defb 064h		;c145	64 	d 
	defb 020h		;c146	20 	  
	defb 064h		;c147	64 	d 
	defb 065h		;c148	65 	e 
	defb 063h		;c149	63 	c 
	defb 06ch		;c14a	6c 	l 
	defb 061h		;c14b	61 	a 
	defb 072h		;c14c	72 	r 
	defb 061h		;c14d	61 	a 
	defb 074h		;c14e	74 	t 
	defb 06fh		;c14f	6f 	o 
	defb 072h		;c150	72 	r 
	defb 000h		;c151	00 	. 
	defb 06dh		;c152	6d 	m 
	defb 069h		;c153	69 	i 
	defb 073h		;c154	73 	s 
	defb 073h		;c155	73 	s 
	defb 069h		;c156	69 	i 
	defb 06eh		;c157	6e 	n 
	defb 067h		;c158	67 	g 
	defb 020h		;c159	20 	  
	defb 027h		;c15a	27 	' 
	defb 029h		;c15b	29 	) 
	defb 027h		;c15c	27 	' 
	defb 020h		;c15d	20 	  
	defb 069h		;c15e	69 	i 
	defb 06eh		;c15f	6e 	n 
	defb 020h		;c160	20 	  
	defb 066h		;c161	66 	f 
	defb 075h		;c162	75 	u 
	defb 06eh		;c163	6e 	n 
	defb 063h		;c164	63 	c 
	defb 074h		;c165	74 	t 
	defb 069h		;c166	69 	i 
	defb 06fh		;c167	6f 	o 
	defb 06eh		;c168	6e 	n 
	defb 020h		;c169	20 	  
	defb 064h		;c16a	64 	d 
	defb 065h		;c16b	65 	e 
	defb 063h		;c16c	63 	c 
	defb 06ch		;c16d	6c 	l 
	defb 061h		;c16e	61 	a 
	defb 072h		;c16f	72 	r 
	defb 061h		;c170	61 	a 
	defb 074h		;c171	74 	t 
	defb 069h		;c172	69 	i 
	defb 06fh		;c173	6f 	o 
	defb 06eh		;c174	6e 	n 
	defb 000h		;c175	00 	. 
	defb 062h		;c176	62 	b 
	defb 061h		;c177	61 	a 
	defb 064h		;c178	64 	d 
	defb 020h		;c179	20 	  
	defb 066h		;c17a	66 	f 
	defb 06fh		;c17b	6f 	o 
	defb 072h		;c17c	72 	r 
	defb 06dh		;c17d	6d 	m 
	defb 061h		;c17e	61 	a 
	defb 06ch		;c17f	6c 	l 
	defb 020h		;c180	20 	  
	defb 070h		;c181	70 	p 
	defb 061h		;c182	61 	a 
	defb 072h		;c183	72 	r 
	defb 061h		;c184	61 	a 
	defb 06dh		;c185	6d 	m 
	defb 065h		;c186	65 	e 
	defb 074h		;c187	74 	t 
	defb 065h		;c188	65 	e 
	defb 072h		;c189	72 	r 
	defb 020h		;c18a	20 	  
	defb 06ch		;c18b	6c 	l 
	defb 069h		;c18c	69 	i 
	defb 073h		;c18d	73 	s 
	defb 074h		;c18e	74 	t 
	defb 000h		;c18f	00 	. 
	defb 074h		;c190	74 	t 
	defb 079h		;c191	79 	y 
	defb 070h		;c192	70 	p 
	defb 065h		;c193	65 	e 
	defb 020h		;c194	20 	  
	defb 073h		;c195	73 	s 
	defb 068h		;c196	68 	h 
	defb 06fh		;c197	6f 	o 
	defb 075h		;c198	75 	u 
	defb 06ch		;c199	6c 	l 
	defb 064h		;c19a	64 	d 
	defb 020h		;c19b	20 	  
	defb 062h		;c19c	62 	b 
	defb 065h		;c19d	65 	e 
	defb 020h		;c19e	20 	  
	defb 066h		;c19f	66 	f 
	defb 075h		;c1a0	75 	u 
	defb 06eh		;c1a1	6e 	n 
	defb 063h		;c1a2	63 	c 
	defb 074h		;c1a3	74 	t 
	defb 069h		;c1a4	69 	i 
	defb 06fh		;c1a5	6f 	o 
	defb 06eh		;c1a6	6e 	n 
	defb 000h		;c1a7	00 	. 
	defb 067h		;c1a8	67 	g 
	defb 065h		;c1a9	65 	e 
	defb 06eh		;c1aa	6e 	n 
	defb 065h		;c1ab	65 	e 
	defb 072h		;c1ac	72 	r 
	defb 061h		;c1ad	61 	a 
	defb 074h		;c1ae	74 	t 
	defb 065h		;c1af	65 	e 
	defb 064h		;c1b0	64 	d 
	defb 020h		;c1b1	20 	  
	defb 063h		;c1b2	63 	c 
	defb 06fh		;c1b3	6f 	o 
	defb 064h		;c1b4	64 	d 
	defb 065h		;c1b5	65 	e 
	defb 020h		;c1b6	20 	  
	defb 061h		;c1b7	61 	a 
	defb 072h		;c1b8	72 	r 
	defb 065h		;c1b9	65 	e 
	defb 061h		;c1ba	61 	a 
	defb 020h		;c1bb	20 	  
	defb 069h		;c1bc	69 	i 
	defb 073h		;c1bd	73 	s 
	defb 020h		;c1be	20 	  
	defb 066h		;c1bf	66 	f 
	defb 075h		;c1c0	75 	u 
	defb 06ch		;c1c1	6c 	l 
	defb 06ch		;c1c2	6c 	l 
	defb 000h		;c1c3	00 	. 
	defb 06eh		;c1c4	6e 	n 
	defb 065h		;c1c5	65 	e 
	defb 065h		;c1c6	65 	e 
	defb 064h		;c1c7	64 	d 
	defb 020h		;c1c8	20 	  
	defb 061h		;c1c9	61 	a 
	defb 06eh		;c1ca	6e 	n 
	defb 020h		;c1cb	20 	  
	defb 06ch		;c1cc	6c 	l 
	defb 076h		;c1cd	76 	v 
	defb 061h		;c1ce	61 	a 
	defb 06ch		;c1cf	6c 	l 
	defb 075h		;c1d0	75 	u 
	defb 065h		;c1d1	65 	e 
	defb 000h		;c1d2	00 	. 
	defb 04ch		;c1d3	4c 	L 
	defb 049h		;c1d4	49 	I 
	defb 04dh		;c1d5	4d 	M 
	defb 049h		;c1d6	49 	I 
	defb 054h		;c1d7	54 	T 
	defb 03ah		;c1d8	3a 	: 
	defb 020h		;c1d9	20 	  
	defb 06eh		;c1da	6e 	n 
	defb 06fh		;c1db	6f 	o 
	defb 020h		;c1dc	20 	  
	defb 06dh		;c1dd	6d 	m 
	defb 06fh		;c1de	6f 	o 
	defb 072h		;c1df	72 	r 
	defb 065h		;c1e0	65 	e 
	defb 020h		;c1e1	20 	  
	defb 06dh		;c1e2	6d 	m 
	defb 065h		;c1e3	65 	e 
	defb 06dh		;c1e4	6d 	m 
	defb 06fh		;c1e5	6f 	o 
	defb 072h		;c1e6	72 	r 
	defb 079h		;c1e7	79 	y 
	defb 000h		;c1e8	00 	. 
	defb 052h		;c1e9	52 	R 
	defb 045h		;c1ea	45 	E 
	defb 053h		;c1eb	53 	S 
	defb 054h		;c1ec	54 	T 
	defb 052h		;c1ed	52 	R 
	defb 049h		;c1ee	49 	I 
	defb 043h		;c1ef	43 	C 
	defb 054h		;c1f0	54 	T 
	defb 049h		;c1f1	49 	I 
	defb 04fh		;c1f2	4f 	O 
	defb 04eh		;c1f3	4e 	N 
	defb 03ah		;c1f4	3a 	: 
	defb 020h		;c1f5	20 	  
	defb 075h		;c1f6	75 	u 
	defb 073h		;c1f7	73 	s 
	defb 065h		;c1f8	65 	e 
	defb 020h		;c1f9	20 	  
	defb 061h		;c1fa	61 	a 
	defb 073h		;c1fb	73 	s 
	defb 073h		;c1fc	73 	s 
	defb 069h		;c1fd	69 	i 
	defb 067h		;c1fe	67 	g 
	defb 06eh		;c1ff	6e 	n 
	defb 06dh		;c200	6d 	m 
	defb 065h		;c201	65 	e 
	defb 06eh		;c202	6e 	n 
	defb 074h		;c203	74 	t 
	defb 020h		;c204	20 	  
	defb 06fh		;c205	6f 	o 
	defb 072h		;c206	72 	r 
	defb 020h		;c207	20 	  
	defb 06dh		;c208	6d 	m 
	defb 06fh		;c209	6f 	o 
	defb 076h		;c20a	76 	v 
	defb 065h		;c20b	65 	e 
	defb 028h		;c20c	28 	( 
	defb 029h		;c20d	29 	) 
	defb 020h		;c20e	20 	  
	defb 074h		;c20f	74 	t 
	defb 06fh		;c210	6f 	o 
	defb 020h		;c211	20 	  
	defb 069h		;c212	69 	i 
	defb 06eh		;c213	6e 	n 
	defb 069h		;c214	69 	i 
	defb 074h		;c215	74 	t 
	defb 069h		;c216	69 	i 
	defb 061h		;c217	61 	a 
	defb 06ch		;c218	6c 	l 
	defb 069h		;c219	69 	i 
	defb 073h		;c21a	73 	s 
	defb 065h		;c21b	65 	e 
	defb 020h		;c21c	20 	  
	defb 061h		;c21d	61 	a 
	defb 075h		;c21e	75 	u 
	defb 074h		;c21f	74 	t 
	defb 06fh		;c220	6f 	o 
	defb 06dh		;c221	6d 	m 
	defb 061h		;c222	61 	a 
	defb 074h		;c223	74 	t 
	defb 069h		;c224	69 	i 
	defb 063h		;c225	63 	c 
	defb 073h		;c226	73 	s 
	defb 000h		;c227	00 	. 
	defb 043h		;c228	43 	C 
	defb 061h		;c229	61 	a 
	defb 06eh		;c22a	6e 	n 
	defb 06eh		;c22b	6e 	n 
	defb 06fh		;c22c	6f 	o 
	defb 074h		;c22d	74 	t 
	defb 020h		;c22e	20 	  
	defb 069h		;c22f	69 	i 
	defb 06eh		;c230	6e 	n 
	defb 069h		;c231	69 	i 
	defb 074h		;c232	74 	t 
	defb 069h		;c233	69 	i 
	defb 061h		;c234	61 	a 
	defb 06ch		;c235	6c 	l 
	defb 069h		;c236	69 	i 
	defb 073h		;c237	73 	s 
	defb 065h		;c238	65 	e 
	defb 020h		;c239	20 	  
	defb 074h		;c23a	74 	t 
	defb 068h		;c23b	68 	h 
	defb 069h		;c23c	69 	i 
	defb 073h		;c23d	73 	s 
	defb 020h		;c23e	20 	  
	defb 028h		;c23f	28 	( 
	defb 064h		;c240	64 	d 
	defb 069h		;c241	69 	i 
	defb 073h		;c242	73 	s 
	defb 061h		;c243	61 	a 
	defb 06ch		;c244	6c 	l 
	defb 06ch		;c245	6c 	l 
	defb 06fh		;c246	6f 	o 
	defb 077h		;c247	77 	w 
	defb 065h		;c248	65 	e 
	defb 064h		;c249	64 	d 
	defb 020h		;c24a	20 	  
	defb 073h		;c24b	73 	s 
	defb 074h		;c24c	74 	t 
	defb 06fh		;c24d	6f 	o 
	defb 072h		;c24e	72 	r 
	defb 061h		;c24f	61 	a 
	defb 067h		;c250	67 	g 
	defb 065h		;c251	65 	e 
	defb 020h		;c252	20 	  
	defb 063h		;c253	63 	c 
	defb 06ch		;c254	6c 	l 
	defb 061h		;c255	61 	a 
	defb 073h		;c256	73 	s 
	defb 073h		;c257	73 	s 
	defb 029h		;c258	29 	) 
	defb 000h		;c259	00 	. 
	defb 043h		;c25a	43 	C 
	defb 061h		;c25b	61 	a 
	defb 06eh		;c25c	6e 	n 
	defb 06eh		;c25d	6e 	n 
	defb 06fh		;c25e	6f 	o 
	defb 074h		;c25f	74 	t 
	defb 020h		;c260	20 	  
	defb 069h		;c261	69 	i 
	defb 06eh		;c262	6e 	n 
	defb 069h		;c263	69 	i 
	defb 074h		;c264	74 	t 
	defb 069h		;c265	69 	i 
	defb 061h		;c266	61 	a 
	defb 06ch		;c267	6c 	l 
	defb 069h		;c268	69 	i 
	defb 073h		;c269	73 	s 
	defb 065h		;c26a	65 	e 
	defb 020h		;c26b	20 	  
	defb 074h		;c26c	74 	t 
	defb 068h		;c26d	68 	h 
	defb 069h		;c26e	69 	i 
	defb 073h		;c26f	73 	s 
	defb 020h		;c270	20 	  
	defb 028h		;c271	28 	( 
	defb 064h		;c272	64 	d 
	defb 069h		;c273	69 	i 
	defb 073h		;c274	73 	s 
	defb 061h		;c275	61 	a 
	defb 06ch		;c276	6c 	l 
	defb 06ch		;c277	6c 	l 
	defb 06fh		;c278	6f 	o 
	defb 077h		;c279	77 	w 
	defb 065h		;c27a	65 	e 
	defb 064h		;c27b	64 	d 
	defb 020h		;c27c	20 	  
	defb 074h		;c27d	74 	t 
	defb 079h		;c27e	79 	y 
	defb 070h		;c27f	70 	p 
	defb 065h		;c280	65 	e 
	defb 029h		;c281	29 	) 
	defb 000h		;c282	00 	. 
	defb 074h		;c283	74 	t 
	defb 06fh		;c284	6f 	o 
	defb 06fh		;c285	6f 	o 
	defb 020h		;c286	20 	  
	defb 06dh		;c287	6d 	m 
	defb 075h		;c288	75 	u 
	defb 063h		;c289	63 	c 
	defb 068h		;c28a	68 	h 
	defb 020h		;c28b	20 	  
	defb 069h		;c28c	69 	i 
	defb 06eh		;c28d	6e 	n 
	defb 069h		;c28e	69 	i 
	defb 074h		;c28f	74 	t 
	defb 069h		;c290	69 	i 
	defb 061h		;c291	61 	a 
	defb 06ch		;c292	6c 	l 
	defb 069h		;c293	69 	i 
	defb 073h		;c294	73 	s 
	defb 061h		;c295	61 	a 
	defb 074h		;c296	74 	t 
	defb 069h		;c297	69 	i 
	defb 06fh		;c298	6f 	o 
	defb 06eh		;c299	6e 	n 
	defb 020h		;c29a	20 	  
	defb 064h		;c29b	64 	d 
	defb 061h		;c29c	61 	a 
	defb 074h		;c29d	74 	t 
	defb 061h		;c29e	61 	a 
	defb 000h		;c29f	00 	. 
	defb 062h		;c2a0	62 	b 
	defb 061h		;c2a1	61 	a 
	defb 064h		;c2a2	64 	d 
	defb 020h		;c2a3	20 	  
	defb 069h		;c2a4	69 	i 
	defb 06eh		;c2a5	6e 	n 
	defb 069h		;c2a6	69 	i 
	defb 074h		;c2a7	74 	t 
	defb 069h		;c2a8	69 	i 
	defb 061h		;c2a9	61 	a 
	defb 06ch		;c2aa	6c 	l 
	defb 069h		;c2ab	69 	i 
	defb 07ah		;c2ac	7a 	z 
	defb 065h		;c2ad	65 	e 
	defb 072h		;c2ae	72 	r 
	defb 020h		;c2af	20 	  
	defb 028h		;c2b0	28 	( 
	defb 06eh		;c2b1	6e 	n 
	defb 065h		;c2b2	65 	e 
	defb 065h		;c2b3	65 	e 
	defb 064h		;c2b4	64 	d 
	defb 073h		;c2b5	73 	s 
	defb 020h		;c2b6	20 	  
	defb 061h		;c2b7	61 	a 
	defb 020h		;c2b8	20 	  
	defb 027h		;c2b9	27 	' 
	defb 07bh		;c2ba	7b 	{ 
	defb 027h		;c2bb	27 	' 
	defb 029h		;c2bc	29 	) 
	defb 000h		;c2bd	00 	. 
	defb 020h		;c2be	20 	  
	defb 062h		;c2bf	62 	b 
	defb 02ch		;c2c0	2c 	, 
	defb 038h		;c2c1	38 	8 
	defb 02bh		;c2c2	2b 	+ 
	defb 031h		;c2c3	31 	1 
	defb 037h		;c2c4	37 	7 
	defb 020h		;c2c5	20 	  
	defb 020h		;c2c6	20 	  
	defb 020h		;c2c7	20 	  
	defb 020h		;c2c8	20 	  
	defb 020h		;c2c9	20 	  
	defb 020h		;c2ca	20 	  
	defb 020h		;c2cb	20 	  
	defb 020h		;c2cc	20 	  
	defb 020h		;c2cd	20 	  
	defb 020h		;c2ce	20 	  
	defb 03bh		;c2cf	3b 	; 
	defb 020h		;c2d0	20 	  
	defb 038h		;c2d1	38 	8 
	defb 020h		;c2d2	20 	  
	defb 062h		;c2d3	62 	b 
	defb 079h		;c2d4	79 	y 
	defb 074h		;c2d5	74 	t 
	defb 065h		;c2d6	65 	e 
	defb 073h		;c2d7	73 	s 
	defb 020h		;c2d8	20 	  
	defb 066h		;c2d9	66 	f 
	defb 069h		;c2da	69 	i 
	defb 06ch		;c2db	6c 	l 
	defb 065h		;c2dc	65 	e 
	defb 020h		;c2dd	20 	  
	defb 068h		;c2de	68 	h 
	defb 065h		;c2df	65 	e 
	defb 061h		;c2e0	61 	a 
	defb 064h		;c2e1	64 	d 
	defb 065h		;c2e2	65 	e 
	defb 072h		;c2e3	72 	r 
	defb 02ch		;c2e4	2c 	, 
	defb 020h		;c2e5	20 	  
	defb 031h		;c2e6	31 	1 
	defb 037h		;c2e7	37 	7 
	defb 020h		;c2e8	20 	  
	defb 075h		;c2e9	75 	u 
	defb 06eh		;c2ea	6e 	n 
	defb 067h		;c2eb	67 	g 
	defb 06fh		;c2ec	6f 	o 
	defb 074h		;c2ed	74 	t 
	defb 074h		;c2ee	74 	t 
	defb 065h		;c2ef	65 	e 
	defb 06eh		;c2f0	6e 	n 
	defb 020h		;c2f1	20 	  
	defb 063h		;c2f2	63 	c 
	defb 068h		;c2f3	68 	h 
	defb 061h		;c2f4	61 	a 
	defb 072h		;c2f5	72 	r 
	defb 061h		;c2f6	61 	a 
	defb 063h		;c2f7	63 	c 
	defb 074h		;c2f8	74 	t 
	defb 065h		;c2f9	65 	e 
	defb 072h		;c2fa	72 	r 
	defb 073h		;c2fb	73 	s 
	defb 00dh		;c2fc	0d 	. 
	defb 00ah		;c2fd	0a 	. 
	defb 066h		;c2fe	66 	f 
	defb 069h		;c2ff	69 	i 
	defb 020h		;c300	20 	  
	defb 020h		;c301	20 	  
	defb 020h		;c302	20 	  
	defb 020h		;c303	20 	  
	defb 028h		;c304	28 	( 
	defb 068h		;c305	68 	h 
	defb 06ch		;c306	6c 	l 
	defb 029h		;c307	29 	) 
	defb 02ch		;c308	2c 	, 
	defb 033h		;c309	33 	3 
	defb 020h		;c30a	20 	  
	defb 020h		;c30b	20 	  
	defb 020h		;c30c	20 	  
	defb 020h		;c30d	20 	  
	defb 020h		;c30e	20 	  
	defb 020h		;c30f	20 	  
	defb 020h		;c310	20 	  
	defb 020h		;c311	20 	  
	defb 020h		;c312	20 	  
	defb 020h		;c313	20 	  
	defb 03bh		;c314	3b 	; 
	defb 020h		;c315	20 	  
	defb 063h		;c316	63 	c 
	defb 06fh		;c317	6f 	o 
	defb 064h		;c318	64 	d 
	defb 065h		;c319	65 	e 
	defb 020h		;c31a	20 	  
	defb 066h		;c31b	66 	f 
	defb 069h		;c31c	69 	i 
	defb 06ch		;c31d	6c 	l 
	defb 065h		;c31e	65 	e 
	defb 00dh		;c31f	0d 	. 
	defb 00ah		;c320	0a 	. 
	defb 020h		;c321	20 	  
	defb 020h		;c322	20 	  
	defb 020h		;c323	20 	  
	defb 020h		;c324	20 	  
	defb 020h		;c325	20 	  
	defb 020h		;c326	20 	  
	defb 020h		;c327	20 	  
	defb 069h		;c328	69 	i 
	defb 06eh		;c329	6e 	n 
	defb 063h		;c32a	63 	c 
	defb 020h		;c32b	20 	  
	defb 020h		;c32c	20 	  
	defb 020h		;c32d	20 	  
	defb 020h		;c32e	20 	  
	defb 020h		;c32f	20 	  
	defb 068h		;c330	68 	h 
	defb 06ch		;c331	6c 	l 
	defb 00dh		;c332	0d 	. 
	defb 00ah		;c333	0a 	. 
	defb 020h		;c334	20 	  
	defb 020h		;c335	20 	  
	defb 020h		;c336	20 	  
	defb 020h		;c337	20 	  
	defb 020h		;c338	20 	  
	defb 020h		;c339	20 	  
	defb 020h		;c33a	20 	  
	defb 06ch		;c33b	6c 	l 
	defb 064h		;c33c	64 	d 
	defb 020h		;c33d	20 	  
	defb 020h		;c33e	20 	  
	defb 020h		;c33f	20 	  
	defb 020h		;c340	20 	  
	defb 020h		;c341	20 	  
	defb 020h		;c342	20 	  
	defb 062h		;c343	62 	b 
	defb 02ch		;c344	2c 	, 
	defb 031h		;c345	31 	1 
	defb 030h		;c346	30 	0 
	defb 020h		;c347	20 	  
	defb 020h		;c348	20 	  
	defb 020h		;c349	20 	  
	defb 020h		;c34a	20 	  
	defb 020h		;c34b	20 	  
	defb 020h		;c34c	20 	  
	defb 020h		;c34d	20 	  
	defb 020h		;c34e	20 	  
	defb 020h		;c34f	20 	  
	defb 020h		;c350	20 	  
	defb 020h		;c351	20 	  
	defb 020h		;c352	20 	  
	defb 03bh		;c353	3b 	; 
	defb 020h		;c354	20 	  
	defb 063h		;c355	63 	c 
	defb 06fh		;c356	6f 	o 
	defb 070h		;c357	70 	p 
	defb 079h		;c358	79 	y 
	defb 020h		;c359	20 	  
	defb 066h		;c35a	66 	f 
	defb 069h		;c35b	69 	i 
	defb 06ch		;c35c	6c 	l 
	defb 065h		;c35d	65 	e 
	defb 06eh		;c35e	6e 	n 
	defb 061h		;c35f	61 	a 
	defb 06dh		;c360	6d 	m 
	defb 065h		;c361	65 	e 
	defb 020h		;c362	20 	  
	defb 061h		;c363	61 	a 
	defb 06eh		;c364	6e 	n 
	defb 064h		;c365	64 	d 
	defb 020h		;c366	20 	  
	defb 073h		;c367	73 	s 
	defb 070h		;c368	70 	p 
	defb 061h		;c369	61 	a 
	defb 063h		;c36a	63 	c 
	defb 065h		;c36b	65 	e 
	defb 02dh		;c36c	2d 	- 
	defb 066h		;c36d	66 	f 
	defb 069h		;c36e	69 	i 
	defb 06ch		;c36f	6c 	l 
	defb 06ch		;c370	6c 	l 
	defb 00dh		;c371	0d 	. 
	defb 00ah		;c372	0a 	. 
	defb 074h		;c373	74 	t 
	defb 070h		;c374	70 	p 
	defb 06fh		;c375	6f 	o 
lc376h:
	defb 030h		;c376	30 	0 
	defb 031h		;c377	31 	1 
	defb 030h		;c378	30 	0 
	defb 020h		;c379	20 	  
	defb 06ch		;c37a	6c 	l 
	defb 064h		;c37b	64 	d 
	defb 020h		;c37c	20 	  
	defb 020h		;c37d	20 	  
lc37eh:
	defb 020h		;c37e	20 	  
	defb 020h		;c37f	20 	  
	defb 020h		;c380	20 	  
	defb 020h		;c381	20 	  
	defb 061h		;c382	61 	a 
	defb 02ch		;c383	2c 	, 
	defb 028h		;c384	28 	( 
	defb 064h		;c385	64 	d 
	defb 065h		;c386	65 	e 
	defb 029h		;c387	29 	) 
	defb 00dh		;c388	0d 	. 
	defb 00ah		;c389	0a 	. 
	defb 020h		;c38a	20 	  
	defb 020h		;c38b	20 	  
	defb 020h		;c38c	20 	  
	defb 020h		;c38d	20 	  
	defb 020h		;c38e	20 	  
	defb 020h		;c38f	20 	  
	defb 020h		;c390	20 	  
	defb 06fh		;c391	6f 	o 
	defb 072h		;c392	72 	r 
	defb 020h		;c393	20 	  
	defb 020h		;c394	20 	  
	defb 020h		;c395	20 	  
	defb 020h		;c396	20 	  
	defb 020h		;c397	20 	  
	defb 020h		;c398	20 	  
	defb 061h		;c399	61 	a 
	defb 00dh		;c39a	0d 	. 
	defb 00ah		;c39b	0a 	. 
	defb 020h		;c39c	20 	  
	defb 020h		;c39d	20 	  
	defb 020h		;c39e	20 	  
	defb 020h		;c39f	20 	  
	defb 020h		;c3a0	20 	  
	defb 020h		;c3a1	20 	  
	defb 020h		;c3a2	20 	  
	defb 06ah		;c3a3	6a 	j 
	defb 072h		;c3a4	72 	r 
	defb 020h		;c3a5	20 	  
	defb 020h		;c3a6	20 	  
	defb 020h		;c3a7	20 	  
	defb 020h		;c3a8	20 	  
	defb 020h		;c3a9	20 	  
	defb 020h		;c3aa	20 	  
	defb 07ah		;c3ab	7a 	z 
	defb 02ch		;c3ac	2c 	, 
	defb 074h		;c3ad	74 	t 
	defb 070h		;c3ae	70 	p 
	defb 06fh		;c3af	6f 	o 
	defb 030h		;c3b0	30 	0 
	defb 032h		;c3b1	32 	2 
	defb 030h		;c3b2	30 	0 
	defb 00dh		;c3b3	0d 	. 
	defb 00ah		;c3b4	0a 	. 
	defb 020h		;c3b5	20 	  
	defb 020h		;c3b6	20 	  
	defb 020h		;c3b7	20 	  
	defb 020h		;c3b8	20 	  
	defb 020h		;c3b9	20 	  
	defb 020h		;c3ba	20 	  
	defb 020h		;c3bb	20 	  
	defb 06ch		;c3bc	6c 	l 
	defb 064h		;c3bd	64 	d 
	defb 020h		;c3be	20 	  
	defb 020h		;c3bf	20 	  
	defb 020h		;c3c0	20 	  
	defb 020h		;c3c1	20 	  
	defb 020h		;c3c2	20 	  
	defb 020h		;c3c3	20 	  
	defb 028h		;c3c4	28 	( 
	defb 068h		;c3c5	68 	h 
	defb 06ch		;c3c6	6c 	l 
	defb 029h		;c3c7	29 	) 
	defb 02ch		;c3c8	2c 	, 
	defb 061h		;c3c9	61 	a 
	defb 00dh		;c3ca	0d 	. 
	defb 00ah		;c3cb	0a 	. 
	defb 020h		;c3cc	20 	  
	defb 020h		;c3cd	20 	  
	defb 020h		;c3ce	20 	  
	defb 020h		;c3cf	20 	  
	defb 020h		;c3d0	20 	  
	defb 020h		;c3d1	20 	  
	defb 020h		;c3d2	20 	  
	defb 069h		;c3d3	69 	i 
	defb 06eh		;c3d4	6e 	n 
	defb 063h		;c3d5	63 	c 
	defb 020h		;c3d6	20 	  
	defb 020h		;c3d7	20 	  
	defb 020h		;c3d8	20 	  
	defb 020h		;c3d9	20 	  
	defb 020h		;c3da	20 	  
	defb 068h		;c3db	68 	h 
	defb 06ch		;c3dc	6c 	l 
	defb 00dh		;c3dd	0d 	. 
	defb 00ah		;c3de	0a 	. 
	defb 020h		;c3df	20 	  
	defb 020h		;c3e0	20 	  
	defb 020h		;c3e1	20 	  
	defb 020h		;c3e2	20 	  
	defb 020h		;c3e3	20 	  
	defb 020h		;c3e4	20 	  
	defb 020h		;c3e5	20 	  
	defb 069h		;c3e6	69 	i 
	defb 06eh		;c3e7	6e 	n 
	defb 063h		;c3e8	63 	c 
	defb 020h		;c3e9	20 	  
	defb 020h		;c3ea	20 	  
	defb 020h		;c3eb	20 	  
	defb 020h		;c3ec	20 	  
	defb 020h		;c3ed	20 	  
	defb 064h		;c3ee	64 	d 
	defb 065h		;c3ef	65 	e 
	defb 00dh		;c3f0	0d 	. 
	defb 00ah		;c3f1	0a 	. 
	defb 020h		;c3f2	20 	  
	defb 020h		;c3f3	20 	  
	defb 020h		;c3f4	20 	  
	defb 020h		;c3f5	20 	  
	defb 020h		;c3f6	20 	  
	defb 020h		;c3f7	20 	  
	defb 020h		;c3f8	20 	  
	defb 064h		;c3f9	64 	d 
	defb 06ah		;c3fa	6a 	j 
	defb 06eh		;c3fb	6e 	n 
	defb 07ah		;c3fc	7a 	z 
	defb 020h		;c3fd	20 	  
	defb 020h		;c3fe	20 	  
	defb 020h		;c3ff	20 	  
	defb 020h		;c400	20 	  
	defb 074h		;c401	74 	t 
	defb 070h		;c402	70 	p 
	defb 06fh		;c403	6f 	o 
	defb 030h		;c404	30 	0 
	defb 031h		;c405	31 	1 
	defb 030h		;c406	30 	0 
	defb 00dh		;c407	0d 	. 
	defb 00ah		;c408	0a 	. 
	defb 020h		;c409	20 	  
	defb 020h		;c40a	20 	  
	defb 020h		;c40b	20 	  
	defb 020h		;c40c	20 	  
	defb 020h		;c40d	20 	  
	defb 020h		;c40e	20 	  
	defb 020h		;c40f	20 	  
	defb 06ah		;c410	6a 	j 
	defb 072h		;c411	72 	r 
	defb 020h		;c412	20 	  
	defb 020h		;c413	20 	  
	defb 020h		;c414	20 	  
	defb 020h		;c415	20 	  
	defb 020h		;c416	20 	  
	defb 020h		;c417	20 	  
	defb 074h		;c418	74 	t 
	defb 070h		;c419	70 	p 
	defb 06fh		;c41a	6f 	o 
	defb 030h		;c41b	30 	0 
	defb 033h		;c41c	33 	3 
	defb 030h		;c41d	30 	0 
	defb 00dh		;c41e	0d 	. 
	defb 00ah		;c41f	0a 	. 
	defb 00dh		;c420	0d 	. 
	defb 00ah		;c421	0a 	. 
	defb 074h		;c422	74 	t 
	defb 070h		;c423	70 	p 
	defb 06fh		;c424	6f 	o 
	defb 030h		;c425	30 	0 
	defb 032h		;c426	32 	2 
	defb 030h		;c427	30 	0 
	defb 020h		;c428	20 	  
	defb 06ch		;c429	6c 	l 
	defb 064h		;c42a	64 	d 
	defb 020h		;c42b	20 	  
	defb 020h		;c42c	20 	  
	defb 020h		;c42d	20 	  
	defb 020h		;c42e	20 	  
	defb 020h		;c42f	20 	  
	defb 020h		;c430	20 	  
	defb 028h		;c431	28 	( 
	defb 068h		;c432	68 	h 
	defb 06ch		;c433	6c 	l 
	defb 029h		;c434	29 	) 
	defb 02ch		;c435	2c 	, 
	defb 022h		;c436	22 	" 
	defb 020h		;c437	20 	  
	defb 022h		;c438	22 	" 
	defb 00dh		;c439	0d 	. 
	defb 00ah		;c43a	0a 	. 
	defb 020h		;c43b	20 	  
	defb 020h		;c43c	20 	  
	defb 020h		;c43d	20 	  
	defb 020h		;c43e	20 	  
	defb 020h		;c43f	20 	  
	defb 020h		;c440	20 	  
	defb 020h		;c441	20 	  
	defb 069h		;c442	69 	i 
	defb 06eh		;c443	6e 	n 
	defb 063h		;c444	63 	c 
	defb 020h		;c445	20 	  
	defb 020h		;c446	20 	  
	defb 020h		;c447	20 	  
	defb 020h		;c448	20 	  
	defb 020h		;c449	20 	  
	defb 068h		;c44a	68 	h 
	defb 06ch		;c44b	6c 	l 
	defb 00dh		;c44c	0d 	. 
	defb 00ah		;c44d	0a 	. 
	defb 020h		;c44e	20 	  
	defb 020h		;c44f	20 	  
	defb 020h		;c450	20 	  
	defb 020h		;c451	20 	  
	defb 020h		;c452	20 	  
	defb 020h		;c453	20 	  
	defb 020h		;c454	20 	  
	defb 064h		;c455	64 	d 
	defb 06ah		;c456	6a 	j 
	defb 06eh		;c457	6e 	n 
	defb 07ah		;c458	7a 	z 
	defb 020h		;c459	20 	  
	defb 020h		;c45a	20 	  
	defb 020h		;c45b	20 	  
	defb 020h		;c45c	20 	  
	defb 074h		;c45d	74 	t 
	defb 070h		;c45e	70 	p 
	defb 06fh		;c45f	6f 	o 
	defb 030h		;c460	30 	0 
	defb 032h		;c461	32 	2 
	defb 030h		;c462	30 	0 
	defb 00dh		;c463	0d 	. 
	defb 00ah		;c464	0a 	. 
	defb 074h		;c465	74 	t 
	defb 070h		;c466	70 	p 
	defb 06fh		;c467	6f 	o 
	defb 030h		;c468	30 	0 
	defb 033h		;c469	33 	3 
	defb 030h		;c46a	30 	0 
	defb 020h		;c46b	20 	  
	defb 06ch		;c46c	6c 	l 
	defb 064h		;c46d	64 	d 
	defb 020h		;c46e	20 	  
	defb 020h		;c46f	20 	  
	defb 0c0h		;c470	c0 	. 
	defb 05fh		;c471	5f 	_ 
	defb 0ebh		;c472	eb 	. 
	defb 021h		;c473	21 	! 
	defb 000h		;c474	00 	. 
	defb 000h		;c475	00 	. 
	defb 01ah		;c476	1a 	. 
	defb 0b7h		;c477	b7 	. 
	defb 0c8h		;c478	c8 	. 
	defb 013h		;c479	13 	. 
	defb 023h		;c47a	23 	# 
	defb 018h		;c47b	18 	. 
	defb 0f9h		;c47c	f9 	. 
	defb 01ah		;c47d	1a 	. 
	defb 013h		;c47e	13 	. 
	defb 0edh		;c47f	ed 	. 
	defb 0a1h		;c480	a1 	. 
	defb 0c0h		;c481	c0 	. 
	defb 0e0h		;c482	e0 	. 
	defb 018h		;c483	18 	. 
	defb 0f8h		;c484	f8 	. 
	defb 0c5h		;c485	c5 	. 
	defb 0ddh		;c486	dd 	. 
	defb 0e5h		;c487	e5 	. 
	defb 0cdh		;c488	cd 	. 
	defb 01dh		;c489	1d 	. 
	defb 06ch		;c48a	6c 	l 
	defb 0fdh		;c48b	fd 	. 
	defb 0cbh		;c48c	cb 	. 
	defb 030h		;c48d	30 	0 
	defb 09eh		;c48e	9e 	. 
	defb 0fdh		;c48f	fd 	. 
	defb 036h		;c490	36 	6 
	defb 052h		;c491	52 	R 
	defb 0ffh		;c492	ff 	. 
	defb 0fdh		;c493	fd 	. 
	defb 036h		;c494	36 	6 
	defb 002h		;c495	02 	. 
	defb 000h		;c496	00 	. 
	defb 0ddh		;c497	dd 	. 
	defb 0e1h		;c498	e1 	. 
	defb 0c1h		;c499	c1 	. 
	defb 0c3h		;c49a	c3 	. 
	defb 0a9h		;c49b	a9 	. 
	defb 062h		;c49c	62 	b 
	defb 0d1h		;c49d	d1 	. 
	defb 0e1h		;c49e	e1 	. 
	defb 07dh		;c49f	7d 	} 
	defb 0d5h		;c4a0	d5 	. 
	defb 0e5h		;c4a1	e5 	. 
	defb 0c5h		;c4a2	c5 	. 
	defb 0f5h		;c4a3	f5 	. 
	defb 0fdh		;c4a4	fd 	. 
	defb 036h		;c4a5	36 	6 
	defb 052h		;c4a6	52 	R 
	defb 0ffh		;c4a7	ff 	. 
	defb 021h		;c4a8	21 	! 
	defb 0f7h		;c4a9	f7 	. 
	defb 068h		;c4aa	68 	h 
	defb 001h		;c4ab	01 	. 
	defb 00ch		;c4ac	0c 	. 
	defb 000h		;c4ad	00 	. 
	defb 0cdh		;c4ae	cd 	. 
	defb 064h		;c4af	64 	d 
	defb 06ch		;c4b0	6c 	l 
	defb 0f1h		;c4b1	f1 	. 
	defb 0f5h		;c4b2	f5 	. 
	defb 0cdh		;c4b3	cd 	. 
	defb 0ebh		;c4b4	eb 	. 
	defb 068h		;c4b5	68 	h 
	defb 0d7h		;c4b6	d7 	. 
	defb 0f1h		;c4b7	f1 	. 
	defb 0c1h		;c4b8	c1 	. 
	defb 0e1h		;c4b9	e1 	. 
	defb 0c9h		;c4ba	c9 	. 
	defb 0edh		;c4bb	ed 	. 
	defb 0b1h		;c4bc	b1 	. 
	defb 020h		;c4bd	20 	  
	defb 001h		;c4be	01 	. 
	defb 07eh		;c4bf	7e 	~ 
	defb 06fh		;c4c0	6f 	o 
	defb 026h		;c4c1	26 	& 
	defb 0ffh		;c4c2	ff 	. 
	defb 0bch		;c4c3	bc 	. 
	defb 0c8h		;c4c4	c8 	. 
	defb 024h		;c4c5	24 	$ 
	defb 0c9h		;c4c6	c9 	. 
	defb 007h		;c4c7	07 	. 
	defb 08ah		;c4c8	8a 	. 
	defb 01dh		;c4c9	1d 	. 
	defb 0c7h		;c4ca	c7 	. 
	defb 01eh		;c4cb	1e 	. 
	defb 0c8h		;c4cc	c8 	. 
	defb 01fh		;c4cd	1f 	. 
	defb 0c9h		;c4ce	c9 	. 
	defb 0ffh		;c4cf	ff 	. 
	defb 089h		;c4d0	89 	. 
	defb 01ch		;c4d1	1c 	. 
	defb 00ah		;c4d2	0a 	. 
	defb 00dh		;c4d3	0d 	. 
	defb 0e2h		;c4d4	e2 	. 
	defb 07eh		;c4d5	7e 	~ 
	defb 0c3h		;c4d6	c3 	. 
	defb 07ch		;c4d7	7c 	| 
	defb 0cdh		;c4d8	cd 	. 
	defb 05ch		;c4d9	5c 	\ 
	defb 0cch		;c4da	cc 	. 
	defb 07bh		;c4db	7b 	{ 
	defb 0cbh		;c4dc	cb 	. 
	defb 07dh		;c4dd	7d 	} 
	defb 0c6h		;c4de	c6 	. 
	defb 05bh		;c4df	5b 	[ 
	defb 0c5h		;c4e0	c5 	. 
	defb 05dh		;c4e1	5d 	] 
	defb 0c7h		;c4e2	c7 	. 
	defb 01dh		;c4e3	1d 	. 
	defb 0c8h		;c4e4	c8 	. 
	defb 01eh		;c4e5	1e 	. 
	defb 0c9h		;c4e6	c9 	. 
	defb 01fh		;c4e7	1f 	. 
	defb 0ach		;c4e8	ac 	. 
	defb 0ffh		;c4e9	ff 	. 
	defb 00ch		;c4ea	0c 	. 
	defb 008h		;c4eb	08 	. 
	defb 00ch		;c4ec	0c 	. 
	defb 00dh		;c4ed	0d 	. 
	defb 00ah		;c4ee	0a 	. 
	defb 01ch		;c4ef	1c 	. 
	defb 03eh		;c4f0	3e 	> 
	defb 04ch		;c4f1	4c 	L 
	defb 0f5h		;c4f2	f5 	. 
	defb 0cdh		;c4f3	cd 	. 
	defb 064h		;c4f4	64 	d 
	defb 06ch		;c4f5	6c 	l 
	defb 0f1h		;c4f6	f1 	. 
	defb 0cdh		;c4f7	cd 	. 
	defb 0c1h		;c4f8	c1 	. 
	defb 018h		;c4f9	18 	. 
	defb 0cdh		;c4fa	cd 	. 
	defb 043h		;c4fb	43 	C 
	defb 069h		;c4fc	69 	i 
	defb 03eh		;c4fd	3e 	> 
	defb 008h		;c4fe	08 	. 
	defb 0d7h		;c4ff	d7 	. 
	defb 03eh		;c500	3e 	> 
	defb 020h		;c501	20 	  
	defb 0d7h		;c502	d7 	. 
	defb 03eh		;c503	3e 	> 
	defb 008h		;c504	08 	. 
	defb 0d7h		;c505	d7 	. 
	defb 07dh		;c506	7d 	} 
	defb 021h		;c507	21 	! 
	defb 004h		;c508	04 	. 
	defb 069h		;c509	69 	i 
	defb 0c5h		;c50a	c5 	. 
	defb 001h		;c50b	01 	. 
	defb 01bh		;c50c	1b 	. 
	defb 000h		;c50d	00 	. 
	defb 0cdh		;c50e	cd 	. 
	defb 0ebh		;c50f	eb 	. 
	defb 068h		;c510	68 	h 
	defb 0c1h		;c511	c1 	. 
	defb 0c9h		;c512	c9 	. 
	defb 0fdh		;c513	fd 	. 
	defb 0cbh		;c514	cb 	. 
	defb 001h		;c515	01 	. 
	defb 06eh		;c516	6e 	n 
	defb 0fbh		;c517	fb 	. 
	defb 028h		;c518	28 	( 
	defb 0f9h		;c519	f9 	. 
	defb 03ah		;c51a	3a 	: 
	defb 008h		;c51b	08 	. 
	defb 05ch		;c51c	5c 	\ 
	defb 0fdh		;c51d	fd 	. 
	defb 0cbh		;c51e	cb 	. 
	defb 001h		;c51f	01 	. 
	defb 0aeh		;c520	ae 	. 
	defb 026h		;c521	26 	& 
	defb 000h		;c522	00 	. 
	defb 06fh		;c523	6f 	o 
	defb 0c9h		;c524	c9 	. 
	defb 0cdh		;c525	cd 	. 
	defb 08eh		;c526	8e 	. 
	defb 002h		;c527	02 	. 
	defb 01ch		;c528	1c 	. 
	defb 021h		;c529	21 	! 
	defb 000h		;c52a	00 	. 
	defb 000h		;c52b	00 	. 
	defb 0c8h		;c52c	c8 	. 
	defb 023h		;c52d	23 	# 
	defb 0c9h		;c52e	c9 	. 
	defb 021h		;c52f	21 	! 
	defb 000h		;c530	00 	. 
	defb 000h		;c531	00 	. 
	defb 03eh		;c532	3e 	> 
	defb 07fh		;c533	7f 	 
	defb 0dbh		;c534	db 	. 
	defb 0feh		;c535	fe 	. 
	defb 01fh		;c536	1f 	. 
	defb 0d8h		;c537	d8 	. 
	defb 03ah		;c538	3a 	: 
	defb 0feh		;c539	fe 	. 
	defb 000h		;c53a	00 	. 
	defb 0dbh		;c53b	db 	. 
	defb 0feh		;c53c	fe 	. 
	defb 01fh		;c53d	1f 	. 
	defb 0d8h		;c53e	d8 	. 
	defb 0cdh		;c53f	cd 	. 
	defb 043h		;c540	43 	C 
	defb 069h		;c541	69 	i 
	defb 021h		;c542	21 	! 
	defb 001h		;c543	01 	. 
	defb 000h		;c544	00 	. 
	defb 0c9h		;c545	c9 	. 
	defb 0d1h		;c546	d1 	. 
	defb 0e1h		;c547	e1 	. 
	defb 07dh		;c548	7d 	} 
	defb 0e1h		;c549	e1 	. 
	defb 0d5h		;c54a	d5 	. 
	defb 0b7h		;c54b	b7 	. 
	defb 020h		;c54c	20 	  
	defb 004h		;c54d	04 	. 
	defb 07dh		;c54e	7d 	} 
	defb 0c3h		;c54f	c3 	. 
	defb 0d1h		;c550	d1 	. 
	defb 068h		;c551	68 	h 
	defb 0feh		;c552	fe 	. 
	defb 010h		;c553	10 	. 
	defb 028h		;c554	28 	( 
	defb 00ah		;c555	0a 	. 
	defb 0cdh		;c556	cd 	. 
	defb 066h		;c557	66 	f 
	defb 06ch		;c558	6c 	l 
	defb 07dh		;c559	7d 	} 
	defb 0ddh		;c55a	dd 	. 
	defb 0e5h		;c55b	e5 	. 
	defb 0d7h		;c55c	d7 	. 
	defb 0ddh		;c55d	dd 	. 
	defb 0e1h		;c55e	e1 	. 
	defb 0c9h		;c55f	c9 	. 
	defb 04dh		;c560	4d 	M 
	defb 02ah		;c561	2a 	* 
	defb 0a0h		;c562	a0 	. 
	defb 068h		;c563	68 	h 
	defb 07eh		;c564	7e 	~ 
	defb 0e6h		;c565	e6 	. 
	defb 023h		;c566	23 	# 
	defb 0d6h		;c567	d6 	. 
	defb 020h		;c568	20 	  
	defb 028h		;c569	28 	( 
	defb 004h		;c56a	04 	. 
	defb 021h		;c56b	21 	! 
	defb 0ffh		;c56c	ff 	. 
	defb 0ffh		;c56d	ff 	. 
	defb 0c9h		;c56e	c9 	. 
	defb 023h		;c56f	23 	# 
	defb 023h		;c570	23 	# 
	defb 023h		;c571	23 	# 
	defb 05eh		;c572	5e 	^ 
	defb 023h		;c573	23 	# 
	defb 056h		;c574	56 	V 
	defb 02bh		;c575	2b 	+ 
	defb 0e5h		;c576	e5 	. 
	defb 021h		;c577	21 	! 
	defb 000h		;c578	00 	. 
	defb 002h		;c579	02 	. 
	defb 0edh		;c57a	ed 	. 
	defb 052h		;c57b	52 	R 
	defb 0e1h		;c57c	e1 	. 
	defb 0cch		;c57d	cc 	. 
	defb 0bah		;c57e	ba 	. 
	defb 069h		;c57f	69 	i 
	defb 013h		;c580	13 	. 
	defb 073h		;c581	73 	s 
	defb 023h		;c582	23 	# 
	defb 072h		;c583	72 	r 
	defb 019h		;c584	19 	. 
	defb 071h		;c585	71 	q 
	defb 069h		;c586	69 	i 
	defb 026h		;c587	26 	& 
	defb 000h		;c588	00 	. 
	defb 0c9h		;c589	c9 	. 
	defb 011h		;c58a	11 	. 
	defb 002h		;c58b	02 	. 
	defb 002h		;c58c	02 	. 
	defb 03eh		;c58d	3e 	> 
	defb 0ffh		;c58e	ff 	. 
	defb 0cdh		;c58f	cd 	. 
	defb 02ah		;c590	2a 	* 
	defb 06ch		;c591	6c 	l 
	defb 011h		;c592	11 	. 
	defb 000h		;c593	00 	. 
	defb 000h		;c594	00 	. 
	defb 0c9h		;c595	c9 	. 
	defb 0d1h		;c596	d1 	. 
	defb 0e1h		;c597	e1 	. 
	defb 07dh		;c598	7d 	} 
	defb 0d5h		;c599	d5 	. 
	defb 021h		;c59a	21 	! 
	defb 035h		;c59b	35 	5 
	defb 06dh		;c59c	6d 	m 
	defb 05fh		;c59d	5f 	_ 
	defb 0afh		;c59e	af 	. 
	defb 057h		;c59f	57 	W 
	defb 019h		;c5a0	19 	. 
	defb 0beh		;c5a1	be 	. 
	defb 028h		;c5a2	28 	( 
	defb 004h		;c5a3	04 	. 
	defb 05eh		;c5a4	5e 	^ 
	defb 077h		;c5a5	77 	w 
	defb 0ebh		;c5a6	eb 	. 
	defb 0c9h		;c5a7	c9 	. 
	defb 07bh		;c5a8	7b 	{ 
	defb 0b7h		;c5a9	b7 	. 
	defb 0cah		;c5aa	ca 	. 
	defb 029h		;c5ab	29 	) 
	defb 068h		;c5ac	68 	h 
	defb 0feh		;c5ad	fe 	. 
	defb 010h		;c5ae	10 	. 
	defb 028h		;c5af	28 	( 
	defb 028h		;c5b0	28 	( 
	defb 0cdh		;c5b1	cd 	. 
	defb 066h		;c5b2	66 	f 
	defb 06ch		;c5b3	6c 	l 
	defb 0ddh		;c5b4	dd 	. 
	defb 0e5h		;c5b5	e5 	. 
	defb 02ah		;c5b6	2a 	* 
	defb 03dh		;c5b7	3d 	= 
	defb 05ch		;c5b8	5c 	\ 
	defb 0e5h		;c5b9	e5 	. 
	defb 021h		;c5ba	21 	! 
	defb 0feh		;c5bb	fe 	. 
	defb 0ffh		;c5bc	ff 	. 
	defb 039h		;c5bd	39 	9 
	defb 022h		;c5be	22 	" 
	defb 03dh		;c5bf	3d 	= 
	defb 05ch		;c5c0	5c 	\ 
	defb 021h		;c5c1	21 	! 
	defb 004h		;c5c2	04 	. 
	defb 06ah		;c5c3	6a 	j 
	defb 0e5h		;c5c4	e5 	. 
	defb 0cdh		;c5c5	cd 	. 
	defb 0e6h		;c5c6	e6 	. 
	defb 015h		;c5c7	15 	. 
	defb 0e1h		;c5c8	e1 	. 
	defb 026h		;c5c9	26 	& 
	defb 000h		;c5ca	00 	. 
	defb 06fh		;c5cb	6f 	o 
	defb 0d1h		;c5cc	d1 	. 
	defb 0edh		;c5cd	ed 	. 
	defb 053h		;c5ce	53 	S 
	defb 03dh		;c5cf	3d 	= 
	defb 05ch		;c5d0	5c 	\ 
	defb 0ddh		;c5d1	dd 	. 
	defb 0e1h		;c5d2	e1 	. 
	defb 0c9h		;c5d3	c9 	. 
	defb 021h		;c5d4	21 	! 
	defb 0ffh		;c5d5	ff 	. 
	defb 0ffh		;c5d6	ff 	. 
	defb 018h		;c5d7	18 	. 
	defb 0f3h		;c5d8	f3 	. 
	defb 02ah		;c5d9	2a 	* 
	defb 0a0h		;c5da	a0 	. 
	defb 068h		;c5db	68 	h 
	defb 023h		;c5dc	23 	# 
	defb 0e5h		;c5dd	e5 	. 
	defb 05eh		;c5de	5e 	^ 
	defb 023h		;c5df	23 	# 
	defb 056h		;c5e0	56 	V 
	defb 023h		;c5e1	23 	# 
	defb 04eh		;c5e2	4e 	N 
	defb 023h		;c5e3	23 	# 
	defb 046h		;c5e4	46 	F 
	defb 03eh		;c5e5	3e 	> 
	defb 07fh		;c5e6	7f 	 
	defb 0a0h		;c5e7	a0 	. 
	defb 0b1h		;c5e8	b1 	. 
	defb 023h		;c5e9	23 	# 
	defb 019h		;c5ea	19 	. 
	defb 07eh		;c5eb	7e 	~ 
	defb 013h		;c5ec	13 	. 
	defb 0e1h		;c5ed	e1 	. 
	defb 073h		;c5ee	73 	s 
	defb 023h		;c5ef	23 	# 
	defb 072h		;c5f0	72 	r 
	defb 023h		;c5f1	23 	# 
	defb 00bh		;c5f2	0b 	. 
	defb 071h		;c5f3	71 	q 
	defb 023h		;c5f4	23 	# 
	defb 070h		;c5f5	70 	p 
	defb 026h		;c5f6	26 	& 
	defb 000h		;c5f7	00 	. 
	defb 06fh		;c5f8	6f 	o 
	defb 0c0h		;c5f9	c0 	. 
	defb 02ah		;c5fa	2a 	* 
	defb 0a0h		;c5fb	a0 	. 
	defb 068h		;c5fc	68 	h 
	defb 0e5h		;c5fd	e5 	. 
	defb 07eh		;c5fe	7e 	~ 
	defb 0e6h		;c5ff	e6 	. 
	defb 013h		;c600	13 	. 
	defb 0feh		;c601	fe 	. 
	defb 010h		;c602	10 	. 
	defb 023h		;c603	23 	# 
	defb 023h		;c604	23 	# 
	defb 023h		;c605	23 	# 
	defb 023h		;c606	23 	# 
	defb 028h		;c607	28 	( 
	defb 00eh		;c608	0e 	. 
	defb 0afh		;c609	af 	. 
	defb 077h		;c60a	77 	w 
	defb 02bh		;c60b	2b 	+ 
	defb 077h		;c60c	77 	w 
	defb 02bh		;c60d	2b 	+ 
	defb 02bh		;c60e	2b 	+ 
	defb 02bh		;c60f	2b 	+ 
	defb 0cbh		;c610	cb 	. 
	defb 0c6h		;c611	c6 	. 
	defb 021h		;c612	21 	! 
	defb 0ffh		;c613	ff 	. 
	defb 0ffh		;c614	ff 	. 
	defb 0d1h		;c615	d1 	. 
	defb 0c9h		;c616	c9 	. 
	defb 0cbh		;c617	cb 	. 
	defb 07eh		;c618	7e 	~ 
	defb 028h		;c619	28 	( 
	defb 0eeh		;c61a	ee 	. 
	defb 02bh		;c61b	2b 	+ 
	defb 011h		;c61c	11 	. 
	defb 002h		;c61d	02 	. 
	defb 002h		;c61e	02 	. 
	defb 03eh		;c61f	3e 	> 
	defb 0ffh		;c620	ff 	. 
	defb 0cdh		;c621	cd 	. 
	defb 03eh		;c622	3e 	> 
	defb 06ch		;c623	6c 	l 
	defb 038h		;c624	38 	8 
	defb 006h		;c625	06 	. 
	defb 0cbh		;c626	cb 	. 
	defb 0ceh		;c627	ce 	. 
	defb 0f6h		;c628	f6 	. 
	defb 001h		;c629	01 	. 
	defb 018h		;c62a	18 	. 
	defb 0d7h		;c62b	d7 	. 
	defb 0e1h		;c62c	e1 	. 
	defb 023h		;c62d	23 	# 
	defb 0afh		;c62e	af 	. 
	defb 077h		;c62f	77 	w 
	defb 023h		;c630	23 	# 
	defb 077h		;c631	77 	w 
	defb 0c3h		;c632	c3 	. 
	defb 009h		;c633	09 	. 
	defb 06ah		;c634	6a 	j 
	defb 0f1h		;c635	f1 	. 
	defb 0d1h		;c636	d1 	. 
	defb 0e1h		;c637	e1 	. 
	defb 0f5h		;c638	f5 	. 
	defb 07bh		;c639	7b 	{ 
	defb 0feh		;c63a	fe 	. 
	defb 011h		;c63b	11 	. 
	defb 0d0h		;c63c	d0 	. 
	defb 07ah		;c63d	7a 	z 
	defb 0b7h		;c63e	b7 	. 
	defb 0c0h		;c63f	c0 	. 
	defb 07dh		;c640	7d 	} 
	defb 021h		;c641	21 	! 
	defb 035h		;c642	35 	5 
	defb 06dh		;c643	6d 	m 
	defb 019h		;c644	19 	. 
	defb 077h		;c645	77 	w 
	defb 0c9h		;c646	c9 	. 
	defb 0d1h		;c647	d1 	. 
	defb 0e1h		;c648	e1 	. 
	defb 07dh		;c649	7d 	} 
	defb 0d5h		;c64a	d5 	. 
	defb 0b7h		;c64b	b7 	. 
	defb 0c8h		;c64c	c8 	. 
	defb 021h		;c64d	21 	! 
	defb 09ch		;c64e	9c 	. 
	defb 06ch		;c64f	6c 	l 
	defb 0beh		;c650	be 	. 
	defb 028h		;c651	28 	( 
	defb 008h		;c652	08 	. 
	defb 023h		;c653	23 	# 
	defb 0beh		;c654	be 	. 
	defb 028h		;c655	28 	( 
	defb 004h		;c656	04 	. 
	defb 021h		;c657	21 	! 
	defb 0ffh		;c658	ff 	. 
	defb 0ffh		;c659	ff 	. 
	defb 0c9h		;c65a	c9 	. 
	defb 036h		;c65b	36 	6 
	defb 000h		;c65c	00 	. 
	defb 0feh		;c65d	fe 	. 
	defb 010h		;c65e	10 	. 
	defb 028h		;c65f	28 	( 
	defb 014h		;c660	14 	. 
	defb 0ddh		;c661	dd 	. 
	defb 0e5h		;c662	e5 	. 
	defb 0fdh		;c663	fd 	. 
	defb 0cbh		;c664	cb 	. 
	defb 07ch		;c665	7c 	| 
	defb 08eh		;c666	8e 	. 
	defb 021h		;c667	21 	! 
	defb 018h		;c668	18 	. 
	defb 017h		;c669	17 	. 
	defb 022h		;c66a	22 	" 
	defb 0edh		;c66b	ed 	. 
	defb 05ch		;c66c	5c 	\ 
	defb 0cfh		;c66d	cf 	. 
	defb 032h		;c66e	32 	2 
data3_end:
	defb 0ddh		;c66f	dd 	. 
