fun main() {
    // Input number to check
    val number = 12321 // Change this to test different numbers

    // Copy the number to a temporary variable
    var tempNumber = number
    var reversedNumber = 0

    // Reverse the number
    while (tempNumber != 0) {
        val digit = tempNumber % 10
        reversedNumber = reversedNumber * 10 + digit
        tempNumber /= 10
    }

    // Check if the original number is equal to the reversed number
    val isPalindrome = number == reversedNumber

    // Print the result
    if (isPalindrome) {
        println("$number is a palindrome.")
    } else {
        println("$number is not a palindrome.")
    }
}
