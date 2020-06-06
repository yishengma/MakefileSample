#a.out:a.c
#	gcc a.c -o a.out

src = $(wildcard *.cpp)
obj = $(patsubst %cpp,%o,$(src))
#默认情况下只会执行第一个，但是会先找依赖
hello.out:$(obj)
	gcc $(obj) -o hello.out

div.o:div.cpp
	gcc -c div.cpp -o div.o

sub.o:sub.cpp
	gcc -c sub.cpp -o sub.o

add.o:add.cpp
	gcc -c add.cpp -o add.o

hello.o:hello.cpp
	gcc -c hello.cpp -o hello.o





