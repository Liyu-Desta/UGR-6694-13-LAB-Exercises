// Exercise 3: Implement a function that takes a string as input and returns a new string with all characters reversed

void main() {
  // Test the reverseString function
  String originalString = "Hello, world!";
  String reversedString = reverseString(originalString);
  
  // Print the result
  print("Original string: $originalString");
  print("Reversed string: $reversedString");
}

// Function to reverse a string
String reverseString(String str) {
  List<String> characters = str.split(''); // Split the string into a list of characters
  characters = characters.reversed.toList(); // Reverse the order of characters
  return characters.join(''); // Join the characters back into a single string
}
