import 'package:flutter/material.dart';

class AddtaskProviderScreen extends ChangeNotifier{
  var nameController=TextEditingController();
  List<String>listData=["A","B","C","D"];
  var formKey=GlobalKey<FormState>();

  void addWord(){
    if(formKey.currentState!.validate()){
      listData.add("G");
      notifyListeners();
    }
  }
}