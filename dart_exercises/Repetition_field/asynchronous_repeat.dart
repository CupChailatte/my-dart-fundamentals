import 'dart:math';


/*
 * DATE: 10/10/2025
 * 
 * 
 */



Future<dynamic> task(id) => //Future will return an dynamic type after 1 second delay 
    Future.delayed(Duration(seconds: 1), () => 'Task $id complete');

longOperation() =>
    Future.delayed(Duration(seconds: 3), () => "Finished long operation!");

Future<String> getData(shouldSucceed) async {
  if (shouldSucceed) {
    return Future.delayed(Duration(seconds: 1), () => "Success!");
  } else {
    throw Exception("API limit reached"); //the exception (e)
  }
}

Future<void> main() async {
  try {
    final gettingData = await getData(false);
    print(gettingData);
  } catch (e) {
    print("Error caught: $e");
  }


    longOperation(); 
    print("Doing other work immediately");
    await Future.delayed(Duration(seconds: 4));
    print("operation 'test long operation' completed");


  try {
    final task1 = await task(1);
    print(task1);
    final task2 = await task(2);
    print(task2);
    final task3 = await task(3);
    print(task3);
  } catch (e) {
    print("error something happened");
  } finally {
    print('All task completed');
  }
}
