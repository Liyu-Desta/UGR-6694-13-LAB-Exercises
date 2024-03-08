// Exercise 1: Create a function that takes two numbers as arguments and returns their sum. Call the function from main and print the result

void main() {
  // Call the function to calculate the sum of two numbers
  double result = addNumbers(5, 7);

  // Print the result
  print("The sum of the two numbers is: $result");
}

// Function to calculate the sum of two numbers
double addNumbers(double num1, double num2) {
  return num1 + num2;
}
