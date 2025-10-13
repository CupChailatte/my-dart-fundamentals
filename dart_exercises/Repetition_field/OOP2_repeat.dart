import 'dart:io';
import 'dart:math';

//************* 1. The Simple Account Class (Basic OOP)

class BankAccount {
  //property field
  String accountHolder;
  double _balance;
  BankAccount(this.accountHolder, this._balance);

  double get currentBalance {
    //getter, to access private properties
    return _balance;
  }

  deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print("Deposited $amount");
    }
  }

  withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print("Withdraw successful");
    } else {
      print("Insufficient funds");
    }
  }
}

//************2. Inheritance: animal Kingdom */
class Mammal {
  String furColor;
  Mammal(this.furColor);

  giveBirth() {}
}

class Dog extends Mammal {
  Dog(String furColor) : super(furColor);

  bark() {
    print("The $furColor dog barks!");
  }
}

class Cat extends Mammal {
  Cat(String furColor) : super(furColor);

  @override
  giveBirth() {
    print("THe $furColor cat is giving birth");
    return super.giveBirth();
  }
}

//***********3. ABstract */
abstract class Shape {
  String name;
  Shape(this.name);

  getArea();
  getParameter();
}

class Circle extends Shape {
  double radius;
  Circle(String name, this.radius) : super(name);

  @override
  double getArea() {
    double area = pi * radius * radius;
    return area;
  }

  @override
  double getParameter() {
    double parameter = 2 * pi * radius;
    return parameter;
  }
}

class Rectangle extends Shape {
  double width;
  double height;
  Rectangle(String name, this.height, this.width) : super(name);

  @override
  getArea() {
    double area = width * height;
    return area;
  }

  @override
  getParameter() {
    double parameter = 2 * (width + height);
    return parameter;
  }
}

//*************4. Interface with implements */

abstract class Logger {
  log(String message);
}

class ConsoleLogger implements Logger {
  @override
  log(String message) {
    print("'$message' printed to console");
  }
}

class FileLogger implements Logger {
  @override
  log(String message) {
    print("Writing to file: [$message]");
  }
}

//*************5. Factory Constructor and Static Members */
class Database {
  static final Database? _instance = Database._internal();

  Database._internal();

  factory Database() {
    return _instance!; //
  }
  void log(String message) {
    print("Log: $message");
  }
}

void main() {
  String border = "----------------------------------------------------";
  print("1. Simple account");
  //****1. Simple account */
  BankAccount user1 = BankAccount("James Smith", 1000);
  user1.deposit(100);
  user1.deposit(203);
  user1.withdraw(1000);
  user1.withdraw(400);
  print("Current balance ${user1.currentBalance}€");

  //********************************************** */
  print(border);
  print("2. Animal Kingdom");
  Dog dawg1 = Dog("Golden");
  dawg1.bark();
  Cat pussy1 = Cat("Black");
  pussy1.giveBirth();

  //********************************************** */
  print(border);
  print("3. Abstract Class ");
  Circle circle1 = Circle("Red", 4.6);
  Circle circle2 = Circle("Green", 15.5);
  Rectangle rect1 = Rectangle("Azul", 10, 5);
  print("Area of ${circle1.name} circle: ${circle1.getArea()}");
  print("Area of ${circle2.name} circle ${circle2.getArea()}");
  print("Perimeter of ${circle1.name} circle ${circle1.getParameter()}");
  print("Perimeter of ${circle2.name} circle ${circle2.getParameter()}");
  print("Area of ${rect1.name} rectangle ${rect1.getArea()}");
  print("Perimeter of ${rect1.name} rectangle ${rect1.getParameter()}");

  //********************************************** */
  print(border);
  print("4. Interface with implements");
  List<Logger> listOfLogger = [
    ConsoleLogger(),
    ConsoleLogger(),
    FileLogger(),
    FileLogger(),
  ];
  listOfLogger.forEach(
    (item) => item.log("Hello world"),
  ); //iterate through the list of objects and calling the method on each object

  print(border);
  print("5. Factory Constructor and Static Members");
  var database1 = Database(); //Calling a constructor like normally 
  var database2 = Database();
  var database3 = Database(); 
  print(database1.runtimeType); 
  print(database2.runtimeType); 
  print(database3.runtimeType); 
  
  database1.log("Hello from database1");
  database2.log("Hello from database2");
  database3.log("Hello from database3");

  print("Is database1 identical to database2? ${identical(database1, database2)}"); //identical() checks if two objects are identical. true/false 
  print("Is database2 identical to database3? ${identical(database2, database3)}"); 
}
