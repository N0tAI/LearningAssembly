#include <iostream>

using namespace std;

extern "C" int MemoryAddressing(int i, int* v1, int* v2, int* v3, int* v4);
extern "C" int NumFibVals;

int main()
{
	int v1 = 0, v2 = 0, v3 = 0, v4 = 0, rv = 0;
	for (int i = 0; i <= NumFibVals; i++)
	{
		cout << "New Iteration" << endl;
		rv = MemoryAddressing(i, &v1, &v2, &v3, &v4);
		cout << "RV: " << rv << endl << "V1: " << v1 << endl << "V2: " << v2 << endl << "V3: " << v3 << endl << "V4: " << v4 << endl;
	}
	return 0;
}