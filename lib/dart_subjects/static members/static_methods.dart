/*
? Static Methods
* Belong to the class: 
They are called directly on the class.

* Cannot access instance members:
 A static method cannot directly access non-static instance variables or
  call non-static instance methods because it's not tied to a specific object. */

class Utility {
  static const double pi = 3.14159;

  // Static method: useful for class-level operations
  static double calculateCircleArea(double radius) {
    return pi * radius * radius;
  }

  //non static method
  getArea(double radius) {
    double area;
    return area = pi * radius * radius;
  }
}

void main() {
  var area = Utility.calculateCircleArea(5);
  print('Area: $area');
  Utility util1 = Utility();
  print(util1.getArea(5));
}
