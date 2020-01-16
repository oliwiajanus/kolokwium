MANIFEST= *.cpp *.h Makefile
DESTDIR = $(HOME)/bin
VER = 0.1
CC= g++
CFLAGS = -Wall -ansi -pedantic
LFAGS = -lm
OBJS = main.o employee.o address.o 
EXEC = myprogram

all: $(EXEC)

$(EXEC): $(OBJS)
	$(CC) $(LFLAGS) $+ -o $@
	echo hello everyone!

%.o: %.cpp
	$(CC) -c $(CGLAGS) $<

main.o: employee.h address.h

employee.o: address.h

install: all 
	sh -c "if [ ! -d $(DESTDIR) ] ; then mkdir $(DESTDIR) ; fi"
	cp $(EXEC) $(DESTDIR)/$(EXEC)
	echo myprogram: zainstalowane! 
