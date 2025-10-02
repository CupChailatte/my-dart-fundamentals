//? 

void main(){

  /*
  ?Optional Positional Parameters
Can be omitted when calling the function.
   */

  void showInfo(String name,[int age = 0] ){ //place [] to set default value 
    print("Hello $name, you are $age years old"); 
  }

  showInfo("Jackson");//Hello Jackson, you are 0 years old 
  showInfo("Tyr", 345); //Hello Tyr, you are 345 years old



  /*
?Required Named Parameters
   */
  void register({required String username, required int password}){  //Use required keyword inside {}.
    print("Username and password"); 
    print("Hello $username your password is $password",); //must use the name of parameters when called 
  }

  register(username: "Makinstoshj22", password: 223455); 

  /*
?Optional Named Parameters
   Placed inside { } in the function definition.
   Can be omitted or specified in any order.
   You can set default values.
*/
  void presentPerson({required String name, int age = 0, String city = "nowhere",  }){
    print("Hello, my name is $name, I am $age years old, I live in $city. Nice to meet you."); 
  }

  presentPerson(name: "Mike"); 
  presentPerson(name: "Sandra", age: 31,city: "Toronto"); 
  presentPerson(name: "Yoda", age: 400, city: "Bollywood city"); 
}