// 1. Mark the function as async. It now returns a Future<void>.
void getAndPrintUser() async {
  print("1. Starting to fetch user data...");

  // 2. Use await: The function pauses here until fetchUserData() completes.
  // The main thread is free to do other work.
  String data = await fetchUserData(); 

  // 3. This line only executes AFTER the Future completes.
  print("4. Received data: $data");
  print("5. Program continues after the Future.");
}

// Function from above (simulates a 2-second delay)
Future<String> fetchUserData() {
  print("2. (Inside Future) Waiting 2 seconds...");
  return Future.delayed(
    Duration(seconds: 5), 
    () => "User Data: Alice", 
  );
}

void main() {
  getAndPrintUser();
  
  // 3. This line is NOT blocked by 'await' and executes immediately.
  print("6. (Main) Other tasks are running in parallel."); 
  // Output order will be 1, 2, 6, then 4, 5 after 2 seconds.
}