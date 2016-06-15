all: firmware

firmware: basic.o
	ld65 -vm -C firmware.cfg -m basic.map -o firmware basic.o

basic.o: basic.asm min_mon.asm
	ca65 --cpu 65c02 -t none -g -l min_mon.lst --feature labels_without_colons -o basic.o min_mon.asm

clean:
	$(RM) *.o *.lst *.map *.bin firmware

distclean: clean
