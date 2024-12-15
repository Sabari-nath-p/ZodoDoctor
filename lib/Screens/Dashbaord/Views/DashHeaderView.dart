import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:zodo_doctor/Screens/Splash/SplashScreen.dart';
import 'package:zodo_doctor/Src/appText.dart';
import 'package:zodo_doctor/Src/utils.dart';

class DashHeaderView extends StatelessWidget {
  const DashHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.h,
      //   width: 390.w,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("Assets/Images/authgbg.png"),
              fit: BoxFit.cover)),
      padding:
          EdgeInsets.only(top: 55.h, bottom: 14.h, left: 20.w, right: 20.w),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "Assets/Images/zodosplashLogo.png",
                  width: 80.w,
                  color: Colors.white,
                ),
                SpacerH(2.h),
                appText.primaryText(
                    text: "Hi , Dr Sabarinath",
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white)
              ],
            ),
          ),
          Icon(
            EvaIcons.settings_outline,
            size: 28.w,
            color: Colors.white,
          ),
          SpacerW(12.w),
          Icon(
            EvaIcons.bell_outline,
            size: 28.w,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
