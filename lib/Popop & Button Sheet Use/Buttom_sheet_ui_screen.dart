import 'package:flutter/material.dart';

import 'Profile_Screen.dart';

class ButtomSheetUiScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Buttom Sheet"),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              //value le kar aayega us menuiteam ka
              if (value == "Home") {
                //Navigator
                //print
                //return
                //toast
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              } else if (value == "About") {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("About Pop up Successfully")),
                );
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("Home"), value: "Home"),
                PopupMenuItem(child: Text("GitHub")),
                PopupMenuItem(child: Text("About"), value: "About"),
                PopupMenuItem(child: Text("Jobs")),
              ];
            },
          ),
        ],
      ),
      backgroundColor: Colors.blue.shade200,
      body: ElevatedButton(
        onPressed: () {
          showMenu(
            position: RelativeRect.fromLTRB(20, 50, 0, 500),
            context: context,
            items: [
              PopupMenuItem(child: Text("Home"), value: "Home"),
              PopupMenuItem(child: Text("GitHub")),
            ],
          ).then((value) {
            if (value == "Home") {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Home Pop Up Successfully")),
              );
            }
          });
        },
        child: Text("Show Menu"),
      ),
    );
  }
}
