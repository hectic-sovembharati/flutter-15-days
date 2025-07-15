import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

//Created a main app stateless widget
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Set State")),
        body: CounterScreen(),
      ),
      
    );
  }
}

//Created a counter screen stateful widget
class CounterScreen extends StatefulWidget{
  @override
  State<CounterScreen> createState(){
    return _CounterScreenState();
  }
}


//Created an counter state basically used the set state to update the number
class _CounterScreenState extends State<CounterScreen>{
  int number = 0;
  void increaseNumber(){
    setState((){
      number = number + 1;
    });
  }
  void decreaseNumber(){
    setState((){
      number = number - 1;
    });
  }
  void resetNumber(){
    setState(() {
      number = 0;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Counter App", 
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24), // Space between heading and number
            Text("Number: $number"),
            ElevatedButton(
              onPressed: increaseNumber, 
              child: Text("Increase"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 11, 216, 49),
                foregroundColor: Colors.white,
              ),  
            ),
            ElevatedButton(
              onPressed: decreaseNumber, 
              child: Text("Decrease"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                foregroundColor: Colors.white,
              ),  
            ),
            ElevatedButton(
              onPressed: resetNumber,
              child: Text("Reset"),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 227, 50, 38),
                foregroundColor: Colors.white,
              ),
            ),


          ]
        )
      )
    );
  }
}