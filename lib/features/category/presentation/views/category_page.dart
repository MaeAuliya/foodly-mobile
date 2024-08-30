import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/common/reusable_appbar.dart';
import '../../../../core/theme/colors.dart';
import '../../../home/domain/entities/category.dart';
import '../widgets/background_container.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  static const routeName = '/category';

  @override
  Widget build(BuildContext context) {
    final FoodCategory category = Get.arguments as FoodCategory;

    return Scaffold(
      appBar: reusableAppBar(title: category.title),
      body: BackgroundContainer(color: Colours.kWhite, child: Container()),
    );
  }
}
