#include <iostream>
using namespace std;
extern "C" int IntegerMulDiv(int a, int b, int* prod, int* quo, int* rem);

int main()
{
	int a = -32, b = 4;
	int prod = 0, quo = 0, rem = 0;
	int rv = 0;
	rv = IntegerMulDiv(a, b, &prod, &quo, &rem);
	cout << "a = " << a << endl << "b = " << b << endl << "prod = " << prod << endl << "quo = " << quo << endl << "rem = " << rem << endl << "return = " << rv << endl;
	return 0;
}