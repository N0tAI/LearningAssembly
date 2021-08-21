#include <iostream>

using namespace std;

extern "C" int CalcArraySum(int* x, int n);

int CalcArraySumCPP(int* x, int n)
{
    int sum = 0;
    for (int i = 0; i < n; i++)
    {
        sum += *x++;
    }
    return sum;
}

int main()
{
    int x[] = { 1, 2, 3, 4, 5 }; // 15
    int n = sizeof(x) / sizeof(int);
    int asmSum = 0, cppSum = 0;
    asmSum = CalcArraySum(x, n);
    cppSum = CalcArraySumCPP(x, n);
    cout << "Asm Sum: " << asmSum << endl << "C++ Sum: " << cppSum << endl;
    return 0;
}