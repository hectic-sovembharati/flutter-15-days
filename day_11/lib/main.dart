import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CombinedExample(),
    );
  }
}

class CombinedExample extends StatefulWidget {
  @override
  _CombinedExampleState createState() => _CombinedExampleState();
}

class _CombinedExampleState extends State<CombinedExample> {
  OverlayEntry? _overlayEntry;

  void _showOverlay() {
    _overlayEntry = OverlayEntry(
      builder: (context) => Positioned(
        top: 150,
        left: 50,
        child: Material(
          color: Colors.transparent,
          child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.black.withOpacity(0.8),
            child: Text(
              '👋 This is an Overlay!',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );

    Overlay.of(context).insert(_overlayEntry!);

    // Automatically remove after 2 seconds
    Future.delayed(Duration(seconds: 2), () {
      _overlayEntry?.remove();
      _overlayEntry = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack & Overlay Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            // 🧱 Stack part
            Stack(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.red.withOpacity(0.8),
                ),
              ],
            ),

            SizedBox(height: 40),

            // 🧙‍♂️ Overlay button
            ElevatedButton(
              onPressed: _showOverlay,
              child: Text('Show Overlay'),
            ),
          ],
        ),
      ),
    );
  }
}
