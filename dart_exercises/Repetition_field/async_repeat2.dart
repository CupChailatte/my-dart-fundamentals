Future<String> fetchUserData() =>
    Future.delayed(Duration(seconds: 3), () => "User Data Received");

Future<void> main() async {
  print("Starting fetch");
  final String userData1 = await fetchUserData();
  print(userData1);
}
