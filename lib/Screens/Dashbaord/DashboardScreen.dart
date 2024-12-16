import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zodo_doctor/Screens/Dashbaord/Views/DashHeaderView.dart';
import 'package:zodo_doctor/Screens/Dashbaord/Views/HMChatCard.dart';
import 'package:zodo_doctor/Screens/Dashbaord/Views/HMUpcommingadpt.dart';
import 'package:zodo_doctor/Screens/Dashbaord/Views/dbToolCardView.dart';
import 'package:zodo_doctor/Screens/MyAppointments/MyAppointmentScreen.dart';
import 'package:zodo_doctor/Screens/MyEarningScreen/MyEarningScreen.dart';
import 'package:zodo_doctor/Screens/MyProfileScreen/MyProfileScreen.dart';
import 'package:zodo_doctor/Screens/SlotListingScreen/SlotListingScreen.dart';
import 'package:zodo_doctor/Screens/Splash/SplashScreen.dart';
import 'package:zodo_doctor/Src/ImagesList.dart';
import 'package:zodo_doctor/Src/appText.dart';
import 'package:zodo_doctor/Src/utils.dart';

class dashBoardScreen extends StatelessWidget {
  const dashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DashHeaderView(),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SpacerH(20.h),
                HmupcommingadptCard(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: appText.primaryText(
                      text: "My Tools",
                      fontWeight: FontWeight.w600,
                      fontSize: 14.sp),
                ),
                SpacerH(10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Wrap(
                    spacing: 10.w,
                    runSpacing: 12.h,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(() => MyAppointmentScreen(),
                              transition: Transition.rightToLeft);
                        },
                        child: dbToolCardView(
                          title: "My Appointments",
                          subtext: "No pending",
                          image: img.appointmentIcon,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => MyEarningScreen(),
                              transition: Transition.rightToLeft);
                        },
                        child: dbToolCardView(
                          title: "Earnings",
                          image: img.myEarningIcon,
                          subtext: "Manage all earnings",
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => SlotListingScreen(),
                              transition: Transition.rightToLeft);
                        },
                        child: dbToolCardView(
                          title: "Appointment Settings",
                          image: img.apptSettingIcon,
                          subtext: "",
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => MyProfileScreen(),
                              transition: Transition.rightToLeft);
                        },
                        child: dbToolCardView(
                          title: "Profile",
                          image: img.profileIcon,
                          subtext: "Verified",
                        ),
                      ),
                    ],
                  ),
                ),
                SpacerH(12.h),
                Hmchatcard(),
                SpacerH(12.h)
              ],
            ),
          ))
        ],
      ),
    );
  }
}
