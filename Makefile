SRC := $(wildcard *.asm)
BIN := $(SRC:%.asm=%.out)

.PHONY: clear

all: $(BIN)

%.out: %.o
	ld -m elf_x86_64 $^ -o $@

%.o: %.asm
	nasm -felf64 -Fdwarf $^ -o $@

clear:
	rm -f *.o *.out
