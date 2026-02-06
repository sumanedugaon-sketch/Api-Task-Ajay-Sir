import 'dart:convert';
import 'package:flutter_task/API%20TASK%20BY%20AJAY%20SIR/Post_Model.dart';
import 'package:http/http.dart' as http;

class ApiHandler {
  // String apiUrl = 'https://jsonplaceholder.typicode.com/posts';
  String apiUrl = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<PostModel>> fetchData() async {
    final response = await http.get(Uri.parse(apiUrl));
    if (response.statusCode == 200) {
      print(response.body);
      final List data = jsonDecode(response.body);
      return data.map((e) => PostModel.fromJson(e)).toList();
    } else {
      return throw Exception("Errors");
    }
  }
}


