// Exercise 2: Define a function that checks if a number is prime (divisible only by 1 and itself). Use it to check for prime numbers within a range

import 'dart:math';

void main() {
  // Define the range of numbers to check for primes
  int start = 1;
  int end = 50;

  // Check for prime numbers within the range
  print("Prime numbers between $start and $end are:");
  for (int number = start; number <= end; number++) {
    if (isPrime(number)) {
      print(number);
    }
  }
}

// Function to check if a number is prime
bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }
  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}
