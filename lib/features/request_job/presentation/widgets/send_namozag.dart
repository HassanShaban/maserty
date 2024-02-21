import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/style/colors/colors.dart';

class SendNamozag extends StatelessWidget {
   SendNamozag({Key? key , this.previousPressed , this.sendNamozag}) : super(key: key);
   Function()? previousPressed;
   Function()? sendNamozag;
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
          onTap: sendNamozag,
          child:
          Container(
            width: 161.w,
            height: 48.h,
            decoration: BoxDecoration(
                color: primaryColor,
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                'ارسال النموذج',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );

  }
}
