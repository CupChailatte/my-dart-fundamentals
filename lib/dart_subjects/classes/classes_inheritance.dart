
/**
 * ? - What is Class inheritance ? 
 * * Allows us to create new Classes (child) from existing Classes (Parent),
 * * Ables us to reuse code
 * * Child or subclasses inherits all of the properties from parent class, which can be tweaked for new purposes 
 * * 
 * 
 * ? - Keywords ? 
 * * Superclass /  Parent Class 
 * * Subclass / Child class 
 * 
 * ! extends - sets up inheritance for the subclass 
 * ! super - calls the constructor of parentclass 
 * ! @override - enables us to change the method form the parent class by overriding the method. 
 *
 */






class Vehicle { //parent class 
  final String brand; 
  final String model; 
  final int year; 
  const Vehicle(this.brand,this.model, this.year); // primary constructor 
  const Vehicle.unknown() : this("Unknown brand", "Look for clue", 0); //named constructor for a default value. 

  void startEngine(){ //method that prints: 
    print("The $brand $model $year, is fired up"); 

  }

}

class Car extends Vehicle { //child/subclass of vehicle class 
  final int numbersOfDoors; //new variable added. 

  Car(String brand,String model, int year, this.numbersOfDoors) : super(brand,model, year); 
  
}

class Truck extends Vehicle {  // child/subclass of vehicle class with 
  Truck(String brand, String model, int year) : super(brand, model, year); 
  
  @override //method overriding 
  void startEngine(){
    super.startEngine(); 

    print("That truck is really loud! "); 
  }
  //added new custom method 
  void truckSound(){
    print("$brand: Vroom! Vroom!"); 
  }

}

void main(){
  Car car1 =Car("Toyota", "Land Cruiser", 1996, 6);
  car1.startEngine();  

  Truck car2 = Truck("Chevrolet", "Unknown", 1999); 
  car2.startEngine(); 
  car2.truckSound(); 

}