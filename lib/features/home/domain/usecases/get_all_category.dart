import '../../../../core/constants/typedef.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/category.dart';
import '../repositories/home_repository.dart';

class GetAllCategory implements UsecaseWithoutParams<List<FoodCategory>> {
  const GetAllCategory(this._repository);

  final HomeRepository _repository;

  @override
  ResultFuture<List<FoodCategory>> call() => _repository.getAllCategory();
}