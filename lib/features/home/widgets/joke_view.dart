import 'package:flutter/material.dart';
import 'package:riverpod_api/features/home/data/models/joke_model.dart';

class JokeView extends StatelessWidget {
  const JokeView({
    Key? key,
    required this.joke,
  }) : super(key: key);

  final JokeModel joke;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              joke.setup ?? '',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              joke.delivery ?? '',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
