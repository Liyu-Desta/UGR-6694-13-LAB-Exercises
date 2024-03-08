// Exercise 2: Create a program that downloads a file from a URL using the http package in Dart. Use async and await to handle the download process asynchronously.

import 'dart:io';
import 'package:http/http.dart' as http;

void main() async {
  // URL of the file to download
  String url = 'https://example.com/file_to_download.txt';

  // Destination path where the file will be saved
  String filePath = 'downloaded_file.txt';

  // Perform the download asynchronously
  await downloadFile(url, filePath);

  print('File downloaded successfully.');
}

// Asynchronous function to download a file from a URL
Future<void> downloadFile(String url, String savePath) async {
  // Create a new HttpClient instance
  var httpClient = http.Client();

  try {
    // Send a GET request to the URL
    var response = await httpClient.get(Uri.parse(url));

    // Write the response body to the file
    File file = File(savePath);
    await file.writeAsBytes(response.bodyBytes);
  } catch (e) {
    print('Failed to download file: $e');
  } finally {
    // Close the HttpClient
    httpClient.close();
  }
}
