CC = g++
//CPPFLAGS = -std=c++11 -O3 -march=native -mtune=native -mfpmath=sse
//CPPFLAGS = -std=c++11 -O3 -march=native -mtune=native -mfpmath=sse -flto
//CPPFLAGS = -std=c++11 -D_GLIBCXX_DEBUG
CPPFLAGS = -std=c++14 -Wall

targets: test1.exe test2.exe

test1.exe : test1.o bf_machine.o bf_parser1.o
	g++ -o test1.exe $(CPPFLAGS) $^

test2.exe : test2.o bf_machine.o bf_parser2.o
	g++ -o test2.exe $(CPPFLAGS) $^

test1.o : test1.cpp bf.h bf_parser1.h

test2.o : test2.cpp bf.h bf_parser2.h

bf_parser1.o : bf_parser1.cpp bf.h bf_parser1.h
   
bf_parser2.o : bf_parser2.cpp bf.h bf_parser2.h

bf_machine.o : bf_machine.cpp bf.h
   
clean :
	-rm bf_machine.o test1.o test1.exe bf_parser1.o bf_parser2.o test2.exe test2.o
