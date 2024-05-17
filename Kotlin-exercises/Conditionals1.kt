fun main() {
    // Sample side lengths
    val side1 = 3.0
    val side2 = 4.0
    val side3 = 5.0

    // Check if any side is negative or zero
    if (side1 <= 0 || side2 <= 0 || side3 <= 0) {
        println("Invalid input. Please enter valid positive numerical values for the side lengths.")
        return
    }

    // Check the type of triangle
    val triangleType = when {
        side1 == side2 && side2 == side3 -> "Equilateral" // All sides are equal
        side1 == side2 || side1 == side3 || side2 == side3 -> "Isosceles" // At least two sides are equal
        else -> "Scalene" // No sides are equal
    }

    // Print the type of triangle
    println("The triangle is $triangleType.")
}