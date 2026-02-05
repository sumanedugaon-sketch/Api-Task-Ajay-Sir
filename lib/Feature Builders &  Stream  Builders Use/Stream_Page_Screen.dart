import 'package:flutter/material.dart';
class StreamPageScreen extends StatelessWidget {
  const StreamPageScreen({super.key});
  Stream<int>countingStream()async*{
    for (int i=1; i<=10; i++){
      await Future.delayed(Duration(seconds: 1));
      yield i;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("StreamBuilder"),
      ),
      backgroundColor: Colors.blue.shade200,
      body: Center(
        child: StreamBuilder(stream: countingStream(), builder: (context,snapshot){
          if(!snapshot.hasData){
            return CircularProgressIndicator();
          }else{
            return Text("Counter:${snapshot.data}",style: TextStyle(fontSize: 25),);
          }
        }),
      ),
    );
  }
}
