import 'package:flutter/material.dart';

import 'Model View Controller Use From Validation/View/Login_Page_Screen.dart';
import 'Model View Controller Use From Validation/View/from_validation_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "From Validation",
      home: LoginPageScreen(),
    );
  }
}
