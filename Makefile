# Adjust the run address to match the .org in the source code
all: basic.bin

basic.bin: basic.o
	ld65 -t none -vm -m basic.map -o basic.bin basic.o

basic.o: basic.asm min_mon.asm
	ca65 -g -l min_mon.lst --feature labels_without_colons -o basic.o min_mon.asm

clean:
	$(RM) *.o *.lst *.map *.bin

distclean: clean
