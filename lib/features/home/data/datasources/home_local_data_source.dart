import 'package:flutter/cupertino.dart';

import '../../../../core/constants/uidata.dart';
import '../../../../core/errors/exceptions.dart';
import '../../domain/entities/category.dart';

abstract class HomeLocalDataSource {
  const HomeLocalDataSource();

  Future<String> getUserTime();

  Future<List<FoodCategory>> getAllCategory();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  const HomeLocalDataSourceImpl();

  @override
  Future<String> getUserTime() async {
    try {
      DateTime now = DateTime.now();
      int hour = now.hour;

      if (hour >= 6 && hour < 18) {
        return "☀️";
      } else {
        return "🌙";
      }
    } on LocalException {
      rethrow;
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      throw LocalException(message: e.toString());
    }
  }

  @override
  Future<List<FoodCategory>> getAllCategory() async {
    try {
      List<FoodCategory> listCategory = List.generate(categories.length, (index) {
        Map<String, dynamic> categoryItem = categories[index];
        return FoodCategory(
            id: categoryItem["_id"] ?? "",
            title: categoryItem["title"] ?? "",
            value: categoryItem["value"] ?? "",
            imageUrl: categoryItem["imageUrl"] ?? "",
            createdAt: categoryItem["createdAt"] ?? "",
            updatedAt: categoryItem["updatedAt"] ?? "");
      });

      return listCategory;
    } on LocalException {
      rethrow;
    } catch (e, s) {
      debugPrintStack(stackTrace: s);
      throw LocalException(message: e.toString());
    }
  }
}
