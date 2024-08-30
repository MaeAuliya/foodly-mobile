part of 'router.dart';

class AppRoutes {
  static String getInitialRoute() => MainScreen.routeName;

  static List<GetPage> routes = [
    // Main Screen
    GetPage(name: MainScreen.routeName, page: () => const MainScreen()),
    // All Category Screen
    GetPage(name: AllCategoryPage.routeName, page: () => const AllCategoryPage()),

    GetPage(name: CategoryPage.routeName, page: () => const CategoryPage()),
  ];
}
