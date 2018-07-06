# HiSoft-C

Disassembled code of HiSoft C compiler version 1.3 for ZX Spectrum

![pic1.png](pictures/pic1.png)

## Resources

* Original [[HiSoft C manual|/documentation/HiSoftC.pdf]] for ZX Spectrum in PDF
* Original [[HiSoft C manual|/documentation/Hisoft_C_(Hisoft)_Manual.pdf]] for Amstrad CPC in PDF
* Article [[ZX Magazín - HiSoft C 1.1|/documentation/HiSoftC.pdf]] in PDF
* Article [Historické kompilátory jazyka C na vlastní kùži (2)](http://www.abclinuxu.cz/blog/squeaker/2018/7/historicke-kompilatory-jazyka-c-na-vlastni-kuzi-2)

Please let us know if you know about additional resources.

## How to compile

### Prerequisities

* z80asm
* [skoolkit 6.4](https://pypi.python.org/pypi/skoolkit)
* ZX spectrum simulator, [ZEsarUX](https://github.com/chernandezba/zesarux) recommended 

### Compilation

```
z80asm cc.asm -o cc-tmp.bin ; bin2tap.py -o 25200 cc-tmp.bin cc.tap
```

## Original process

### Decompilation

```
z80dasm -a -t -l -g 25200 -b blocks.txt code.bin > code.asm
```
### Recompilation
```
z80asm code.asm -o code-tmp.bin ; bin2tap.py -o 25200 code-tmp.bin cc.tap
```
