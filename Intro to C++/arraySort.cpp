//Rogger Matamoros
#include <iostream>
using namespace std;
int main() {
	int storage[10];
	int temp, changes = 0; 
	srand(time(NULL));
	cout << "Array Sorter - Sorts a Random Set of 10 numbers.\n\n";
	cout << "Numbers: ";
	for (int i = 0; i < 10; i++) {
		storage[i] = rand() % 10 + 1;
		cout << storage[i] << "  ";
	}
	cout << "\n\nCommencing Number Sort, least to greatest.\n\n";
	for (int i = 0; i < 10; i++) {
		if (i != 9 && storage[i] > storage[i + 1]) {
			temp = storage[i];
			storage[i] = storage[i + 1];
			storage[i + 1] = temp;
			changes += 1;
			for (int j = 0; j < 10; j++) {
				cout << storage[j] << " ";
			}
			if (storage[0] > storage[1]) {
				temp = storage[0];
				storage[0] = storage[1];
				storage[1] = temp;
			}
			cout << endl;
		}
		else if (i == 9) {
			if (changes == 0) {
				cout << "\n\nResult: ";
				for (int j = 0; j < 10; j++) {
					cout << storage[j] << "  ";
				}
				cout << "\n";
				break;
			}
			else {
				i = 0;
				changes = 0;
			}
		}
	}
}