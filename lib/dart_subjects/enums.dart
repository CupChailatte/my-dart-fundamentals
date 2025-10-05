
/*

? - What is an enum ? 
* Enum stands for "Enumeration". 
* It is a special type that lets you define a set of fized constants 

* Enums are great for representing a group of related options, eg. weekdays, weather or cities


? - Why use enums? 
* Makes the code more safe and readable
* Prevent invalid values 
* Useful for switch statements and comparisons.
 */


// Declaring an enum, it is outside the main method
enum Weekdays { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

void main() {
  Weekdays today = Weekdays.sunday; 


//How to use enum : 
  if (today == Weekdays.sunday){
    print("It's sunday! The last day before we're heading for a new week!"); 
  }

// How to loop through enums and use its values. 
  for (var days in Weekdays.values){
    print(days);
    print(days.name);
    print(days.index+1);
  }

}
