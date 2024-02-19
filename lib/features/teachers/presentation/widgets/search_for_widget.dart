import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/style/colors/colors.dart';

class SearchFor extends StatelessWidget {
   SearchFor({Key? key , this.text , this.onTap , this.path}) : super(key: key);
  String? text;
  Function()? onTap;
  String? path;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(margin: EdgeInsetsDirectional.symmetric(vertical: 10),
        width: 151.w,
       // height: 131.h,
        padding: EdgeInsetsDirectional.all(8),
        decoration: BoxDecoration(
            color: circleBackColor, borderRadius: BorderRadius.circular(8.r)),
        child: Column(
          children: [
            Image.asset('assets/images/${path}.png',
              width: 80.w,
              height: 80.h,),
            SizedBox(
              height: 3.h,
            ),
            Text(
              text!,
              style: TextStyle(
                  color: blackColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppins'),
            )
          ],
        ),
      ),
    );

  }
}
