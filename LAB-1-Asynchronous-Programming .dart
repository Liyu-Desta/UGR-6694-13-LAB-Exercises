// Exercise 1: Implement an asynchronous function that simulates a network call and returns a random quote after a delay. Use async and await to make the main program wait for the quote before printing it

import 'dart:async';
import 'dart:math';

// Asynchronous function to simulate a network call and return a random quote after a delay
Future<String> fetchQuote() async {
  // Simulate delay with a timer
  await Future.delayed(Duration(seconds: 2));
  
  // List of random quotes
  List<String> quotes = [
    "The only way to do great work is to love what you do. – Steve Jobs",
    "Innovation distinguishes between a leader and a follower. – Steve Jobs",
    "Your time is limited, don’t waste it living someone else’s life. – Steve Jobs",
    "It does not matter how slowly you go as long as you do not stop. – Confucius",
    "The future belongs to those who believe in the beauty of their dreams. – Eleanor Roosevelt"
  ];

  // Generate a random index
  int index = Random().nextInt(quotes.length);
  
  // Return a random quote
  return quotes[index];
}

void main() async {
  // Call the asynchronous function and await the result
  String quote = await fetchQuote();
  
  // Print the random quote
  print("Random Quote: $quote");
}
