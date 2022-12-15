import 'package:flutter/material.dart';
import 'package:riverpod_api/features/joke/data/models/joke_model.dart';

class JokeView extends StatelessWidget {
  const JokeView({
    Key? key,
    required this.jokeData,
  }) : super(key: key);

  final JokeModel jokeData;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text(
          jokeData.joke ?? '',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
