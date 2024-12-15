import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zodo_doctor/Screens/Authentication/RegistrationScreen2.dart';
import 'package:zodo_doctor/Screens/Splash/SplashScreen.dart';
import 'package:zodo_doctor/Src/appButtons.dart';
import 'package:zodo_doctor/Src/appColor.dart';
import 'package:zodo_doctor/Src/appText.dart';
import 'package:zodo_doctor/Src/appTextField.dart';
import 'package:zodo_doctor/Src/utils.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpacerH(
                20.h,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_outlined,
                      size: 25.w,
                    ),
                  ),
                  Expanded(child: Container()),
                  appText.primaryText(
                      text: "Step", fontWeight: FontWeight.w600, fontSize: 12),
                  appText.primaryText(
                      text: " 1",
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      color: appColor.primaryColor),
                  appText.primaryText(
                      text: "/2", fontWeight: FontWeight.w600, fontSize: 12)
                ],
              ),
              Expanded(
                  child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SpacerH(12.h),
                          appText.primaryText(
                              text: "Enter Basic information",
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600),
                          SpacerH(16.h),
                          appText.primaryText(
                              text: "Full Name",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500),
                          SpacerH(10.h),
                          tBox(hint: "Enter your full offical name"),
                          SpacerH(16.h),
                          tBox(hint: "Enter your email"),
                          SpacerH(16.h),
                          appText.primaryText(
                              text: "Specialisation",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500),
                          SpacerH(10.h),
                          tBox(hint: "Select your specialisation"),
                          SpacerH(16.h),
                          appText.primaryText(
                              text: "Select Current City",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500),
                          SpacerH(10.h),
                          tBox(hint: "Select your select current city"),
                          SpacerH(16.h),
                          appText.primaryText(
                              text: "Registration Details ",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500),
                          SpacerH(10.h),
                          tBox(hint: "Enter your register number"),
                          SpacerH(16.h),
                          tBox(hint: "Enter your council name"),
                          SpacerH(16.h),
                          tBox(
                              hint: "Enter your passing year",
                              keyType: TextInputType.numberWithOptions()),
                          SpacerH(100.h)
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20.h,
                    left: 0,
                    right: 0,
                    child: appButton.PrimaryButton(
                        name: "Register",
                        onClick: () {
                          Get.to(() => RegistrationScreen2(),
                              transition: Transition.rightToLeft);
                        }),
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
