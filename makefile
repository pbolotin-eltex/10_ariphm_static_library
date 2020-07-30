# Make

.PHONY = clean debug all
KEYS :=
LIBS :=
CC := gcc

all: libariphm.a ariphm_main.o
	$(CC) $(KEYS) ariphm_main.o -o ariphm -L. -lariphm $(LIBS)

libariphm.a : ariphm_add.o ariphm_mul.o ariphm_sub.o ariphm_div.o
	ar rc libariphm.a ariphm_add.o ariphm_mul.o ariphm_sub.o ariphm_div.o

ariphm_main.o : ariphm_main.c ariphm_lib.h
	$(CC) $(KEYS) -c ariphm_main.c $(LIBS)

ariphm_add.o : ariphm_add.c ariphm_add.h
	$(CC) $(KEYS) -c ariphm_add.c $(LIBS)

ariphm_mul.o : ariphm_mul.c ariphm_mul.h
	$(CC) $(KEYS) -c ariphm_mul.c $(LIBS)
	
ariphm_sub.o : ariphm_sub.c ariphm_sub.h
	$(CC) $(KEYS) -c ariphm_sub.c $(LIBS)
	
ariphm_div.o : ariphm_div.c ariphm_div.h
	$(CC) $(KEYS) -c ariphm_div.c $(LIBS)

clean :
	rm -f *.o *.gch *.a ariphm
