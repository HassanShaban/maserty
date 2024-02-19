import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../style/colors/colors.dart';

class StudentsItem extends StatelessWidget {
  const StudentsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsetsDirectional.all(8),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: cardTabColor)),
      margin: EdgeInsetsDirectional.all(15),
      width: MediaQuery.of(context).size.width,
      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(
          'اللغة العربية',
          style: TextStyle(
              fontFamily: 'poppins',
              fontWeight: FontWeight.w300,
              fontSize: 14.sp,
              color: Colors.black),
        ),
          Text(
            '10-2-2020',
            style: TextStyle(
                fontFamily: 'poppins',
                fontWeight: FontWeight.w300,
                fontSize: 10.sp,
                color: Colors.black),
          ),
          SvgPicture.asset("assets/icons/ic_download.svg")

      ],),
    );
  }
}
