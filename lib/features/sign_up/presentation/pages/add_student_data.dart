import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/login/presentation/widgets/custom_text_field.dart';
import 'package:maserty/features/request_job/presentation/pages/communication_info.dart';
import 'package:maserty/features/request_job/presentation/widgets/header.dart';
import 'package:maserty/features/request_job/presentation/widgets/next_previous_buttons.dart';
import 'package:maserty/style/colors/colors.dart';
import 'package:maserty/utils/navigation_widget.dart';

class AddStudentData extends StatefulWidget {
  AddStudentData({Key? key}) : super(key: key);

  @override
  State<AddStudentData> createState() => _AddStudentDataState();
}

class _AddStudentDataState extends State<AddStudentData> {
  TextEditingController firstNameArabicTextField = TextEditingController();

  TextEditingController fatherNameArabicTextField = TextEditingController();

  TextEditingController grandFatherArabicTextField = TextEditingController();

  TextEditingController confirmPasswordTextField = TextEditingController();

  int currentSexIndex = -1;
  List<String> degree = ['College'];

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
                onBackPressed: () {
                  Navigator.pop(context);
                },
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
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'اسم الجد انجليزي',
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
                hint: 'اسم الجد انجليزي',
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
              Row(
                children: [
                  Text(
                    'الجنس',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'poppins'),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Radio(
                      value: 0,
                      groupValue: currentSexIndex,
                      onChanged: (int? v) {
                        setState(() {
                          currentSexIndex = v!;
                        });
                      }),
                  Text("ذكر"),
                  Radio(
                      value: 1,
                      groupValue: currentSexIndex,
                      onChanged: (int? v) {
                        setState(() {
                          currentSexIndex = v!;
                        });
                      }),
                  Text("أنثي"),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'نوع الهوية',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsetsDirectional.fromSTEB(10.w, 3.h, 10.w, 3.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: enableColor)),
                child: DropdownButton<String>(
                  isExpanded: true,
                  hint: Text(
                    'نوع الهوية',
                    style: TextStyle(color: enableColor, fontSize: 12.sp),
                  ),
                  underline: const SizedBox(),
                  items: degree.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            value,
                            style: TextStyle(fontSize: 14.sp, color: gridcolor),
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
              SizedBox(
                height: 20.h,
              ),
              Text(
                'رقم الهوية',
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
                hint: 'رقم الهوية',
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'تاريخ انتهاء الهوية',
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
                controller: firstNameArabicTextField,
                autoFocus: false,
                suffix: Icon(Icons.calendar_month),
                onSuffixPressed: () {},
                hint: 'تاريخ انتهاء الهوية',
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'تاريخ الميلاد',
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
                controller: firstNameArabicTextField,
                autoFocus: false,
                suffix: Icon(Icons.calendar_month),
                onSuffixPressed: () {},
                hint: 'تاريخ الميلاد',
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'مكان الميلاد/الدولة',
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
                autoFocus: false,
                hint: 'مكان الميلاد/الدولة',
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'مكان الميلاد/المدينة',
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
                autoFocus: false,
                hint: 'مكان الميلاد/المدينة',
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'المسار الدراسي',
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
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsetsDirectional.fromSTEB(10.w, 3.h, 10.w, 3.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: enableColor)),
                child: DropdownButton<String>(
                  isExpanded: true,
                  hint: Text(
                    'المسار الدراسي',
                    style: TextStyle(color: enableColor, fontSize: 12.sp),
                  ),
                  underline: const SizedBox(),
                  items: degree.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            value,
                            style: TextStyle(fontSize: 14.sp, color: gridcolor),
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
              SizedBox(
                height: 20.h,
              ),
              Text(
                'فصيلة الدم',
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
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsetsDirectional.fromSTEB(10.w, 3.h, 10.w, 3.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: enableColor)),
                child: DropdownButton<String>(
                  isExpanded: true,
                  hint: Text(
                    'فصيلة الدم',
                    style: TextStyle(color: enableColor, fontSize: 12.sp),
                  ),
                  underline: const SizedBox(),
                  items: degree.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            value,
                            style: TextStyle(fontSize: 14.sp, color: gridcolor),
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
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Checkbox(value: false, onChanged: null),
                  Text('هل يحتاج الطالب/ة الي مساعدات مالية')
                ],
              ),

              SizedBox(height: 20.h,),

              Text(
                'ما هي المواد المحببة للطالب/ة',
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
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsetsDirectional.fromSTEB(10.w, 3.h, 10.w, 3.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: enableColor)),
                child: DropdownButton<String>(
                  isExpanded: true,
                  hint: Text(
                    'ما هي المواد المحببة للطالب/ة',
                    style: TextStyle(color: enableColor, fontSize: 12.sp),
                  ),
                  underline: const SizedBox(),
                  items: degree.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            value,
                            style: TextStyle(fontSize: 14.sp, color: gridcolor),
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
                'حالة الوالدين',
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
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsetsDirectional.fromSTEB(10.w, 3.h, 10.w, 3.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: enableColor)),
                child: DropdownButton<String>(
                  isExpanded: true,
                  hint: Text(
                    'حالة الوالدبن',
                    style: TextStyle(color: enableColor, fontSize: 12.sp),
                  ),
                  underline: const SizedBox(),
                  items: degree.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            value,
                            style: TextStyle(fontSize: 14.sp, color: gridcolor),
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
              SizedBox(
                height: 20.h,
              ),

              Text(
                'مع من يعيش الطالب',
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
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsetsDirectional.fromSTEB(10.w, 3.h, 10.w, 3.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: enableColor)),
                child: DropdownButton<String>(
                  isExpanded: true,
                  hint: Text(
                    'مع من يعيش الطالب',
                    style: TextStyle(color: enableColor, fontSize: 12.sp),
                  ),
                  underline: const SizedBox(),
                  items: degree.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            value,
                            style: TextStyle(fontSize: 14.sp, color: gridcolor),
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
                'ما هي المواد الغير محببة للطالب/ة',
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
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsetsDirectional.fromSTEB(10.w, 3.h, 10.w, 3.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: enableColor)),
                child: DropdownButton<String>(
                  isExpanded: true,
                  hint: Text(
                    'ما هي المواد الغير محببة للطالب/ة',
                    style: TextStyle(color: enableColor, fontSize: 12.sp),
                  ),
                  underline: const SizedBox(),
                  items: degree.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            value,
                            style: TextStyle(fontSize: 14.sp, color: gridcolor),
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

              Row(children: [
                Checkbox(value: false, onChanged: null),
                Text('هل يواجه الطالب/ة اي مشاكل في المدرسة')
              ],),

              Row(
                children: [
                  Text(
                    'صورة الهوية',
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
                            fontFamily: 'poppins')),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    'ملف السيرة الذاتية',
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
                            fontFamily: 'poppins')),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              NextPreviousButtons(
                nextPressed: () {
                  navigateTo(context, CommunicationInfo());
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
