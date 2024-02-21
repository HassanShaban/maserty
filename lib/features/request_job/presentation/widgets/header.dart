import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/style/colors/colors.dart';

class JobHeader extends StatelessWidget {
   JobHeader({Key? key , this.onBackPressed}) : super(key: key);
   Function()? onBackPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap:onBackPressed ,
            child: Icon(Icons.arrow_back_ios)),
        Expanded(
          child: Text(
            "طلب توظيف",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: blackColor,
                fontSize: 24.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'poppins'),
          ),
        ),
      ],
    );


  }
}
