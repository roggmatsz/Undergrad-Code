#include <iostream>
using namespace std;

int main() {
  float item1 = 12.95;
  float item2 = 24.95;
  float item3 = 6.95;
  float item4 = 14.95;
  float item5 = 3.95;
  float subtotal = item1 + item2 + item3 + item4 + item5;
  
  cout << "Price of item1: " << item1 << endl;
  cout << "Price of item2: " << item2 << endl;
  cout << "Price of item3: " << item3 << endl;
  cout << "Price of item4: " << item4 << endl;
  cout << "Price of item5: " << item5 << endl;
  cout << endl;
  cout << "Subtotal: " << subtotal << endl;
  cout << "Sales Tax: " << (subtotal * 0.06) << endl;
  cout << "Total: " << (subtotal * 1.06) << endl;
  return 0;
}
