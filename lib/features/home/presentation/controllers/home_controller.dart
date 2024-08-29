import 'package:get/get.dart';

import '../../domain/usecases/get_user_time.dart';

class HomeController extends GetxController {
  final GetUserTime _getUserTime = Get.find();

  final RxString _errorMessage = "".obs;

  String get errorMessage => _errorMessage.value;

  final RxString _userTime = "".obs;

  String get userTime => _userTime.value;

  @override
  void onInit() {
    onGetUserTime();
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
}
