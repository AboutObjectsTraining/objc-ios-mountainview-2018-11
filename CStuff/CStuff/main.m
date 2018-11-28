#import <stdio.h>

void MessWithArrays1() {
    char a[] = "abc";
    printf("%s\n", a);
}

void MessWithArrays2() {
    char a[] = { 97, 98, 99, 0 };
    for (int i = 0; a[i]; i++) {
        printf("%c\n", a[i]);
    }
    
    char *p = a;
    
    *(p + 1) = 'A';
    printf("%s\n", p);
    printf("%c\n", p[2]);
    printf("%c\n", *(a + 2));
    
    p++;
//    a++; // Illegal!
    printf("%s\n", p);


    
//    char b[] = a; // Illegal!
}

void MessWithArrays3() {
    int a[] = { 97, 98, 99, 0 };
    int b[] = { 'H', 'e', 'y' };
    int *p = b;
    
    for (; *p; p++) {
        printf("address is %p, value is %c\n", p, *p);
    }
}


int main(int argc, const char *argv[])
{
//    MessWithArrays1();
    MessWithArrays2();
//    MessWithArrays3();
}
