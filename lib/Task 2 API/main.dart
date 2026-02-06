import 'package:flutter/material.dart';
import 'package:flutter_task/Task%202%20API/user_screen.dart';
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
      home: UserScreen(),
    );
  }
}
