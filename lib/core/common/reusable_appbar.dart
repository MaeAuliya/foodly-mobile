import 'package:flutter/material.dart';

import '../theme/app_style.dart';
import '../theme/colors.dart';

AppBar reusableAppBar({
  required String title
}) {
  return AppBar(
    title: Text(
      title,
      style: appStyle(16, Colours.kDark, FontWeight.w600),
    ),
    backgroundColor: Colours.kOffWhite,
    centerTitle: true,
  );
}
