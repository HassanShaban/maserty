import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maserty/core/widget/required_text.dart';
import 'package:maserty/features/login/presentation/widgets/custom_text_field.dart';
import 'package:maserty/features/request_job/presentation/pages/communication_info.dart';
import 'package:maserty/features/request_job/presentation/widgets/header.dart';
import 'package:maserty/features/request_job/presentation/widgets/next_previous_buttons.dart';
import 'package:maserty/features/sign_up/data/model/registration_model.dart';
import 'package:maserty/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:maserty/features/sign_up/presentation/cubit/sign_up_state.dart';
import 'package:maserty/features/sign_up/presentation/pages/sign_up_communication_data.dart';
import 'package:maserty/style/colors/colors.dart';
import 'package:maserty/utils/navigation_widget.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:intl/src/intl/date_format.dart';
import 'package:maserty/locator.dart' as di;

class FatherData extends StatefulWidget {
  FatherData({Key? key}) : super(key: key);

  @override
  State<FatherData> createState() => _FatherDataState();
}

class _FatherDataState extends State<FatherData> {
  TextEditingController firstNameArabicTextField = TextEditingController();

  TextEditingController qaribTaleb1ArabicTextField = TextEditingController();

  TextEditingController phoneNumQaribTaleb1ArabicTextField =
      TextEditingController();

  TextEditingController addressQaribTaleb1ArabicTextField =
      TextEditingController();

  TextEditingController qaribTaleb2ArabicTextField = TextEditingController();

  TextEditingController phoneNumQaribTaleb2ArabicTextField =
      TextEditingController();

  TextEditingController addressQaribTaleb2ArabicTextField =
      TextEditingController();

  TextEditingController fatherNameArabicTextField = TextEditingController();

  TextEditingController grandFatherArabicTextField = TextEditingController();

  TextEditingController surNameArabicTextField = TextEditingController();

  TextEditingController nationalityArabicTextField = TextEditingController();

  TextEditingController expireHaweyaTextField = TextEditingController();

  TextEditingController haweyaNumTextField = TextEditingController();

  TextEditingController haweyaSourceTextField = TextEditingController();

  TextEditingController phoneNumTextField = TextEditingController();

  TextEditingController workPhoneNumTextField = TextEditingController();

