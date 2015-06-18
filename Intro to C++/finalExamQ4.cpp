#include "stdafx.h"
#include <iostream>
using namespace std;
class cone {
private:
	double cRadius;
	double cHeight;
public:
	//double volume() {return (cRadius * cHeight) / 3;}
	void setRadius(double radius) {cRadius = radius;}
	void setHeight(double height) {cHeight = height;}
	double getRadius() const {return cRadius;}
	double getHeight() const {return cHeight;}
	cone(double r, double h) {
		cRadius = r;
		cHeight = h;
	}
	~cone() {cRadius = 0.0; cHeight = 0.0;}
};

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
	cout << "Entered height:" << scruffy.getRadius() << endl;
	cout << "Volume is: " << volume(scruffy.getRadius(), scruffy.getHeight()) << endl;
	return 0;
}
	