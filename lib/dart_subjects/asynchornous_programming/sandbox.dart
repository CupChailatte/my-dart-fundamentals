Future<int> getUserId() => 
  Future.delayed(Duration(milliseconds: 500), () => 42);


Future<void> main() async {
  try {
    final user = await getUserId();
    print(user);
  } catch (e) {
    print("error");
  }
}
