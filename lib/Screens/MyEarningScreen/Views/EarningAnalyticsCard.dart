import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zodo_doctor/Screens/AppointmentDetailsScreen/Views/PatientDetailsCard.dart';

class EarningAnalyticsCard extends StatelessWidget {
  EarningAnalyticsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 66.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Color(0xffF0F2F7)),
    );
  }
}
