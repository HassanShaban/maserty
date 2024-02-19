import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../style/colors/colors.dart';

class TeacherMeetingsItem extends StatelessWidget {
  const TeacherMeetingsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(8),
      margin: EdgeInsetsDirectional.only(start: 5, end: 5, top: 15),
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
                width: 150.w,
                child: Text(
                  'موضوع الإجتماع ',
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
              Container(width: 150.w,
                child: Text(
                  'الأعضاء',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 18.sp,
                      color: primaryColor),
                ),
              ),
              Text(
                'جميع المعلمين',
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
              Container(width: 150.w,
                child: Text(
                  'وقت وتاريخ الإجتماع ',
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
              Container(width: 150.w,
                child: Text(
                  'المقرر',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 18.sp,
                      color: primaryColor),
                ),
              ),
              Text(
                'المقرر',
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
              Container(width: 150.w,
                child: Text(
                  'مكان الإجتماع',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 18.sp,
                      color: primaryColor),
                ),
              ),
              Text(
                'المكان',
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
