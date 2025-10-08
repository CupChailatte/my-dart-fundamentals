import '../basic_dart/variables.dart';

void countdown(int n)async {
  for (var i = n; i >= 0; i--) {
   await Future.delayed(Duration(seconds: 1), () => print(i));
  }
  ;
}

void countUpp(int number) {
  for (var i = number; i >= 0; i--) {
    Future.delayed(Duration(seconds: i), () => print(i));
  } 
}

Future<void> main() async {
countdown(10); 
}
