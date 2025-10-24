import 'dart:math';

void main() {
  print("--------------------EX 1----------------------");

  // EX 1
  Book book1 = Book("The Hobbit", "J.R.R Tolkien");
  book1.displayInfo();
  print("--------------------EX 2----------------------");

  //EX 2
  BankAccount account1 = BankAccount(30000);
  account1.deposit(2000);
  account1.withdraw(20000);
  account1.withdraw(20000);

  print("--------------------EX 3----------------------");

  Circle circle1 = Circle(20);
  print(circle1.area());
  Rectangle rectangle1 = Rectangle(34, 12);
  print(rectangle1.area());

  print("--------------------EX 4 ----------------------");

  List<Animal> animals = [Dog(), Bird()];

  //iterating through the list of Animal Objects

  for (var animal in animals) {
    animal.makeSound(); //polymorphism.
  }
  Bird().fly();

  print("--------------------EX 4 ----------------------");
}

// EX 1---------------------------------------------------
class Book {
  String title;
  String author;
  Book(this.title, this.author);

  void displayInfo() {
    print("Title: $title, by : $author");
  }
}

// EX 2 ---------------------------------------------------
class BankAccount {
  double _balance;
  BankAccount(this._balance);

  double get balance => _balance;

  void withdraw(double amount) {
    if (balance >= amount) {
      _balance -= amount;
      print("Withdrawn $amount€");
      print("Current balance: $balance€");
    } else {
      print("Insufficient funds to withdraw : $amount€");
    }
  }

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited: $amount€");
    } else {
      print("deposit more than 0€ please");
    }
  }
}

// EX 3 ---------------------------------------------------
class Shape {
  area() {
    return "Calculating the area of the shape";
  }
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  area() {
    double area = pi * radius * 2;
    return area;
  }
}

class Rectangle extends Shape {
  double length;
  double height;
  Rectangle(this.length, this.height);

  @override
  area() {
    double area = length * height;
    return area;
  }
}

// 4 --------------------------------------------------------
abstract class Animal {
  makeSound();

  breathe() {
    print("The animal is breathing...");
  }
}

mixin Flyable {
  fly() {
    print("FLY HIGH!");
  }
}

class Dog extends Animal {
  @override
  makeSound() {
    print("WOOF WOOF ");
  }
}

class Bird extends Animal implements Flyable {
  @override
  makeSound() {
    print("Chirp Chirp!!");
  }

  @override
  breathe() {
    print("The bird is breathing...");
  }

  @override
  fly() {
    print("Flying away!!");
  }
}
