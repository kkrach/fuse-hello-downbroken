
MNTPNT=./MNT/
CC=gcc
CFLAGS=-Wall `pkg-config fuse --cflags --libs`

hello: hello.c
	$(CC) hello.c $(CFLAGS) -o hello

clean:
	rm -rf hello hello.o $(MNTPNT)

run:
	mkdir -p $(MNTPNT)
	./hello $(MNTPNT) -o auto_unmount -o allow_other -o nonempty -f -d
