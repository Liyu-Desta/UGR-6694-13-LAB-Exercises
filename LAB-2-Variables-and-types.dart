// Exercise 2: Define a constant variable for the speed of light (299,792,458 meters per second). Calculate the time it takes for light to travel a certain distance (user input)

import 'dart:io';

void main() {
  // Define constant variable for the speed of light
  const speedOfLight = 299792458; // meters per second

  // Get distance from user input
  print("Enter the distance (in meters) for light to travel:");
  var distance = double.parse(stdin.readLineSync()!);

  // Calculate time taken for light to travel the distance
  var timeTaken = distance / speedOfLight;

  // Print the result
  print("Time taken for light to travel $distance meters: $timeTaken seconds");
}
