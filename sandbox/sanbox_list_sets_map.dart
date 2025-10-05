//TODO Sanbox mode to experience with the knowledge of List, set and maps 
  


void main(){


    Map<String, int> students = {
      "John": 67, 
     "Mike": 44, 
     "Yosa": 70, 
     "Kira": 83, 
    }; 

    students.forEach((student, score) { //key = student,, value = score 
      if (score > 60) { //if score is more or is 60 , prints the students that passed. 
        print("$student: passed");
      } else {
        print("$student: failed"); //prints students that failed. 
      }
    });
}