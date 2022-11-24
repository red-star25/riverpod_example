import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_api/features/home/data/models/joke_model.dart';

part 'joke_state.freezed.dart';

@freezed
class JokeState with _$JokeState {
  factory JokeState({
    @Default(JokeModel()) JokeModel joke,
    @Default(true) bool isLoading,
  }) = _JokeState;
}
