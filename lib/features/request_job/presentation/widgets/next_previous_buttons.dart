import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/style/colors/colors.dart';

class NextPreviousButtons extends StatelessWidget {
  NextPreviousButtons({Key? key , this.previousPressed , this.nextPressed}) : super(key: key);
  Function()? previousPressed;
  Function()? nextPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: previousPressed,
          child: Container(
            width: 104.w,
            height: 48.h,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                'السابق',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        GestureDetector(
          onTap: nextPressed,
          child:
          Container(
            width: 104.w,
            height: 48.h,
            decoration: BoxDecoration(
                color: primaryColor,
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                'التالي',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
