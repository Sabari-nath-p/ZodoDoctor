import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zodo_doctor/Screens/MyEarningScreen/Views/EarningAnalyticsCard.dart';
import 'package:zodo_doctor/Screens/MyEarningScreen/Views/EarningInfoCard.dart';
import 'package:zodo_doctor/Src/appButtons.dart';
import 'package:zodo_doctor/Src/appText.dart';
import 'package:zodo_doctor/Src/appTextField.dart';
import 'package:zodo_doctor/Src/utils.dart';

import '../MyEarningScreen/Views/MyEarningAppBar.dart';

class Withdrawscreen extends StatelessWidget {
  Withdrawscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyEarningAppBar(
            name: "Withdraw Now",
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
                        appText.primaryText(text: "Main Balance"),
                        appText.primaryText(text: "₹ 2,8754"),
                        EarningAnalyticsCard(),
                        appText.primaryText(text: "Enter Amount"),
                        tBox(), // use textfield instead fo tbox
                        appText.primaryText(
                            text:
                                "Amount will be credited to your account within one business day."),
                        EarningInfoCard()
                      ],
                    ),
                  )),
              Positioned(
                  bottom: 20.h,
                  right: 25.w,
                  left: 25.w,
                  child: appButton.PrimaryButton(name: "Proceed"))
            ],
          )),
        ],
      ),
    );
  }
}
