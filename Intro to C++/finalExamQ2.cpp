#include "stdafx.h"
#include <iostream>
using namespace std;
class cone {
private:
	double cRadius;
	double cHeight;
public:
	double volume() {return (cRadius * cHeight) / 3;}
	void setRadius(double radius) {cRadius = radius;}
	void setHeight(double height) {cHeight = height;}
	double getRadius() {return cRadius;}
	double getHeight() {return cHeight;}
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
	scruffy.setRadius(radius);
	cout << "\nEnter height:";
	cin >> height;
	scruffy.setHeight(height);
	cout << "Entered radius:" << scruffy.getRadius() << endl;
	cout << "Entered height:" << scruffy.getRadius() << endl;
	cout << "Volume is: " << volume(scruffy.getRadius(), scruffy.getRadius()) << endl;
	return 0;
}
	