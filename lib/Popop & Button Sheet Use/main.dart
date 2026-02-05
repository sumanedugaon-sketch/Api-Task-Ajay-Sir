import 'package:flutter/material.dart';

import 'Buttom_sheet_ui_screen.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Popup Sheet Button",
      home: ButtomSheetUiScreen(),
    );
  }
}
