import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zodo_doctor/Screens/AppointmentDetailsScreen/Views/PatientDetailsCard.dart';
import 'package:zodo_doctor/Screens/CreateSlotScreen/Views/SCCalanderView.dart';
import 'package:zodo_doctor/Screens/CreateSlotScreen/Views/SCTimeView.dart';
import 'package:zodo_doctor/Screens/MyEarningScreen/Views/MyEarningAppBar.dart';
import 'package:zodo_doctor/Src/appButtons.dart';

class CreateSlotScreen extends StatelessWidget {
  const CreateSlotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          MyEarningAppBar(name: "Appointments Schedule"),
          Expanded(
              child: Stack(
            children: [
              Positioned(
                  top: 12.h,
                  right: 0,
                  bottom: 0,
                  left: 0,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [SCCalenderCard(), SCTimeView()],
                    ),
                  )),
              Positioned(
                  bottom: 20.h,
                  right: 25.w,
                  left: 25.w,
                  child: appButton.PrimaryButton(
                      name: "Create",
                      onClick: () {
                        Get.back();
                      }))
            ],
          ))
        ],
      ),
    );
  }
}
