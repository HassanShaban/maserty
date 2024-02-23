import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/login/presentation/widgets/custom_text_field.dart';
import 'package:maserty/features/request_job/presentation/pages/communication_info.dart';
import 'package:maserty/features/request_job/presentation/widgets/header.dart';
import 'package:maserty/features/request_job/presentation/widgets/next_previous_buttons.dart';
import 'package:maserty/features/sign_up/presentation/pages/sign_up_communication_data.dart';
import 'package:maserty/style/colors/colors.dart';
import 'package:maserty/utils/navigation_widget.dart';

class FatherData extends StatefulWidget {
  FatherData({Key? key}) : super(key: key);

  @override
  State<FatherData> createState() => _FatherDataState();
}

class _FatherDataState extends State<FatherData> {
  TextEditingController firstNameArabicTextField = TextEditingController();

  TextEditingController fatherNameArabicTextField = TextEditingController();

  TextEditingController grandFatherArabicTextField = TextEditingController();

  TextEditingController confirmPasswordTextField = TextEditingController();

  int currentSexIndex = -1;
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

              JobHeader(txt: 'تسجيل طالب جديد',),
              SizedBox(
                height: 30.h,
              ),


              Row(
                children: [
                  Text(
                    'الاسم الاول',
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
                controller: firstNameArabicTextField,
                autoFocus: true,
                hint: 'الاسم الاول',
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'اسم الجد',
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
                controller: fatherNameArabicTextField,
                autoFocus: false,
                hint: 'اسم الجد',
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'اللقب',
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
                hint: 'اللقب',
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'اسم الاب',
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
                hint: 'اسم الاب',
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'الجنسية',
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
                hint: 'الجنسية',
              ),
              SizedBox(
                height: 20.h,
              ),


              Text(
                'صلة القرابة',
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
                    'صلة القرابة',
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
                'نوع الهوية',
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
                    'نوع الهوية',
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

              Row(
                children: [
                  Text(
                    'رقم الهوية',
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
              SizedBox(height: 10.h,),

              CustomTextFormField(
                controller: grandFatherArabicTextField,
                autoFocus: false,
                hint: 'رقم الهوية',
              ),


              SizedBox(height: 20.h,),


              Row(
                children: [
                  Text(
                    'مصدر الهوية',
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
              SizedBox(height: 10.h,),

              CustomTextFormField(
                controller: grandFatherArabicTextField,
                autoFocus: false,
                hint: 'مصدر الهوية',
              ),

              Text(
                'تاريخ انتهاء الهوية',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),

              SizedBox(height: 10.h,),

              CustomTextFormField(
                controller: firstNameArabicTextField,
                autoFocus: false,
                suffix: Icon(Icons.calendar_month),
                onSuffixPressed: () {},
                hint: 'تاريخ انتهاء الهوية',
              ),

              SizedBox(height: 20.h,),

              Text(
                'رقم الجوال',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),
              SizedBox(height: 10.h,),
              Container(
                padding: EdgeInsetsDirectional.fromSTEB(10.w, 3.h, 10.w, 3.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: enableColor)

                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: TextFormField(
                        style: TextStyle(color: enableColor, fontSize: 12.sp),

                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'رقم الجوال',

                        ),

                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            SizedBox(
                              height:20,
                              child: VerticalDivider(
                                color: enableColor,
                                thickness: 2,
                              ),
                            ),
                            Text('+966')
                          ],
                        ))
                  ],
                ),
              ),

              SizedBox(height: 20.h,),
              Text(
                'رقم هاتف العمل',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),

              Container(
                padding: EdgeInsetsDirectional.fromSTEB(10.w, 3.h, 10.w, 3.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: enableColor)

                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: TextFormField(
                        style: TextStyle(color: enableColor, fontSize: 12.sp),

                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'رقم هاتف العمل',

                        ),

                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            SizedBox(
                              height:20,
                              child: VerticalDivider(
                                color: enableColor,
                                thickness: 2,
                              ),
                            ),
                            Text('+966')
                          ],
                        ))
                  ],
                ),
              ),

              SizedBox(height: 20.h,),

              Row(
                children: [
                  Text(
                    'اسم قريب للطالب/ة1',
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

              SizedBox(height: 10.h,),

              CustomTextFormField(
                controller: firstNameArabicTextField,
                autoFocus: false,
                suffix: Icon(Icons.calendar_month),
                onSuffixPressed: () {},
                hint: 'اسم قريب للطالب/ة1',
              ),


              SizedBox(height: 20.h,),

              Text(
                'رقم الجوال',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),
              SizedBox(height: 10.h,),
              Container(
                padding: EdgeInsetsDirectional.fromSTEB(10.w, 3.h, 10.w, 3.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: enableColor)

                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: TextFormField(
                        style: TextStyle(color: enableColor, fontSize: 12.sp),

                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'رقم الجوال',

                        ),

                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            SizedBox(
                              height:20,
                              child: VerticalDivider(
                                color: enableColor,
                                thickness: 2,
                              ),
                            ),
                            Text('+966')
                          ],
                        ))
                  ],
                ),
              ),

              SizedBox(height: 20,),
              Row(
                children: [
                  Text(
                    'العنوان',
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

              SizedBox(height: 10.h,),

              CustomTextFormField(
                controller: firstNameArabicTextField,
                autoFocus: false,
                suffix: Icon(Icons.calendar_month),
                onSuffixPressed: () {},
                hint: 'العنوان',
              ),
              Row(
                children: [
                  Text(
                    'اسم قريب للطالب/ة2',
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

              SizedBox(height: 10.h,),

              CustomTextFormField(
                controller: firstNameArabicTextField,
                autoFocus: false,
                suffix: Icon(Icons.calendar_month),
                onSuffixPressed: () {},
                hint: 'اسم قريب للطالب/ة2',
              ),


              SizedBox(height: 20.h,),

              Text(
                'رقم الجوال',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),
              SizedBox(height: 10.h,),
              Container(
                padding: EdgeInsetsDirectional.fromSTEB(10.w, 3.h, 10.w, 3.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: enableColor)

                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: TextFormField(
                        style: TextStyle(color: enableColor, fontSize: 12.sp),

                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'رقم الجوال',

                        ),

                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Row(
                          children: [
                            SizedBox(
                              height:20,
                              child: VerticalDivider(
                                color: enableColor,
                                thickness: 2,
                              ),
                            ),
                            Text('+966')
                          ],
                        ))
                  ],
                ),
              ),

              SizedBox(height: 20,),
              Row(
                children: [
                  Text(
                    'العنوان',
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

              SizedBox(height: 10.h,),

              CustomTextFormField(
                controller: firstNameArabicTextField,
                autoFocus: false,
                suffix: Icon(Icons.calendar_month),
                onSuffixPressed: () {},
                hint: 'العنوان',
              ),

              SizedBox(height: 20.h,),

              NextPreviousButtons(

                nextPressed: (){
                  navigateTo(context, SignUpCommunicationInfo());
                },
              )

            ],
          ),
        ),
      ),
    );
  }
}
