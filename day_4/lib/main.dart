import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  @override
  _CounterAppState createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Counter")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // keeps everything in center
          children: [
            Text('Count: $count'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: Text('Increment'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count--;
                });
              },
              child: Text('Decrement'),
            ),
          ],
        ),
      ),
    );
  }
}
