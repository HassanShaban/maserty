import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequiredTxt extends StatelessWidget {
  RequiredTxt(
      {Key? key,
      required this.txt,
      this.fontSize = 16,
      this.color = Colors.black,
      this.fontFamily = 'poppins',
      this.fontWeight = FontWeight.w600})
      : super(key: key);
  String txt;
  int fontSize;
  Color color;
  String fontFamily;
  FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          txt,
          style: TextStyle(
              color: color,
              fontSize: fontSize.sp,
              fontWeight: fontWeight,
              fontFamily: fontFamily),
        ),
        SizedBox(
          width: 5.w,
        ),
        Image.asset(
          'assets/icons/required.png',
          width: 15.w,
          height: 15.h,
        )
      ],
    );
  }
}
