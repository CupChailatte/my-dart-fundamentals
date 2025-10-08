import 'dart:ffi';

class BankAccount {
  double _balance = 0; //private property (underscore)
  BankAccount(this._balance);

  //getter to access private field
  double get currentBalance {
    return _balance; //private property
  }

  set deposit(double amount) {
    //setter go update the private variable
    if (amount > 0) {
      _balance += amount;
      print("Deposited: $amount updated amount: $_balance");
    } else {
      print("Please deposit more than 0");
    }
  }

  set withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance -= amount; //updates the balance
      print("withdrawn amount: $amount. current balance $_balance");
    } else {
      print("insufficient funds");
    }
  }
}

/***************************************************************************************** */
class Employee {
  //parent property field
  final String name;
  double salary;
  Employee({required this.name, required this.salary}); //required parameter

  //method
  void getDetails() {
    print("Name: $name, salary: $salary £");
  }
}

class Manager extends Employee {
  //new added property
  String department;

  //constructor with initializer list
  Manager({
    required String name,
    required double salary,
    required this.department,
  }) : super(name: name, salary: salary);

  @override
  void getDetails() {
    super.getDetails();
    print("$name works in $department");
  }
}








/***************************************************************************************** */


//abstract class acting as template, contract.
abstract class Drawable{
  String color; 
  Drawable(this.color); 
  double calculateArea(); //abstract method¨

}

class Rectangle extends Drawable{
  double width; 
  double height; 
  Rectangle(String color, this.width, this.height) : super(color); 

  double calculateArea(){
    return width * height; 
  }

}

/***************************************************************************************** */

mixin Loggable{
   void log(message){
    print("[LOG] TIME: $message"); 
  }
}


class Service with Loggable{


}

class AuthMiddleWare with Loggable{

}







/***************************************************************************************** */

void main() {
  final bank1 = BankAccount(1000);
  bank1.deposit = 200;
  bank1.deposit = -100;
  bank1.withdraw = 100;
  bank1.withdraw = -10;

  print(
    "---------------------------------------------------------------------------------------------------------",
  ); //border

  Manager manager1 = Manager(
    name: "Hudson",
    salary: 4500,
    department: "Machinery",
  );

  Manager manager2 = Manager(name: "Cassie", salary: 4500, department: "HR");
  manager2.getDetails();
  manager1.getDetails();
  manager2.getDetails(); 

    print(
    "---------------------------------------------------------------------------------------------------------",
  ); //border

  List<Drawable> drawable = [Rectangle("red", 30, 70)]; 
  for (var item in drawable){
    print("Area ${item.calculateArea()}");
  }

    print(
    "---------------------------------------------------------------------------------------------------------",
  ); 

  Service test1 = Service(); 
  test1.log("14th September "); 
  AuthMiddleWare test2 = AuthMiddleWare(); 
  test2.log("404"); 


}
