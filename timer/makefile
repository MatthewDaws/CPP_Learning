CC = g++
//CPPFLAGS = -std=c++11 -O3 -march=native -mtune=native -mfpmath=sse
//CPPFLAGS = -std=c++11 -O3 -march=native -mtune=native -mfpmath=sse -flto
//CPPFLAGS = -std=c++11 -D_GLIBCXX_DEBUG
CPPFLAGS = -std=c++11 -O2 -march=native -mtune=native -mfpmath=sse

test.exe : test.o timer.o
	g++ -o test.exe $(CPPFLAGS) test.o timer.o
	.\test

test.o : test.cpp timer.h timer.cpp

timer.o : timer.cpp timer.h

clean :
	-rm test.exe test.o timer.o
