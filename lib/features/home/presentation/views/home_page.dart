import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/custom_container.dart';
import '../../../../core/theme/colors.dart';
import '../widgets/category_list.dart';
import '../widgets/custom_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.kPrimary,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(130.h), child: const CustomAppbar()),
      body: const SafeArea(
        child: CustomContainer(
          containerContent: Column(
            children: [
              CategoryList(),
            ],
          )
        )
      ),
    );
  }
}
