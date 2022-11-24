import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_api/features/products/data/model/product_model.dart';
import 'package:riverpod_api/features/products/provider/product_provider.dart';

class ProductsNotifier extends StateNotifier<List<ProductModel>> {
  // Fetching all products whenever anyone starts listning.
  // Passing Ref, in order to access other providers inside this.
  ProductsNotifier({required this.ref}) : super([]) {
    fetchProducts(ref: ref);
  }
  final Ref ref;

  Future fetchProducts({required Ref ref}) async {
    await ref
        .read(productRepositoryProvider)
        .fetchProductRequested()
        .then((value) {
      // Setting current `state` to the fetched list of products.
      state = value;
      // Setting isLoading to `false`.
      ref.read(isLoadingProductsProvider.notifier).state = false;
    });
  }

  void toggleFavourite(int id, {required bool isFavourite}) {
    // Getting the tapped Product and setting it's isFavourite to respective value.
    final updatedProduct = state
        .firstWhere((element) => element.id == id)
        .copyWith(isFavourite: isFavourite);

    // In order to trigger the consumer to rebuild.
    // state must equal a new value of that object,
    // updating variables of the state object itself will not work.
    state = [
      for (int i = 0; i < state.length; i++)
        if (state[i].id == id) updatedProduct else state[i]
    ];
  }
}
