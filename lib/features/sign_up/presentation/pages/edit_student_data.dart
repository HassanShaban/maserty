import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:maserty/core/widget/required_text.dart';
import 'package:maserty/features/login/presentation/widgets/custom_text_field.dart';
import 'package:maserty/features/request_job/presentation/pages/communication_info.dart';
import 'package:maserty/features/request_job/presentation/widgets/header.dart';
import 'package:maserty/features/request_job/presentation/widgets/next_previous_buttons.dart';
import 'package:maserty/features/request_job/presentation/widgets/save_cancel.dart';
import 'package:maserty/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:maserty/features/sign_up/presentation/cubit/sign_up_state.dart';
import 'package:maserty/features/sign_up/presentation/pages/student_data.dart';
import 'package:maserty/style/colors/colors.dart';
import 'package:maserty/utils/navigation_widget.dart';
import 'package:multi_select_flutter/chip_display/multi_select_chip_display.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'dart:io';

import '../../data/model/registration_model.dart';
import '../../data/model/signup_model.dart';

class EditStudentData extends StatefulWidget {
  EditStudentData({Key? key, required this.signUpCubit,required this.studentDataList , required this.index})
      : super(key: key);
  SignUpCubit signUpCubit;
  RegistrationRequestsData? studentDataList;
  int index ;

  @override
  State<EditStudentData> createState() => _AddStudentDataState();
}

class _AddStudentDataState extends State<EditStudentData> {

  @override
  void initState() {

    firstNameArabicTextField.text =   widget.studentDataList!.studentFirstNameAr! ;
    fatherNameArabicTextField.text = widget.studentDataList!.studentFatherNameAr! ;
    grandFatherArabicTextField.text = widget.studentDataList!.studentGrandFatherNameAr! ;
    lastNameArabicTextField.text = widget.studentDataList!.studentLastNameAr! ;

    firstNameEnglishTextField.text = widget.studentDataList!.studentFirstNameEn! ;
    fatherNameEnglishTextField.text =widget.studentDataList!.studentFatherNameEn!;
     grandFatherEnglishTextField.text =widget.studentDataList!.studentGrandFatherNameEn!;
     lastNameEnglishTextField.text =widget.studentDataList!.studentLastNameEn!;

    String initialCountryCode = widget.studentDataList!.studentNationalityCode.toString();
    country = widget.signUpCubit.countries.firstWhere((c) => c.code == initialCountryCode);

     currentSexIndex = widget.studentDataList!.genderId!;

    String initialIdentityTypeCode = widget.studentDataList!.studentIdentityTypeId!.toString();
    identityType = widget.signUpCubit.identityTypes.firstWhere((c) => c.id.toString() == initialIdentityTypeCode);


    identityTextField.text = widget.studentDataList!.studentIdentityNumber!;
    dateOfBirthTextField.text = widget.studentDataList!.studentBirthDate!;
    CountryTextField.text =  widget.studentDataList!.studentBirthPlaceCountryCode!;
    CityTextField.text = widget.studentDataList!.studentBirthPlaceCity!;

    String initialStudyTracks = widget.studentDataList!.studyTrackId!.toString();
    studyTracks = widget.signUpCubit.studyTracks.firstWhere((c) => c.id.toString() == initialStudyTracks);


    String initialBloodGroup = widget.studentDataList!.studentBloodGroupId!.toString();
    bloodGroups = widget.signUpCubit.bloodGroups.firstWhere((c) => c.id.toString() == initialBloodGroup);


    isStudentNeedFinancialHelp = widget.studentDataList!.studentNeedFinancialHelp! ;

    for (var id in widget.studentDataList!.studentFavoriteSubjectIds!) {
      Subjects ? subject = widget.signUpCubit.subjects.firstWhere((subject) => subject.id == id);
      if (subject != null) {
        selectedFavSubjects.add(subject);
      }
    }

    // parent status

    String initialLifestatus = widget.studentDataList!.studentStatusId!.toString();
    lifeStatus = widget.signUpCubit.lifeStatus.firstWhere((c) => c.id.toString() == initialLifestatus);


    String initialLiveWith = widget.studentDataList!.studentLivesWithId!.toString();
    livesWith = widget.signUpCubit.livesWith.firstWhere((c) => c.id.toString() == initialLiveWith);


    for (var id in widget.studentDataList!.studentUnwantedSubjectIds!) {
      Subjects ? subject = widget.signUpCubit.subjects.firstWhere((subject) => subject.id == id);
      if (subject != null) {
        selectedNotFavSubjects.add(subject);
      }
    }

    String initialsocialMediaPublishing = widget.studentDataList!.socialMediaPublishingId!.toString();
    socialMediaPublishing = widget.signUpCubit.socialMediaPublishing.firstWhere((c) => c.id.toString() == initialsocialMediaPublishing);


    schoolProblemsTextField.text = widget.studentDataList!.schoolProblems! ;
    hobbyTextField.text = widget.studentDataList!.hobbies! ;
    isRadioParticipate = widget.studentDataList!.radioParticipate!;
    isPathologyProblems = widget.studentDataList!.radioParticipate! ;
    pathologyDescriptionTextField.text = widget.studentDataList!.pathologyDescription! ;
    actionRequiredSituationTextField.text = widget.studentDataList!.actionRequiredSituation!;
    recommendationsTextField.text = widget.studentDataList!.recommendations! ;

    studentProfileImageFile = widget.studentDataList!.studentProfileImageFile;
    studentIdImageFile = widget.studentDataList!.studentIdImageFile;
    studentCustodyImageFile = widget.studentDataList!.studentCustodyImageFile;
    studentVacinationImageFile = widget.studentDataList!.studentVacinationImageFile;

        super.initState();
  }

