//? - What is a set - ?
/*
* A set is an ordered collection of items 
* Does not allow duplicates
* The order is not guaranteed 
 
? - Why use sets - ?  
* store unique values/items 
* for fast checks if an item exists
* for mathematical set operations (more about it below)

*/

//? How to declare sets and it's common operations 
void main(){

  Set<String> fruits = {"apple", "orange", "pear", "mango"};

  fruits.add("grape"); //adds item 
  fruits.remove("apple"); //removes item
  print(fruits.length); //finds lenght of set
  print(fruits.contains("grape")); //checks if an item exists in set
  print(fruits.isEmpty); 
  print(fruits.isNotEmpty); 

  for (var fruit in fruits){ //Iteration of Set
    print(fruit); 
  }
  
  fruits.clear(); //clears all items in the set. 
  }