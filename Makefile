program: wypisz.o main.o	
	g++ wypisz.o main.o -o program

wypisz.o: wypisz.cpp hello.h
	g++ -Wall wypisz.cpp -c -o wypisz.o

main.o: main.cpp hello.h
	g++ -Wall main.cpp -c -o main.o

clean:
	rm -f program main.o wypisz.o

run:
	./program