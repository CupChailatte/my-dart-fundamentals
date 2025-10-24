/*
? Static Members in Dart
* Static members (variables or methods) belong to the class itself, 
* not to any specific instance (object) of that class. 
* You access them directly using the class name.

? Static Variables
* Belong to the class: There's only one copy of a static variable, no matter how many objects of the class you create.

?Initialization: 
* They are initialized when the program starts or when the class is first accessed.
 */

class Configuration {
  // Static variable: one instance shared by all objects
  static const String appName = 'Dart App Master';
  static int maxConnections = 100;

  // Instance variable: each object gets its own copy
  final String deviceId;

  Configuration(this.deviceId);
}

void main() {
  print('App Name: ${Configuration.appName}'); // Access directly via the class

  var config1 = Configuration('A123');
  var config2 = Configuration('B456');

  // Change the static variable (affects all 'instances')
  Configuration.maxConnections = 50;

  print('Max Connections (Config 1): ${Configuration.maxConnections}');
  print('Max Connections (Config 2): ${Configuration.maxConnections}');
  print('Device ID (Config 1): ${config1.deviceId}');
}
