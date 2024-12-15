import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zodo_doctor/Screens/AddBankScreen/AddBankScreen.dart';
import 'package:zodo_doctor/Screens/AppointmentDetailsScreen/Views/PatientDetailsCard.dart';
import 'package:zodo_doctor/Screens/WithdrawScreen/WithdrawScreen.dart';
import 'package:zodo_doctor/Src/appText.dart';

class EarningQuickActionCard extends StatelessWidget {
  const EarningQuickActionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78.h,
      width: 343.w,
      margin: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          appText.primaryText(text: "Quick Action"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    Get.to(() => AddBankScreen(),
                        transition: Transition.downToUp);
                  },
                  child: Container(
                    child: appText.primaryText(text: "Add Bank Account"),
                  )),
              InkWell(
                  onTap: () {
                    Get.to(() => Withdrawscreen(),
                        transition: Transition.downToUp);
                  },
                  child: Container(
                    child: appText.primaryText(text: "Withdraw Now"),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
