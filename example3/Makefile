CC	= arm-linux-gnueabihf-gcc
CFLAGS	= -O3 -ggdb -Wall
LDFLAGS = -fno-stack-protector

objects1= example3.o 
objects2= example3_1.o 
objects3= example3_2.o

default: example3 example3_1 example3_2

.PHONY: default clean

example3: $(objects1)
	$(CC) -o $@ $^

example3_1: $(objects2)
	$(CC) -o $@ $^

example3_2: $(objects3)
	$(CC) -o $@ $^

example3.o: example3.c

example3_1.o: example3_1.c

example3_2.o: example3_2.c

%.o: %.c
	$(CC) -c $(CFLAGS) $(LDFLAGS) -o $@ $<

clean:
	rm -f $(objects1) $(objects2) $(objects3) \
              example3 example3_1 example 3_2

qemu: example3
	qemu-arm -L /usr/arm-linux-gnueabihf ./example3
