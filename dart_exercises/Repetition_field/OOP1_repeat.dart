import 'dart:async';
import 'dart:ffi';
import 'dart:io';
import 'dart:math';

import '../../lib/dart_subjects/basic_dart/variables.dart';
import 'asynchronous_repeat.dart';

class Mammal {
  String furColor;

  Mammal(this.furColor);
  giveBirth() {
    print("The mammal is under labor.");
  }
}

class Dog extends Mammal {
  Dog(String furColor)
    : super(furColor); //callen the constructor of parent class

  bark() {
    //new method
  }
}

class Cat extends Mammal {
  //inhereting the property of Mammal class
  Cat(String furColor) : super(furColor);

  @override //overriding the parent's method
  giveBirth() {
    print("Mother cat is giving birth");
  }
}

//************3 ABSTRACT CLASS FOR GEOMETRIC SHAPES */ *********************
abstract class Shape {
  String name;
  Shape(this.name);
  getArea(); //abstract methods
  getPerimeter();
}

class Circle extends Shape {
  double radius;
  Circle(String name, this.radius) : super(name);

  @override
  getArea() {
    double area = radius * radius; // area =r*r
    return area;
  }

  @override
  getPerimeter() {
    double perimeter = 2 * pi * radius; // C = 2*pi*r
    return perimeter;
  }
}

class Rectangle extends Shape {
  double width;
  double height;
  Rectangle(String name, this.width, this.height) : super(name);

  @override
  getArea() {
    double area = width * height;
    return area;
  }

  @override
  getPerimeter() {
    double perimeter =
        2 * (width + height); // P = 2(w+h) perimeter for rectangle
    return perimeter;
  }
}

//*****************  Interface with implements (Logger) */


void main() {
  String border = "-----------------------------------------------";
  //************2. INHERITANCE: ANIMAL KINGDOM */
  Mammal mammal1 = Mammal("Brown");
  mammal1.giveBirth();
  Dog dog1 = Dog("Gold");
  print(dog1.furColor);
  Cat cat1 = Cat("Black");
  cat1.giveBirth();

  print(border);
  //***********3. ABSTRACT CLASS FOR GEOMETRIC SHAPES */

  Circle circle1 = Circle("RED", 3.5);
  Rectangle rectangle1 = Rectangle("BLUE", 14.6, 5.5);
  print(
    "The area of the ${circle1.name} circle of ${circle1.radius} radius is: ${circle1.getArea()} ",
  );
  print(
    "The perimeter of the ${circle1.name} circle of ${circle1.radius} radius is:  ${circle1.getPerimeter()} ",
  );

  print(
    "The area of the ${rectangle1.name} rectangle of ${rectangle1.width} & height of ${rectangle1.height} is : ${rectangle1.getArea()} ",
  );
  print(
    "The perimeter of the ${rectangle1.name} rectangle of ${rectangle1.width} & height of ${rectangle1.height} is : ${rectangle1.getPerimeter()} cm",
  );

  print(border);

  //***************4.  Interface with implements (Logger) */



}
