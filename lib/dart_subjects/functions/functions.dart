
//? What is a function?`
/*
* A function is a reusable block of code that performs a specific task.
* It can take input (parameters), do something, and (optionally) return a result.
 */


//? Different types of functions. 
void main(){

//*Basic function 
  void greet(){
    print("Hello");
  }

  greet(); 

//*Function with parameter 
  void greetPerson(String name){
    print("Hello $name!"); 
  }

  greetPerson("John");

//*Function with return Value 
  int add(int a, int b){
    return a + b; 
  }

  print(add(3, 7)); //10


//*Arrow function (short function)
  int square(int x) => x*x; //the arrow means "return". 
   square(2); //4 


//* Anonymous functions (Lambdas) 
   var numbers = [1, 2, 3];
numbers.forEach((n) {
  print(n * 2);
});
  
}