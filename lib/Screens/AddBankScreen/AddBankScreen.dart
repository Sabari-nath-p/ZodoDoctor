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
                      children: [
                        appText.primaryText(text: "Add UPI"),
                        tBox(hint: "Add UPI"),
                        appButton.PrimaryButton(name: "Verify")
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
