import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zodo_doctor/Screens/Splash/SplashScreen.dart';
import 'package:zodo_doctor/Src/appText.dart';

Widget tBox(
        {TextEditingController? controller,
        String? hint,
        TextInputType? keyType}) =>
    Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xffC7C7C7),
          ),
          borderRadius: BorderRadius.circular(8)),
      child: TextField(
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 14.sp,
            color: Color(0xFF262626)),
        keyboardType: keyType,
        textAlignVertical: TextAlignVertical.center,
        textAlign: TextAlign.start,
        decoration: InputDecoration(
            hintStyle: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 13.sp,
                color: Color(0xFF262626).withOpacity(.5)),
            border: InputBorder.none,
            isDense: true,
            hintText: hint),
      ),
    );
