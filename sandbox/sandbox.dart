import 'dart:io';

abstract class Logger {
  //method
   log(String message); 
}

class ConsoleLogger implements Logger{
  @override 
   log(String message){
    print("[LOGS TO CONSOLE] : $message"); 
  }
}

class FileLogger implements Logger {

  @override 
   log(String message){
    print("Writing to file: $message"); 
  }
}

void main(){
  List<Logger> listOfLogger = [
    ConsoleLogger(),
    FileLogger(),
  ]; 
  
  for (var log in listOfLogger){
    log.log("wASSYUP  "); 
  }
}