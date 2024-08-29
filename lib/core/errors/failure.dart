import 'package:equatable/equatable.dart';

import 'exceptions.dart';

abstract class Failure extends Equatable {
  const Failure({required this.message, required this.statusCode});

  final String message;
  final dynamic statusCode;

  String get errorMessage => "status code is: $statusCode . Error: $message";

  @override
  List<Object?> get props => [message, statusCode];
}

class LocalFailure extends Failure {
  const LocalFailure({required super.message, required super.statusCode});

  LocalFailure.fromException(LocalException exception)
    : this(message: exception.message, statusCode: 500);
}