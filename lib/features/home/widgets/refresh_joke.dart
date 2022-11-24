import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_api/features/home/provider/home_provider.dart';

class RefreshJoke extends ConsumerWidget {
  const RefreshJoke({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: ref.read(jokeDataProvider.notifier).getJoke,
      child: const Icon(Icons.refresh),
    );
  }
}
