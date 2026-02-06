import 'dart:convert';
import 'package:http/http.dart' as http;
import 'user_model.dart';

class ApiService {
  Future<List<UserModel>> getUsers() async {
    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/users"),
      headers: {
        "Content-Type":"application/json"
      },
    );
    print("status code:${response.statusCode}");
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return data.map((d) => UserModel.fromJson(d)).toList();
    } else {
      throw Exception("Data Errors");
    }
  }
}
