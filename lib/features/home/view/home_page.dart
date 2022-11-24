import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_api/features/favourites/provider/favourite_provider.dart';
import 'package:riverpod_api/features/home/provider/home_provider.dart';
import 'package:riverpod_api/features/home/widgets/joke_view.dart';
import 'package:riverpod_api/features/home/widgets/refresh_joke.dart';
import 'package:riverpod_api/features/products/view/products_page.dart';
import 'package:riverpod_api/routes/routes.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage>
    with TickerProviderStateMixin {
  late final TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final isLoading = ref.watch(jokeDataProvider).isLoading;
    final joke = ref.watch(jokeDataProvider).joke;
    final favouritedProducts = ref.watch(favouritesProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.tr()),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.favourite);
            },
            icon: const Icon(Icons.shopping_bag_outlined),
          ),
          Gap(5.w),
          Visibility(
            visible: favouritedProducts.isNotEmpty,
            child: Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: 10.r,
                backgroundColor: Colors.black,
                child: Text(
                  favouritedProducts.length.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                  ),
                ),
              ),
            ),
          ),
          Gap(10.w),
        ],
      ),
      floatingActionButton: const RefreshJoke(),
      body: Column(
        children: [
          TabBar(
            labelPadding: const EdgeInsets.all(8),
            tabs: [
              Text(
                'jokes'.tr(),
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                'products'.tr(),
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
            controller: tabController,
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: [
                isLoading
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : JokeView(joke: joke),
                const ProductsPage()
              ],
            ),
          )
        ],
      ),
    );
  }
}
