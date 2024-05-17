fun hasUniqueCharacters(input: String): Boolean {
    // Create a set to store seen characters
    val seen = mutableSetOf<Char>()

    // Iterate through each character in the input string
    for (char in input) {
        // If the character is already in the set, return false
        if (seen.contains(char)) {
            return false
        }
        // Otherwise, add it to the set
        seen.add(char)
    }
    // If no duplicate characters were found, return true
    return true
}

fun main() {
    // Sample input strings
    val input1 = "abcdefg"
    val input2 = "hello"

    // Check if strings have unique characters
    println("Input '$input1' has unique characters: ${hasUniqueCharacters(input1)}")
    println("Input '$input2' has unique characters: ${hasUniqueCharacters(input2)}")
}
