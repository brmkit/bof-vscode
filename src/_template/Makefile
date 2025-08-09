BOFNAME := $(shell pwd | awk -F/ '{print $$NF}')
COMINCLUDE := -I ../_common
LIBINCLUDE := 
CC_x64 := x86_64-w64-mingw32-gcc
CC_x86 := i686-w64-mingw32-gcc
CC=x86_64-w64-mingw32-clang

all:
	$(CC_x64) $(COMINCLUDE) -o $(BOFNAME).x64.o -Os -c entry.c
	$(CC_x86) $(COMINCLUDE) -o $(BOFNAME).x86.o -Os -c entry.c 

clean:
	rm $(BOFNAME).*.o