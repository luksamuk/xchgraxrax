#include <stdio.h>

extern void myfunction(long long int*);

int
main(void)
{
    long long int a = 5;
    long long int b = 6;
    long long int c = 900;

    printf("a = %lld\nb = %lld\nc = %lld\n", a, b, c);
    
    myfunction(&a);
    myfunction(&b);
    myfunction(&c);

    printf("a = %lld\nb = %lld\nc = %lld\n", a, b, c);
    
    return 0;
}
