#include <iostream>

using namespace std;

extern "C" void CalculateSum(int a, int b, int c, int* s1, int* s2, int* s3);

int main()
{
    int a = 2, b = 3, c = 4;
    int s1 = 0, s2 = 0, s3 = 0;
    CalculateSum(a, b, c, &s1, &s2, &s3);
    cout << "Input:" << endl << "a = " << a << endl << "b = " << b << endl << "c = " << c << endl << "Output:" << endl << "s^1 = " << s1 << endl << "s^2 = " << s2 << endl << "s^3 = " << s3 << endl;
    return 0;
}