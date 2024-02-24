import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/request_job/presentation/pages/add_qualification.dart';
import 'package:maserty/features/request_job/presentation/pages/experience.dart';
import 'package:maserty/features/request_job/presentation/widgets/header.dart';
import 'package:maserty/features/request_job/presentation/widgets/next_previous_buttons.dart';
import 'package:maserty/features/sign_up/presentation/pages/add_student_data.dart';
import 'package:maserty/features/sign_up/presentation/pages/finish_sign_up.dart';
import 'package:maserty/style/colors/colors.dart';
import 'package:maserty/utils/navigation_widget.dart';

class StudentData extends StatelessWidget {
  StudentData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        padding: EdgeInsetsDirectional.fromSTEB(16.w, 60.h, 16.h, 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              JobHeader(
                onBackPressed: (){
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'الرجاء اضافة  طالب/ة واحد/ة علي الاقل',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),
              SizedBox(height: 20.h,),

              GestureDetector(
                onTap: (){
                  navigateTo(context, AddStudentData());
                },
                child: Container(
                  width: 151.w,
                  height: 48.h,
                  decoration: BoxDecoration(
                      color: primaryColor,
                      border: Border.all(color: primaryColor),
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'اضافة طالب/ة',
                        style: TextStyle(color: Colors.white),

                      ),
                      SizedBox(width: 20.w,),
                      Icon(Icons.add,
                        color: Colors.white,)
                    ],
                  ),
                ),
              ),

              SizedBox(height: 30.h,),

              NextPreviousButtons(
                previousPressed: (){
                  Navigator.pop(context);
                },
                nextPressed: (){
                  navigateTo(context, FinishSignUp());
                },


              )
            ],
          ),
        ),
      ),
    );
  }
}
