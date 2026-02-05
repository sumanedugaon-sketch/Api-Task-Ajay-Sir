import 'package:flutter/material.dart';

class FuturePageScreen extends StatelessWidget {
  const FuturePageScreen({super.key});

  Future<String> loadData() async {
    await Future.delayed(Duration(seconds: 5));
    return "Future Data Loaded";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("FutureBuilder"),
      ),
      backgroundColor: Colors.blue.shade200,
      body: Center(
        child: FutureBuilder(
          future: loadData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else {
              return Text(
                snapshot.data.toString(),
                style: TextStyle(fontSize: 20),
              );
            }
          },
        ),
      ),
    );
  }
}
