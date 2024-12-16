import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:zodo_doctor/Screens/Splash/SplashScreen.dart';
import 'package:zodo_doctor/Screens/Splash/VerificationScreen.dart';
import 'package:zodo_doctor/Src/appButtons.dart';
import 'package:zodo_doctor/Src/appColor.dart';
import 'package:zodo_doctor/Src/appText.dart';
import 'package:zodo_doctor/Src/utils.dart';

class RegistrationScreen2 extends StatelessWidget {
  const RegistrationScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SpacerH(
              20.h,
            ),
            Row(
              children: [
                Icon(
                  Icons.arrow_back_ios_new_outlined,
                  size: 25.w,
                ),
                Expanded(child: Container()),
                appText.primaryText(
                    text: "Step", fontWeight: FontWeight.w600, fontSize: 12),
                appText.primaryText(
                    text: " 2",
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
                              fontWeight: FontWeight.w500),
                          SpacerH(16.h),
                          uploadDocumentWidget("Profile Picture"),
                          SpacerH(16.h),
                          uploadDocumentWidget("Degree Proof"),
                          SpacerH(16.h),
                          uploadDocumentWidget("Registration Proof"),
                          SpacerH(16.h),
                          SpacerH(100.h)
                        ],
                      ),
                    )),
                Positioned(
                    bottom: 20.h,
                    right: 0,
                    left: 0,
                    child: appButton.PrimaryButton(
                        name: "Register",
                        onClick: () {
                          Get.to(() => VerificationScreen(),
                              transition: Transition.rightToLeft);
                        }))
              ],
            ))
          ],
        ),
      )),
    );
  }
}

Widget uploadDocumentWidget(String title) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      appText.primaryText(text: title, fontWeight: FontWeight.w500),
      SpacerH(10.h),
      InkWell(
        onTap: () async {
          await FilePicker.platform.pickFiles(
              allowedExtensions: ["pdf", 'jpg', 'png'], type: FileType.custom);
        },
        child: Container(
          width: 366.w,
          height: 88.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.file_present,
                color: appColor.primaryColor,
                size: 30.sp,
              ),
              SpacerH(12.sp),
              appText.primaryText(
                  text: "Upload",
                  color: appColor.primaryColor,
                  fontWeight: FontWeight.w500)
            ],
          ),
        ),
      ),
    ],
  );
}
