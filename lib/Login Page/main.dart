import 'package:flutter/material.dart';
import 'package:flutter_task/Flutter%20Task%201/main.dart';

import 'Loggin_Page_Screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Login Page Screen",
    home: LogginPageScreen(),
  );
}
}
