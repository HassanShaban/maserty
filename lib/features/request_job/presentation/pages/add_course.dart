import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/login/presentation/widgets/custom_text_field.dart';
import 'package:maserty/features/request_job/presentation/pages/course.dart';
import 'package:maserty/features/request_job/presentation/pages/experience.dart';
import 'package:maserty/features/request_job/presentation/pages/finish_job.dart';
import 'package:maserty/features/request_job/presentation/widgets/header.dart';
import 'package:maserty/features/request_job/presentation/widgets/next_previous_buttons.dart';
import 'package:maserty/features/request_job/presentation/widgets/save_cancel.dart';
import 'package:maserty/style/colors/colors.dart';
import 'package:maserty/utils/navigation_widget.dart';

class AddCourse extends StatelessWidget {
   AddCourse({Key? key}) : super(key: key);
  List<String> degree= [
    'College'

  ];
  TextEditingController college = TextEditingController();
  TextEditingController graduationYear = TextEditingController();

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
                'جهة الدورة',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),
              SizedBox(height: 10.h,),

              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsetsDirectional.fromSTEB(10.w, 3.h, 10.w, 3.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: enableColor)

                ),
                child:
                DropdownButton<String>(
                  isExpanded: true,
                  hint: Text(
                    'جهة الدورة',
                    style: TextStyle(
                        color: enableColor,
                        fontSize: 12.sp
                    ),
                  ),
                  underline: const SizedBox(),
                  items:
                  degree.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            value,
                            style: TextStyle(
                                fontSize: 14.sp, color: gridcolor),
                          ),
                          Divider(
                            // height: 2.h,
                          )
                        ],
                      ),
                    );
                  }).toList(),
                  onChanged: (Object? value) {},
                ),

              ),
              SizedBox(height: 15.h,),
              Text(
                'الجهة الطالبة للدورة',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),
              SizedBox(height: 10.h,),

              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsetsDirectional.fromSTEB(10.w, 3.h, 10.w, 3.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: enableColor)

                ),
                child:
                DropdownButton<String>(
                  isExpanded: true,
                  hint: Text(
                    'الجهة الطالبة للدورة',
                    style: TextStyle(
                        color: enableColor,
                        fontSize: 12.sp
                    ),
                  ),
                  underline: const SizedBox(),
                  items:
                  degree.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            value,
                            style: TextStyle(
                                fontSize: 14.sp, color: gridcolor),
                          ),
                          Divider(
                            // height: 2.h,
                          )
                        ],
                      ),
                    );
                  }).toList(),
                  onChanged: (Object? value) {},
                ),

              ),



              SizedBox(height: 15.h,),
              Text(
                'اسم الدورة',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),

              SizedBox(height: 10.h,),
              CustomTextFormField(
                controller: college, autoFocus: false,
                hint: 'اسم الدورة',),

              SizedBox(height: 15.h,),

              Text(
                'تاريخ بداية الدورة',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),

              SizedBox(height: 10.h,),

              CustomTextFormField(
                controller: graduationYear,
                autoFocus: false,
                suffix: Icon(Icons.calendar_month),
                onSuffixPressed: () {},
                hint: 'تاريخ بداية الدورة',
              ),

              SizedBox(height: 15.h,),


              SizedBox(height: 15.h,),
              Row(
                children: [
                  Text(
                    'صورة الدورة',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'poppins'),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.all(3),
                    decoration: BoxDecoration(
                      color: add,
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Text('اضافة مرفق',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'poppins')
                    ),
                  ),


                ],
              ),


              SizedBox(height: 15.h,),

              SaveCancelButtons(
                savePressed: (){
                  navigateTo(context, Course());
                },
              ),

              SizedBox(height: 30.h,),

              NextPreviousButtons(
                nextPressed: (){
                  navigateTo(context, FinishJob());
                },
                previousPressed: (){
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );

  }
}
