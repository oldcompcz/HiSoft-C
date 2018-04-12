# HiSoft-C
Disassembled code of HiSoft C compiler version 1.3 for ZX Spectrum

# prerequisities

- z80asm
- skoolkit 6.4 (https://pypi.python.org/pypi/skoolkit)
- ZX spectrum simulator, ZEsarUX recommended (https://github.com/chernandezba/zesarux)

# How to compile

```
z80asm cc.asm -o cc-tmp.bin ; bin2tap.py -o 25200 cc-tmp.bin cc.tap
```

# Original process

### Decompilation

```
z80dasm -a -t -l -g 25200 -b blocks.txt code.bin > code.asm
```
### Recompilation
``
z80asm code.asm -o code-tmp.bin ; bin2tap.py -o 25200 code-tmp.bin cc.tap
```

