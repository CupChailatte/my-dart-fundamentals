abstract class Asset {
  final double purchasePrice; //property
  Asset(this.purchasePrice); //constructor

  double calculateValue(); //abstract method 
}

mixin Maintainable {
  void needsService() {
    print("Item requires maintenance soon!");
  }
}

class Truck extends Asset with Maintainable {
  //subclass with abstract Asset class with Maintainable mixin.
  Truck(double purchasePrice) : super(purchasePrice);

  @override
  double calculateValue() {
    return purchasePrice * 0.8;
  }
}

class Laptop with Maintainable {
  @override
  void needsService() {
    print("Needs maintenance, go to your nearest repair shop");
  }
}

void main() {
  Truck toyota = Truck(43000); //instantiating the Truck class
  print(
    "The estimate current value of the car is:  ${toyota.calculateValue()} euros",
  );

  Laptop macbookPoo = Laptop(); 
  macbookPoo.needsService(); 
}
