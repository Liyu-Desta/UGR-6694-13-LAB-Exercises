import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Ford(), // Ford widget as the home page
    );
  }
}

class Ford extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Ford Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            'assets/images/car_image.jpg',
            height: 100, // Set the height
          ),
          Text(
            '1975 Porsche 911 Carrera',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Essential information',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              Text(
                '1 of 3 done',
                style: TextStyle(fontSize: 24),
              ),
            ],
          ),
          Divider(
            // Add a Divider widget
            color: Colors.black, // Optionally specify the color
            thickness: 2, // Optionally specify the thickness
            indent: 20, // Optionally specify the start indent
            endIndent: 20, // Optionally specify the end indent
          ),
          Text(
            'Year, Make, Model, VIN',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          Text(
            'Year: 1975',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            'Make: Porsche',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            'Model: 911 Carrera',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            'VIN: 9115400029',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            'Description',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          Text(
            'Photos',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
