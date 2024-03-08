// Exercise 1: Write a program that checks if a given number is even or odd using an if statement

import 'dart:io';

void main() {
  // Get input from the user
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);

  // Check if the number is even or odd
  if (number % 2 == 0) {
    print("$number is even.");
  } else {
    print("$number is odd.");
  }
}
