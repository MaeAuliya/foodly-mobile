import 'package:flutter/cupertino.dart';

import '../../../../core/errors/exceptions.dart';

abstract class HomeLocalDataSource {
  const HomeLocalDataSource();

  Future<String> getUserTime();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  const HomeLocalDataSourceImpl();

  @override
  Future<String> getUserTime() async {
    try {
      DateTime now = DateTime.now();
      int hour = now.hour;

      if(hour >= 6 && hour < 18){
        return "☀️";
      } else {
        return "🌙";
      }

    } on LocalException {
      rethrow;
    } catch(e,s){
      debugPrintStack(stackTrace: s);
      throw LocalException(message: e.toString());
    }
  }
}