import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/theme/app_style.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/common/reusable_text.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return Obx(() => Container(
      padding: EdgeInsets.only(left: 12.w, right: 12.w, top: 24.h),
      height: 110.h,
      width: width,
      color: Colours.kOffWhite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundColor: Colours.kSecondary,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReusableText(
                    text: "Deliver to",
                    style: appStyle(13, Colours.kSecondary, FontWeight.w600)),
                SizedBox(
                  width: width * 0.65,
                  child: Text(
                    "Jln. Wibawa Mukti 2, Jatiasih",
                    overflow: TextOverflow.ellipsis,
                    style: appStyle(11, Colours.kGrayLight, FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          Text(
            controller.userTime,
            style: const TextStyle(fontSize: 25),
          )
        ],
      ),
    ));
  }
}
