/*Convright:
 *Filename:
 *File tag:
 *Function:
 *Autor:
 *Email:
 *Date:
 *Version:
 */
 #include <iostream>
using namespace std;



void swapt(int* a, int* b);
void swapt(int& a, int& b);
int main()
{
    int a = 10;
    int b = 23;
    cout << "Main out: a = " << a << ", b = "<< b << endl;
    //swapt(&a, &b);
    swapt(&a, &b);
    cout << "swap out: a = " << a << ", b = "<< b << endl;
    return 0;
}
void swapt(int* a, int* b){
    int i=0;
    i = *a;
    *a = *b;
    *b = i;
}
void swapt(int& a, int& b){
    int i=0;
    i = a;
    a = b;
    b = i;
}
