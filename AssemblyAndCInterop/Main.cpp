#include <iostream>
#include <stdlib.h>
using namespace std;
// Array Reverser project
extern "C" void Reverser(int* y, const int* x, int n);
int main()
{
	const int n = 10;
	int x[n], y[n];
	for (int i = 0; i < n; i++)
		x[i] = i;
	Reverser(y, x, n);
	cout << "<---------Array Reverser--------->" << endl;
	for (int i = 0; i < n; i++)
	{
		cout << "Index " << i << ":	Array y: " << y[i] << "	: Array x: " << x[i] << endl;
	}
	return 0;
}