  TextEditingController firstNameArabicTextField = TextEditingController();
  TextEditingController fatherNameArabicTextField = TextEditingController();
  TextEditingController grandFatherArabicTextField = TextEditingController();
  TextEditingController lastNameArabicTextField = TextEditingController();

  TextEditingController firstNameEnglishTextField = TextEditingController();
  TextEditingController fatherNameEnglishTextField = TextEditingController();
  TextEditingController grandFatherEnglishTextField = TextEditingController();
  TextEditingController lastNameEnglishTextField = TextEditingController();

  TextEditingController identityTextField = TextEditingController();
  TextEditingController hobbyTextField = TextEditingController();

  TextEditingController confirmPasswordTextField = TextEditingController();
  // TextEditingController endDateTextField = TextEditingController();
  TextEditingController dateOfBirthTextField = TextEditingController();
  TextEditingController CountryTextField = TextEditingController();
  TextEditingController CityTextField = TextEditingController();

  TextEditingController schoolProblemsTextField = TextEditingController();
  TextEditingController pathologyDescriptionTextField = TextEditingController();
  TextEditingController actionRequiredSituationTextField =
  TextEditingController();
  TextEditingController recommendationsTextField = TextEditingController();

  int currentSexIndex = -1;

  IdentityTypes? identityType;
  BloodGroups? bloodGroups;
  Countries? country;
  StudyTracks? studyTracks;
  LifeStatus? lifeStatus;
  LivesWith? livesWith;
  SocialMediaPublishing? socialMediaPublishing;

  bool isStudentNeedFinancialHelp = false;
  bool isSchoolProblems = false;
  bool isRadioParticipate = false;
  bool isPathologyProblems = false;

  List<Subjects> selectedNotFavSubjects = [];
  List<Subjects> selectedFavSubjects = [];

  List<int> selectedFavSubjectsIds = [];
  List<int> selectedNotFavSubjectsIds = [];

  var formKey = GlobalKey<FormState>();

  XFile? studentIdImageFile = XFile(""),
      studentProfileImageFile= XFile(""),
      studentVacinationImageFile= XFile(""),
      studentCustodyImageFile= XFile("");



  final CalendarController cal = CalendarController();

