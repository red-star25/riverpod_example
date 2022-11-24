import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_api/features/home/data/models/joke_state.dart';
import 'package:riverpod_api/features/home/data/repository/home_repository.dart';

class JokeDataNotifier extends StateNotifier<JokeState> {
  JokeDataNotifier(this.homeRepository) : super(JokeState()) {
    getJoke();
  }
  HomeRepository homeRepository;

  Future<void> getJoke() async {
    state = state.copyWith(isLoading: true);
    await homeRepository.fetchJoke().then((data) {
      state = state.copyWith(joke: data, isLoading: false);
    });
  }
}
