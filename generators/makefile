CC = g++
//CPPFLAGS = -std=c++11 -O3 -march=native -mtune=native -mfpmath=sse
//CPPFLAGS = -std=c++11 -O3 -march=native -mtune=native -mfpmath=sse -flto
//CPPFLAGS = -std=c++11 -D_GLIBCXX_DEBUG
CPPFLAGS = -std=c++11 -O2 -march=native -mtune=native -mfpmath=sse

generator.exe : generator.o
	g++ -o generator.exe $(CPPFLAGS) generator.o

generator.o : generator.cpp generator.hpp

clean :
	-rm generator.exe generator.o
