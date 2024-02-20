import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/login/presentation/widgets/custom_text_field.dart';
import 'package:maserty/style/colors/colors.dart';

class PersonalData extends StatelessWidget {
  PersonalData({Key? key}) : super(key: key);
  TextEditingController firstNameArabicTextField = TextEditingController();
  TextEditingController fatherNameArabicTextField = TextEditingController();
  TextEditingController grandFatherArabicTextField = TextEditingController();
  TextEditingController confirmPasswordTextField = TextEditingController();

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

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.arrow_back_ios),
                  Expanded(
                    child: Text(
                      "طلب توظيف",
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
                height: 30.h,
              ),


              Row(
                children: [
                  Text(
                    'الاسم الأول عربي',
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
                hint: 'الاسم الأول عربي',
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'اسم الأب عربي',
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
                hint: 'اسم الأب عربي',
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'اسم الجد عربي',
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
                hint: 'اسم الجد عربي',
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'اللقب عربي',
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
                hint: 'اللقب عربي',
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'اللقب انجليزي',
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
                hint: 'اللقب انجليزي',
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'الاسم الأول انجليزي',
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
                hint: 'الاسم الأول انجليزي',
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'اسم الأب انجليزي',
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
                hint: 'اسم الأب انجليزي',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
