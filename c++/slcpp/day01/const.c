#include <stdio.h>

// void func(char *str) 
// {
//     char * p =  "hello"  ;
//     str = p;
//     // printf("111 %s \n", str);
// }

// void funi(const int *str) 
// {
//     int a = 15;
//     // int *p = &a ;
//     *str = 16;
//     printf("@@@ %d p=%p \n", *str, str);
//     str = &a; 
//     //*str = 16;
//     printf("@@@ %d  \n", *str);
//     printf("@@@ %d p=%p \n", *str, str);
// }
int main() {
    int b = 44;
    int *p1;
    p1 = &b;
    printf("%d  \n", *p1);

    char c[] = "nihao";
    char *p2;
    p2 = c;
    printf("%s \n", p2);

    // char d[] = "test";
    // char *p3;
    // p3 = d;
    // printf("%s \n", p3); 

    //char d[] = "test";

    char *p4 = "qazwsx";
    printf("%s \n", p4);
    // int a = 100;
    // int *p = &a;
    // //int *p = 10;
    // funi(p);
    // printf("%d  \n", *p);
    // printf("%d  p=%p\n", *p, p);
    // char *str1 = "c.biancheng.net";
    // const char *str2 = str1;

    // func(str1);
    // printf("%s \n", str1);
    return 0;
}