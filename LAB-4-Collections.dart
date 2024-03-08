// Exercise 4: Write a program that simulates a shopping cart using a list or map. Add items (products with names and quantities) to the cart, calculate the total price, and remove items if needed.

import 'dart:io';

void main() {
  List<Map<String, dynamic>> shoppingCart = [];

  while (true) {
    print('1. Add item to cart');
    print('2. Calculate total price');
    print('3. Remove item from cart');
    print('4. View cart');
    print('5. Exit');
    print('Enter your choice:');
    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        addItemToCart(shoppingCart);
        break;
      case 2:
        calculateTotalPrice(shoppingCart);
        break;
      case 3:
        removeItemFromCart(shoppingCart);
        break;
      case 4:
        viewCart(shoppingCart);
        break;
      case 5:
        exit(0);
      default:
        print('Invalid choice. Please enter a valid option.');
    }
  }
}

void addItemToCart(List<Map<String, dynamic>> shoppingCart) {
  print('Enter product name:');
  String productName = stdin.readLineSync()!;
  print('Enter quantity:');
  int quantity = int.parse(stdin.readLineSync()!);

  shoppingCart.add({'name': productName, 'quantity': quantity});
  print('$productName (Quantity: $quantity) added to cart.');
}

void calculateTotalPrice(List<Map<String, dynamic>> shoppingCart) {
  double totalPrice = 0;
  for (var item in shoppingCart) {
    totalPrice += item['quantity'] * 10; // Assuming each product costs $10
  }
  print('Total price: \$${totalPrice.toStringAsFixed(2)}');
}

void removeItemFromCart(List<Map<String, dynamic>> shoppingCart) {
  print('Enter product name to remove:');
  String productName = stdin.readLineSync()!;

  for (var item in shoppingCart) {
    if (item['name'] == productName) {
      shoppingCart.remove(item);
      print('$productName removed from cart.');
      return;
    }
  }
  print('$productName not found in cart.');
}

void viewCart(List<Map<String, dynamic>> shoppingCart) {
  print('Shopping Cart:');
  for (var item in shoppingCart) {
    print('${item['name']} (Quantity: ${item['quantity']})');
  }
}
