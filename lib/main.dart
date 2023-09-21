import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'TI-3C',
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          titleSpacing: 0,
          backgroundColor: const Color.fromARGB(255, 2, 127, 230),
        ),
        backgroundColor: const Color.fromARGB(255, 183, 225, 249),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img/Gulo.jpeg',
                width: 300,
                height:200,
              ),
              const SizedBox(height: 20),
              Container(
                margin: const EdgeInsets.all(8),
                child: const Text(
                  "Trisinus Gulo",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                child: const Text(
                  "2141720035",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              const Text(
                'Counter:',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '$counter',
                style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: incrementCounter,
                    tooltip: 'incrementCounter',
                    backgroundColor: const Color.fromARGB(255, 35, 143, 225),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Icon(Icons.add),
                  ),
                  const SizedBox(width: 20),
                  FloatingActionButton(
                    onPressed: decrementCounter,
                    tooltip: 'Decrement',
                    backgroundColor: const Color.fromARGB(255, 35, 143, 225),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(width: 20),
                  FloatingActionButton(
                    onPressed: resetCounter,
                    tooltip: 'Reset',
                    backgroundColor: const Color.fromARGB(255, 35, 143, 225),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Icon(Icons.refresh),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
