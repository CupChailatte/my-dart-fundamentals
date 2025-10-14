//*****6 Basic Future.delayed  & 7 Error handling with try-catch */
Future<String> fetchUserData(int number) {
  if (number.isEven) {
    return Future.delayed(Duration(seconds: 3), () => "User Data Received!");
  } else {
    throw Exception("Network Error: Connection Lost...");
  }
}

Future<String> fetchProducts() async {
  return Future.delayed(Duration(seconds: 2), () => "Products fetched");
}

Future<String> fetchProfile() async {
  return Future.delayed(Duration(seconds: 3), () => "Profile fetched");
}

Future<String> fetchCart() async {
  return Future.delayed(Duration(seconds: 4), () => "Cart Fetched");
}

Stream<int> countDown(int from) async* {
  // e.g counts down form 10
  for (int i = from; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

Future<void> consumeStream() async {
  print("Processing");

  await for (var number in countDown(10)) {
    print("Processing Count: $number");
  }
  print("Countdown finished");
}

Future<void> main() async {
consumeStream(); 

  try {
    print("Fetching user data...");
    final user12 = await fetchUserData(10);
    print(user12);
  } catch (e) {
    print("Something went wrong:  $e");
  }

  print("Loading page...");
  List<Future> fetchingData = [fetchCart(), fetchProfile(), fetchProducts()];
  dynamic result = await Future.wait(fetchingData);
  print(result);
}
