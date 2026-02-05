import 'package:flutter/material.dart';

class CheckboxPageScreen extends StatefulWidget {
  const CheckboxPageScreen({super.key});

  @override
  State<CheckboxPageScreen> createState() => _CheckboxPageScreenState();
}

class _CheckboxPageScreenState extends State<CheckboxPageScreen> {
  bool isCheckboxPage=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("CheckBox Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(value: isCheckboxPage, onChanged: (value){
              setState(() {
                isCheckboxPage=value!;
              });
            },),
            Text(isCheckboxPage?"Checked":"Not Checked",style: TextStyle(fontSize: 18),),
          ],
        ),
      ),
    );
  }
}
