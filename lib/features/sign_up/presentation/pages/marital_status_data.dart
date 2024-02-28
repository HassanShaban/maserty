import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/login/presentation/widgets/custom_text_field.dart';
import 'package:maserty/features/request_job/presentation/pages/qualification.dart';
import 'package:maserty/features/request_job/presentation/widgets/header.dart';
import 'package:maserty/features/request_job/presentation/widgets/next_previous_buttons.dart';
import 'package:maserty/features/sign_up/presentation/pages/student_data.dart';
import 'package:maserty/style/colors/colors.dart';
import 'package:maserty/utils/navigation_widget.dart';

class MaritalStatusData extends StatelessWidget {
  MaritalStatusData({Key? key}) : super(key: key);
  TextEditingController firstNameArabicTextField = TextEditingController();
  TextEditingController fatherNameArabicTextField = TextEditingController();
  TextEditingController grandFatherArabicTextField = TextEditingController();
  TextEditingController confirmPasswordTextField = TextEditingController();
  List<String> degree= [
    'College'

  ];
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
                txt: 'تسجيل طالب جديد',
                onBackPressed: (){
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 30.h,
              ),

              Text(
                'نوع السكن',
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
                    'نوع السكن',
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

              SizedBox(height: 20.h,),


              Text(
                'عدد الغرف',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),

              SizedBox(
                height: 10.h,
              ),
              CustomTextFormField(
                controller: fatherNameArabicTextField,
                autoFocus: false,
                hint: 'عدد الغرف',
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'عدد الطوابق',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),

              SizedBox(
                height: 10.h,
              ),
              CustomTextFormField(
                controller: fatherNameArabicTextField,
                autoFocus: false,
                hint: 'عدد الطوابق',
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'مصدر الدخل',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'poppins'),
                  ),
                  Icon(
                    Icons.star_border_purple500_rounded,
                    color: requiredField,
                  )

                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormField(
                controller: grandFatherArabicTextField,
                autoFocus: false,
                hint: 'مصدر الدخل',
              ),

              SizedBox(height: 20.h,),

              Text(
                'مقدار الدخل',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),
              SizedBox(
                height: 10.h,
              ),

              CustomTextFormField(
                controller: grandFatherArabicTextField,
                autoFocus: false,
                hint: 'مقدار الدخل',
              ),

              SizedBox(height: 20.h,),

              Row(
                children: [
                  Checkbox(value: true, onChanged: (val){}),
                  Text('هل توجد مصادر أخري للدخل؟')
                ],
              ),
              SizedBox(height: 20.h,),

              NextPreviousButtons(
                previousPressed: (){
                  Navigator.pop(context);
                },
                nextPressed: (){
                  navigateTo(context, StudentData());
                },


              )

            ],
          ),
        ),
      ),
    );

  }
}