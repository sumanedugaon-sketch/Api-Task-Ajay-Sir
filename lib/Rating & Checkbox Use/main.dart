import 'package:flutter/material.dart';
import 'package:flutter_task/Botton%20Sheet%20Use%20Flutter/main.dart';
import 'package:flutter_task/Rating%20&%20Checkbox%20Use/Home_Page_Screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rating & Checkbox Use",
      home: HomePageScreen(),
    );
  }
}
