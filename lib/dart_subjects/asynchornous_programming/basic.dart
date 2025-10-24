Future<String> fetchUserBio() {
  return Future.delayed(
    Duration(seconds: 2),
    () => "Dart Enthusiast and coffee lover",
  );
}

Future<void> main() async {
  print("Fetching user bio");
  String bio = await fetchUserBio();
  print("Bio: $bio");
}
