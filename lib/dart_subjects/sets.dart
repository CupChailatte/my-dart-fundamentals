/*
? What are sets? 
*Sets are unordered collection of unique items. 
*Unlike lists, sets can't contain duplicates of a value. 
*the order is not guaranteed. 

?Use cases: 
*Removing duplicates from user input:
*E.g., storing unique tags, interests, or keywords.

*Tracking selected items:
*E.g., keeping track of selected contacts, photos, or options without duplicates.

*Efficient membership checks:
*E.g., checking if a user has already liked a post or if an item is in a favorites list.

*Filtering data:
*E.g., showing only unique categories or labels in a filter menu.

*Mathematical set operations:
*E.g., finding common friends (intersection), combining groups (union), or finding items not in another list (difference).

*Managing permissions or roles:
*E.g., storing unique permissions assigned to a user.


/*
?Common Operations
Add an item:
*numbers.add(6);

Remove an item:
*animals.remove("Koala");

Check if contains:
*numbers.contains(3);

Set length:
*print(animals.length);

Iterate over a set:
* for (var item in words){ print(item)}

*/

 */
//?SANDBOX
void main() {
  Set<String> words = {"car", "spoon", "dark"};
  Set<int> numbers = {1, 2, 3, 4, 5};
  Set<dynamic> mixedTypes = {"Honolulu", 5.5, "Bob"};
  print(words);
  print(numbers);
  print(mixedTypes);

  for (var item in mixedTypes) {
    print("I got $item by iterating over the Set");
  }
}
