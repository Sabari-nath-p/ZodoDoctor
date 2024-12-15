import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EarningInfoCard extends StatelessWidget {
  const EarningInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 66.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: Color(0xffE1EFFF)),
    );
  }
}
