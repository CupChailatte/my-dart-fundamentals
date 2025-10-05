/*
*1. Basic Enum Usage
Create an enum called TrafficLight with values: red, yellow, and green.
Write a function that takes a TrafficLight value and prints what drivers should do (e.g., "Stop" for red).

*2. Enum with Switch Statement
Create an enum called Weather with values: sunny, rainy, cloudy, snowy.
Use a switch statement in main() to print a message for each weather type.

*3. Advanced Enum
Create an enum called Planet with values: mercury, venus, earth, mars.
Give each planet a property for its average distance from the sun (in millions of km).
Write a method in the enum to print the planet’s name and distanc

Mercury	57.9 million km
Venus	108.2 million km
Earth	149.6 million km
Mars	227.9 million km */


/*EX 3 */
enum Planets { 
  mercury(57.9), mars(227.9), earth(149.6), venus(108.2); 

  final double distanceFromSun; 
  const Planets(this.distanceFromSun); //constructor 

  void printInfo(){
    print('${name.toUpperCase()} is $distanceFromSun million km from the sun') ; 
  }
}
void main(){ 
  Planets.earth.printInfo(); 
}










/** EX 1 
enum TrafficLight {
  green, 
  yellow,
  red, 
}

void main(){
  TrafficLight currentLight = TrafficLight.green; 
  if (currentLight == TrafficLight.green){
    print('GO!'); 
  } else if (currentLight == TrafficLight.red){
    print("STOP"); 
  } else {
    print("Caution"); 
  }
} */

/**EX 2 

 enum Weather { sunny, rainy, snowy, cloudy }


void main() {
  Weather todaysWeather = Weather.sunny; 

  switch(todaysWeather){
    case Weather.cloudy:
    print("It is cloudy today, grab some anti-depressants..."); 
    break;
     case Weather.sunny: 
    print("It is sunny today, go to the beach!"); 
    break; 
     case Weather.rainy: 
    print("It is raining today, grab popcorn and turn on netflix!"); 
    break; 
     case Weather.snowy: 
    print("It is snowy today, make a cup of hot chocolate!"); 
    break; 
  }

}
 */