  _showDatePicker(void Function(CalendarTapDetails)? onTap) {
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
                    onTap: onTap),
              ));
        });
  }


  String dateOfBirth = DateFormat('yyyy-MM-dd', Locale('en').toString())
      .format(DateTime.now())
      .toString();

  // On Date Changed
  void _onBirthSelectionChanged(CalendarTapDetails details) {
    // close date picker.
    Navigator.pop(context);
    if (details.date is DateTime) {
      dateOfBirth = DateFormat('yyyy-MM-dd', Locale('en').toString())
          .format(details.date!)
          .toString();

      dateOfBirthTextField.text = dateOfBirth;
    }
  }



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
                RequiredTxt(txt: 'الاسم الأول عربي'),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormField(
                  controller: firstNameArabicTextField,
                  onlyArabic: true,
                  autoFocus: true,
                  hint: 'الاسم الأول عربي',
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'الاسم الاول فارغ ';
                    }
                    return null;
                  },
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
                  onlyArabic: true,
                  autoFocus: false,
                  hint: 'اسم الأب عربي',
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'اسم الأب فارغ ';
                    }
                    return null;
                  },
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
                  onlyArabic: true,
                  autoFocus: false,
                  hint: 'اسم الجد عربي',
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'اسم الجد فارغ ';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                RequiredTxt(txt: 'اللقب عربي'),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormField(
                  onlyArabic: true,
                  controller: lastNameArabicTextField,
                  autoFocus: false,
                  hint: 'اللقب عربي',
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'اللقب فارغ ';
                    }
                    return null;
                  },
                ),

                SizedBox(
                  height: 20.h,
                ),
                RequiredTxt(txt: 'الاسم الأول انجليزي'),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormField(
                  controller: firstNameEnglishTextField,
                  onlyEnglish: true,
                  autoFocus: false,
                  hint: 'الاسم الأول انجليزي',
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'الاسم الأول انجليزي فارغ ';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                RequiredTxt(txt: 'اسم الأب انجليزي'),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormField(
                  controller: fatherNameEnglishTextField,
                  onlyEnglish: true,
                  autoFocus: false,
                  hint: 'اسم الأب انجليزي',
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'اسم الأب انجليزي فارغ';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                RequiredTxt(txt: 'اسم الجد انجليزي'),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormField(
                  controller: grandFatherEnglishTextField,
                  autoFocus: false,
                  onlyEnglish: true,
                  hint: 'اسم الجد انجليزي',
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'اسم الجد انجليزي فارغ';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                RequiredTxt(txt: 'اللقب انجليزي'),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormField(
                  controller: lastNameEnglishTextField,
                  onlyEnglish: true,
                  autoFocus: false,
                  hint: 'اللقب انجليزي',
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'اللقب انجليزي فارغ  ';
                    }
                    return null;
                  },
                ),

                SizedBox(
                  height: 20.h,
                ),
                RequiredTxt(txt: 'الجنسية'),
                SizedBox(
                  height: 10.h,
                ),

                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsetsDirectional.fromSTEB(10.w, 3.h, 10.w, 3.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: enableColor)),
                  child: DropdownButtonFormField<Countries?>(
                    isExpanded: true,
                    hint: Text(
                      'الجنسية',
                      style: TextStyle(color: enableColor, fontSize: 12.sp),
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
                    items: widget.signUpCubit.countries
                        .map<DropdownMenuItem<Countries>>((Countries value) {
                      return DropdownMenuItem<Countries>(
                        value: value,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                value.nameAr,
                                style: TextStyle(
                                    fontSize: 14.sp, color: gridcolor),
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

                    if (currentSexIndex ==-1)
                      Text(
                        '  هذا الحقل مطلوب    ',
                        style: TextStyle(color: Colors.red),
                      ),

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
                  child: DropdownButtonFormField<IdentityTypes>(
                    isExpanded: true,
                    hint: Text(
                      'نوع الهوية',
                      style: TextStyle(color: enableColor, fontSize: 12.sp),
                    ),
                    value: identityType,
                    decoration: InputDecoration(
                      border: InputBorder.none, // Remove underline
                    ),

                    // underline: const SizedBox(),
                    validator: (value) {
                      if (value == null) {
                        return 'رجاء اختيار نوع الهوية';
                      }
                      return null;
                    },
                    items: widget.signUpCubit.identityTypes
                        .map<DropdownMenuItem<IdentityTypes>>(
                            (IdentityTypes value) {
                          return DropdownMenuItem<IdentityTypes>(
                            value: value,
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    value.titleAr,
                                    style: TextStyle(
                                        fontSize: 14.sp, color: gridcolor),
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
                  onlyDigital: true,
                  controller: identityTextField,
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  buildCounter: (BuildContext context,
                      {int? currentLength,
                        int? maxLength,
                        bool? isFocused}) =>
                  null,
                  autoFocus: false,
                  hint: 'رقم الهوية',
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'رقم الهوية فارغ';
                    } else if (text.length < 10) {
                      return 'رقم الهوية يجب أن تكون أرقام فقط وتحتوي على 10 خانات فقط';
                    } else if (!RegExp(
                        r'^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])$')
                        .hasMatch(text)) {

                    }
                    return null;
                  },
                ),

                SizedBox(
                  height: 20.h,
                ),
            RequiredTxt(txt:'تاريخ الميلاد'),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormField(
                  controller: dateOfBirthTextField,
                  autoFocus: false,
                  suffix: Icon(Icons.calendar_month),
                  onSuffixPressed: () {
                    _showDatePicker(_onBirthSelectionChanged);
                  },
                  hint: 'تاريخ الميلاد',
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'تاريخ انتهاء الهوية فارغ';
                    } else if (!RegExp(
                        r'^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])$')
                        .hasMatch(text)) {
                      return 'يرجي ادخال تاريخ الميلاد صحيح ';
                    }
                    return null;
                  },
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
                  onlyArabic: true,
                  autoFocus: false,
                  hint: 'مكان الميلاد/الدولة',
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'مكان الميلاد/الدولة فارغ ';
                    }
                    return null;
                  },


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
                  onlyArabic: true,
                  autoFocus: false,
                  hint: 'مكان الميلاد/المدينة',
                  validator: (text) {
                    if (text!.isEmpty) {
                      return 'مكان الميلاد/المدينة  فارغ ';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
            RequiredTxt(txt:'المسار الدراسي'),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsetsDirectional.fromSTEB(10.w, 3.h, 10.w, 3.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: enableColor)),
                  child: DropdownButtonFormField<StudyTracks>(
                    value: studyTracks,
                    isExpanded: true,
                    hint: Text(
                      'المسار الدراسي',
                      style: TextStyle(color: enableColor, fontSize: 12.sp),
                    ),
                      validator: (value) {
                        if (value == null) {
                          return 'رجاء اختيار المسار الدراسي';
                        }
                        return null;
                      },

                    items: widget.signUpCubit.studyTracks
                        .map<DropdownMenuItem<StudyTracks>>(
                            (StudyTracks value) {
                          return DropdownMenuItem<StudyTracks>(
                            value: value,
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    value.titleAr,
                                    style: TextStyle(
                                        fontSize: 14.sp, color: gridcolor),
                                  ),
                                  const Divider(
                                    // height: 2.h,
                                  )
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                    onChanged: (StudyTracks? value) {
                      setState(() {
                        studyTracks = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                RequiredTxt(txt: 'فصيلة الدم'),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsetsDirectional.fromSTEB(10.w, 3.h, 10.w, 3.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: enableColor)),
                  child: DropdownButtonFormField<BloodGroups>(
                    isExpanded: true,
                    value: bloodGroups,
                    hint: Text(
                      'فصيلة الدم',
                      style: TextStyle(color: enableColor, fontSize: 12.sp),
                    ),
                    validator: (value) {
                      if (value == null) {
                        return 'رجاء اختيار فصيلة الدم ';
                      }
                      return null;
                    }



                    ,
                    items: widget.signUpCubit.bloodGroups
                        .map<DropdownMenuItem<BloodGroups>>(
                            (BloodGroups value) {
                          return DropdownMenuItem<BloodGroups>(
                            value: value,
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    value.titleAr,
                                    style: TextStyle(
                                        fontSize: 14.sp, color: gridcolor),
                                  ),
                                  Divider(
                                    // height: 2.h,
                                  )
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                    onChanged: (BloodGroups? value) {
                      bloodGroups = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isStudentNeedFinancialHelp,
                        onChanged: (val) {
                          setState(() {
                            isStudentNeedFinancialHelp = val!;
                          });
                        }),
                    Text('هل يحتاج الطالب / ــة إلى مساعدات مالية'),
                    SizedBox(
                      height: 20.h,
                    ),
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
                  child: MultiSelectDialogField<Subjects>(
                    items: widget.signUpCubit.subjects
                        .map((subject) =>
                        MultiSelectItem<Subjects>(subject, subject.titleAr))
                        .toList(),
                    initialValue: selectedFavSubjects,
                    onConfirm: (values) {
                      setState(() {
                        selectedFavSubjects = values;

                        for (var e in values) {
                          selectedFavSubjectsIds.add(e.id);
                        }
                      });
                    },
                    // chipDisplay: MultiSelectChipDisplay(
                    //   onTap: (item) {
                    //     setState(() {
                    //       print(selectedNotFavSubjects.length);
                    //       selectedNotFavSubjects.remove(item);
                    //
                    //     });
                    //
                    //   },
                    // ),


                  ),
                ),

                SizedBox(
                  height: 20.h,
                ),
                RequiredTxt(txt:  'حالة الوالدين'),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsetsDirectional.fromSTEB(10.w, 3.h, 10.w, 3.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: enableColor)),
                  child: DropdownButtonFormField<LifeStatus>(
                    validator: (value) {
                      if (value == null) {
                        return 'رجاء اختيار حالة الوالدين  ';
                      }
                      return null;
                    },
                    isExpanded: true,
                    value: lifeStatus,
                    hint: Text(
                      'حالة الوالدبن',
                      style: TextStyle(color: enableColor, fontSize: 12.sp),
                    ),
                    items: widget.signUpCubit.lifeStatus
                        .map<DropdownMenuItem<LifeStatus>>((LifeStatus value) {
                      return DropdownMenuItem<LifeStatus>(
                        value: value,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                value.titleAr,
                                style: TextStyle(
                                    fontSize: 14.sp, color: gridcolor),
                              ),
                              Divider(
                                // height: 2.h,
                              )
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (LifeStatus? value) {
                      lifeStatus = value;
                    },
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                RequiredTxt(txt: 'مع من يعيش الطالب'),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsetsDirectional.fromSTEB(10.w, 3.h, 10.w, 3.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: enableColor)),
                  child: DropdownButtonFormField<LivesWith>(
                    isExpanded: true,
                    value: livesWith,
                    hint: Text(
                      'مع من يعيش الطالب',
                      style: TextStyle(color: enableColor, fontSize: 12.sp),
                    ),
                    validator: (value) {
                      if (value == null) {
                        return 'رجاء اختيار مع من يعيش الطالب ';
                      }
                      return null;
                    },
                    items: widget.signUpCubit.livesWith
                        .map<DropdownMenuItem<LivesWith>>((LivesWith value) {
                      return DropdownMenuItem<LivesWith>(
                        value: value,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                value.titleAr,
                                style: TextStyle(
                                    fontSize: 14.sp, color: gridcolor),
                              ),
                              Divider(
                                // height: 2.h,
                              )
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (LivesWith? value) {
                      livesWith = value;
                    },
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
                  child: MultiSelectDialogField<Subjects>(
                    items: widget.signUpCubit.subjects
                        .map((subject) =>
                        MultiSelectItem<Subjects>(subject, subject.titleAr))
                        .toList(),
                    initialValue: selectedNotFavSubjects,
                    onConfirm: (values) {
                      setState(() {
                        selectedNotFavSubjects = values;
                        for (var e in values) {
                          selectedNotFavSubjectsIds.add(e.id);
                        }
                      });
                    },
                    // chipDisplay: MultiSelectChipDisplay(
                    //   onTap: (item) {
                    //     setState(() {
                    //       print(selectedNotFavSubjects.length);
                    //       selectedNotFavSubjects.remove(item);
                    //
                    //     });
                    //
                    //   },
                    // ),

                    title: Text(
                      'ما هي المواد الغير محببة للطالب/ة',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(children: [
                  Checkbox(
                      value: isSchoolProblems,
                      onChanged: (val) {
                        setState(() {
                          isSchoolProblems = val!;
                        });
                      }),
                  Text('هل يواجه الطالب من أي مشاكل في المدرسة؟'),
                ]),
                SizedBox(
                  height: 20.h,
                ),
                Visibility(
                  visible: isSchoolProblems,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'ما هي المشاكل التى يعاني منها الطالب ف المدرسة ؟ ',
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
                        controller: schoolProblemsTextField,
                        autoFocus: false,
                        onlyArabic: true,
                        hint: 'ما هي المشاكل التى يعاني منها الطالب ف المدرسة',
                        validator: (text) {
                          if (text!.isEmpty) {
                            return 'هذا الحقل مطلوب';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                RequiredTxt(txt: 'هوايات الطالب/ة'),
                SizedBox(
                  height: 10.h,
                ),
                CustomTextFormField(
                  controller: hobbyTextField,
                  onlyArabic: true,
                  autoFocus: false,
                  hint: 'هوايات الطالب/ة',
                    validator: (value) {
                      if (value == null) {
                        return 'رجاء اختيار هوايات الطالب/ة ';
                      }
                      return null;
                    }

                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(children: [
                  Checkbox(
                      value: isRadioParticipate,
                      onChanged: (val) {
                        setState(() {
                          isRadioParticipate = val!;
                        });
                      }),
                  Text('يستطيع الطالب / ــة المشاركة في الإذاعة ؟'),
                ]),

                SizedBox(
                  height: 20.h,
                ),
                RequiredTxt(txt: 'تصوير للطالب/ة فى البرامج'),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsetsDirectional.fromSTEB(10.w, 3.h, 10.w, 3.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: enableColor)),
                  child: DropdownButtonFormField<SocialMediaPublishing>(
                    isExpanded: true,
                    value: socialMediaPublishing,
                    hint: Text(
                      'تصوير للطالب/ة فى البرامج',
                      style: TextStyle(color: enableColor, fontSize: 12.sp),
                    )  ,

                    validator: (value) {
                      if (value == null) {
                        return 'رجاء اختيار تصوير للطالب/ة فى البرامج ';
                      }
                      return null;
                    }

                    ,
                    items: widget.signUpCubit.socialMediaPublishing
                        .map<DropdownMenuItem<SocialMediaPublishing>>(
                            (SocialMediaPublishing value) {
                          return DropdownMenuItem<SocialMediaPublishing>(
                            value: value,
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    value.titleAr,
                                    style: TextStyle(
                                        fontSize: 14.sp, color: gridcolor),
                                  ),
                                  Divider(
                                    // height: 2.h,
                                  )
                                ],
                              ),
                            ),
                          );
                        }).toList(),
                    onChanged: (SocialMediaPublishing? value) {
                      setState(() {
                        socialMediaPublishing = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  children: [
                    Checkbox(
                        value: isPathologyProblems,
                        onChanged: (val) {
                          setState(() {
                            isPathologyProblems = val!;
                          });
                        }),
                    Text('هل يعاني الطالب من أي حالات مرضية (لا قدر الله)؟')
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Visibility(
                  visible: isPathologyProblems,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'وصف الحالة المرضية ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'poppins'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextFormField(
                        controller: pathologyDescriptionTextField,
                        onlyArabic: true,
                        autoFocus: false,
                        hint: 'وصف الحالة المرضية',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'الاجراء المطلوب عند وقوع الحالة',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'poppins'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextFormField(
                        onlyArabic: true,
                        controller: actionRequiredSituationTextField,
                        autoFocus: false,
                        hint: 'الاجراء المطلوب عند وقوع الحالة',
                      ),
                      Row(
                        children: [
                          Text(
                            'التوصيات',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'poppins'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      CustomTextFormField(
                        onlyArabic: true,
                        controller: recommendationsTextField,
                        autoFocus: false,
                        hint: 'التوصيات ',
                      ),
                    ],
                  ),
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

                      child: GestureDetector(

                        onTap: () async {
                          final pickedFile =
                          await ImagePicker().pickImage(source: ImageSource.gallery);
                           if (pickedFile != null) {
                            setState(() {
                              studentProfileImageFile = pickedFile;
                              print("picked");
                              // print(selectedFile);
                            });
                            // Upload the file immediately after picking
                            // context.read<FileUploadCubit>().uploadFile(_selectedFile!);
                          } else {
                            print('No file selected.');
                          }
                        },
                        child: Row(
                          children: [
                            Text('اضافة مرفق',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'poppins')),



                          ],
                        ),
                      ),
                    )
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
                      child: GestureDetector(
                        onTap: () async {
                          final pickedFile =
                          await ImagePicker().pickImage(source: ImageSource.gallery);
                          if (pickedFile != null) {
                            setState(() {

                              studentIdImageFile =  pickedFile  ;
                              print("picked");
                              // print(selectedFile);
                            });
                            // Upload the file immediately after picking
                            // context.read<FileUploadCubit>().uploadFile(_selectedFile!);
                          } else {
                            print('No file selected.');
                          }
                        },
                        child: Row(
                          children: [
                            Text('اضافة مرفق',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'poppins')),





                          ],
                        ),
                      ),
                    )
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
                    Container(
                      padding: EdgeInsetsDirectional.all(3),
                      decoration: BoxDecoration(
                        color: add,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: GestureDetector(
                        onTap: () async {
                          final pickedFile =
                          await ImagePicker().pickImage(source: ImageSource.gallery);
                          if (pickedFile != null) {
                            setState(() {
                              studentCustodyImageFile =  pickedFile  ;
                              widget.signUpCubit.studentCustodyImageFile = studentCustodyImageFile;

                              print("picked");
                              // print(selectedFile);
                            });
                            // Upload the file immediately after picking
                            // context.read<FileUploadCubit>().uploadFile(_selectedFile!);
                          } else {
                            print('No file selected.');
                          }
                        },
                        child: Row(
                          children: [
                            Text('اضافة مرفق',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'poppins')),

                          ],
                        ),
                      ),
                    )
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
                      child: GestureDetector(
                        onTap: () async {
                          final pickedFile =
                          await ImagePicker().pickImage(source: ImageSource.gallery);
                          if (pickedFile != null) {
                            setState(() {
                              studentVacinationImageFile =  pickedFile  ;
                              widget.signUpCubit.studentVacinationImageFile = studentVacinationImageFile;

                              print("picked");
                              // print(selectedFile);
                            });
                            // Upload the file immediately after picking
                            // context.read<FileUploadCubit>().uploadFile(_selectedFile!);
                          } else {
                            print('No file selected.');
                          }
                        },
                        child: Row(
                          children: [
                            Text('اضافة مرفق',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'poppins')),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                SaveCancelButtons(
                  savePressed: () {



                    if (formKey.currentState!.validate()) {

                      if (currentSexIndex == -1) {
                        setState(() {});
                      } else {
                    widget.signUpCubit.editData(
                      studentFirstNameAr: firstNameArabicTextField.text,
                      studentFatherNameAr: fatherNameArabicTextField.text,
                      studentGrandFatherNameAr:
                      grandFatherArabicTextField.text,
                      studentLastNameAr: lastNameArabicTextField.text,
                      studentFirstNameEn: firstNameEnglishTextField.text,
                      studentFatherNameEn: fatherNameEnglishTextField.text,
                      studentGrandFatherNameEn:
                      grandFatherEnglishTextField.text,
                      studentLastNameEn: lastNameEnglishTextField.text,
                      genderId: currentSexIndex,
                      studentNationalityCode: country?.code.toString(),
                      studentIdentityNumber: identityTextField.text,
                      studentIdentityTypeId: identityType?.id,
                      studentBirthDate: dateOfBirthTextField.text,
                      studentBirthPlaceCountryCode: CountryTextField.text,
                      studentBirthPlaceCity: CityTextField.text,
                      studyTrackId: studyTracks?.id,
                      studentBloodGroupId: bloodGroups?.id,
                      studentNeedFinancialHelp: isStudentNeedFinancialHelp,
                      studentFavoriteSubjectIds: selectedFavSubjectsIds,
                      //
                      studentLivesWithId: livesWith?.id,
                      studentUnwantedSubjectIds: selectedNotFavSubjectsIds,
                      isSchoolProblems: isSchoolProblems,
                      schoolProblems: schoolProblemsTextField.text,
                      studentStatusId: lifeStatus?.id,
                      //
                      hobbies: hobbyTextField.text,
                      radioParticipate: isRadioParticipate,
                      socialMediaPublishingId: socialMediaPublishing?.id,
                      pathologyDescription:
                      pathologyDescriptionTextField.text,
                      actionRequiredSituation:
                      actionRequiredSituationTextField.text,
                      recommendations: recommendationsTextField.text,

                      studentProfileImageFile: studentProfileImageFile,
                      studentIdImageFile: studentIdImageFile,
                      studentVacinationImageFile: studentVacinationImageFile,
                      studentCustodyImageFile: studentCustodyImageFile,
                      index: widget.index
                    );

                    navigateTo(
                        context,
                        StudentData(
                          signUpCubit: widget.signUpCubit,
                        ));
                      }
                    } //form

                  },
                  cancelPressed: () {
                    Navigator.pop(context);
                  },
                ),

                // GestureDetector(
                //   onTap: () {
                //     print(studentProfileImageName);
                //     print(studentIdImageName);
                //     print(studentVacinationImageName);
                //     print(studentCustodyImageName);
                //   },
                //   child: Container(
                //     width: 80.w,
                //     height: 48.h,
                //     decoration: BoxDecoration(
                //         color: Colors.white,
                //         border: Border.all(color: primaryColor),
                //         borderRadius: BorderRadius.circular(8)),
                //     child: Center(
                //       child: Text(
                //         'test',
                //         style: TextStyle(color: Colors.black),
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

//
// XFile? addFile() {
//   return
//     Container(
//     padding: EdgeInsetsDirectional.all(3),
//     decoration: BoxDecoration(
//       color: add,
//       borderRadius: BorderRadius.circular(8.r),
//     ),
//     child: GestureDetector(
//       onTap: () async {
//         final pickedFile =
//             await ImagePicker().pickImage(source: ImageSource.gallery);
//         if (pickedFile != null) {
//           setState(() {
//            return pickedFile ;
//             print("picked");
//             print(selectedFile);
//           });
//           // Upload the file immediately after picking
//           // context.read<FileUploadCubit>().uploadFile(_selectedFile!);
//         } else {
//           print('No file selected.');
//         }
//       },
//       child: Row(
//         children: [
//           Text('اضافة مرفق',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 16.sp,
//                   fontWeight: FontWeight.w600,
//                   fontFamily: 'poppins')),
//           // Text(selectedFile.toString(),
//           //     style: TextStyle(
//           //         color: Colors.white,
//           //         fontSize: 16.sp,
//           //         fontWeight: FontWeight.w600,
//           //         fontFamily: 'poppins')),
//         ],
//       ),
//     ),
//   );
// }

//
// Future<void> _pickFile() async {
//   File? selectedFile;
//   final pickedFile =
//       await ImagePicker().pickImage(source: ImageSource.gallery);
//   if (pickedFile != null) {
//     setState(() {
//       selectedFile = File(pickedFile.path);
//       print("picked");
//       print(selectedFile);
//     });
//     // Upload the file immediately after picking
//     // context.read<FileUploadCubit>().uploadFile(_selectedFile!);
//   } else {
//     print('No file selected.');
//   }
// }
}
