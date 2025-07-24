import 'package:flutter/material.dart';
import 'my_button.dart'; // Make sure this file is in the same folder or update path

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  void sayHello() {
    print("Hello!");
  }

  void sayGoodbye() {
    print("Goodbye!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Reusable Widget Example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyButton(
              text: "Say Hello",
              color: Colors.green,
              onPressed: sayHello,
            ),
            SizedBox(height: 20),
            MyButton(
              text: "Say Goodbye",
              color: Colors.red,
              onPressed: sayGoodbye,
            ),
          ],
        ),
      ),
    );
  }
}
