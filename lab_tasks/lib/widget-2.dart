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
      home: Cart(), // Ford widget as the home page
    );
  }
}

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Cart'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Shopping Cart',
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          Text(
            'Verify your quantity and checkout',
            style: TextStyle(fontSize: 24),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/burger.jpg',
                    height: 100, // Set the height
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Calas',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    '\$15.00',
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '+',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    '1.0',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    '-',
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset(
                    'assets/images/pasta.jpg',
                    height: 100, // Set the height
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Calas',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    '\$15.00',
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    '+',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    '1.0',
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    '-',
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
