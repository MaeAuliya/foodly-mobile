import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/constants.dart';
import '../theme/app_style.dart';
import '../theme/colors.dart';
import 'reusable_text.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      height: 110.h,
      width: width,
      color: Colours.kOffWhite,
      child: Row(
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
          )
        ],
      ),
    );
  }
}
