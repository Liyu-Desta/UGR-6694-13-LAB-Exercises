fun factorial(n: Int): Long {
    return if (n <= 1) {
        1
    } else {
        n * factorial(n - 1)
    }
}

fun main() {
    // Sample input
    val number = 5
    // Calculate factorial
    val result = factorial(number)
    // Print the result
    println("The factorial of $number is $result")
}
