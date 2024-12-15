import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zodo_doctor/Screens/Splash/SplashScreen.dart';
import 'package:zodo_doctor/Src/appColor.dart';
import 'package:zodo_doctor/Src/appText.dart';

class appButton {
  static PrimaryButton({var name, Function? onClick}) => GestureDetector(
        onTap: () {
          if (onClick != null) {
            onClick();
          }
        },
        child: Container(
          width: 390.w,
          alignment: Alignment.center,
          height: 54.h,
          child: appText.primaryText(
              text: "${name ?? "--:--"}",
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 16.sp),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: appColor.primaryColor),
        ),
      );
}
