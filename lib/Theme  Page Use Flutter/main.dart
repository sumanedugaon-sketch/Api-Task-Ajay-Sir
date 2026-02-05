import 'package:flutter/material.dart';

import 'Theme_Page_Ui.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Theme Example",
      home: ThemePageUi(),
    );
  }
}
