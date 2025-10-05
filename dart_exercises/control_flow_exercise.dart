/*
1. If/Else Exercise
Write a program that checks if a number is positive, negative, or zero and prints a message.

2. Switch Statement Exercise
Create a variable for the day of the week (e.g., "Monday").
Use a switch statement to print a special message for "Monday", "Friday", and a default message for other days.

3. For Loop Exercise
Print all even numbers from 1 to 20 using a for loop.

4. While Loop Exercise
Start with a number at 10.
Use a while loop to decrease it by 1 and print each value until it reaches 0.

5. Do-While Loop Exercise
Ask the user for a password (simulate with a variable).
Keep asking until the correct password is entered (simulate with a do-while loop and a hardcoded password).



TODO 1 - - - INTERMEDIATE EXERCISE 
* Exercise: Filter and Group Students
You have a List<Map<String, dynamic>> called students.
Each map contains a student's "name" and "score".

Tasks:

Print the names of all students who scored above 80.
Group students into two lists: those who passed (score >= 60) and those who failed (score < 60).
Print both groups.
Hint:
Use loops, conditionals, and lists/maps to solve this.











 */

void main() {
  //* 1. if else exercise
  int negNum = -100;
  int posNum = 3;
  int zero = 0;
  int choosenNumber = zero;

  if (choosenNumber > 0) {
    print("positive number");
  } else if (choosenNumber == 0) {
    print("zero");
  } else {
    print("negative number");
  }

  //* 2. Switch statement exercise
  String day = "Friday"; //could be user input.
  switch (day) {
    case "Monday":
      print("First day of the week!");
      break;
    case "Wednesday":
      print("Soon friday!!");
      break;
    case "Friday":
      print("YAHOO ITS FRIDAY");
      break;
    default:
      print("A normal day...");
  }

  //* 3. For Loop Exercise
  for (int i = 0; i <= 20; i++) {
    int evenNumber = i;
    if (i % 2 == 0) //checks for even number
      print("Even number: $evenNumber");
  }

  //* 4. While Loop Exercise

  int startNumber = 10;
  while (startNumber != 0) {
    //if number not 0
    startNumber--; // decrease by 1.
    print("Counting down: ${startNumber + 1} "); //prints.
  }

  //* 5. Do-While Loop Exercise
  int passTry = 5600;
  const int password = 5647;
  do {
    print(passTry); //prints the tired passwords
    passTry++; //password tries goes up by 1.
  } while (passTry !=
      password); //if tried password is not the same as the true password, the loop goes on until it finds it.
  print("Correct password found! : ${passTry}");
}
