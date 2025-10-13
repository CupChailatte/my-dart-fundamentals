class Logger {
  // 1. Static, private instance variable to hold the single instance
  static final Logger _instance = Logger._internal();

  // 2. Generative constructor must be private (named with _)
  // This prevents direct instantiation using new Logger()
  Logger._internal();

  // 3. Factory constructor: this is the public access point
  factory Logger() {
    // It returns the existing single instance
    return _instance;
  }

  void log(String msg) {
    print('LOG: $msg');
  }
  
}

void main() {
  // Both logger1 and logger2 will refer to the SAME object.
  var logger1 = Logger();
  var logger2 = Logger();

  logger1.log('Application started.'); // LOG: Application started.

  // Check if they are the same instance
  print(identical(logger1, logger2)); // Output: true
}