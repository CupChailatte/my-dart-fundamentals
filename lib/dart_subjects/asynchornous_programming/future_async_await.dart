/**
 * ? - What is asynchronous programming ? 
 * Dart is single-threaded, meaning it executes one operation at a time on its main thread. If you make a network request (like fetching data from the internet) that takes 3 seconds, the main thread is blocked during that time
 * causing your entire application (including the user interface) to freeze.
 * Asynchronous programming solves this by allowing your app to start a
 * long-running task and then move on to other work. 
 * When the long task finishes, the app handles the result.


 * 
 * 
 * 
 * ? Core concept : 
 * * Future 
 * * async 
 * * await
 * 
 */

void main() {
  // The function signature shows it returns a Future that will eventually hold a String.
  Future<String> fetchUserData() {
    // Future.delayed simulates a long-running task, like a network call.
    return Future.delayed(
      Duration(seconds: 2), // The delay
      () => "User Data: Alice", // The value to return after the delay
    );
  }
}
