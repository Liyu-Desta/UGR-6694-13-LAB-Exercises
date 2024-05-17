class Triangle(private val side1: Double, private val side2: Double, private val side3: Double) {

    // Method to determine if the triangle is equilateral
    fun isEquilateral(): Boolean {
        return side1 == side2 && side2 == side3
    }

    // Method to determine if the triangle is isosceles
    fun isIsosceles(): Boolean {
        return side1 == side2 || side1 == side3 || side2 == side3
    }

    // Method to determine if the triangle is scalene
    fun isScalene(): Boolean {
        return side1 != side2 && side1 != side3 && side2 != side3
    }
}

fun main() {
    // Create a Triangle object with sides 3, 4, and 5
    val triangle = Triangle(3.0, 4.0, 5.0)

    // Determine and print the type of triangle
    if (triangle.isEquilateral()) {
        println("The triangle is equilateral.")
    } else if (triangle.isIsosceles()) {
        println("The triangle is isosceles.")
    } else if (triangle.isScalene()) {
        println("The triangle is scalene.")
    }
}
