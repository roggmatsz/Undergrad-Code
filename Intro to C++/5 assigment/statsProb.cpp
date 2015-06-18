//Rogger Matamoros

//Note: I wanted to be faaancy/original, so I used C++'s random number
//generator function as the "input" to the program.

#include <iostream>
#include <math.h>
using namespace std;

int main() {
	int logicStorage [121];
	int randomNumber, biggestNumber, smallestNumber, counter, sum = 0;
	float mean, stdDev = 0.0;
	
	//random num generator fu starts here
	srand(time(NULL));
	
	cout << "Statistical Analysis Program - - - - - - - \n\n";
	cout << "Generating a random set of numbers:\n";
	for (int i = 0; i < 120; i++) {
		
		//...this generates the actual numbers, where 1000 is the range
		//and the ' - 199' tells it to include random negative numbers
		//up to -200 to serve as the sentinel, as per the assignment.
		randomNumber = rand() % 1000 - 199;
		
		counter = i;
		if (randomNumber < 0) {
			cout << "Sentinel: " << randomNumber;
			break;
		}
		if (biggestNumber < randomNumber) {
			biggestNumber = randomNumber;
		}
		logicStorage[i] = randomNumber;
		cout << logicStorage[i] << "\n";
	}
	smallestNumber = logicStorage[0];
	for (int i = 0; i < counter; i++) {
		sum += logicStorage[i];
		if (logicStorage[i] < smallestNumber) {
			smallestNumber = logicStorage[i];
		}
	}
	mean = (float) sum / counter;
	for (int i = 0; i < counter; i++) {
		stdDev += (float) pow(logicStorage[i] - mean, 2);
	}
	stdDev = (float) sqrt(stdDev / counter);

	cout << "\n\nThe biggest Number is: " << biggestNumber;
	cout << "\nThe Smallest Number is: " << smallestNumber;
	cout << "\nThe Mean of the set is: " << mean;
	cout << "\nThe Standard Deviation of the set is: " << stdDev << endl;
	cout << "\n\nHistogram:\n";
	for (int i = 0; i < 81; i++) {
		if (i != 0) {
			cout << (i * 10 - 10) << " to " << (i * 10 - 1) << ": ";
			for (int j = 0; j < counter; j++) {
				if (logicStorage[j] > (i * 10 - 10) 
					 && logicStorage[j] < (i * 10 - 1)) {
					cout << '*';
				}
			}
			cout << endl;
		}
	}
}