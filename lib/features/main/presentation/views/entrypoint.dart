import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/theme/colors.dart';
import '../controllers/tab_index_controller.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static const routeName = "/main";

  @override
  Widget build(BuildContext context) {
    final TabIndexController controller = Get.put(TabIndexController());

    return Obx(() => Scaffold(
          body: IndexedStack(
            index: controller.tabIndex,
            children: controller.screens,
          ),
          bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(canvasColor: Colours.kPrimary),
              child: BottomNavigationBar(
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  unselectedIconTheme:
                      const IconThemeData(color: Colors.black38),
                  selectedIconTheme:
                      const IconThemeData(color: Colours.kSecondary),
                  onTap: (value) {
                    controller.setTabIndex = value;
                  },
                  currentIndex: controller.tabIndex,
                  items: const [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: 'Home'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.search), label: 'Search'),
                    BottomNavigationBarItem(
                        icon: Badge(
                            label: Text('1'), child: Icon(Icons.shopping_cart)),
                        label: 'Cart'),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person), label: 'Profile')
                  ])),
        )
    );
  }
}
