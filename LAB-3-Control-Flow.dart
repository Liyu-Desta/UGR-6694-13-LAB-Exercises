//  Exercise 4: Implement a simple calculator using a switch statement to handle addition, subtraction, multiplication, and division

import 'dart:io';

void main() {
  // Prompt the user to enter two numbers
  print("Enter the first number:");
  double num1 = double.parse(stdin.readLineSync()!);
  
  print("Enter the second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  // Prompt the user to enter the operation
  print("Enter the operation (+, -, *, /):");
  String operation = stdin.readLineSync()!;

  // Perform the calculation based on the operation using a switch statement
  double result = 0;
  switch (operation) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      result = num1 / num2;
      break;
    default:
      print("Invalid operation!");
      return;
  }

  // Print the result
  print("Result: $result");
}
