//TODO Sanbox mode to experience with the knowledge of List, set and maps 
  


void main(){

//? Map in a List
  List<Map<String, dynamic>> workers = [{
    "name": "John Winston", 
    "trade": "Electrician",
    "Experience": 12, 
    "Age": 31, 
    "Salary": 3200, 
  },{
     "name": "Ron Murrs", 
    "trade": "Plumber",
    "Experience": 7, 
    "Age": 26, 
    "Salary": 2530, 
  }
    

  ];

  print(workers[1]);  


  //? List in a Map 
  Map<String, List<String>> complementaryClasses= {
    "Science": ["Luke", "Sara", "Jamie"], 
    "Sports": ["Hugh", "Mary", "Oscar"], 
    "Math": ["Dinkol", "Tony", "Ruth"]
  }; 

   print(complementaryClasses.keys); 
}