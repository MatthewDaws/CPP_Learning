g++ -std=c++11 -Ofast minimal.cpp -o minimal1.exe
g++ -std=c++11 -Ofast -S minimal.cpp -o minimal1.asm
g++ -std=c++11 -O3 minimal.cpp -o minimal2.exe
g++ -std=c++11 -O3 -S minimal.cpp -o minimal2.asm
g++ -std=c++11 -mtune=native -march=native -Ofast minimal.cpp -o minimal3.exe
g++ -std=c++11 -mtune=native -march=native -Ofast -S minimal.cpp -o minimal3.asm
g++ -std=c++11 -mtune=native -march=native -O3 minimal.cpp -o minimal4.exe
g++ -std=c++11 -mtune=native -march=native -O3 -S minimal.cpp -o minimal4.asm
g++ -std=c++11 -mtune=native -O2 minimal.cpp -o minimal5.exe
g++ -std=c++11 -mtune=native -O2 -S minimal.cpp -o minimal5.asm

minimal1
minimal2
minimal3
minimal4
minimal5
