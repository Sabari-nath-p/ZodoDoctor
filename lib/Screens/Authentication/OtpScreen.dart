import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import 'package:zodo_doctor/Screens/Splash/SplashScreen.dart';
import 'package:zodo_doctor/Src/appButtons.dart';
import 'package:zodo_doctor/Src/appText.dart';
import 'package:zodo_doctor/Src/utils.dart';

class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SpacerH(
              20.h,
            ),
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 25.w,
              ),
            ),
            SpacerH(30.h),
            appText.primaryText(
                text: "Verify OTP",
                fontSize: 16.sp,
                fontWeight: FontWeight.w600),
            SpacerH(12.h),
            appText.primaryText(
                text: "Enter the 4 digit OTP sent on +91949677913",
                fontSize: 12.sp,
                fontWeight: FontWeight.w500),
            SpacerH(12.h),
            Pinput(
              length: 4,
            ),
            SpacerH(12.h),
            appText.primaryText(
                text: "Resent OTP in 30s",
                fontSize: 12.sp,
                fontWeight: FontWeight.w500),
            Expanded(child: Container()),
            appButton.PrimaryButton(name: "Login"),
            SpacerH(20.h)
          ],
        ),
      )),
    );
  }
}
