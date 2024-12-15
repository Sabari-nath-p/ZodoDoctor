import 'package:get/get.dart';
import 'package:zodo_doctor/Screens/Authentication/AuthenticationScreen.dart';

class SplashController extends GetxController {
  checkLogin() async {
    await Future.delayed(Duration(seconds: 2));

    Get.to(() => AuthenticationScreen());
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkLogin();
  }
}
