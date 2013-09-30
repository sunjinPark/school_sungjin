CC = gcc
OBJS = cal.o addition.o divide.o factorial.o fibo.o multiplication.o subtraction.o
  
all: $(OBJS)
	$(CC) -o calculator $(OBJS) -m32
  
cal.o: cal.c
	$(CC) -c cal.c -m32 
	
addition.o: addition.s
	$(CC) -c addition.s -m32 
	
divide.o: divide.s
	$(CC) -c divide.s -m32

factorial.o: factorial.s
	$(CC) -c factorial.s -m32

fibo.o: fibo.s
	$(CC) -c fibo.s -m32

multiplication.o: multiplication.s
	$(CC) -c multiplication.s -m32

subtraction.o : subtraction.s
	$(CC) -c subtraction.s -m32

clean:
	rm *.o calculator
