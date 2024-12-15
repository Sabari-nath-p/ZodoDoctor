import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zodo_doctor/Screens/AppointmentDetailsScreen/Views/PatientDetailsCard.dart';
import 'package:zodo_doctor/Src/ImagesList.dart';

class EarningPaymentCard extends StatelessWidget {
  EarningPaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.h),
      width: 343.h,
      height: 39.h,
      child: Row(
        children: [
          //
          // Image.asset( img.growUP)
          // Image.asset(img.pendingClock)
        ],
      ),
    );
  }
}
