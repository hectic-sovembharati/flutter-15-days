import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("BMI Calculator")),
        body: Center(child: TextInput()),
      ),
    );
  }
}

class TextInput extends StatefulWidget {
  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  TextEditingController weightController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  String result = ""; // To store and show BMI

  void calculateBMI() {
    double weight = double.parse(weightController.text); // example: 70
    double height = double.parse(heightController.text) / 100; // convert cm to meter

    double bmi = weight / (height * height); // BMI formula

    setState(() {
      result = "Your BMI is ${bmi.toStringAsFixed(2)}";
    });
  }

  void clearText() {
    weightController.clear();
    heightController.clear();
    setState(() {
      result = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: weightController,
          decoration: InputDecoration(
            labelText: "Enter your weight in kg",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 10),
        TextField(
          controller: heightController,
          decoration: InputDecoration(
            labelText: "Enter your height in cm",
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          child: Text("Calculate BMI"),
          onPressed: calculateBMI,
        ),
        SizedBox(height: 20),
        Text(result),
         SizedBox(height: 10),

        ElevatedButton(
          child: Text("Clear"),
          onPressed: clearText,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
          ),
        ),
        SizedBox(height: 20),
        Text(result), // Showing BMI result here
      ],
    );
  }
}
