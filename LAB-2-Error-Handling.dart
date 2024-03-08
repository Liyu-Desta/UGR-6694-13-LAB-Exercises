// Exercise 2: Create a function that divides two numbers. Use try/catch to catch a potential DivisionByZeroError and display an appropriate error message.

double divideNumbers(double dividend, double divisor) {
  if (divisor == 0) {
    throw DivisionByZeroError(); // Throw DivisionByZeroError if divisor is zero
  }
  return dividend / divisor;
}

void main() {
  double dividend = 10;
  double divisor = 0;

  try {
    // Call divideNumbers function and handle potential DivisionByZeroError
    double result = divideNumbers(dividend, divisor);
    print("Result of division: $result");
  } catch (e) {
    // Handle DivisionByZeroError
    print("Error: Division by zero is not allowed.");
  }
}
