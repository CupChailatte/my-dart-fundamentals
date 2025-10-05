void main() {
  const int passScore = 60;
  List<Map<String, dynamic>> students = [  //List of students and thier score 
    // A List of Map.
    {"Mike": 98},
    {"Cathie": 89},
    {"Anne": 94},
    {"Yoda": 100},
    {"Hennesy": 50},
    {"Gabe": 74},
    {"Minnie": 45},
    {"Jack": 31},
    {"Robert": 23},
    {"Ida": 65},
    {"Hitomi": 99},
    {"Tyga": 67},
    {"Kelly": 84},
  ];
 // groups student that passed, failed and exceeded expectations
  List<String> above80 = []; 
  List<String> passed = [];
  List<String> failed = [];

  students.forEach((students) { //iterates the elements of the List
    String student = students.keys.first; //assings the key of the map to student.
    int score = students.values.last; //assings the values of the map to score
    if (score > 80) { //if the students score is over 80, they will be assined to the appropriate group 
      above80.add(student); 
      passed.add(student); 
    } else if (score >= 60) { 
      passed.add(student);
      
    } else {
      failed.add(student);//students that failed will be assigned to failed group 
    }
  });

  //prints the result of whom passd or failed. 
  print("People with above 80 score: $above80"); 
  print("People that passed: $passed"); 
  print("People that need a second round: $failed"); 
}
