import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter API Demo',
      home: const HomePage(),
    );
  }
}

/* =======================
   MODEL CLASS
======================= */
class ProductModel {
  int? id;
  String? title;
  String? body;

  ProductModel({this.id, this.title, this.body});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "title": title,
      "body": body,
    };
  }
}

/* =======================
   API FUNCTIONS
======================= */
class ApiService {
  static const String url =
      "https://jsonplaceholder.typicode.com/posts";

  // GET API
  static Future<List<ProductModel>> getData() async {
    final response = await http.get(Uri.parse(url));

    List data = jsonDecode(response.body);
    return data.map((e) => ProductModel.fromJson(e)).toList();
  }

  // POST API
  static Future<void> addData() async {
    ProductModel product =
    ProductModel(title: "Flutter", body: "API se data gaya");

    await http.post(
      Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(product.toJson()),
    );
  }
}

/* =======================
   UI SCREEN
======================= */
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<ProductModel>> futureData;

  @override
  void initState() {
    super.initState();
    futureData = ApiService.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter API (GET + POST)"),
      ),
      body: FutureBuilder<List<ProductModel>>(
        future: futureData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(snapshot.data![index].title ?? ""),
                    subtitle: Text(snapshot.data![index].body ?? ""),
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return const Center(child: Text("Error"));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await ApiService.addData();
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Data API ko bhej diya")),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}