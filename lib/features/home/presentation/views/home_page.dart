import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/custom_appbar.dart';
import '../../../../core/common/custom_container.dart';
import '../../../../core/theme/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h),
          child: const CustomAppbar()
      ),
      body: SafeArea(
          child: CustomContainer(
              containerContent: Container()
          )
      ),
    );
  }
}
