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
