#include <iostream>

using namespace std;

extern "C" char GlChar = 10;
extern "C" short GlShort = 20;
extern "C" int GlInt = 30;
extern "C" long long GlLongLong = 344566;
extern "C" void IntegerAddition(char a, short b, int c, long long d);

int main()
{
	IntegerAddition(3, 5, -37, 11);
	cout << "Char: " << GlChar << endl;
	cout << "Short: " << GlShort << endl;
	cout << "Int: " << GlInt << endl;
	cout << "Longlong: " << GlLongLong << endl;
	return 0;
}