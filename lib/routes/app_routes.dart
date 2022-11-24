import 'package:riverpod_api/features/favourites/view/favourite_page.dart';
import 'package:riverpod_api/features/home/view/home_page.dart';
import 'package:riverpod_api/features/joke/view/joke_page.dart';
import 'package:riverpod_api/features/products/view/products_page.dart';
import 'package:riverpod_api/routes/routes.dart';

class AppRoutes {
  static final routes = {
    Routes.home: (context) => const HomePage(),
    Routes.joke: (context) => const JokePage(),
    Routes.product: (context) => const ProductsPage(),
    Routes.favourite: (context) => const FavouriteProductsPage(),
  };
}