  int currentSexIndex = -1;
  List<String> selahQaraba = ['أب', 'أم', 'أخ', 'أخت', 'جد', 'جدة'];
  String? selectedSelahQaraba;
  List<String> nohHaweya = ['هوية وطنية', 'إقامة'];
  String? selectedNohHaweya;
  String fatherPhoneCode = '+966';
  String fatherPhoneWorkCode = '+966';
  String qareb1PhoneWorkCode = '+966';
  String qareb2PhoneWorkCode = '+966';
  var formKey = GlobalKey<FormState>();
  late SignUpCubit signUpCubit;
  Countries? country;
  Relations? relation;
  IdentityTypes? identityType;
  Cities? city;




  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.locator<SignUpCubit>()..getAllRegisterData(),
      child: BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          signUpCubit = SignUpCubit.get(context);
          return Scaffold(
            body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              padding: EdgeInsetsDirectional.fromSTEB(16.w, 60.h, 16.h, 30.h),
              child: signUpCubit.isGettingAllSignUpData
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : SingleChildScrollView(
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            JobHeader(
                              txt: 'تسجيل طالب جديد',
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            RequiredTxt(txt: 'الاسم الاول'),
                            SizedBox(
                              height: 10.h,
                            ),
                            CustomTextFormField(
                              controller: firstNameArabicTextField,
                              autoFocus: false,
                              hint: 'الاسم الاول',
                              onlyArabic: true,
                              validator: (text) {
                                if (text!.isEmpty) {
                                  return 'الاسم الاول فارغ';
                                }
                                return null;
                              },
                            ),
                            RequiredTxt(txt: 'اسم الاب'),
                            SizedBox(
                              height: 10.h,
                            ),
                            CustomTextFormField(
                              controller: fatherNameArabicTextField,
                              autoFocus: false,
                              hint: 'اسم الاب',
                              validator: (text) {
                                if (text!.isEmpty) {
                                  return 'الاسم الاب فارغ';
                                }
                                return null;
                              },
                              onlyArabic: true,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            RequiredTxt(txt: 'اسم الجد'),
                            SizedBox(
                              height: 10.h,
                            ),
                            CustomTextFormField(
                              controller: grandFatherArabicTextField,
                              autoFocus: false,
                              hint: 'اسم الجد',
                              validator: (text) {
                                if (text!.isEmpty) {
                                  return 'الاسم الجد فارغ';
                                }
                                return null;
                              },
                              onlyArabic: true,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            RequiredTxt(txt: 'اللقب'),
                            SizedBox(
                              height: 10.h,
                            ),
                            CustomTextFormField(
                              controller: surNameArabicTextField,
                              autoFocus: false,
                              hint: 'اللقب',
                              validator: (text) {
                                if (text!.isEmpty) {
                                  return 'الاسم اللقب فارغ';
                                }
                                return null;
                              },
                              onlyArabic: true,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            RequiredTxt(txt: 'الجنسية'),
                            SizedBox(
                              height: 10.h,
                            ),

                            // CustomTextFormField(
                            //   controller: nationalityArabicTextField,
                            //   autoFocus: false,
                            //   hint: 'الجنسية',
                            //   onlyArabic: true,
                            //   validator: (text) {
                            //     if (text!.isEmpty) {
                            //       return 'الجنسية فارغة';
                            //     }
                            //     return null;
                            //   },
                            // ),

                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.w, 3.h, 10.w, 3.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(color: enableColor)),
                              child: DropdownButtonFormField<Countries?>(
                                isExpanded: true,
                                hint: Text(
                                  'الجنسية',
                                  style: TextStyle(
                                      color: enableColor, fontSize: 12.sp),
                                ),
                                value: country,

                                decoration: InputDecoration(
                                  border: InputBorder.none, // Remove underline
                                ),


                                // underline: const SizedBox(),
                                validator: (value) {
                                  if (value == null) {
                                    return 'رجاء اختيار جنسية';
                                  }
                                  return null;
                                },
                                items: signUpCubit.countries
                                    .map<DropdownMenuItem<Countries>>(
                                        (Countries value) {
                                  return DropdownMenuItem<Countries>(
                                    value: value,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            value.nameAr,
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                color: gridcolor),
                                          ),
                                          Divider(
                                              // height: 2.h,
                                              )
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (Countries? value) {
                                  setState(() {
                                    country = value!;
                                  });
                                },
                              ),
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
                            SizedBox(
                              height: 10.h,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.w, 3.h, 10.w, 3.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: enableColor)),
                              child: DropdownButtonFormField<Relations>(
                                isExpanded: true,
                                hint: Text(
                                  'صلة القرابة',
                                  style: TextStyle(
                                      color: enableColor, fontSize: 12.sp),
                                ),
                                value: relation,

                                decoration: InputDecoration(
                                  border: InputBorder.none, // Remove underline
                                ),

                                // underline: const SizedBox(),
                                // validator: (value) {
                                //   if (value == null) {
                                //     return 'رجاء اختيار صلة القرابة';
                                //   }
                                //   return null;
                                // },
                                items: signUpCubit.relations
                                    .map<DropdownMenuItem<Relations>>(
                                        (Relations value) {
                                  return DropdownMenuItem<Relations>(
                                    value: value,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            value.titleAr,
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                color: gridcolor),
                                          ),
                                          Divider(
                                              // height: 2.h,
                                              )
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (Relations? value) {
                                  setState(() {
                                    relation = value!;
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
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
                              height: 10.h,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.w, 3.h, 10.w, 3.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: enableColor)),
                              child: DropdownButtonFormField<IdentityTypes>(
                                isExpanded: true,
                                hint: Text(
                                  'نوع الهوية',
                                  style: TextStyle(
                                      color: enableColor, fontSize: 12.sp),
                                ),
                                value: identityType,
                                decoration: InputDecoration(
                                  border: InputBorder.none, // Remove underline
                                ),

                                // underline: const SizedBox(),
                                // validator: (value) {
                                //   if (value == null ) {
                                //     return 'رجاء اختيار نوع الهوية';
                                //   }
                                //   return null;
                                // },
                                items: signUpCubit.identityTypes
                                    .map<DropdownMenuItem<IdentityTypes>>(
                                        (IdentityTypes value) {
                                  return DropdownMenuItem<IdentityTypes>(
                                    value: value,
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            value.titleAr,
                                            style: TextStyle(
                                                fontSize: 14.sp,
                                                color: gridcolor),
                                          ),
                                          Divider(
                                              // height: 2.h,
                                              )
                                        ],
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: (IdentityTypes? value) {
                                  setState(() {
                                    identityType = value;
                                  });
                                },
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            RequiredTxt(txt: 'رقم الهوية'),
                            SizedBox(
                              height: 10.h,
                            ),
                            CustomTextFormField(
                              controller: haweyaNumTextField,
                              keyboardType: TextInputType.number,
                              maxLength: 10,
                              autoFocus: false,
                              hint: 'رقم الهوية',
                              onlyDigital: true,
                              buildCounter: (BuildContext context,
                                  {int? currentLength,
                                    int? maxLength,
                                    bool? isFocused}) =>
                              null,

                              validator: (text) {
                                if (text!.isEmpty) {
                                  return 'رقم الهوية فارغ';
                                } else if (text.length < 10) {
                                  return 'رقم الهوية يجب أن تكون أرقام فقط وتحتوي على 10 خانات فقط';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            RequiredTxt(txt: 'مصدر الهوية'),
                            SizedBox(
                              height: 10.h,
                            ),
                            // CustomTextFormField(
                            //   controller: haweyaSourceTextField,
                            //   autoFocus: false,
                            //   hint: 'مصدر الهوية',
                            //   validator: (text) {
                            //     if (text!.isEmpty) {
                            //       return 'مصدر الهوية فارغ';
                            //     }
                            //     return null;
                            //   },
                            // ),

                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.w, 3.h, 10.w, 3.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.r),
                                  border: Border.all(color: enableColor)),
                              child: DropdownButtonFormField<Cities?>(
                                isExpanded: true,
                                hint: Text(
                                  'مصدر الهوية',
                                  style: TextStyle(
                                      color: enableColor, fontSize: 12.sp),
                                ),
                                value: city,
                            
                                decoration: InputDecoration(
                                  border: InputBorder.none, // Remove underline
                                ),
                            
                                // underline: const SizedBox(),
                                validator: (value) {
                                  if (value == null) {
                                    return 'رجاء اختيار مصدر الهوية';
                                  }
                                  return null;
                                },
                                items: signUpCubit.cities
                                    .map<DropdownMenuItem<Cities>>(
                                        (Cities value) {
                                      return DropdownMenuItem<Cities>(
                                        value: value,
                                        child: SingleChildScrollView(
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                            children: [
                                              Text(
                                                value.nameAr,
                                                style: TextStyle(
                                                    fontSize: 14.sp,
                                                    color: gridcolor),
                                              ),
                                              Divider(
                                                // height: 2.h,
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                onChanged: (Cities? value) {
                                  setState(() {
                                    city = value!;
                                  });
                                },
                              ),
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
                              controller: expireHaweyaTextField,
                              autoFocus: false,

                              suffix: Icon(Icons.calendar_month),
                              onSuffixPressed: () {
                                _showDatePicker();
                              },
                              validator: (text) {
                                if (text!.isEmpty) {
                                  return 'تاريخ انتهاء الهوية فارغ';
                                }
                                else if (!RegExp(r'^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])$').hasMatch(text)) {
                                  return 'يرجي ادخال تاريخ انتهاء الهوية صحيح';
                                }
                                return null;
                              },
                              hint: 'تاريخ انتهاء الهوية',
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.w, 3.h, 10.w, 3.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: enableColor)),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: TextFormField(
                                      controller: phoneNumTextField,
                                      keyboardType: TextInputType.number,
                                      maxLength: 10,
                                      validator: (text) {
                                        if (text!.isEmpty) {
                                          return 'رقم الجوال فارغ';
                                        }
                                        return null;
                                      },
                                      style: TextStyle(
                                          color: blackColor, fontSize: 12.sp),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      buildCounter: (BuildContext context,
                                              {int? currentLength,
                                              int? maxLength,
                                              bool? isFocused}) =>
                                          null,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'رقم الجوال',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      width: 130.w,
                                      child: CountryCodePicker(
                                        onChanged: (code) {
                                          fatherPhoneCode = code.toString();
                                        },
                                        initialSelection: 'SA',
                                        // Initial selection set to Saudi Arabia (KSA)
                                        showCountryOnly: false,
                                        showOnlyCountryWhenClosed: false,
                                        alignLeft: false,
                                      ))

                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              'رقم هاتف العمل',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'poppins'),
                            ),
                            Container(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.w, 3.h, 10.w, 3.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: enableColor)),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: TextFormField(
                                      controller: workPhoneNumTextField,
                                      keyboardType: TextInputType.number,
                                      maxLength: 10,
                                      style: TextStyle(
                                          color: blackColor, fontSize: 12.sp),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      buildCounter: (BuildContext context,
                                              {int? currentLength,
                                              int? maxLength,
                                              bool? isFocused}) =>
                                          null,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'رقم هاتف العمل',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      width: 130.w,
                                      child: CountryCodePicker(
                                        onChanged: (code) {
                                          fatherPhoneWorkCode = code.toString();
                                          Fluttertoast.showToast(
                                              msg: fatherPhoneWorkCode);
                                        },
                                        initialSelection: 'SA',
                                        // Initial selection set to Saudi Arabia (KSA)
                                        showCountryOnly: false,
                                        showOnlyCountryWhenClosed: false,
                                        alignLeft: false,
                                      ))

                                  // Expanded(
                                  //     flex: 1,
                                  //     child: Row(
                                  //       children: [
                                  //         SizedBox(
                                  //           height: 20,
                                  //           child: VerticalDivider(
                                  //             color: enableColor,
                                  //             thickness: 2,
                                  //           ),
                                  //         ),
                                  //         Text('+966')
                                  //       ],
                                  //     ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            RequiredTxt(txt: 'اسم قريب للطالب/ة1'),
                            SizedBox(
                              height: 10.h,
                            ),
                            CustomTextFormField(
                              controller: qaribTaleb1ArabicTextField,
                              autoFocus: false,
                              onlyArabic: true,
                              // suffix: Icon(Icons.calendar_month),
                              // onSuffixPressed: () {},
                              hint: 'اسم قريب للطالب/ة1',

                              validator: (text) {
                                if (text!.isEmpty) {
                                  return 'اسم قريب للطالب/ة1 فارغ';
                                }
                                return null;
                              },
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.w, 3.h, 10.w, 3.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: enableColor)),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: TextFormField(
                                      controller:
                                          phoneNumQaribTaleb1ArabicTextField,
                                      keyboardType: TextInputType.number,
                                      maxLength: 10,
                                      validator: (text) {
                                        if (text!.isEmpty) {
                                          return 'رقم الجوال فارغ';
                                        }
                                        return null;
                                      },
                                      style: TextStyle(
                                          color: blackColor, fontSize: 12.sp),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      buildCounter: (BuildContext context,
                                              {int? currentLength,
                                              int? maxLength,
                                              bool? isFocused}) =>
                                          null,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'رقم الجوال',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      width: 130.w,
                                      child: CountryCodePicker(
                                        onChanged: (code) {
                                          qareb1PhoneWorkCode = code.toString();
                                        },
                                        initialSelection: 'SA',
                                        // Initial selection set to Saudi Arabia (KSA)
                                        showCountryOnly: false,
                                        showOnlyCountryWhenClosed: false,
                                        alignLeft: false,
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            RequiredTxt(txt: 'العنوان'),
                            SizedBox(
                              height: 10.h,
                            ),
                            CustomTextFormField(
                              controller: addressQaribTaleb1ArabicTextField,
                              autoFocus: false,
                              onlyArabic: true,
                              // suffix: Icon(Icons.calendar_month),
                              // onSuffixPressed: () {},
                              hint: 'العنوان',
                              validator: (text) {
                                if (text!.isEmpty) {
                                  return 'العنوان فارغ';
                                }
                                return null;
                              },
                            ),
                            RequiredTxt(txt: 'اسم قريب للطالب/ة2'),
                            SizedBox(
                              height: 10.h,
                            ),
                            CustomTextFormField(
                              onlyArabic: true,
                              controller: qaribTaleb2ArabicTextField,
                              autoFocus: false,
                              // suffix: Icon(Icons.calendar_month),
                              // onSuffixPressed: () {},
                              hint: 'اسم قريب للطالب/ة2',

                              validator: (text) {
                                if (text!.isEmpty) {
                                  return 'اسم قريب للطالب/ة2 فارغ';
                                }
                                return null;
                              },
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.w, 3.h, 10.w, 3.h),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: enableColor)),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 4,
                                    child: TextFormField(
                                      controller:
                                          phoneNumQaribTaleb2ArabicTextField,
                                      keyboardType: TextInputType.number,
                                      maxLength: 10,
                                      buildCounter: (BuildContext context,
                                              {int? currentLength,
                                              int? maxLength,
                                              bool? isFocused}) =>
                                          null,
                                      style: TextStyle(
                                          color: blackColor, fontSize: 12.sp),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                      validator: (text) {
                                        if (text!.isEmpty) {
                                          return 'رقم الجوال فارغ';
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'رقم الجوال',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      width: 130.w,
                                      child: CountryCodePicker(
                                        onChanged: (code) {
                                          qareb2PhoneWorkCode = code.toString();
                                        },
                                        initialSelection: 'SA',
                                        // Initial selection set to Saudi Arabia (KSA)
                                        showCountryOnly: false,
                                        showOnlyCountryWhenClosed: false,
                                        alignLeft: false,
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            RequiredTxt(txt: 'العنوان'),
                            SizedBox(
                              height: 10.h,
                            ),
                            CustomTextFormField(
                              controller: addressQaribTaleb2ArabicTextField,
                              autoFocus: false,
                              onlyArabic: true,
                              // suffix: Icon(Icons.calendar_month),
                              // onSuffixPressed: () {},
                              hint: 'العنوان',
                              validator: (text) {
                                if (text!.isEmpty) {
                                  return 'العنوان فارغ';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            NextPreviousButtons(
                              nextPressed: () {

                            // if (formKey.currentState!.validate()) {
                               signUpCubit.setDataFromParent(
                                   firstNameArabicTextField: firstNameArabicTextField
                                       .text,
                                   fatherNameArabicTextField: fatherNameArabicTextField
                                       .text,
                                   grandFatherArabicTextField: grandFatherArabicTextField
                                       .text,
                                   surNameArabicTextField: surNameArabicTextField
                                       .text,
                                   nationality: country?.code,
                                   selahQaraba: relation?.id,
                                   nohHaweya: identityType?.id,
                                   haweyaNumTextField: haweyaNumTextField.text,
                                   haweyaSourceTextField: city?.id,
                                   expireHaweyaTextField: expireHaweyaTextField
                                       .text,
                                   phoneNumTextField: fatherPhoneCode + phoneNumTextField.text,
                                   workPhoneNumTextField:fatherPhoneWorkCode+ workPhoneNumTextField
                                       .text,
                                   qaribTaleb1ArabicTextField: qaribTaleb1ArabicTextField
                                       .text,
                                   phoneNumQaribTaleb1ArabicTextField:qareb1PhoneWorkCode+ phoneNumQaribTaleb1ArabicTextField
                                       .text,
                                   addressQaribTaleb1ArabicTextField: addressQaribTaleb1ArabicTextField
                                       .text,
                                   qaribTaleb2ArabicTextField: qaribTaleb2ArabicTextField
                                       .text,
                                   phoneNumQaribTaleb2ArabicTextField:qareb2PhoneWorkCode+ phoneNumQaribTaleb2ArabicTextField
                                       .text,
                                   addressQaribTaleb2ArabicTextField: addressQaribTaleb2ArabicTextField
                                       .text

                               );

                               navigateTo(
                                   context, SignUpCommunicationInfo(
                                 cities: signUpCubit.cities,
                                 housingTypes: signUpCubit.housingTypes,
                                 signUpCubit: signUpCubit,
                               ));





                            // } //form vaild




                              },
                            ),





                          ],
                        ),
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }

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

      expireHaweyaTextField.text = intehahHaweyaDate;
    }
  }
}
