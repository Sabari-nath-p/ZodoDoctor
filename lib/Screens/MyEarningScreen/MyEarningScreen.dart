import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zodo_doctor/Screens/AppointmentDetailsScreen/Views/PatientDetailsCard.dart';
import 'package:zodo_doctor/Screens/MyEarningScreen/Views/EarningAnalyticsCard.dart';
import 'package:zodo_doctor/Screens/MyEarningScreen/Views/EarningBankCard.dart';
import 'package:zodo_doctor/Screens/MyEarningScreen/Views/EarningInfoCard.dart';
import 'package:zodo_doctor/Screens/MyEarningScreen/Views/EarningPaymentCard.dart';
import 'package:zodo_doctor/Screens/MyEarningScreen/Views/EarningQuickActionCard.dart';
import 'package:zodo_doctor/Screens/MyEarningScreen/Views/MyEarningAppBar.dart';
import 'package:zodo_doctor/Src/appText.dart';
import 'package:zodo_doctor/Src/utils.dart';

class MyEarningScreen extends StatelessWidget {
  const MyEarningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyEarningAppBar(
            name: "My Earnings",
          ),
          SpacerH(16.h),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                appText.primaryText(text: "Main Balance"),
                appText.primaryText(text: "₹ 2,8754"),
                EarningAnalyticsCard(),
                EarningBankCard(),
                EarningInfoCard(),
                EarningQuickActionCard(),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(horizontal: 25.w),
                  child: appText.primaryText(
                    text: "Payment History",
                  ),
                ),
                for (int i = 0; i < 10; i++) EarningPaymentCard()
              ],
            ),
          ))
        ],
      ),
    );
  }
}
