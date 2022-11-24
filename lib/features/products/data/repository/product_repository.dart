import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:riverpod_api/core/network/dio_exceptions.dart';
import 'package:riverpod_api/features/products/data/api/product_api.dart';
import 'package:riverpod_api/features/products/data/model/product_model.dart';

class ProductRepository {
  final ProductApi productApi;

  ProductRepository(this.productApi);

  Future<List<ProductModel>> fetchProductRequested() async {
    try {
      final res = await productApi.fetchProductsApiRequest();
      final productModel =
          (res as List).map((e) => ProductModel.fromJson(e)).toList();
      return productModel;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e);
      log(errorMessage.toString());
      rethrow;
    }
  }
}
