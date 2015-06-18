//Rogger Matamoros
#include <iostream>
#include "circleClass.h"
using namespace std;
int main() {
    double rad = 0.0;
    cout << "Demo of Circle Class\n\n";
    cout << "Enter a radius size: ";
    cin >> rad;
    Circle squircle;
    squircle.setRadius(rad);
    cout << "The radius is: " << squircle.getRadius() << endl;
    cout << "The diameter is: " << squircle.getDiameter() << endl;
    cout << "The Circumference is: " << squircle.getCircumference() << endl;
    cout << "The Area is: " << squircle.getArea() << endl;
    
    return 0;
}