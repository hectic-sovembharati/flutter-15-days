import 'package:flutter/material.dart';
import 'second_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
        appBar: AppBar(
          title: Text('Navigation in Flutter'),
        ),
        body:homePage(),
      ),
    );
  }
}

class homePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
   return Scaffold(
    body: Center(
      child: ElevatedButton(
        onPressed: (){
          Navigator.push(context, 
          MaterialPageRoute(builder: (context)=>SecondPage()));
        },
        child: Text('Main Page'),
      ),
    ),
   );
  }
}