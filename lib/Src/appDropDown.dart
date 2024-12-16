import 'package:drop_down_list/drop_down_list.dart';
import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zodo_doctor/Src/appColor.dart';
import 'package:zodo_doctor/Src/appText.dart';

class appDropDown {
  static void primary({
    required BuildContext context,
    String? title,
    List<SelectedListItem>? dropList,
  }) {
    DropDownState(
      DropDown(
        bottomSheetTitle: Text(
          title ?? "Drop Down",
          style: GoogleFonts.inter(
            fontSize: 16,
            // color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        listItemBuilder: (index) =>
            appText.primaryText(text: dropList![index].name),
        submitButtonChild: Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.w),
              color: appColor.primaryColor),
          child: Text(
            'Done',
            style: GoogleFonts.inter(
              fontSize: 16,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        data: dropList ?? [],
        onSelected: (List<dynamic> selectedList) {
          List<String> list = [];
          for (var item in selectedList) {
            if (item is SelectedListItem) {
              list.add(item.name);
            }
          }
          // showSnackBar(list.toString());
        },
        enableMultipleSelection: false,
      ),
    ).showModal(context);
  }
}
