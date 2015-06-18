//Rogger Matamoros
#include <iostream>
using namespace std;
double kineticEnergy(int mass, int velocity) {
	return (0.5 * mass * (velocity * velocity));
}
int main() {
	int mass, velocity = 0;	
	cout << "Kinetic Energy Program\n\n";
	cout << "Enter values for mass and velocity.\n";
	cout << "Enter 999 for either mass or velocity to exit.\n";
	cout << "\nMass: ";
	cin >> mass;
	cout << "Velocity: ";
	cin >> velocity;
	while(mass != 999 || velocity != 999) {
		cout << "\nKinetic energy: " << kineticEnergy(mass, velocity);
		cout << "\nMass: ";
		cin >> mass;
		cout << "Velocity: ";
		cin >> velocity;
	}
	return 0;
}