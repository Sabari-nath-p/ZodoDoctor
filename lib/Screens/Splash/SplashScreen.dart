import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zodo_doctor/Screens/Splash/controller.dart';
import 'package:zodo_doctor/Src/ImagesList.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  SplashController sctrl = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Image.asset(
          img.zodoSplashLogo,
          width: 255.w,
          height: 119.h,
        ),
      )),
    );
  }
}
