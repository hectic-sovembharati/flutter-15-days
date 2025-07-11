import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Digital ID Card'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 4,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.person, size: 60, color: Colors.blue), // Profile icon
                SizedBox(height: 12),
                Text('Sovem Jung Bharati', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)), // Name
                SizedBox(height: 6),
                Text('Flutter Developer'), // Job title
                SizedBox(height: 12),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.email, size: 16, color: Colors.blue),
                    SizedBox(width: 6),
                    Text('bharati.sovem@gmail.com`'), // Email
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
