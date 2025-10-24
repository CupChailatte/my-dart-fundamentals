Future<String> fetchLogin() {
  return Future.delayed(Duration(seconds: 2), () {
    throw Exception("Incorrect Password");
  });
}

Future<void> main() async {
  print("Attempting login...");

  try {
    String token = await fetchLogin();
    print("Login successful:[$token]");
  } catch (e) {
    throw Exception("Login failed: [$e]");
  } finally {
    print("Attempts finished");
  }
}
