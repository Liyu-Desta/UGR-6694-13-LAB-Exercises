// Exercise 4: Implement a program that fetches weather data from an API using asynchronous functions and displays the current temperature and weather conditions. (This might require using a third-party weather API library.)


import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchWeatherData() async {
  // Replace 'YOUR_API_KEY' with your actual API key
  String apiKey = 'YOUR_API_KEY';
  String city = 'New York'; // Replace with the desired city

  String apiUrl = 'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric';

  try {
    // Fetch weather data from the API
    http.Response response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      // Parse the JSON response
      Map<String, dynamic> data = jsonDecode(response.body);

      // Extract temperature and weather conditions
      double temperature = data['main']['temp'];
      String weatherCondition = data['weather'][0]['main'];

      // Display the current temperature and weather conditions
      print('Current Temperature in $city: $temperature°C');
      print('Weather Conditions in $city: $weatherCondition');
    } else {
      // Handle HTTP error response
      print('Failed to fetch weather data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle any other errors
    print('Error fetching weather data: $e');
  }
}

void main() {
  // Fetch weather data and display information
  fetchWeatherData();
}
