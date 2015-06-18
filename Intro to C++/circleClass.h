//Rogger Matamoros

#ifndef circleClass_h
#define circleClass_h

class Circle {
private: 
    double radius;
    static const double PI = 3.14159;
public:
    Circle();
    ~Circle();
    void setRadius(double);
    double getRadius(void);
    double getArea(void);
    double getDiameter(void);
    double getCircumference(void);
};

#endif
