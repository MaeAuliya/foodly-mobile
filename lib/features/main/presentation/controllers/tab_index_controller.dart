import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../cart/presentation/views/cart_page.dart';
import '../../../home/presentation/views/home_page.dart';
import '../../../profile/presentation/views/profile_page.dart';
import '../../../search/presentation/views/search_page.dart';

class TabIndexController extends GetxController {
  final RxInt _tabIndex = 0.obs;

  int get tabIndex => _tabIndex.value;

  final RxList<Widget> _screens = <Widget>[].obs;

  List<Widget> get screens => _screens;

  @override
  void onInit() {
    super.onInit();
    getScreens();
  }

  void getScreens() {
    _screens.addAll([
      const HomePage(),
      const SearchPage(),
      const CartPage(),
      const ProfilePage()
    ]);
  }

  set setTabIndex(int newValue) {
    _tabIndex.value = newValue;
  }
}
