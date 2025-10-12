Future<dynamic> fetchUserData(int number) {
  return Future.delayed(Duration(seconds: 3), () {
    if (number == 101) {
      throw Exception("Network Error: Connection Failed");
    } else {
      print("User data received");
    }
  });
}

Future<String> fetchProducts() {
  return Future.delayed(Duration(seconds: 1), () => "Products fetched");
}

Future<String> fetchCart() {
  return Future.delayed(Duration(seconds: 4), () => "Cart Fetched");
}

Future<String> fetchProfile() {
  return Future.delayed(Duration(seconds: 2), () => "Profile Fetched");
}

Future<void> main() async {
  try {
    print("Signing in... Please wait...");
    final user1 = await fetchUserData(100);

  } catch (e) {
    print(e);
  }

//Created a list of Futures with the type String.
  List<Future<String>> gettingData = [
    fetchProducts(),
    fetchCart(),
    fetchProfile(),
  ];

  try {
    print("Loading Page...");
    List<String> listOfData = await Future.wait(gettingData); //listOfData awaits until all of the data fetching is done of the list of futures 
    print(listOfData);
  } catch (e) {
    print("Something went wrong");
  }
}
