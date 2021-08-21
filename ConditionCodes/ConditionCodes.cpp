#include <iostream>

using namespace std;

// Conditional jumps
extern "C" int SignedMinA(int a, int b, int c);
extern "C" int SignedMaxA(int a, int b, int c);

// Conditional moves
extern "C" int SignedMinB(int a, int b, int c);
extern "C" int SignedMaxB(int a, int b, int c);

int main()
{
	int a = 0, b = 0, c = 0;
	int maxA, maxB, minA, minB;

	a = 345;
	b = -783;
	c = 34;
	minA = SignedMinA(a, b, c);
	maxA = SignedMaxA(a, b, c);
	minB = SignedMinB(a, b, c);
	maxB = SignedMaxB(a, b, c);
	cout << "A: " << a << endl << "B: " << b << endl << "C: " << c << endl << "Results:" << endl;
	cout << "Min A: " << minA << endl << "Max A: " << maxA << endl << "Min B: " << minB << endl << "Max B: " << maxB << endl;
	return 0;
}