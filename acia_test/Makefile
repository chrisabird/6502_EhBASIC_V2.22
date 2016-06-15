all: firmware

firmware: test.o
	ld65 -vm -C firmware.cfg -m test.map -o firmware test.o

test.o: test.asm
	ca65 --cpu 65c02 -t none -g -l test.lst --feature labels_without_colons -o test.o test.asm

clean:
	$(RM) *.o *.lst *.map *.bin firmware

distclean: clean
