#include <stdio.h>

int add(int num1,int num2);
int sub(int num1,int num2);
int div(int num1,int num2);


int main(int argc,char* argcv[]) {
    int a = 20;
    int b = 10;
    printf("%d+%d=%d",a,b,add(a,b));
    printf("%d-%d=%d",a,b,sub(a,b));
    printf("%d/%d=%d",a,b,div(a,b));

}