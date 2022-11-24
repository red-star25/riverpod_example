import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_api/features/products/data/model/product_model.dart';
import 'package:riverpod_api/features/products/provider/product_provider.dart';

final favouritesProvider = StateProvider<List<ProductModel>>((ref) {
  final res = ref
      .watch(productProvider)
      .where((element) => element.isFavourite == true)
      .toList();
  return res;
});
