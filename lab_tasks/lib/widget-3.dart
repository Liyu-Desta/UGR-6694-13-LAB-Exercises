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
          title: SizedBox(child: const Text('BMI Calculator')),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Male',
                        style:
                            TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Female',
                        style:
                            TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            'HEIGHT',
                            style: TextStyle(
                                fontSize: 34, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '176cm',
                            style: TextStyle(
                                fontSize: 34, fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            // Add a Divider widget
                            color: Colors.black, // Optionally specify the color
                            thickness: 2, // Optionally specify the thickness
                            indent: 20, // Optionally specify the start indent
                            endIndent: 20, // Optionally specify the end indent
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        child: Column(
                          children: [
                            Text(
                              'WEIGHT',
                              style: TextStyle(
                                  fontSize: 34, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '60',
                              style: TextStyle(
                                  fontSize: 34, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 34, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 34, fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Column(
                          children: [
                            Text(
                              'AGE',
                              style: TextStyle(
                                  fontSize: 34, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '23',
                              style: TextStyle(
                                  fontSize: 34, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text(
                                  '-',
                                  style: TextStyle(
                                      fontSize: 34, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 34, fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              child: Text(
                'CALCULATE',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ));
  }
}
