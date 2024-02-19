import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/login/presentation/widgets/degree_widget.dart';
import 'package:maserty/features/students/students_screen.dart';
import 'package:maserty/style/colors/colors.dart';

class StudentsGrid extends StatelessWidget {
  const StudentsGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        padding: EdgeInsetsDirectional.fromSTEB(16.w, 60.h, 16.h, 0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(onTap: (){
                Navigator.pop(context);
              },
                  child: Icon(Icons.arrow_back_ios)),
              Expanded(
                child: Text(
                  "الطلاب",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: blackColor,
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'poppins'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Text(
              "أختر الصف الدراسي الخاص بك",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: blackColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppins'),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "الصفوف الابتدائية",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: blackColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'poppins'),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            flex: 3,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  childAspectRatio: 2,
                  mainAxisSpacing: 10),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Degree(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StudentsScreen()),
                    );

                  },
                  text: ' الصف الاول الابتدائي',
                );
              },
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Divider(
            height: 2.h,
            color: enableColor,
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "الصفوف الاعدادية",
            textAlign: TextAlign.start,
            style: TextStyle(
                color: blackColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'poppins'),
          ),
          SizedBox(
            height: 10.h,
          ),
          Expanded(
            flex: 2,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  childAspectRatio: 2,
                  mainAxisSpacing: 10),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Degree(
                  onTap: () {},
                  text: ' الصف الاول الابتدائي',
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
