import 'package:dartz/dartz.dart';

import '../../../../core/constants/typedef.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failure.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/home_local_data_source.dart';

class HomeRepositoryImpl implements HomeRepository {
  const HomeRepositoryImpl(this._localDataSource);

  final HomeLocalDataSource _localDataSource;

  @override
  ResultFuture<String> getUserTime() async {
    try {
      final result = await _localDataSource.getUserTime();
      return Right(result);
    } on LocalException catch (e) {
      return Left(LocalFailure.fromException(e));
    }
  }


}