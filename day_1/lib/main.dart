import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        backgroundColor: const Color.fromARGB(255, 161, 192, 206),
        appBar: AppBar(
          title: Text('Day 1'),
        ),
        body: Center(
          child: Text(
            'Hello Sovem!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        )
      )
    
    );
  }
}