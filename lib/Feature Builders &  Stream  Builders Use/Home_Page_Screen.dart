import 'package:flutter/material.dart';

import 'Future_Page_Screen.dart';
import 'Stream_Page_Screen.dart';

class HomePageScreen1 extends StatelessWidget {
  const HomePageScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Future & Stream Example"),
      ),
      backgroundColor: Colors.blue.shade200,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child:Text("Open FutureBuilder"),
                onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>FuturePageScreen()));
            },),SizedBox(height: 20,),
            ElevatedButton(
              child:Text("Open StreamBuilder"),
                onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>StreamPageScreen()));
            },),
          ],
        ),
      ),
    );
  }
}
