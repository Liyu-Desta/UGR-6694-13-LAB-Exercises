// Exercise 2: Generate a list of random numbers and use a Set to remove duplicate elements. Print the unique numbers.

import 'dart:math';

void main() {
  // Generate a list of random numbers
  List<int> randomNumbers = List.generate(20, (index) => Random().nextInt(10));

  // Print the initial list of random numbers
  print('Initial list of random numbers: $randomNumbers');

  // Use a Set to remove duplicate elements
  Set<int> uniqueNumbers = randomNumbers.toSet();

  // Print the unique numbers
  print('Unique numbers: $uniqueNumbers');
}
