import '../../../../core/constants/typedef.dart';
import '../entities/category.dart';

abstract class HomeRepository {
  const HomeRepository();

  ResultFuture<String> getUserTime();

  ResultFuture<List<FoodCategory>> getAllCategory();
}