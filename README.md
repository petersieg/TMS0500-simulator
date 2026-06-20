# ti59 and TMC0501 microcode simulator

This project allow to run microcode for TMC0501 generation calculator.
See http://www.datamath.org/Chips/TMS0500-CS.htm for more information

This is based of previous work from Hynek Sladký :
- http://hsl.wz.cz/ti\_59.htm
- https://www.hrastprogrammer.com/emulators.htm

Since License LGPL 2.1 was mentioned in the source codes:
```
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
```
I added that license as a file.

ti59 - to press 2nd key, press esc 1st:
!(https://github.com/petersieg/TMS0500-simulator/blob/master/ti59.png)

It have been tested on rom of
SR50, SR51, SR52, SR56, SR60 (partial support), ti58, ti59, ti58c

The goal is to able to run microcode of several calculator and understand
how the differents chips work together.

For that each chip is implemented in a separate file and communicate with
bus like shared data.


## How to use it

build (original tested on linux; now compiled under Mac OS Big Sur - disasm.c required 2 commented out lines 297+299 and array wait to be renamed to _wait)
```
make
```

download firmware (wget was not available, so I changed get_rom.sh to use curl - original is in: get_rom_wget.sh)
```
./bin/get_rom.sh
```

run the selected model

```
./bin/SR50.sh
```

```
./bin/ti59.sh
```

Key mapping is print on startup

You can check doc dir for more technical information.

### printer
you can pass option "-p" to enable printer

```
./bin/ti59.sh -p
```

### card reader
you can pass option "-c" to enable card reader
```
./bin/ti59.sh -c my_card_file
```


### CROM
you can pass option "-l" to load master lib

```
./bin/ti59.sh -p -l rom/module-lib/TMC0541.txt
```
You can test it using
"2nd Pgm 01"
"SBR ="

It should print
```
MASTER
1
```
and display "1"

Additionnal library module can be found on
http://www.datamath.org/Chips/TMC0540.htm

Manual http://www.datamath.org/Sci/WEDGE/Modules.htm


### Debug

#### log
You can enable log in log.txt file

- '-v level'
  - level=1 : low
  - level=3 : medium
  - level=7 : high

#### ROM

You can disassemble on stderr the rom with '-d' option

```
./bin/ti59.sh -d
```
```
./bin/SR52.sh -d
```

#### CROM

You can disassemble on stderr the rom with '-D' option

```
./bin/ti59.sh -l rom/module-lib/TMC0541.txt -D
```

