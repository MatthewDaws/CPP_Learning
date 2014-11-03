# make -f "makefile++"

CC = g++
CFLAGS = -std=c++11 -O3 -march=native -mtune=native -mfpmath=sse -mthreads


main.exe : main.o sieve_time.o sieve.o
	g++ main.o sieve_time.o sieve.o -o main.exe 

sieve.o : sieve.cpp sieve.tpp
	$(CC) $(CFLAGS) -c sieve.cpp -o sieve.o

sieve_time.o : sieve_time.cpp sieve.tpp sieve_time.h
	$(CC) $(CFLAGS) -c sieve_time.cpp -o sieve_time.o

main.o : main.cpp sieve.tpp sieve_time.h
	$(CC) $(CFLAGS) -c main.cpp -o main.o

clean :
	-rm main.exe main.o sieve.o sieve_time.o
