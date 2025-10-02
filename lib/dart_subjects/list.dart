/*
?What is a List? 
*A list is an ordered collection of items
*Items of a list can be accessed by it's index 
*Allows duplicates (unlike Sets, which don't)
*Type-safe
 */

//? EXAMPLE:

void main() {
  List<int> numbers = [1, 2, 3, 4, 5, 6];
  List<String> animals = ["Deer", "Koala", "Tiger"];
  List<dynamic> mixedArray = ["Cocoa", 14, false];
  List<String> fruits = ["apple", "pear", "orange", "banana"];

  numbers.add(7); 
  numbers.remove(2); 
  print(numbers); 
  print(animals); 
  print(mixedArray); 
  print(fruits); 

}

/*
TODO -> Common Operations
Add an item:
* numbers.add(6);

Access an item:
*print(fruits[0]); // apple

Change an item:
*fruits[1] = 'grape';

Remove an item:
*fruits.remove('orange');

List length:
*print(numbers.length);

Iterate over a list:
 * for (var fruit in fruits) {
 *    print(fruit);

*/


/*
TODO -> Useful Methods
contains(element);  – Checks if the list contains an element.
indexOf(element); Gets the index of an element.
sort(); - Sorts the list. 
clear(); - Removes all elements.
*/