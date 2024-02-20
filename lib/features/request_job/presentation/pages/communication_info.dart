import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/login/presentation/widgets/custom_text_field.dart';
import 'package:maserty/style/colors/colors.dart';

class CommunicationInfo extends StatelessWidget {
   CommunicationInfo({Key? key}) : super(key: key);
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
                    'المدينة',
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
                hint: 'المدينة',
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'الحي',
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
                hint: 'الحي',
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'الشارع',
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
                hint: 'الشارع',
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'رقم الجوال',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),
              SizedBox(
                height: 10.h,
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

              SizedBox(
                height: 10.h,
              ),

              Text(
                'رقم جوال اخر',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),

              SizedBox(
                height: 10.h,
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
                          hintText: 'رقم جوال اخر',

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

              SizedBox(
                height: 20.h,
              ),
              Text(
                'البريد الالكتروني',
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
                hint: 'البريد الالكتروني',
              ),

              Row(
                children: [
                  Container(
                    width: 104.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: primaryColor),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(
                      child: Text('السابق',
                      style: TextStyle(
                        color: Colors.black
                      ),),
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  Container(
                    width: 104.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(
                      child: Text('التالي',
                        style: TextStyle(
                            color: Colors.white
                        ),),
                    ),
                  ),

                ],
              )

            ],
          ),
        ),
      ),
    );

  }
}
