import '../../../../core/constants/typedef.dart';
import '../../../../core/usecase/usecase.dart';
import '../repositories/home_repository.dart';

class GetUserTime implements UsecaseWithoutParams<String> {
  const GetUserTime(this._repository);

  final HomeRepository _repository;

  @override
  ResultFuture<String> call() => _repository.getUserTime();
}