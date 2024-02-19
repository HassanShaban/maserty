import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../style/colors/colors.dart';
import '../students/students_grid.dart';
import '../students/students_screen.dart';
import '../teachers/presentation/pages/mission/choose_what_search.dart';
import '../teachers/presentation/pages/mission/teacher_mission.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(margin: EdgeInsetsDirectional.only(top: 20),
                child: Center(child: Image.asset('assets/images/splash.png'))),
            Center(
              child: Text(
                "أختر الفئة الخاصة بك",
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    color: textblack),
              ),
            ),
            SizedBox(height: 20.h,),
            GestureDetector(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StudentsGrid()),
              );

            },
              child: Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  color: lightblue,
                  shape: BoxShape.circle,
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/student.png",width: 40,height: 40,),
                    Center(
                      child: Text(
                        "الطلاب",
                        style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            color: textblack),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.h,),
            GestureDetector(onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChooseWhatSearch()),
              );

            },
              child: Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  color: lightblue,
                  shape: BoxShape.circle,
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/class.png",width: 40,height: 40,),
                    Center(
                      child: Text(
                        "المعلمين",
                        style: TextStyle(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w600,
                            color: textblack),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
