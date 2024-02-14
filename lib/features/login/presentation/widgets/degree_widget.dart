import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/style/colors/colors.dart';

class Degree extends StatelessWidget {
  Degree({Key? key, this.text , this.onTap}) : super(key: key);
  String? text;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsetsDirectional.all(8),
        decoration: BoxDecoration(
            color: circleBackColor, borderRadius: BorderRadius.circular(8.r)),
        child: Column(
          children: [
            Image.asset('assets/images/degree.png',
            width: 24.w,
            height: 24.h,),
            SizedBox(
              height: 5.h,
            ),
            Text(
              text!,
              style: TextStyle(
                  color: blackColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppins'),
            )
          ],
        ),
      ),
    );
  }
}
