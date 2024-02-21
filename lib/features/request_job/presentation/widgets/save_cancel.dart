import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/style/colors/colors.dart';

class SaveCancelButtons extends StatelessWidget {
  SaveCancelButtons({Key? key , this.savePressed , this.cancelPressed}) : super(key: key);
  Function()? savePressed;
  Function()? cancelPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        GestureDetector(
          onTap: savePressed,
          child:
          Container(
            width: 80.w,
            height: 48.h,
            decoration: BoxDecoration(
                color: primaryColor,
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                'حفظ',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),

        SizedBox(
          width: 10.w,
        ),

        GestureDetector(
          onTap: cancelPressed,
          child: Container(
            width: 80.w,
            height: 48.h,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: primaryColor),
                borderRadius: BorderRadius.circular(8)),
            child: Center(
              child: Text(
                'الغاء',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
