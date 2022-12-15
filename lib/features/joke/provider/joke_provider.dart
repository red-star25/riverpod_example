import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_api/core/shared_provider/shared_providers.dart';
import 'package:riverpod_api/features/joke/data/api/joke_api.dart';
import 'package:riverpod_api/features/joke/data/models/joke_state.dart';
import 'package:riverpod_api/features/joke/data/repository/joke_repository.dart';
import 'package:riverpod_api/features/joke/provider/joke_state_provider.dart';

final jokeApiProvider = Provider<JokeApi>((ref) {
  return JokeApi(ref.read(dioClientProvider));
});

final jokeRepositoryProvider = Provider<JokeRepository>((ref) {
  return JokeRepository(ref.read(jokeApiProvider));
});

final jokeDataProvider =
    StateNotifierProvider.autoDispose<JokeDataNotifier, JokeState>((ref) {
  return JokeDataNotifier(ref.read(jokeRepositoryProvider));
});
