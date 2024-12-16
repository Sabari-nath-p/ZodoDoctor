import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zodo_doctor/Screens/Authentication/OtpScreen.dart';
import 'package:zodo_doctor/Screens/Authentication/RegistrationScreen.dart';
import 'package:zodo_doctor/Src/ImagesList.dart';
import 'package:zodo_doctor/Src/appButtons.dart';
import 'package:zodo_doctor/Src/appText.dart';
import 'package:zodo_doctor/Src/appTextField.dart';
import 'package:zodo_doctor/Src/utils.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  img.AuthenticationGreenBg,
                  height: 228.h,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    top: 0,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Center(
                      child: Image.asset(
                        img.zodoSplashLogo,
                        color: Colors.white,
                        width: 210.w,
                        height: 100.h,
                      ),
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SpacerW(390.w),
                  SpacerH(
                    24.h,
                  ),
                  appText.primaryText(
                      text: "Login to Zodo AI",
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp),
                  SpacerH(
                    12.h,
                  ),
                  tBox(
                      keyType: TextInputType.numberWithOptions(),
                      hint: "Enter Mobile Number"),
                  SpacerH(
                    24.h,
                  ),
                  appButton.PrimaryButton(
                      name: "Login",
                      onClick: () {
                        Get.to(() => OtpVerificationScreen(),
                            transition: Transition.rightToLeft);
                      }),
                  SpacerH(
                    10.h,
                  ),
                  Row(
                    children: [
                      SpacerW(10),
                      appText.primaryText(
                          text: "I Don’t Have account? ",
                          fontWeight: FontWeight.w400,
                          fontSize: 13.sp),
                      InkWell(
                        onTap: () {
                          Get.to(() => RegistrationScreen(),
                              transition: Transition.rightToLeft);
                        },
                        child: appText.primaryText(
                            text: "Register Now",
                            color: Color(0xff3795FF),
                            fontWeight: FontWeight.w500,
                            fontSize: 13.sp),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
