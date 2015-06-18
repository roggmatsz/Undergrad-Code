//Rogger Matamoros
#include <iostream>
using namespace std;

int main() {
	int num, width = 0;
	cout << "Enter a number: ";
	cin >> num;
	if (num < 16) {
		for (int i = 1; i < (num + 1); i++) {
			for (int j = 1; j < (num + 1); j++) {
				cout << "X";
			}
		cout << endl;
		}
	}
	else {
		cout << "Number Must be less than or equal to 15. Fail.\n";
	}
	return 0;
}