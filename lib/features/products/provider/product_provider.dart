import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_api/core/shared_provider/shared_providers.dart';
import 'package:riverpod_api/features/products/data/api/product_api.dart';
import 'package:riverpod_api/features/products/data/model/product_model.dart';
import 'package:riverpod_api/features/products/data/repository/product_repository.dart';
import 'package:riverpod_api/features/products/provider/product_state_provider.dart';

final productApiProvider = Provider<ProductApi>((ref) {
  return ProductApi(ref.read(dioClientProvider));
});

final productRepositoryProvider = Provider<ProductRepository>((ref) {
  return ProductRepository(ref.read(productApiProvider));
});

final productProvider =
    StateNotifierProvider<ProductsNotifier, List<ProductModel>>((ref) {
  return ProductsNotifier(ref: ref);
});

final isLoadingProductsProvider = StateProvider<bool>((ref) {
  return true;
});
