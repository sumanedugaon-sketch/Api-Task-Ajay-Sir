import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'AddTask_Provider_Screen.dart';
import 'Home_Screen.dart';
void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AddtaskProviderScreen(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Add Task Provider",
      home: HomeScreen3(),
    );
  }
}
