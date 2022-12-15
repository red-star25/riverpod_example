import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:riverpod_api/features/home/widgets/home_btn.dart';
import 'package:riverpod_api/routes/routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'.tr()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeButton(
                title: 'jokes'.tr(),
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.joke);
                }),
            Gap(20.h),
            HomeButton(
                title: 'products'.tr(),
                onTap: () {
                  Navigator.of(context).pushNamed(Routes.product);
                }),
          ],
        ),
      ),
    );
  }
}
