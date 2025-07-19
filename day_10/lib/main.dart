import 'package:flutter/material.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget{
  @override
  final List<String> images =['assets/1.jpg','assets/2.jpg','assets/3.jpg','assets/4.jpg'];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My App")),
        body: Padding(padding: const EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 10,
          mainAxisSpacing: 10,
          children: images.map((image) => Image.asset(image)).toList(),
          ),
        ),
      )
    );
  }
}