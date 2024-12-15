import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zodo_doctor/Screens/MyEarningScreen/Views/MyEarningAppBar.dart';
import 'package:zodo_doctor/Src/appButtons.dart';
import 'package:zodo_doctor/Src/appText.dart';
import 'package:zodo_doctor/Src/appTextField.dart';
import 'package:zodo_doctor/Src/utils.dart';

class AddBankScreen extends StatelessWidget {
  const AddBankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyEarningAppBar(
            name: "Add Bank",
          ),
          SpacerH(16.h),
          Expanded(
              child: Stack(
            children: [
              Positioned(
                  top: 0,
                  right: 25.w,
                  left: 25.w,
                  bottom: 0,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            appText.primaryText(text: "Add UPID",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1B1B1B)),
                            SpacerH(10.h),
                            tBox(hint: "Add UPI"),
                            SpacerH(16.h),
                            appButton.PrimaryButton(name: "Verify")
                          ],
                        ),

                        
                        Container(
                          margin: EdgeInsets.all(27),
                          child: appText.primaryText(text: "OR",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF999999)),
                        ),


                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            appText.primaryText(text: "Bank account Number",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1B1B1B)),
                            SpacerH(10.h),
                            tBox(),
                            SpacerH(22.h),

                            appText.primaryText(text: "Verify account Number",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF858585)),
                            SpacerH(10.h),
                            tBox(),
                            SpacerH(22.h),

                            appText.primaryText(text: "IFSC Code",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1B1B1B)),
                            SpacerH(10.h),
                            tBox(),
                          ],
                        )
                      ],
                    ),
                  )),
              Positioned(
                  bottom: 20.h,
                  right: 25.w,
                  left: 25.w,
                  child: appButton.PrimaryButton(name: "Verify"))
            ],
          )),
        ],
      ),
    );
  }
}
