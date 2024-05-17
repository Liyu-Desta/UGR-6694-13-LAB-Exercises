class Rectangle(private val length: Double, private val width: Double) {

    // Method to calculate perimeter
    fun calculatePerimeter(): Double {
        return 2 * (length + width)
    }

    // Method to calculate area
    fun calculateArea(): Double {
        return length * width
    }
}

fun main() {
    // Create a Rectangle object with length 5 and width 3
    val rectangle = Rectangle(5.0, 3.0)

    // Calculate and print perimeter
    val perimeter = rectangle.calculatePerimeter()
    println("Perimeter of the rectangle: $perimeter")

    // Calculate and print area
    val area = rectangle.calculateArea()
    println("Area of the rectangle: $area")
}
