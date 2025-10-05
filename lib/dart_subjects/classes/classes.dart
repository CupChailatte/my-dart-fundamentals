/*
 * Basis of OOP 
 * Classes are containers that holds data, with the functionality to manipulate that data;
 * Classes can encapsulate the state of our programs 
 */

//? How to declare and use classes
class Person {
  //properties fields
  final String name;
  final int age;
  final double height;
  //constructor with named required parameters 
  Person({required this.name, required this.age,required this.height});

  // method
  void getInformation() {
    print("My name is $name, I am $age years old, I'm $height meters tall.");
  }
}

void main() {
  final person1 = Person(name: "Eva",age: 23, height: 56); //instance 1 of Person class
  final person2 = Person(name: "Adam", age: 23, height: 78); //instance 2 of Person class
  person1.getInformation(); //calls the method
  person2.getInformation();
}
