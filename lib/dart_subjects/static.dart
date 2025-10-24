class Product {
  // 1. Static Variable for tracking the count
  static int _totalProductsCreated = 0;

  // 2. Instance Variable (non-static)
  final String name;

  // Constructor
  Product(this.name) {
    // 3. Increment the static counter
    // TODO: Write code to increment the static counter
    _totalProductsCreated++;
  }

  // 4. Static method to get the count
  // TODO: Write the static method here
  static getProductCount() {
    return _totalProductsCreated;
  }

  // 5. Static method to generate an SKU
  // TODO: Write the static method here
  static generateSKU(String name) {
    return name.toLowerCase().replaceAll(" ", "-");
  }
}

void main() {
  // Creating instances
  final p1 = Product('Laptop Pro');
  final p2 = Product('Wireless Mouse');
  final p3 = Product('Monitor 4K');
  final p4 = Product('Monitor 4K');
  final p5 = Product('Monitor 4K');
  final p6 = Product('Monitor 4K');
  final p7 = Product('Monitor 4K');
  final p8 = Product('Monitor 4K');

  // Test 1: Check the total count (should be 3)
  print('Total products created: ${Product.getProductCount()}');

  // Test 2: Generate an SKU without creating an instance
  print('SKU for a new item: ${Product.generateSKU('Mechanical Keyboard')}');
  print('SKU for a new item: ${Product.generateSKU(' NASA Keyboard')}');
}
