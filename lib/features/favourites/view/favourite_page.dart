import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_api/features/favourites/provider/favourite_provider.dart';
import 'package:riverpod_api/features/products/provider/product_provider.dart';

class FavouriteProductsPage extends ConsumerWidget {
  const FavouriteProductsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(favouritesProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourites'),
      ),
      body: data.isNotEmpty
          ? ListView.separated(
              itemCount: data.length,
              separatorBuilder: (BuildContext context, int index) {
                return Gap(10.h);
              },
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    key: Key(data[index].id.toString()),
                    title: Text(data[index].title ?? ''),
                    subtitle: Text('\$${data[index].price.toString()}'),
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.favorite,
                      ),
                      onPressed: () {
                        ref.read(productProvider.notifier).toggleFavourite(
                            data[index].id ?? 0,
                            isFavourite: false);
                      },
                    ));
              },
            )
          : const Center(
              child: Text('No Favourites Found'),
            ),
    );
  }
}
