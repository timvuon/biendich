#cat -e -t -v  makefile
#makefile
CC=gcc
CFLAGS  = -g -Wall
all: hellomake
hellomake:  hellofunc.o hellomake.o 
	$(CC) $(CFLAGS) -o hellomake hellofunc.o hellomake.o 
hellomake.o:  hellomake.c hellomake.h 
	$(CC) $(CFLAGS) -c hellomake.c																					

hellofunc.o:  hellofunc.c hellomake.h 
	$(CC) $(CFLAGS) -c hellofunc.c
clean: 
	$(RM) hellomake *.o *~



