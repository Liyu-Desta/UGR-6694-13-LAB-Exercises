fun main() {
    // Define the range
    val start = 1
    val end = 50

    // Print the range
    println("Prime numbers between $start and $end are:")

    // Iterate through the range
    var num = start
    while (num <= end) {
        var isPrime = true
        var i = 2
        // Check if the current number is prime
        while (i <= num / 2) {
            if (num % i == 0) {
                isPrime = false
                break
            }
            i++
        }
        // If the number is prime, print it
        if (isPrime && num > 1) {
            print("$num ")
        }
        num++
    }
}
