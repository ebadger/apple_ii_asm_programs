TARGET = $(notdir $(shell pwd))

all:
	ca65 $(TARGET).asm -D BASE=0x4000
	cl65 $(TARGET).o --target ebadger --start-addr 0x4000 -o $(TARGET).bin

clean:
	rm -f *.bin *.o
