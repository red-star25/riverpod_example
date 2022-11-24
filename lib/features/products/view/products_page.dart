import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_api/features/products/provider/product_provider.dart';
import 'package:riverpod_api/routes/routes.dart';

class ProductsPage extends ConsumerWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(productProvider);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.favourite);
        },
        child: const Icon(Icons.shopping_bag_outlined),
      ),
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: ref.watch(isLoadingProductsProvider)
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.separated(
              itemCount: data.length,
              separatorBuilder: (BuildContext context, int index) {
                return Gap(10.h);
              },
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(data[index].title ?? ''),
                  subtitle: Text('\$${data[index].price.toString()}'),
                  trailing: data[index].isFavourite
                      ? IconButton(
                          icon: const Icon(
                            Icons.favorite,
                          ),
                          onPressed: () {
                            ref.read(productProvider.notifier).toggleFavourite(
                                data[index].id ?? 0,
                                isFavourite: false);
                          },
                        )
                      : IconButton(
                          icon: const Icon(
                            Icons.favorite_outline,
                          ),
                          onPressed: () {
                            ref.read(productProvider.notifier).toggleFavourite(
                                data[index].id ?? 0,
                                isFavourite: true);
                          },
                        ),
                );
              },
            ),
    );
  }
}
