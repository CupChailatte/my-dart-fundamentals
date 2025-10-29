abstract class Animal {
  String name;
  int age;
  Animal(this.name, this.age);
  void makeSound(); //abstract method

  eat(String food) {
    print("$name is eating $food");
  }
}

class Mammal extends Animal {
  String furColor;
  Mammal(String name, int age, this.furColor) : super(name, age);

  @override
  void makeSound() {
    print("$name makes a sound");
  }
}

class Bird extends Animal {
  double wingSpan;
  Bird(String name, int age, this.wingSpan) : super(name, age);
  @override
  void makeSound() {
    print("$name chirps");
  }

  fly() {
    print("$name is flying with a wingspan of $wingSpan meters");
  }
}

class Lion extends Mammal {
  Lion(String name, int age, String furColor) : super(name, age, furColor);

  @override
  void makeSound() {
    print("$name roars");
  }

  @override
  eat(String food) {
    print("$name the lion is eating $food");
  }
}

class Penguin extends Bird {
  Penguin(String name, int age, double wingSpan) : super(name, age, wingSpan);

  @override
  makeSound() {
    print("$name honks");
  }

  @override
  fly() {
    print("$name the penguin cannot fly, but is a good swimmer");
  }
}

class Zoo {
  List<Animal> _animals = [];

  addAnimal(Animal animal) {
    _animals.add(animal);
  }

  dailyRollCall() {
    for (var animal in _animals) {
      animal.makeSound;
    }
  }
}

void main() {
  var myZoo = Zoo();

  var simba = Lion("Simba", 3, "Gold");
  var yas = Penguin("Yas", 3, 1);
  myZoo.addAnimal(simba);
  myZoo.dailyRollCall();
}
