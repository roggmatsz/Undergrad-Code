//Rogger Matamoros
#include <iostream>
#include "circleClass.h"
using namespace std;

Circle::Circle() {
    radius = 0.0;
}
Circle::~Circle() {
}
void Circle::setRadius(double newRadius) {
    radius = newRadius;
}
double Circle::getRadius() {
    return radius;
}
double Circle::getArea() {
    return (PI * radius * radius);
}
double Circle::getDiameter() {
    return (2 * radius);
}
double Circle::getCircumference() {
    return (2 * PI * radius);
}