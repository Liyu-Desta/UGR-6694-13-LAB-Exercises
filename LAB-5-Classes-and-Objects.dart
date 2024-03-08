// Exercise 3: Define a Shape abstract class with an abstract method calculateArea(). Create subclasses like Circle and Square that inherit from Shape and implement the calculateArea() method specific to their shapes.

import 'dart:math';

// Abstract class Shape
abstract class Shape {
  // Abstract method calculateArea()
  double calculateArea();
}

// Subclass Circle inheriting from Shape
class Circle extends Shape {
  double radius;

  // Constructor
  Circle(this.radius);

  // Implementing the calculateArea() method for Circle
  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

// Subclass Square inheriting from Shape
class Square extends Shape {
  double side;

  // Constructor
  Square(this.side);

  // Implementing the calculateArea() method for Square
  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  // Create a Circle object
  Circle circle = Circle(5.0);
  print('Area of Circle with radius ${circle.radius}: ${circle.calculateArea()}');

  // Create a Square object
  Square square = Square(4.0);
  print('Area of Square with side ${square.side}: ${square.calculateArea()}');
}
