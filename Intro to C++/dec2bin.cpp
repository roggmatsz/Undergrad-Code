//Rogger Matamoros
#include <iostream>
#include <vector>
using namespace std;
int main() {
	vector<int> dVector;
	int number, i = 0;
	cout << "Decimal to Binary Program - Enter any Integer: ";
	cin >> number;
	cout << endl;
	cout << "\nDecimal: " << number << " Binary: ";
	while(number != 0) {
		dVector.push_back(number % 2);
		number /= 2;
		i += 1;
	}
	for (int j = i - 1; j > 0; j--) {
		cout << dVector.at(j);
	}	
	cout << endl;
}