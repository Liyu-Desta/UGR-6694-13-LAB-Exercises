// Exercise 2: Design a Product class with properties like name, price, and quantity. Implement a method to calculate the total cost of a product (price * quantity).

class Product {
  String name;
  double price;
  int quantity;

  // Constructor
  Product(this.name, this.price, this.quantity);

  // Method to calculate total cost
  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {
  // Create a Product object
  Product product = Product('Laptop', 1000.0, 2);

  // Calculate and print the total cost
  double totalCost = product.calculateTotalCost();
  print('Total Cost for ${product.name}: \$${totalCost.toStringAsFixed(2)}');
}
