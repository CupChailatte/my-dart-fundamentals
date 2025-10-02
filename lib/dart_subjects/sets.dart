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
  print(fruits); //shows and empty set {}
 
  //? How to remove duplicates from a list to a Set 
  List<int> numbers = [1,2,2,3,4,5,5]; 
  Set<int> newNumbers = Set.from(numbers); //here. 
  print(numbers); //prints 1,2,2,3,4,5,5 
  print(newNumbers); //1,2,3,4,5

//?Mathematical Set Operations 
Set<int> a = {1, 2, 3};
Set<int> b = {3, 4, 5};

print(a.union(b));        // {1, 2, 3, 4, 5} //unites/fuses two sets togheter. 
print(a.intersection(b)); // {3} //finds the number that exist in both sets and prints it. 
print(a.difference(b));   // {1, 2} //shows the items that is different from the sets 


  }