import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/style/colors/colors.dart';

class CustomButton extends StatelessWidget {
   CustomButton({Key? key, required this.text , this.onTap}) : super(key: key);
   String text;
   Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
            horizontal: 35.w, vertical: 22.h),
        decoration: BoxDecoration(
            color: primaryColor,
            borderRadius:
            BorderRadius.circular(10.r)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontFamily: 'poppins',
                fontWeight: FontWeight.w300,
                fontSize: 18.sp,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
