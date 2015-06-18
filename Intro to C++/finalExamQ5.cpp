//#include "stdafx.h" Uncomment to compile in Windows Systems
#include "coneClass.h"
#include <iostream>
using namespace std;

double inline volume(double r, double h) {
	return ((3.14 * r * r) * h) / 3;
}
int main() {
	double radius = 0;
	double height = 0;
	cout << "Cone Volume Program\n\n";
	cout << "Enter base radius:";
	cin >> radius;
	cout << "\nEnter height:";
	cin >> height;
	cone scruffy(radius, height);
	cout << "Entered radius:" << scruffy.getRadius() << endl;
	cout << "Entered height:" << scruffy.getHeight() << endl;
	cout << "Volume is: " << volume(scruffy.getRadius(), scruffy.getHeight()) << endl;
	return 0;
}