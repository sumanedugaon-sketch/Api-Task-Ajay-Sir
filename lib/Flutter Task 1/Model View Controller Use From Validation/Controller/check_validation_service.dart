import 'package:flutter/material.dart';

class CheckValidationService {
  var fromKey=GlobalKey<FormState>();

  checkValidation(){
    if(fromKey.currentState!.validate()){
      print("form is valid");
    }
  }
}