import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'core/services/dependency/dependency_injection.dart';
import 'core/services/router/router.dart';
import 'core/theme/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 825),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) {
        return GetMaterialApp(
          title: 'Foodly',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              scaffoldBackgroundColor: Colours.kOffWhite,
              iconTheme: const IconThemeData(color: Colours.kDark),
              primarySwatch: Colors.grey),
          initialRoute: AppRoutes.getInitialRoute(),
          getPages: AppRoutes.routes,
        );
      },
    );
  }
}
