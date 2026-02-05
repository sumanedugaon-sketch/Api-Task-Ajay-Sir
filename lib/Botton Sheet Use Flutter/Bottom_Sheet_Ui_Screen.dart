import 'package:flutter/material.dart';

class BottomSheetUiScreen extends StatelessWidget {
  const BottomSheetUiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
      ),
      body: ListView(
        children: [
          ElevatedButton(onPressed: (){
           showModalBottomSheet(
               context: context, builder: (context){
                 return Container(
                   height: 400,
                   child: Column(
                     children: [
                       TextField(),
                       TextField(),
                       ElevatedButton(onPressed: (){
                       }, child: Text("Yes")),
                     ],
                   ),
                 );
               }
           );
          }, child: Text("Open Button Sheet")),
        ],
      ),
    );
  }
}
