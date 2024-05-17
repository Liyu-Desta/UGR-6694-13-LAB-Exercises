fun main() {
    var sum = 0

    // Iterate through numbers from 1 to 50
    for (i in 1..50) {
        // Check if the number is even
        if (i % 2 == 0) {
            sum += i // Add the even number to the sum
        }
    }

    // Print the sum of even numbers
    println("The sum of even numbers from 1 to 50 is: $sum")
}
