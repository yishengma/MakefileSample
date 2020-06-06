#a.out:a.c
#	gcc a.c -o a.out

src = $(wildcard *.cpp)
obj = $(patsubst %cpp,%o,$(src))
#默认情况下只会执行第一个，但是会先找依赖
hello.out:$(obj)
	gcc $^ -o $@
#模式规则
%o:%cpp
	gcc -c $< -o %@

# 
# div.o:div.cpp
# 	gcc -c $< -o $@

# sub.o:sub.cpp
# 	gcc -c $<  -o $@

# add.o:add.cpp
# 	gcc -c $<  -o $@

# hello.o:hello.cpp
# 	gcc -c $<  -o $@
# 






