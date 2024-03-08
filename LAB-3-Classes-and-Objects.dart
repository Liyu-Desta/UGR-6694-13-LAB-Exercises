// Exercise 1: Implement a Rectangle class with constructor arguments for width and height. Create methods to calculate area and perimeter.

class Rectangle {
  double width;
  double height;

  // Constructor
  Rectangle(this.width, this.height);

  // Method to calculate area
  double calculateArea() {
    return width * height;
  }

  // Method to calculate perimeter
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  // Create a Rectangle object
  Rectangle rectangle = Rectangle(5.0, 3.0);

  // Calculate and print the area
  double area = rectangle.calculateArea();
  print('Area: $area');

  // Calculate and print the perimeter
  double perimeter = rectangle.calculatePerimeter();
  print('Perimeter: $perimeter');
}
