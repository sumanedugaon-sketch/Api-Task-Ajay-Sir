import 'package:flutter/material.dart';
import 'package:flutter_task/AddTask%20Provider/main.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      home:  Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("My First Flutter App"),
        ),
        body: Center(
          child: Text("Hello Flutter",style: TextStyle(fontSize: 24,color: Colors.blue),),
        ),
      ),
    );
  }
}
