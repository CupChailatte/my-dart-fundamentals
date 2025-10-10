Future<dynamic> task(id) =>
    Future.delayed(Duration(seconds: 1), () => "Operation $id complete");

List<Future<dynamic>> listOfFutureTasks = [
  task(1),
  task(2),
  task(3),
  task(4),
  task(5),
];

Future<String> getData(shouldSucceed) async {
  if (shouldSucceed) {
    return Future.delayed(Duration(seconds: 1), () => "Success!");
  } else {
    throw Exception("API limit reached"); //the exception (e)
  }
}
List<Future<String>> gettingData = [
  getData(true), 
  getData(true), 
  getData(false), 
]; 


Future<void> main() async {
  Stopwatch stopwatch = Stopwatch()..start(); //using the Stopwatch class from dart:core 

    List<dynamic> result = await Future.wait(listOfFutureTasks); 
    // Future.wait takes a list of Futures as input,
    // runs them at the same time, 
    //returns a new future only when all of them has completed.
    //result is a list of the return values from listOfFutureTasks in the SAME order. 

  
    print(result);
    print("Total time: ${stopwatch.elapsedMilliseconds} ms");


    try { 
      List<String> listOfGetData = await Future.wait(gettingData); 
      print(listOfGetData); 
    } catch (e) {
      print("Error Caught: $e");
    }

}
