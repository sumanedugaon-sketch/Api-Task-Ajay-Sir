import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingPageScreen extends StatefulWidget {
  const RatingPageScreen({super.key});

  @override
  State<RatingPageScreen> createState() => _RatingPageScreenState();
}

class _RatingPageScreenState extends State<RatingPageScreen> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Rating Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RatingBar.builder(
              initialRating: 0,
              minRating: 1,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 40,
              itemBuilder: (context, _) =>
              const Icon(Icons.star, color: Colors.orange),
              onRatingUpdate: (value) {
                setState(() {
                  rating = value;
                });
              },
            ),
            const SizedBox(height: 15),
            Text(
              "Rating: $rating",
              style: const TextStyle(fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
