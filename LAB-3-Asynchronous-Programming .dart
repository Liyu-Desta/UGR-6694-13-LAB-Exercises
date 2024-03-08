// Exercise 3: Develop a program that simulates loading data from a database asynchronously. Use Future.delayed to create a simulated delay and then return a list of data.

import 'dart:async';

// Define a class to represent the data
class Data {
  final int id;
  final String name;

  Data(this.id, this.name);

  @override
  String toString() {
    return 'Data{id: $id, name: $name}';
  }
}

// Simulated function to load data from a database asynchronously
Future<List<Data>> loadDataFromDatabase() async {
  // Simulate a delay of 2 seconds
  await Future.delayed(Duration(seconds: 2));

  // Simulated data loaded from the database
  List<Data> dataList = [
    Data(1, 'Data 1'),
    Data(2, 'Data 2'),
    Data(3, 'Data 3'),
    Data(4, 'Data 4'),
    Data(5, 'Data 5'),
  ];

  // Return the list of data
  return dataList;
}

void main() async {
  // Simulate loading data from the database asynchronously
  List<Data> loadedData = await loadDataFromDatabase();

  // Print the loaded data
  print('Loaded data:');
  loadedData.forEach((data) {
    print(data);
  });
}
