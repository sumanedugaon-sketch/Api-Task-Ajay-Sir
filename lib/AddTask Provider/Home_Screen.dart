import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'AddTask_Provider_Screen.dart';

class HomeScreen3 extends StatelessWidget {
  const HomeScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    //Provider init object;
    var providerObj = Provider.of<AddtaskProviderScreen>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Crud With Provider"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Form(
              key: providerObj.formKey,
              child: Column(
                children: [
                  SizedBox(height: 15),
                  TextFormField(
                    controller: providerObj.nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Your Name",
                      labelText: "Name",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Name";
                      }
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Your Email",
                      labelText: "Email",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Enter Your Email";
                      }
                    },
                  ),
                  SizedBox(height: 15),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        providerObj.addWord();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: Text("Add"),
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: ListView.builder(
                      itemCount: providerObj.listData.length,
                      itemBuilder: (context, index) {
                        var indexValue = providerObj.listData[index];
                        return ListTile(title: Text("${indexValue}"));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
