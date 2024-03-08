// Exercise 3: Implement a program that reads a file from disk. Use try/catch to handle potential FileSystemException (e.g., file not found) and provide informative error messages.

import 'dart:io';

void main() {
  String filePath = 'example.txt'; // Path to the file to read

  try {
    // Open the file
    File file = File(filePath);
    
    // Read the contents of the file
    String contents = file.readAsStringSync();
    
    // Print the contents of the file
    print('File Contents:');
    print(contents);
  } catch (e) {
    // Handle FileSystemException (e.g., file not found)
    if (e is FileSystemException) {
      print("Error: File not found or cannot be read.");
    } else {
      print("Error: $e"); // Handle other exceptions
    }
  }
}
