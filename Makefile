CC=gcc
CFLAGS=-I.

main: main.o
	$(CC) -o main main.o $(CFLAGS)

main.o: main.c
	$(CC) -c -o main.o main.c $(CFLAGS)
