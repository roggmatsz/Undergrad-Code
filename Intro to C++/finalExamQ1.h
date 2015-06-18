#include <iostream>
using namespace std;
class cone {
public:
	double cRadius;
	double height;
	double volume() {return (radius * height) / 3;}
};
int main() {
	double radius = 0;
	double height = 0;
	cone scruffy;
	cout << "Cone Volume Program\n\n";
	cout << "Enter base radius:";
	cin >> radius;
	scruffy.cRadius = radius;
	cout << "\nEnter height:";
	cin >> height;
	scruffy.height = height;
	cout << "Entered radius:" << scruffy.cRadius << endl;
	cout << "Entered height:" << scruffy.height << endl;
	cout << "Volume is: " << scruffy.volume() << scruffy.volume() << endl;
	return 0;
	}
	