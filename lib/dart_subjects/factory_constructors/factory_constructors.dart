

/*
? Factory Constructors in Dart
* A factory constructor is used when the constructor isn't always supposed to create a new instance of the class. It gives you more control over the object creation process.

* Keyword: 
Declared using the factory keyword.

* Return Type: 
Must return an object of the class (or a subtype).

* Cannot access this: 
Because the factory constructor might not be creating a new instance, it cannot directly access instance members via this.

? Common Use Cases for Factory Constructors
* Returning an Existing Instance (Caching/Singleton):
 Ensuring only one instance exists (Singleton pattern) or retrieving a previously created instance from a cache.

* Returning a Subtype: 
 Returning an object of a class that subclasses the factory class.

* Complex Initialization/Error Handling: 
Performing logic before creating the object, such as parsing JSON or validating inputs.

 */