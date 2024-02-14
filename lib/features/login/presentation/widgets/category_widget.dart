import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/style/colors/colors.dart';

class CategoryWidget extends StatelessWidget {
   CategoryWidget({Key? key , this.onTap , this.name , this.path}) : super(key: key);
   Function()? onTap ;
   String? name , path;

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: 156.w,
          height: 164.h,
          child: CircleAvatar(
            backgroundColor: circleBackColor,
            child: Column(
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Image.asset('assets/images/${path}.png',
                  width: 92.w,
                  height: 92.h,
                ),
                SizedBox(height: 5.h,),
                Text(name!,
                  style: TextStyle(
                      color:Colors.black,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'poppins'

                  ),
                )
              ],
            ),
          ),
        ),
      );

  }
}
