import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../style/colors/colors.dart';

class TeacherVacationsItem extends StatelessWidget {
  const TeacherVacationsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(9),
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
                  'عدد الأيام ',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 18.sp,
                      color: primaryColor),
                ),
              ),
              Text(
                'عدد الأيام ',
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
                  'عدد الساعات',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 18.sp,
                      color: primaryColor),
                ),
              ),
              Text(
                'عدد الساعات',
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
                  'ملاحظات ',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 18.sp,
                      color: primaryColor),
                ),
              ),
              Text(
                'ملاحظات ',
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
                  'نوع الأجازه',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 18.sp,
                      color: primaryColor),
                ),
              ),
              Text(
                'نوع الأجازه',
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
                  'الحاله',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 18.sp,
                      color: primaryColor),
                ),
              ),
              Text(
                'قيد الموافقه',
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
                  'تحميل المرفقات',
                  style: TextStyle(
                      fontFamily: 'poppins',
                      fontWeight: FontWeight.w300,
                      fontSize: 18.sp,
                      color: primaryColor),
                ),
              ),
             Container(margin: EdgeInsetsDirectional.only(top: 7),
                 child: Icon(Icons.download,color: Colors.grey,))
            ],
          ),
        ],
      ),
    );
  }
}
