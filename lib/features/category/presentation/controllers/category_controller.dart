import 'package:get/get.dart';

import '../../../home/domain/entities/category.dart';

class CategoryController extends GetxController {

  final Rx<FoodCategory> _category = const FoodCategory.empty().obs;
  FoodCategory get category => _category.value;

  set updateCategoryItem(FoodCategory value){
    _category.value = value;
  }

}