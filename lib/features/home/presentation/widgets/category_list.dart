import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../core/common/reusable_text.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/theme/app_style.dart';
import '../../../../core/theme/colors.dart';
import '../../../category/presentation/views/all_category_page.dart';
import '../../domain/entities/category.dart';
import '../controllers/home_controller.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return Obx(() => Container(
          height: 80.w,
          padding: EdgeInsets.only(left: 18.w, top: 10.h),
          child: ListView(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: List.generate(controller.categories.length, (index) {
              FoodCategory category = controller.categories[index];
              return GestureDetector(
                onTap: () {
                  if (controller.categoryValue == category.id) {
                    controller.updateCategory = "";
                    controller.updateTitle = "";
                  } else if (category.value == "more") {
                    controller.updateCategory = "";
                    controller.updateTitle = "";
                    Get.toNamed(AllCategoryPage.routeName);
                  } else {
                    controller.updateCategory = category.id;
                    controller.updateTitle = category.title;
                  }
                },
                child: Container(
                  margin: EdgeInsets.only(right: 8.w),
                  padding: EdgeInsets.only(top: 4.h),
                  width: width * 0.19,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                          color: controller.categoryValue == category.id
                              ? Colours.kSecondary
                              : Colours.kGrayLight,
                          width: controller.categoryValue == category.id
                              ? 2.w
                              : 1.w
                      )
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 35.h,
                        margin: EdgeInsets.only(bottom: 4.w),
                        child: Image.network(category.imageUrl,
                            fit: BoxFit.contain),
                      ),
                      ReusableText(
                          text: category.title,
                          style: appStyle(12, Colours.kDark, FontWeight.w400))
                    ],
                  ),
                ),
              );
            }),
          ),
        ));
  }
}
