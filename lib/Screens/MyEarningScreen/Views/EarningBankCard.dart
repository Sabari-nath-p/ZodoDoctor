import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zodo_doctor/Screens/AppointmentDetailsScreen/Views/PatientDetailsCard.dart';
import 'package:zodo_doctor/Src/appText.dart';
import 'package:zodo_doctor/Src/utils.dart';

class EarningBankCard extends StatelessWidget {
  const EarningBankCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 51.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: Container(
              width: 16.w,
              height: 16.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xFF21212180)),
            ),
          ),
          SpacerW(39.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appText.primaryText(
                  text: "HDFC Bank",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF424A53)),
              SpacerH(2.h),
              appText.primaryText(
                  text: "2034 **** **** ****945",
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF424A53)),
            ],
          ),
          Spacer(),
          Container(
            width: 68.w,
            alignment: Alignment.center,
            height: 22.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xff05A9CD1A)),
            child: appText.primaryText(
                text: "Primary",
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: Color(0xff05A9CD)),
          )
        ],
      ),
    );
  }
}
