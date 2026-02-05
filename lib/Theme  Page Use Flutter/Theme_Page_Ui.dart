import 'package:flutter/material.dart';

class ThemePageUi extends StatefulWidget {
  const ThemePageUi({super.key});

  @override
  State<ThemePageUi> createState() => _ThemePageUiState();
}

class _ThemePageUiState extends State<ThemePageUi> {
  bool isSelectedTheme=false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: isSelectedTheme? ThemeData.dark():ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Theme page Example"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: (){
            setState(() {
              isSelectedTheme=!isSelectedTheme;
            });
          }, child: Text("Theme Change")),
        ),
      ),
    );
  }
}
