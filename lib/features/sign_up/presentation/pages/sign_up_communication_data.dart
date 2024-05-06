import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/core/widget/required_text.dart';
import 'package:maserty/features/login/presentation/widgets/custom_text_field.dart';
import 'package:maserty/features/request_job/presentation/pages/qualification.dart';
import 'package:maserty/features/request_job/presentation/widgets/header.dart';
import 'package:maserty/features/request_job/presentation/widgets/next_previous_buttons.dart';
import 'package:maserty/features/sign_up/data/model/registration_model.dart';
import 'package:maserty/features/sign_up/presentation/pages/marital_status_data.dart';
import 'package:maserty/style/colors/colors.dart';
import 'package:maserty/utils/navigation_widget.dart';

class SignUpCommunicationInfo extends StatefulWidget {
  SignUpCommunicationInfo({Key? key , required this.cities , required this.housingTypes}) : super(key: key);
  List<Cities> cities;
  List<HousingTypes> housingTypes;
  @override
  State<SignUpCommunicationInfo> createState() => _SignUpCommunicationInfoState();
}

class _SignUpCommunicationInfoState extends State<SignUpCommunicationInfo> {
  TextEditingController madina = TextEditingController();

  TextEditingController hayee = TextEditingController();

  TextEditingController mainStreet = TextEditingController();

  TextEditingController subStreet = TextEditingController();

  TextEditingController homeNum = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController postalCode = TextEditingController();

  TextEditingController mailBox = TextEditingController();

  TextEditingController addressInVacation = TextEditingController();

  var formKey = GlobalKey<FormState>();

  Cities? city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        padding: EdgeInsetsDirectional.fromSTEB(16.w, 60.h, 16.h, 30.h),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
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

                RequiredTxt(txt: 'المدينة'),


                SizedBox(
                  height: 10.h,
                ),
                // CustomTextFormField(
                //   controller: madina,
                //   autoFocus: true,
                //   hint: 'المدينة',
                //   validator: (text) {
                //     if (text!.isEmpty) {
                //       return 'هذا الحقل مطلوب';
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
                      'المدينة',
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
                        return 'رجاء اختيار المدينة';
                      }
                      return null;
                    },
                    items: widget.cities
                        .map<DropdownMenuItem<Cities>>(
                            (Cities value) {
                          return DropdownMenuItem<Cities>(
                            value: value,
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
                          );
                        }).toList(),
                    onChanged: (Cities? value) {
                      setState(() {
                        city = value!;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),

                RequiredTxt(txt: 'الحي'),


                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormField(
                  controller: hayee,
                  autoFocus: false,
                  hint: 'الحي',
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'هذا الحقل مطلوب';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),

                RequiredTxt(txt: 'الشارع الرئيسي'),

                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormField(
                  controller: mainStreet,
                  autoFocus: false,
                  hint: 'الشارع الرئيسي',
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'هذا الحقل مطلوب';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),

                RequiredTxt(txt: 'الشارع الفرعي'),


                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormField(
                  controller: subStreet,
                  autoFocus: false,
                  hint: 'الشارع الفرعي',
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'هذا الحقل مطلوب';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'رقم المنزل',
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
                  controller: homeNum,
                  autoFocus: false,
                  hint: 'رقم المنزل',
                ),
                SizedBox(
                  height: 20.h,
                ),

                RequiredTxt(txt: 'البريد الالكتروني'),

                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormField(
                  controller: email,
                  autoFocus: false,
                  hint: 'البريد الالكتروني',
                  keyboardType: TextInputType.emailAddress,
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'هذا الحقل مطلوب';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),

                RequiredTxt(txt: 'الرمز البريدي'),

                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormField(
                  controller: postalCode,
                  autoFocus: false,
                  hint: 'الرمز البريدي',
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'هذا الحقل مطلوب';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'صندوق البريد',
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
                  controller: mailBox,
                  autoFocus: false,
                  hint: 'صندوق البريد',
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'العنوان في الاجازة',
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
                  controller: addressInVacation,
                  autoFocus: false,
                  hint: 'العنوان في الاجازة',
                ),
                SizedBox(
                  height: 20.h,
                ),
                NextPreviousButtons(
                  previousPressed: () {
                    Navigator.pop(context);
                  },
                  nextPressed: () {
                    if (formKey.currentState!.validate())
                      navigateTo(context, MaritalStatusData(
                        housingTypes: widget.housingTypes,
                      ));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
