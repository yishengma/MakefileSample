####
Makefile:https://seisman.github.io/how-to-write-makefile/overview.html


#### gcc-hello
编译命令
```
gcc hello.cpp div.cpp sub.cpp add.cpp -o hello 
```

编译时生成 .o 文件耗时，如果修改一个文件，只需要重新生成新的 .o 文件即可
```
先生成所有的 .o 文件
gcc -c add.cpp -o add.o
gcc -c div.cpp -o div.o
gcc -c sub.cpp -o sub.o
gcc -c hello.cpp -o hello.o

```

修改一个文件 add，重新编译 .o 在生成可执行文件
```
gcc -c add.cpp -o add.o
gcc hello.o div.o sub.o add.o -o hello  (没有 -c)

```
### Makefile 编写

#### 一个规则
生成的目标：需要依赖的条件
（一个tab空格）命令

注：
1.如果想要生成目标文件，则会检查规则中的依赖是否存在，如果不存在则寻找是否有完整的规则来生成依赖条件

2.会检查规则中的目标是否需要更新，必须先检查它所有的依赖项，依赖中的任意一个被更改，则目标必须更新（原理就是检查更新的文件的时间）
```
a.out:a.c
	gcc a.c -o a.out
```
#### 两个函数
##### 1.wildcard
src = $(wildcard *.c)
找到当前目录下所有后缀为 .c 的文件，然后赋值给 src

##### 2.patsubst
obj = $(patsubst %cpp,%o,$(src))
就是把 src 变量里的后缀为cpp 的文件替换成.o 文件
#### 三个自动变量

$@:表示规则中的目标

$^:表示规则中的所有的依赖条件，组成一个列表，以空格隔开，如果这个列表有重复项则消除重复项

$<:表示规则中的第一个依赖条件，如果运行在模式套用中，相当于依次取出依赖条件套用该模式规则。



### Cmake 
编写 CmakeLists.txt 创建一个 build 文件夹在 build 文件夹内执行 cmake .. 命令

#### 构建生成.so 动态库



