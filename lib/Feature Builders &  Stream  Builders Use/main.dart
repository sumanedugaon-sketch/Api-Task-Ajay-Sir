import 'package:flutter/material.dart';
import 'Home_Page_Screen.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Future & Stream Builder Example",
      home: HomePageScreen1(),
    );
  }
}
