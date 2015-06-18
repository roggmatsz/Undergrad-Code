//Rogger Matamoros
#include <iostream>
using namespace std;
int main() {
	char vowels[10] = {65, 69, 73, 79, 85, 97, 101, 105, 111, 117};
	char input;
	cout << "Vowel Detector\n\n";
	cout << "Enter characters. Enter ! to exit.\n";
	cin >> input;
	while (input != '!') {
		for (int i = 0; i < 11; i++) {
			if (input == vowels[i]) {
				cout << input << " is indeed a vowel.\n";
				break;
			}
			if (i == 10) {
				cout << input << " is a consonant. Fail.\n";
			}
		}
		cin >> input;
	}
}