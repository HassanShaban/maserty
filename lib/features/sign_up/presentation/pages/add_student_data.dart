import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/core/widget/required_text.dart';
import 'package:maserty/features/login/presentation/widgets/custom_text_field.dart';
import 'package:maserty/features/request_job/presentation/pages/communication_info.dart';
import 'package:maserty/features/request_job/presentation/widgets/header.dart';
import 'package:maserty/features/request_job/presentation/widgets/next_previous_buttons.dart';
import 'package:maserty/features/request_job/presentation/widgets/save_cancel.dart';
import 'package:maserty/features/sign_up/presentation/pages/student_data.dart';
import 'package:maserty/style/colors/colors.dart';
import 'package:maserty/utils/navigation_widget.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

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
  TextEditingController endDateTextField = TextEditingController();
  TextEditingController dateOfBirthTextField = TextEditingController();
  TextEditingController CountryTextField = TextEditingController();
  TextEditingController CityTextField = TextEditingController();
  int currentSexIndex = -1;
  List<String> degree = ['College'];

  final CalendarController cal = CalendarController();

  _showDatePicker() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
              child: Container(
            height: 450.h,
            child: SfCalendar(
                view: CalendarView.month,
                controller: cal,
                initialSelectedDate: DateTime.now(),
                onTap: _onSelectionChanged),
          ));
        });
  }

  String intehahHaweyaDate = DateFormat('yyyy-MM-dd', Locale('en').toString())
      .format(DateTime.now())
      .toString();

  // On Date Changed
  void _onSelectionChanged(CalendarTapDetails details) {
    // close date picker.
    Navigator.pop(context);
    if (details.date is DateTime) {
      intehahHaweyaDate = DateFormat('yyyy-MM-dd', Locale('en').toString())
          .format(details.date!)
          .toString();

      endDateTextField.text = intehahHaweyaDate;
    }
  }
// pich photo from gellery

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
              RequiredTxt(txt: 'الاسم الأول عربي'),
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
              RequiredTxt(txt: 'اسم الأب عربي'),
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
              RequiredTxt(txt: 'اسم الجد عربي'),
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
              RequiredTxt(txt: 'اللقب عربي'),
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
              RequiredTxt(txt: 'اللقب انجليزي'),
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
              RequiredTxt(txt: 'الاسم الأول انجليزي'),
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
              RequiredTxt(txt: 'اسم الأب انجليزي'),
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
              RequiredTxt(txt: 'اسم الجد انجليزي'),
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
              RequiredTxt(txt: 'الجنسية'),
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
                controller: endDateTextField,
                autoFocus: false,
                suffix: Icon(Icons.calendar_month),
                onSuffixPressed: () {
                  _showDatePicker();
                },
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
                controller: dateOfBirthTextField,
                autoFocus: false,
                suffix: Icon(Icons.calendar_month),
                onSuffixPressed: () {
                  _showDatePicker();
                },
                hint: 'تاريخ الميلاد',
              ),
              SizedBox(
                height: 20.h,
              ),
              RequiredTxt(txt: 'مكان الميلاد/الدولة'),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormField(
                controller: CountryTextField,
                autoFocus: false,
                hint: 'مكان الميلاد/الدولة',
              ),
              SizedBox(
                height: 20.h,
              ),
              RequiredTxt(txt: 'مكان الميلاد/المدينة'),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormField(
                controller: CityTextField,
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
              SizedBox(
                height: 20.h,
              ),
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
              SizedBox(
                height: 20.h,
              ),
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
              SizedBox(
                height: 20.h,
              ),
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
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Checkbox(value: false, onChanged: null),
                  Text('هل يواجه الطالب/ة اي مشاكل في المدرسة')
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              RequiredTxt(txt: 'هوايات الطالب/ة'),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormField(
                controller: grandFatherArabicTextField,
                autoFocus: false,
                hint: 'هوايات الطالب/ة',
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Checkbox(value: false, onChanged: null),
                  Text('هل بستطيع الطالب/ة المشاركة في الاذاعة')
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'تصوير للطالب/ة فى البرامج',
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
                    'تصوير للطالب/ة فى البرامج',
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
                  Text('هل يعاني الطالب/ة من أي حالات مرضية لا قدر الله')
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'صورة شخصية',
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
              Row(
                children: [
                  Text(
                    'صورة الهوية للطالب/ة',
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
              Row(
                children: [
                  Text(
                    'صورة صك الحضانة فى (حالات الانفصال)',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'poppins'),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  InkWell(onTap: (){

                  },
                    child: Container(
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
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    'صورة كارت التطعيمات',
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
              SaveCancelButtons(
                savePressed: () {
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
