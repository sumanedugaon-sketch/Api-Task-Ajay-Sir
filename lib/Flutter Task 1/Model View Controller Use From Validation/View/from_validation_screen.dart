import 'package:flutter/material.dart';
import 'package:flutter_task/Flutter%20Task%201/Model%20View%20Controller%20Use%20From%20Validation/Controller/check_validation_service.dart';

class FromValidationScreen extends StatelessWidget {
  const FromValidationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var obj=CheckValidationService();
    var Key=obj.fromKey;
    return Scaffold(
      appBar: AppBar(
        title: Text("From Validation"),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key:Key,
        child: Column(
          children: [
            TextFormField(
              validator:(value){
                if(value!.isEmpty){
                  return "Please enter your name";
                }
                return null;
              },
            ),
            ElevatedButton(onPressed: (){
              obj.checkValidation();
            }, child: Text("Check")),
          ],
        )
      ),
    );
  }
}
