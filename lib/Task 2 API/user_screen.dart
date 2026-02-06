import 'package:flutter/material.dart';
import 'api_service.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ApiService apiService=ApiService();
    return Scaffold(
      body: FutureBuilder(
        future:apiService.getUsers(), builder:
          (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if(snapshot.connectionState==ConnectionState.waiting){
          return Center(child: CircularProgressIndicator(),);
        }
        else if(snapshot.hasError){
          return Center(child: Text("Errors:${snapshot.error}"),);
        }
        else{
          final data=snapshot.data!;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(title: Text(data[index].name),);
            },);
        }
      },),
    );
  }
}