//Rogger Matamoros
#include <iostream>
using namespace std;
double fallingDistance(int time) {
	const float g = 9.8;
	return (0.5 * g * (time * time));
}
int main() {
	int time = 0;
	char selection;
	cout << "Gravity Program\n\n";
	cout << "Choose mode of operation: (m)anual or (a)utomatic: ";
	cin >> selection;
	switch(selection) {
		case 'm' | 'M':
			cout << "\nEnter values for time. Enter 999 to exit.";
			cout << "\nTime (in seconds): ";
			cin >> time;
			while(time != 999) {
				cout << "\nThe distance traveled was: ";
				cout << fallingDistance(time);
				cout << "\nTime (in seconds): ";
				cin >> time;
			}
			break;
		case 'a' | 'A':
			cout << "\nVoila the distance traveled from 1 to 10 seconds:";
			for (int i = 1; i < 11; i++) {
				cout << "\nTime: " << i;
				cout << " seconds. Distance: " << fallingDistance(i);
				cout << " meters.";
			}
			cout << endl;
			break;
		default:
			cout << "Must Enter either an M/m or an N/n. Fail.\n";
			break;
	}
	return 0;
}

