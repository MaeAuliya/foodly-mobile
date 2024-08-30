import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/common/reusable_appbar.dart';
import '../../../../core/common/reusable_text.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/theme/app_style.dart';
import '../../../../core/theme/colors.dart';
import '../../../home/domain/entities/category.dart';
import '../../../home/presentation/controllers/home_controller.dart';
import '../widgets/background_container.dart';
import 'category_page.dart';

class AllCategoryPage extends StatelessWidget {
  const AllCategoryPage({super.key});

  static const routeName = "/all-category";

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return Scaffold(
      appBar: reusableAppBar(title: "Categories"),
      body: BackgroundContainer(
        color: Colours.kWhite,
        child: Container(
          padding: EdgeInsets.only(left: 12.w, top: 10.h),
          height: height,
          child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: List.generate(controller.categories.length, (index) {
              FoodCategory category = controller.categories[index];
              return ListTile(
                onTap: () {
                  Get.toNamed(CategoryPage.routeName, arguments: category);
                },
                leading: CircleAvatar(
                  radius: 20.r,
                  backgroundColor: Colours.kGrayLight,
                  child: Image.network(
                    category.imageUrl,
                    fit: BoxFit.contain,
                  ),
                ),
                title: ReusableText(
                    text: category.title,
                    style: appStyle(12, Colours.kGray, FontWeight.normal)),
                trailing: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colours.kGray,
                  size: 15.r,
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
