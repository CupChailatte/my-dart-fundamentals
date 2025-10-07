/**
 * ? What is an abstract class?
 * * A class which can't be instantiated, but only serves as a template/"contract"
 * * The purpose of this class is to act as a base for other classes to inherit from 
 * * The methods of abstract classes can be defined without a method body. 
 * 
 */

abstract class Animal {
  //abstract class serves as a template which cant be instantiated for code safety.
  //can also serves as a concrete class/ interface class
  final String name;
  const Animal(this.name);

  void
  makeSound(); // abstract method. - does not need method body 
}

class Dog extends Animal {
  const Dog(String name) : super(name);

  //overrides parent's methods. 
  @override
  void makeSound() {
    print("$name : WOOF!");
  }
}
//* Implicit Interfaces 
class Robot implements Animal {
  Robot(this.name);
  @override
  final String name;

  @override
  void makeSound() {
    print("$name: BEEP BOOP!");
  }
}

void main() {
  final Dog rudolf = Dog("Rudolf");
  rudolf.makeSound();
  final Robot robot = Robot("3CPO");
  robot.makeSound();
}
