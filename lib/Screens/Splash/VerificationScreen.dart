import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zodo_doctor/Screens/Dashbaord/DashboardScreen.dart';
import 'package:zodo_doctor/Screens/Splash/SplashScreen.dart';
import 'package:zodo_doctor/Src/appButtons.dart';
import 'package:zodo_doctor/Src/utils.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Expanded(
                child: Center(
              child: Image.asset(
                "Assets/Images/verification.png",
                height: 200.h,
                width: 364.w,
              ),
            )),
            appButton.PrimaryButton(
                name: "Explore app",
                onClick: () {
                  Get.to(() => dashBoardScreen(),
                      transition: Transition.rightToLeft);
                }),
            SpacerH(20.h)
          ],
        ),
      )),
    );
  }
}
