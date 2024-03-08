// Exercise 1: Write a program that takes a user input as a number and converts it to an integer. Use a try/catch block to handle potential FormatException if the input is not a valid number.

import 'dart:io';

void main() {
  // Prompt the user to enter a number
  print("Enter a number:");

  try {
    // Read user input and convert it to an integer
    int number = int.parse(stdin.readLineSync()!);
    
    // Print the converted integer
    print("Converted integer: $number");
  } catch (e) {
    // Handle FormatException if input is not a valid number
    print("Error: Invalid input. Please enter a valid number.");
  }
}
