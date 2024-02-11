import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/style/colors/colors.dart';

class NetworkFailed extends StatelessWidget {
   NetworkFailed({Key? key , required this.onTap}) : super(key: key);
  Function () onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsetsDirectional.all(20),
        decoration: BoxDecoration(
          color: redColor,
          borderRadius: BorderRadius.circular(10.r)
        ),
        child: Text('حدث خطأ اعادة المحاولة؟' ,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18.sp
        ),),
      ),
    );
  }
}
