import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/login/presentation/widgets/custom_button.dart';
import 'package:maserty/features/login/presentation/widgets/custom_text_field.dart';

import '../../../../../style/colors/colors.dart';

class AddVacationTeacher extends StatelessWidget {
  AddVacationTeacher({Key? key}) : super(key: key);
  TextEditingController missionNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'عدد الأيام',
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
              hint: 'عدد الأيام',
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'عدد الساعات',
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
              hint: 'عدد الساعات',
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'ملاحظات',
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
              hint: 'ملاحظات',
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              'نوع الأجازه',
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
              hint: 'نوع الأجازه',
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Text(
                  'المرفقات',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'poppins'),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  padding: EdgeInsetsDirectional.all(3),
                  decoration: BoxDecoration(
                    color: add,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Text('اضافة مرفق',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'poppins')
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            CustomButton(
              text: 'ارسال',
              onTap: () {},
            ),


          ],
        ),
      ),
    );
  }
}
