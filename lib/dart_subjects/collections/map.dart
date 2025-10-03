/*
?What is a map? 
*A Map is a collection of key-value pairs
*You can access it's value by using it's key  

? Use Cases: Look below 
*Maps are great for fast lookups,
*organizing related data, and 
*representing real-world relationships.

*/

//?Declaring a Map & Common Operators
void main(){
  Map<String, int> members = {
    "Alice Wonderland": 1023,
    "Mark Cuban": 2234, 
    "Kevin Bacon": 9833, 
    "Scarlett Johanson": 23, 
  }; 
  
  print(members["Alice Wonderland"]); //* access map by key 

  members["Caysey Johnes"] = 9834; //*adds new key-value pair

  members.remove("Kevin Bacon"); //* removes key-value pair

  print(members.containsKey("Kevin Bacon")); //* checks if key-value pair exits, true/false 

  members.forEach((key, value) => print("$key, membership number:  $value"),); //*iteration of a map 

  //? usefull methods: 
  print("Current members: ${members.keys}"); //*checks all the keys 
  print("And thier membership numbers: ${members.values}"); //*checks all the values 
  print("Amount of members: ${members.length}"); //*check how many key-value pairs exists
  members.clear(); //*clears the map. 
  print(members); 





// ? Use cases Examples: 

//* Storing User Profiles 
Map<String, String> userProfile = {
  "username": "chais123",
  "email": "chais@email.com",
  "role": "admin"
};

print(userProfile); 

//*Counting Occurrences 
Map<String, int> wordCount = {};
List<String> words = ["apple", "banana", "apple"];
for (var word in words) {
  wordCount[word] = (wordCount[word] ?? 0) + 1;
}
print(wordCount);

//*Configuration Settings
Map<String, dynamic> config = {
  "theme": "dark",
  "showNotifications": true,
  "maxItems": 10
};

print(config); 

//*Mapping IDs to Objects/products 
Map<int, String> productNames = {
  101: "Laptop",
  102: "Phone",
  103: "Tablet"
};
print(productNames); 

//*Grouping Data
//You can put List in maps too. 
Map<String, List<String>> studentsByClass = {
  "Math": ["Alice", "Bob"],
  "Science": ["Charlie", "David"]
};
print(studentsByClass); 



}





