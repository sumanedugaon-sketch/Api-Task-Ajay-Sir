import 'package:flutter/material.dart';
import 'package:flutter_task/API%20TASK%20BY%20AJAY%20SIR/Post_Screen.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Api Flutter",
      home: PostScreen(),
    );
  }
}

