import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../style/colors/colors.dart';

class TeacherDutiesItem extends StatelessWidget {
  const TeacherDutiesItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(8),
      margin: EdgeInsetsDirectional.only(start: 15, end: 15, top: 15),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: cardTabColor)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 100.w,
                child: Text(
                  'اسم المهمه ',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 18.sp,
                      color: primaryColor),
                ),
              ),
              Text(
                'رصد الدرجات ',
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: 16.sp,
                    color: Colors.black),
              ),
            ],
          ),
          Container(height: 1,
          color: cardTabColor,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 100.w,
                child: Text(
                  'مسند الي : ',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 18.sp,
                      color: primaryColor),
                ),
              ),
              Text(
                'مسند الي',
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: 16.sp,
                    color: Colors.black),
              ),
            ],
          ),
          Container(height: 1,
            color: cardTabColor,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 125.w,
                child: Text(
                  'تاريخ بدايه المهمه ',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 18.sp,
                      color: primaryColor),
                ),
              ),
              Text(
                '11-1-2020 ',
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: 16.sp,
                    color: Colors.black),
              ),
            ],
          ),
          Container(height: 1,
            color: cardTabColor,),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 125.w,
                child: Text(
                  'تاريخ نهايه المهمه ',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 18.sp,
                      color: primaryColor),
                ),
              ),
              Text(
                '2-2-2020',
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w300,
                    fontSize: 16.sp,
                    color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
