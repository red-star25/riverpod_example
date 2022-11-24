import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_api/core/shared_provider/shared_providers.dart';
import 'package:riverpod_api/features/home/data/api/home_api.dart';
import 'package:riverpod_api/features/home/data/models/joke_state.dart';
import 'package:riverpod_api/features/home/data/repository/home_repository.dart';
import 'package:riverpod_api/features/home/provider/home_state_provider.dart';

final homeApiProvider = Provider<HomeApi>((ref) {
  return HomeApi(ref.read(dioClientProvider));
});

final homeRepositoryProvider = Provider<HomeRepository>((ref) {
  return HomeRepository(ref.read(homeApiProvider));
});

final jokeDataProvider =
    StateNotifierProvider<JokeDataNotifier, JokeState>((ref) {
  return JokeDataNotifier(ref.read(homeRepositoryProvider));
});
