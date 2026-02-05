import 'package:flutter/material.dart';
import 'package:flutter_task/API%20TASK%20BY%20AJAY%20SIR/Post_Model.dart';

import 'ApiHandler.dart';

class PostScreen extends StatelessWidget {
  const PostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<PostModel>>(
        future: ApiHandler().fetchData(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            final data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(title: Text(data[index].title));
              },
            );
          }
        },
      ),
    );
  }
}
