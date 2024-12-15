import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zodo_doctor/Screens/Splash/VerificationScreen.dart';
import 'package:zodo_doctor/Src/appText.dart';
import 'package:zodo_doctor/Src/utils.dart';

class PatientProfileItem extends StatelessWidget {
  String title, body;
  IconData icon;
  PatientProfileItem(
      {super.key, required this.title, required this.body, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24.h),
      width: 360.w,
      height: 47.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon),
          SpacerW(6.w),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appText.primaryText(
                  text: title, fontWeight: FontWeight.w600, fontSize: 14.sp),
              SpacerH(4.h),
              appText.primaryText(
                  text: body, fontWeight: FontWeight.w500, fontSize: 12.sp)
            ],
          ))
        ],
      ),
    );
  }
}
