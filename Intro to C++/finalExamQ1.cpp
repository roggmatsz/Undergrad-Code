#include "stdafx.h"
#include <iostream>
using namespace std;
class cone {
public:
	double cRadius;
	double cHeight;
	double volume() {return (cRadius * cHeight) / 3;}
};
double volume(double r, double h) {
	return (r * h) / 3;
}
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
	scruffy.cHeight = height;
	cout << "Entered radius:" << scruffy.cRadius << endl;
	cout << "Entered height:" << scruffy.cHeight << endl;
	cout << "Volume is: " << volume(scruffy.cRadius, scruffy.cHeight) << endl;
	return 0;
}
	