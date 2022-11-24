import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:riverpod_api/core/network/dio_exceptions.dart';
import 'package:riverpod_api/features/joke/data/api/joke_api.dart';
import 'package:riverpod_api/features/joke/data/models/joke_model.dart';

class JokeRepository {
  final JokeApi _jokeApi;

  JokeRepository(this._jokeApi);

  Future<JokeModel> fetchJoke() async {
    try {
      final res = await _jokeApi.fetchJokesApiRequest();
      final jokeModel = JokeModel.fromJson(res);
      return jokeModel;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e);
      log(errorMessage.toString());
      rethrow;
    }
  }
}
