part of 'dependency_injection.dart';

class DependencyInjection{
  Future<void> init() async {
    await _initHome();
  }

  Future<void> _initHome() async {
    // Repositories
    Get.lazyPut<HomeRepository>(() => HomeRepositoryImpl(Get.find()));
    // Usecases
    Get.lazyPut(() => GetUserTime(Get.find()));
    Get.lazyPut(() => GetAllCategory(Get.find()));
    // Datasources
    Get.lazyPut<HomeLocalDataSource>(() => const HomeLocalDataSourceImpl());
  }
}