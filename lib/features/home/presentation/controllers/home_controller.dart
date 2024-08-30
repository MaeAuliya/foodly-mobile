import 'package:get/get.dart';

import '../../domain/entities/category.dart';
import '../../domain/usecases/get_all_category.dart';
import '../../domain/usecases/get_user_time.dart';

class HomeController extends GetxController {
  final GetUserTime _getUserTime = Get.find();
  final GetAllCategory _getAllCategory = Get.find();

  final RxString _errorMessage = "".obs;
  String get errorMessage => _errorMessage.value;

  final RxString _userTime = "".obs;
  String get userTime => _userTime.value;

  final RxList<FoodCategory> _categories = <FoodCategory>[].obs;
  List<FoodCategory> get categories => _categories;

  final RxString _categoryValue = "".obs;
  String get categoryValue => _categoryValue.value;

  final RxString _categoryTitle = "".obs;
  String get categoryTitle => _categoryTitle.value;

  @override
  void onInit() {
    onGetUserTime();
    onGetAllCategory();
    super.onInit();
  }

  Future<void> onGetUserTime() async {
    final result = await _getUserTime();
    result.fold((failure) {
      _errorMessage.value = failure.errorMessage;
    }, (userTime) {
      _userTime.value = userTime;
    });
  }

  Future<void> onGetAllCategory() async {
    final result = await _getAllCategory();
    result.fold((failure) {
      _errorMessage.value = failure.errorMessage;
    }, (categories) {
      _categories.value = categories;
    });
  }

  set updateCategory(String value){
    _categoryValue.value = value;
  }

  set updateTitle(String value){
    _categoryTitle.value = value;
  }
}
