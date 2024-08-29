import '../../../../core/constants/typedef.dart';

abstract class HomeRepository {
  const HomeRepository();

  ResultFuture<String> getUserTime();
}