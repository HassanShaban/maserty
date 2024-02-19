import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/login/presentation/widgets/custom_button.dart';
import 'package:maserty/features/login/presentation/widgets/custom_text_field.dart';

import '../../../../../style/colors/colors.dart';

class AddMeetingTeacher extends StatelessWidget {
  AddMeetingTeacher({Key? key}) : super(key: key);
  TextEditingController missionNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'موضوع الإجتماع',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppins'),
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextFormField(
              controller: missionNameController,
              autoFocus: true,
              hint: 'موضوع الإجتماع',
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'الأعضاء',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppins'),
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextFormField(
              controller: missionNameController,
              autoFocus: false,
              hint: 'الأعضاء',
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'المقرر',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppins'),
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextFormField(
              controller: missionNameController,
              autoFocus: false,
              //suffix: Icon(Icons.calendar_month),
              onSuffixPressed: () {},
              hint: 'المقرر',
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'مكان الإجتماع',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppins'),
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextFormField(
              controller: missionNameController,
              autoFocus: false,
              suffix: Icon(Icons.calendar_month),
              onSuffixPressed: () {},
              hint: 'مكان الإجتماع',
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'وقت الإجتماع',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppins'),
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomTextFormField(
              controller: missionNameController,
              autoFocus: false,
              onSuffixPressed: () {},
              hint: 'وقتت الإجتماع',
            ),

          ],
        ),
      ),
    );
  }
}
