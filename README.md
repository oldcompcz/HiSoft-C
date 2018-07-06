# HiSoft-C

Disassembled code of [HiSoft C](http://www.worldofspectrum.org/infoseekid.cgi?id=0008252) compiler for ZX Spectrum version 1.3 for ZX Spectrum

![pic1.png](pictures/pic1.png)

## 1. Introduction

[HiSoft C](http://www.worldofspectrum.org/infoseekid.cgi?id=0008252) is c compiler available for ZX Spectrum and Amstrac CPC. Compiler uses old K&R notation so you can use [ansi2kr](https://github.com/masakioba/ansi2kr) converter for conversion of your ANSI C source code into K&R version. Then you can use [c2tap](/c2tap/c2tap.c) utility for conversion of your source to tap file format.  

Interesting fact is [HiSoft C](http://www.worldofspectrum.org/infoseekid.cgi?id=0008252) was written in [BDS C](https://en.wikipedia.org/wiki/BDS_C) of Leor Zolman and then disassembled and optimized manually.  

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
