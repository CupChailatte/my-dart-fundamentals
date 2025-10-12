import 'dart:async';
import 'dart:ffi';
import 'dart:math';

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
abstract class Shape{
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
    double perimeter = 2* pi * radius; // C = 2*pi*r 
    return perimeter; 
  }
}

class Rectangle extends Shape{
  double width;
  double height; 
  Rectangle(String name, this.width, this.height) : super(name); 

  @override
  getArea(){
    double area = width * height; 
    return area; 
  }

  @override
  getPerimeter() {
    double perimeter = 2 * (width + height); // P = 2(w+h) perimeter for rectangle 
    return perimeter; 
  }
}


void main() {




  //************2. INHERITANCE: ANIMAL KINGDOM */
  Mammal mammal1 = Mammal("Brown");
  mammal1.giveBirth();
  Dog dog1 = Dog("Gold");
  print(dog1.furColor);
  Cat cat1 = Cat("Black");
  cat1.giveBirth();


  //***********3. ABSTRACT CLASS FOR GEOMETRIC SHAPES */

  Circle circle1 = Circle("RED", 3.5); 
  Rectangle rectangle1 = Rectangle("BLUE", 14.6, 5.5); 
  print(circle1.getArea()); 
  print(circle1.getPerimeter()); 

  print(rectangle1.getArea()); 
  print(rectangle1.getPerimeter()); 
  
}
