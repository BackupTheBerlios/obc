CC= gcc
FLAGS= -lobjc
DIROBJ= obj/
DIRBIN= build/
OBJS= $(DIROBJ)OCPruebaEnteros.o $(DIROBJ)OCPrueba.o $(DIROBJ)pruebas.o

pruebas: $(DIRBIN)pruebas

$(DIRBIN)pruebas: $(OBJS)
	$(CC) $(FLAGS) $(OBJS) -o $(DIRBIN)pruebas

$(DIROBJ)OCPrueba.o:
	$(CC) -c OCPrueba.m -o $(DIROBJ)OCPrueba.o

$(DIROBJ)OCPruebaEnteros.o:
	$(CC) -c OCPruebaEnteros.m -o $(DIROBJ)OCPruebaEnteros.o

$(DIROBJ)pruebas.o:
	$(CC) -c pruebas.m -o $(DIROBJ)pruebas.o

clean:
	rm $(DIROBJ)*.o
	rm $(DIRBIN)*

