# HiSoft-C

Disassembled code of [HiSoft C](http://www.worldofspectrum.org/infoseekid.cgi?id=0008252) compiler version 1.3 for ZX Spectrum

![pic1.png](pictures/pic1.png)

## 1. Introduction

[HiSoft C](http://www.worldofspectrum.org/infoseekid.cgi?id=0008252) is c compiler available for ZX Spectrum and Amstrac CPC. The compiler uses old K&R notation so you can use [ansi2kr](https://github.com/masakioba/ansi2kr) converter for conversion of your ANSI C source code into K&R version. Then you can use [c2tap](/c2tap/c2tap.c) utility for conversion of your source to tap file format.  

An interesting fact is [HiSoft C](http://www.worldofspectrum.org/infoseekid.cgi?id=0008252) was written in [BDS C](https://en.wikipedia.org/wiki/BDS_C) of Leor Zolman and then disassembled and optimized manually.  

There are various libraries for [HiSoft C](http://www.worldofspectrum.org/infoseekid.cgi?id=0008252). For example:

* Standard C library from HiSoft: [stdio.h](/libs/STDIO.H) and [stdio.c](/libs/STDIO.C)
* Library for working with real numbers: [real.c](/libs/REAL.C)

## 2. Resources

* Original [HiSoft C manual for ZX Spectrum](/documentation/HiSoftC.pdf) in PDF
* Original [HiSoft C manual for Amstrad CPC](/documentation/Hisoft_C_(Hisoft)_Manual.pdf) in PDF
* Article [ZX Magazín - HiSoft C 1.1](/documentation/ZXMagazin_review_(Czech).pdf) in PDF
* Article [Historické kompilátory jazyka C na vlastní kůži (2)](http://www.abclinuxu.cz/blog/squeaker/2018/7/historicke-kompilatory-jazyka-c-na-vlastni-kuzi-2)

## 3. How to compile

### 3.1 Prerequisities

* z80asm
* [skoolkit 6.4](https://pypi.python.org/pypi/skoolkit)
* ZX spectrum simulator, [ZEsarUX](https://github.com/chernandezba/zesarux) recommended 

### 3.2 Compilation

```
z80asm cc.asm -o cc-tmp.bin ; bin2tap.py -o 25200 cc-tmp.bin cc.tap
```

## 4. Original process of disassembling

### 4.1 Decompilation

```
z80dasm -a -t -l -g 25200 -b blocks.txt code.bin > code.asm
```
### 4.2 Recompilation
```
z80asm code.asm -o code-tmp.bin ; bin2tap.py -o 25200 code-tmp.bin cc.tap
```

## 5. HiSoft Editor usage

To start editor press `capshift 1` and `ENTER` (or `EDIT`)

### 5.1 File operations

* `p [m,n,s]`		put into cassette
* `g [,,s]` 		get from cassette

### 5.2 Compiler

* `c enter`			back to compiler
* `#include [file name]`	compile program
* `symbolshift i`		run program
* `#error`                      to sacrifice error messages and yield more memory 

### 5.3 Basic

* `b enter`			go to basic 
* `RANDOMIZE USR 25200`         back to compiler

### 5.4 Editor commands

* `i [m,n]`			insert text
* `l [m,n]`			list
* `k n`			        set number of lines listed on screen 
* `w [m,n]`			write text to printer
* `d [m,n]`			delete lines
* `m [m,n]`			move line
* `n [m,n]`			renumber line
* `e n`			        edit line
* `v`                           view defaults

### 5.5 Special keys

* `SS F` {
* `SS G` }
* `SS I` EOF
* `SS Q` <=
* `SS W` <>
* `SS E` >=
