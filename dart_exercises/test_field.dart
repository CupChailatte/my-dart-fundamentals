


void main(){
  //*exercise 1: 
  void showProfile( {required String name, int age = 30, String city = "not given"} ){
    print("My name is $name, I am $age years old and I live in $city"); 
   

  }
  showProfile(name: "Maike",age : 32,  city: "Houston"); 

}