import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Simple list of names
  List<String> names = ['Ram', 'Shyam', 'Hari', 'Sita'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Simple List')),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  title: Text(names[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        names.removeAt(index); // 🗑 Remove name
                      });
                    },
                  ),
                ),
                Divider(), // 📏 Line between items
              ],
            );
          },
        ),
      ),
    );
  }
}
