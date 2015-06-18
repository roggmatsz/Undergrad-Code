#ifndef coneClass_h
#define coneClass_h

class cone {
private:
	double cRadius;
	double cHeight;
public:
	void setRadius(double);
	void setHeight(double);
	double getRadius(void) const;
	double getHeight() const;
	cone(double, double);
	~cone();
};
#endif;