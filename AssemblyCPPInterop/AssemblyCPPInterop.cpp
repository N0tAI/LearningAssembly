#include <iostream>
extern "C" int AdderASM(int a, int b, int c);
int AdderCpp(int a, int b, int c)
{
    return a + b + c;
}
int main()
{
    auto a = 17;
    auto b = 11;
    auto c = 14;
    printf("a:  %d\n", a);
    printf("b:  %d\n", b);
    printf("c:  %d\n", c);
    int sum = AdderCpp(a, b, c);
    printf("Sum from cpp: %d\n", sum);
    sum = AdderASM(a, b, c);
    printf("Sum from asm: %d", sum);
    return 0;
}