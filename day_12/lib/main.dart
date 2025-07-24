import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AnimatedBox());
  }
}

class AnimatedBox extends StatefulWidget {
  @override
  _AnimatedBoxState createState() => _AnimatedBoxState();
}

class _AnimatedBoxState extends State<AnimatedBox> {
  double size = 100;
  Color color = Colors.blue;

  void toggleBox() {
    setState(() {
      size = size == 100 ? 200 : 100;
      color = color == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated Box')),
      body: Center(
        child: GestureDetector(
          onTap: toggleBox,
          child: AnimatedContainer(
            width: size,
            height: size,
            color: color,
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
          ),
        ),
      ),
    );
  }
}
