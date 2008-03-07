CC= gcc
EXTENSION= so
FLAGS= -shared -fPIC
DIROBJ= obj/
DIRBIN= build/
OBJS= $(DIROBJ)OCNodo.o $(DIROBJ)OCLista.o $(DIROBJ)OCCadena.o

libutiles.$(EXTENSION): $(DIRBIN)libutiles.$(EXTENSION)

$(DIRBIN)libutiles.$(EXTENSION): $(OBJS)
	$(CC) $(FLAGS) -lobjc $(DIROBJ)*.o -o $(DIRBIN)libutiles.$(EXTENSION)

$(DIROBJ)OCCadena.o: OCCadena.h OCCadena.m
	$(CC) -c OCCadena.m -o $(DIROBJ)OCCadena.o
	
$(DIROBJ)OCNodo.o: OCNodo.h OCNodo.m
	$(CC) -c OCNodo.m -o $(DIROBJ)OCNodo.o

$(DIROBJ)OCLista.o: OCLista.h OCLista.m
	$(CC) -c OCLista.m -o $(DIROBJ)OCLista.o

clean:
	rm $(DIROBJ)*.o
	rm $(DIRBIN)*.so

