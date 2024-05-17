fun main() {
    // Sample input
    val num1 = 12
    val num2 = 25
    val num3 = 9

    // Determine the largest number using nested conditionals
    val largest = if (num1 >= num2) {
        if (num1 >= num3) {
            num1
        } else {
            num3
        }
    } else {
        if (num2 >= num3) {
            num2
        } else {
            num3
        }
    }

    // Print the largest number
    println("The largest number is $largest")
}
