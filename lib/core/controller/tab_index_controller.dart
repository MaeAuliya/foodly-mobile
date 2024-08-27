import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/cart/presentation/views/cart_page.dart';
import '../../features/home/presentation/views/home_page.dart';
import '../../features/profile/presentation/views/profile_page.dart';
import '../../features/search/presentation/views/search_page.dart';

class TabIndexController extends GetxController {
  RxInt _tabIndex = 0.obs;
  int get tabIndex => _tabIndex.value;

  RxList<Widget> _screens = <Widget>[].obs;
  List<Widget> get screens => _screens;

  @override
  void onInit() {
    super.onInit();
    getScreens();
  }

  void getScreens(){
    _screens.addAll([
      const HomePage(),
      const SearchPage(),
      const CartPage(),
      const ProfilePage()
    ]);
  }

  set setTabIndex(int newValue){
    _tabIndex.value = newValue;
  }
}