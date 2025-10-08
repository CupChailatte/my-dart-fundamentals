/*
 *Future is a class/object that represent a result or an error that will be available in the future. 
  
  Future is can be in 3 stages, incomplete, complete and error 
  */

/*
note: () => is an anonymous function 
 */

Future<String> fetchOrder() =>
    Future.delayed(Duration(seconds: 3), () => "Coffee");

Future<void> main() async {
  print("Fetching data");

  try {
    final order1 = await fetchOrder();
    print(order1);
    final order2 = await fetchOrder();
    print(order2);
  } catch (error) {
    print("Error");
  } finally {
    print("Service done!");
  }
}
