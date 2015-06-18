#include "coneClass.h"
#include <iostream>
using namespace std;

void cone::setRadius(double radius) {cRadius = radius;}

void cone::setHeight(double height) {cHeight = height;}

double cone::getRadius() const {return cRadius;}

double cone::getHeight() const {return cHeight;}

cone::cone(double r, double h) 
{
    cRadius = r;
    cHeight = h;
}
cone::~cone() {cRadius = 0.0; cHeight = 0.0;}