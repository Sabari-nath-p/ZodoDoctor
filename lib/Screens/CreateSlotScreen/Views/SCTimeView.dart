import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zodo_doctor/Screens/CreateSlotScreen/Controller/CSController.dart';
import 'package:zodo_doctor/Src/appColor.dart';
import 'package:zodo_doctor/Src/appText.dart';
import 'package:zodo_doctor/Src/utils.dart';

class SCTimeView extends StatelessWidget {
  SCTimeView({super.key});

  List dayList = ["Morning", "Afternoon", "Evening"];

  List timeSlot = ["10", "15", "20", "30", "45", "60"];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393.w,
      margin: EdgeInsets.only(left: 16.w, right: 16.w),
      child: GetBuilder<CSController>(builder: (_) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appText.primaryText(
                text: "Select Slots",
                fontSize: 16.sp,
                fontWeight: FontWeight.w500),
            SpacerH(16.h),
            Wrap(
              runSpacing: 15.w,
              spacing: 15.w,
              children: [
                for (var data in timeSlot)
                  InkWell(
                    onTap: () {
                      _.selectedTimeSlot = data;
                      _.update();
                    },
                    child: _menuItem(data + " mins",
                        selected: _.selectedTimeSlot == data),
                  )
              ],
            ),
            SpacerH(25.h),
            appText.primaryText(
                text: "Select Section",
                fontSize: 16.sp,
                fontWeight: FontWeight.w500),
            SpacerH(16.h),
            Wrap(
              runSpacing: 15.w,
              spacing: 15.w,
              children: [
                for (var data in dayList)
                  InkWell(
                      onTap: () {
                        _.selectedSession = data;
                        _.update();
                      },
                      child:
                          _menuItem(data, selected: _.selectedSession == data))
              ],
            ),
            SpacerH(25.h),
            appText.primaryText(
                text: "Select Time",
                fontSize: 16.sp,
                fontWeight: FontWeight.w500),
            SpacerH(16.h),
            Wrap(
              runSpacing: 15.w,
              spacing: 15.w,
              children: [
                for (var data in _.generateTimeSlots(
                    int.parse(_.selectedTimeSlot),
                    _.sessionModel[_.selectedSession]![0],
                    _.sessionModel[_.selectedSession]![1]))
                  InkWell(
                      onTap: () {
                        if (_.selectedTimes.contains(data)) {
                          _.selectedTimes.remove(data);
                        } else {
                          _.selectedTimes.add(data);
                        }
                        _.update();
                      },
                      child: _menuItem(data,
                          selected: _.selectedTimes.contains(data)))
              ],
            ),
            SpacerH(80.h)
          ],
        );
      }),
    );
  }
}

Widget _menuItem(String namme, {bool selected = false}) {
  return Container(
    width: 105.w,
    alignment: Alignment.center,
    height: 41.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.w),
        color: (selected) ? appColor.primaryColor : Color(0xffF9FAFB)),
    child: appText.primaryText(
        text: "$namme",
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: (selected) ? Colors.white : null),
  );
}
