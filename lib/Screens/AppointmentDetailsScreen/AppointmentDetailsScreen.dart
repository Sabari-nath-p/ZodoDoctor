import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:zodo_doctor/Screens/AppointmentDetailsScreen/Views/AppointmentDetailsScreenAppbar.dart';
import 'package:zodo_doctor/Screens/AppointmentDetailsScreen/Views/PatientDetailsCard.dart';
import 'package:zodo_doctor/Screens/AppointmentDetailsScreen/Views/PatientProfileItem.dart';
import 'package:zodo_doctor/Screens/Splash/VerificationScreen.dart';
import 'package:zodo_doctor/Src/appButtons.dart';
import 'package:zodo_doctor/Src/utils.dart';

class Appointmentdetailscreen extends StatelessWidget {
  const Appointmentdetailscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Appointmentdetailsscreenappbar(),
          SpacerH(
            16.h,
          ),
          Expanded(
              child: Stack(
            children: [
              Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      PatientdetailCard(),
                      SpacerH(20.h),
                      PatientProfileItem(
                        icon: Icons.info_outline,
                        title: "Consult Details",
                        body: "Reason: Headache and fever",
                      ),
                      PatientProfileItem(
                        icon: Icons.calendar_month_outlined,
                        title: "Appointment Date",
                        body: "2:00 PM",
                      ),
                      PatientProfileItem(
                        icon: Icons.watch_later_outlined,
                        title: "Time",
                        body: "09:00 AM-10Am",
                      ),
                      PatientProfileItem(
                        icon: FontAwesome.file_pdf,
                        title: "History",
                        body: "No History Found",
                      )
                    ],
                  ))),
              Positioned(
                  bottom: 20.h,
                  left: 16.w,
                  right: 16.h,
                  child: appButton.PrimaryButton(name: "Start Call"))
            ],
          ))
        ],
      ),
    );
  }
}
