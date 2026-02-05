import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Profile Screen"),
      ),
      backgroundColor: Colors.blue.shade200,
      body: Center(
        child: Text("Welcome To Home"),
      ),
    );
  }
}
