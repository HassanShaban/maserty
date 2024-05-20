import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:maserty/features/sign_up/data/model/registration_model.dart';
import 'package:maserty/features/sign_up/domain/use_case/get_register_data_use_case.dart';
import 'package:maserty/features/sign_up/presentation/cubit/sign_up_state.dart';
import 'package:maserty/rest/dio_helper.dart';
import 'dart:io';

import '../../data/model/signup_model.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(
    this.getRegisterDataUseCase,
  ) : super(SignUpInitialState());

  late GetRegisterDataUseCase getRegisterDataUseCase;

  static SignUpCubit get(context) => BlocProvider.of(context);

  bool isGettingAllSignUpData = false;


  late Registration allDataSignUp;
  SignUpModel signupModel = SignUpModel();
  RegistrationRequestsData registrationRequestsData =
      RegistrationRequestsData();
  late List<Countries> countries;
  late List<Relations> relations;
  late List<IdentityTypes> identityTypes;
  late List<Cities> cities;
  late List<HousingTypes> housingTypes;
  late List<BloodGroups> bloodGroups;
  late List<Subjects> subjects;
  late List<LifeStatus> lifeStatus;
  late List<SocialMediaPublishing> socialMediaPublishing;
  late List<LivesWith> livesWith;
  late List<StudyTracks> studyTracks;
  XFile? studentIdImageFile ,
      studentProfileImageFile,
      studentVacinationImageFile,
      studentCustodyImageFile ;
   List<RegistrationRequestsData> studentDataList = [];



  Future<void> getAllRegisterData() async {
    isGettingAllSignUpData = true;
    emit(GetAllSignUpDataState());
    final result = await getRegisterDataUseCase();
    result.fold((failure) {
      isGettingAllSignUpData = false;
      emit(GetAllSignUpDataFailedState());
      Fluttertoast.showToast(msg: 'Failed');
    }, (signUp) {
      isGettingAllSignUpData = false;
      allDataSignUp = signUp;
      countries = allDataSignUp.countries;
      bloodGroups = allDataSignUp.bloodGroups;
      subjects = allDataSignUp.subjects;
      lifeStatus = allDataSignUp.lifeStatus;
      socialMediaPublishing = allDataSignUp.socialMediaPublishing;
      livesWith = allDataSignUp.livesWith;
      studyTracks = allDataSignUp.studyTracks;

      for (int i = 0; i < countries.length; i++) {
        if (countries[i].code == 'SA') {
          cities = countries[i].cities;
          break;
        }
      }
      relations = allDataSignUp.relations;
      identityTypes = allDataSignUp.identityTypes;
      housingTypes = allDataSignUp.housingTypes;
      emit(GetAllSignUpDataSuccessState());
      // Fluttertoast.showToast(msg: 'Success');
    });
  }

  void setDataFromParent(
      {String? firstNameArabicTextField,
      String? fatherNameArabicTextField,
      String? grandFatherArabicTextField,
      String? surNameArabicTextField,
      nationality,
      int? selahQaraba,
      int? nohHaweya,
      String? haweyaNumTextField,
      int? haweyaSourceTextField,
      String? expireHaweyaTextField,
      String? phoneNumTextField,
      String? workPhoneNumTextField,
      String? qaribTaleb1ArabicTextField,
      String? phoneNumQaribTaleb1ArabicTextField,
      String? addressQaribTaleb1ArabicTextField,
      String? qaribTaleb2ArabicTextField,
      String? phoneNumQaribTaleb2ArabicTextField,
      String? addressQaribTaleb2ArabicTextField}) {
    // signupModel.registrationRequestsData = [registrationRequestsData];

    registrationRequestsData.gFirstName = firstNameArabicTextField;
    registrationRequestsData.gFatherName = fatherNameArabicTextField;
    registrationRequestsData.gGrandFatherName = grandFatherArabicTextField;
    registrationRequestsData.gLastName = surNameArabicTextField;
    registrationRequestsData.nationalityCountryCode = nationality;
    registrationRequestsData.relationId = selahQaraba;
    registrationRequestsData.identityTypeId = nohHaweya;
    registrationRequestsData.identityNumber = haweyaNumTextField;
    registrationRequestsData.identitySourceId = haweyaSourceTextField;
    registrationRequestsData.identityExpiryDate = expireHaweyaTextField;
    registrationRequestsData.mobileNumber = phoneNumTextField;
    registrationRequestsData.workPhone = workPhoneNumTextField;
    registrationRequestsData.relative1Name = qaribTaleb1ArabicTextField;

    registrationRequestsData.relative1MobileNumber =
        phoneNumQaribTaleb1ArabicTextField;

    registrationRequestsData.relative1Address =
        addressQaribTaleb1ArabicTextField;
    registrationRequestsData.relative2Name = qaribTaleb2ArabicTextField;

    registrationRequestsData.relative2MobileNumber =
        phoneNumQaribTaleb2ArabicTextField;

    registrationRequestsData.relative2Address =
        addressQaribTaleb2ArabicTextField;

    print("print ${registrationRequestsData.identityExpiryDate}");
  }

  void setDataFromCommunicationData(
      {int? city,
      String? hayee,
      String? mainStreet,
      String? subStreet,
      String? homeNum,
      String? email,
      String? postalCode,
      String? mailBox,
      String? addressInVacation}) {
    registrationRequestsData.contactCityId = city;
    registrationRequestsData.neighborhood = hayee;
    registrationRequestsData.mainStreet = mainStreet;
    registrationRequestsData.subStreet = subStreet;
    registrationRequestsData.houseNumber = homeNum;
    registrationRequestsData.email = email;
    registrationRequestsData.postalCode = postalCode;
    registrationRequestsData.mailBox = mailBox;
    registrationRequestsData.addressOnVacation = addressInVacation;
  }

  void setDataFromMaritalStatus(
      {int? housingType,
      int? oghrafNum,
      int? twabeqNum,
      String? dakhlSource,
      int? dakhlMeqdar,
      bool? isThereDakhlResource,
      String? otherDakhlSource,
      int? otherMeqdarDakhlSource}) {
    registrationRequestsData.housingTypeId = housingType;
    registrationRequestsData.roomsNumber = oghrafNum;
    registrationRequestsData.floorsNumber = twabeqNum;
    registrationRequestsData.incomeSource = dakhlSource;
    registrationRequestsData.incomeAmount = dakhlMeqdar;
    registrationRequestsData.isOtherSourceOfIncome = isThereDakhlResource;
    registrationRequestsData.otherSourceOfIncome = otherDakhlSource;
    registrationRequestsData.otherSourceOfIncomeAmount = otherMeqdarDakhlSource;

    // print(registrationRequestsData.gFirstName) ;
    // print(registrationRequestsData.mainStreet) ;
    // print(registrationRequestsData.incomeSource) ;
  }

  void setDataFromStudentData(
      {
    String? studentFirstNameAr,
    String? studentFatherNameAr,
    String? studentGrandFatherNameAr,
    String? studentLastNameAr,
    String? studentFirstNameEn,
    String? studentFatherNameEn,
    String? studentGrandFatherNameEn,
    String? studentLastNameEn,
    int? genderId,
    String? studentNationalityCode,
    String? studentIdentityNumber,
    int? studentIdentityTypeId, //
    String? studentBirthDate,
    String? studentBirthPlaceCountryCode,
    String? studentBirthPlaceCity,
    int? studyTrackId,
    int? studentBloodGroupId,
    bool? studentNeedFinancialHelp,
    List<int>? studentFavoriteSubjectIds,
    //
    int? studentLivesWithId,
    List<int>? studentUnwantedSubjectIds,
    bool? isSchoolProblems,
    String? schoolProblems,
    int? studentStatusId, //
    String? hobbies,
    bool? radioParticipate,
    int? socialMediaPublishingId,
    String? pathologyDescription,
    String? actionRequiredSituation,
    String? recommendations,
    XFile? studentIdImageFile,
    XFile? studentProfileImageFile,
    XFile? studentVacinationImageFile,
    XFile? studentCustodyImageFile,


  }) {

    final registrationRequestsData = RegistrationRequestsData(
      studentFirstNameAr : studentFirstNameAr,
      studentFatherNameAr : studentFatherNameAr,
      studentGrandFatherNameAr :
      studentGrandFatherNameAr,
      studentLastNameAr : studentLastNameAr,
      studentFirstNameEn : studentFirstNameEn,
      studentFatherNameEn : studentFatherNameEn,
      studentGrandFatherNameEn :
      studentGrandFatherNameEn,
      studentLastNameEn : studentLastNameEn,
      genderId : genderId,
      studentNationalityCode : studentNationalityCode,
      studentIdentityNumber : studentIdentityNumber,
      studentIdentityTypeId : studentIdentityTypeId,
      studentBirthDate : studentBirthDate,
      studentBirthPlaceCountryCode :
      studentBirthPlaceCountryCode,
      studentBirthPlaceCity : studentBirthPlaceCity,
      studyTrackId : studyTrackId,
      studentBloodGroupId : studentBloodGroupId,
      studentNeedFinancialHelp :
      studentNeedFinancialHelp,
      studentFavoriteSubjectIds :
      studentFavoriteSubjectIds,
      studentLivesWithId : studentLivesWithId,
      studentUnwantedSubjectIds :
      studentUnwantedSubjectIds,
      isSchoolProblems : isSchoolProblems,
      schoolProblems : schoolProblems,
      studentStatusId : studentStatusId,
      hobbies : hobbies,
      radioParticipate : radioParticipate,
      socialMediaPublishingId : socialMediaPublishingId,
      pathologyDescription : pathologyDescription,
      actionRequiredSituation : actionRequiredSituation,
      recommendations : recommendations,
      studentIdImageName : studentIdImageFile?.path ,
      studentProfileImageName : studentProfileImageFile?.path,
      studentVacinationImageName :
      studentVacinationImageFile?.path,
      studentCustodyImageName : studentCustodyImageFile?.path,
        studentProfileImageFile : studentProfileImageFile ,
        studentIdImageFile :studentIdImageFile ,
        studentVacinationImageFile : studentVacinationImageFile ,
        studentCustodyImageFile : studentCustodyImageFile ,


    );
    studentProfileImageFile = studentProfileImageFile ;
    studentIdImageFile = studentIdImageFile ;
    studentVacinationImageFile = studentVacinationImageFile ;
    studentCustodyImageFile = studentCustodyImageFile ;



     sendImagesToApi();

     studentDataList.add(registrationRequestsData);
     //  studentDataList[index] = registrationRequestsData;

  }
  void editData(
      {
        String? studentFirstNameAr,
        String? studentFatherNameAr,
        String? studentGrandFatherNameAr,
        String? studentLastNameAr,
        String? studentFirstNameEn,
        String? studentFatherNameEn,
        String? studentGrandFatherNameEn,
        String? studentLastNameEn,
        int? genderId,
        String? studentNationalityCode,
        String? studentIdentityNumber,
        int? studentIdentityTypeId, //
        String? studentBirthDate,
        String? studentBirthPlaceCountryCode,
        String? studentBirthPlaceCity,
        int? studyTrackId,
        int? studentBloodGroupId,
        bool? studentNeedFinancialHelp,
        List<int>? studentFavoriteSubjectIds,
        //
        int? studentLivesWithId,
        List<int>? studentUnwantedSubjectIds,
        bool? isSchoolProblems,
        String? schoolProblems,
        int? studentStatusId, //
        String? hobbies,
        bool? radioParticipate,
        int? socialMediaPublishingId,
        String? pathologyDescription,
        String? actionRequiredSituation,
        String? recommendations,
        XFile? studentIdImageFile,
        XFile? studentProfileImageFile,
        XFile? studentVacinationImageFile,
        XFile? studentCustodyImageFile,
        int? index ,

      }) {

    final registrationRequestsData = RegistrationRequestsData(
      studentFirstNameAr : studentFirstNameAr,
      studentFatherNameAr : studentFatherNameAr,
      studentGrandFatherNameAr :
      studentGrandFatherNameAr,
      studentLastNameAr : studentLastNameAr,
      studentFirstNameEn : studentFirstNameEn,
      studentFatherNameEn : studentFatherNameEn,
      studentGrandFatherNameEn :
      studentGrandFatherNameEn,
      studentLastNameEn : studentLastNameEn,
      genderId : genderId,
      studentNationalityCode : studentNationalityCode,
      studentIdentityNumber : studentIdentityNumber,
      studentIdentityTypeId : studentIdentityTypeId,
      studentBirthDate : studentBirthDate,
      studentBirthPlaceCountryCode :
      studentBirthPlaceCountryCode,
      studentBirthPlaceCity : studentBirthPlaceCity,
      studyTrackId : studyTrackId,
      studentBloodGroupId : studentBloodGroupId,
      studentNeedFinancialHelp :
      studentNeedFinancialHelp,
      studentFavoriteSubjectIds :
      studentFavoriteSubjectIds,
      studentLivesWithId : studentLivesWithId,
      studentUnwantedSubjectIds :
      studentUnwantedSubjectIds,
      isSchoolProblems : isSchoolProblems,
      schoolProblems : schoolProblems,
      studentStatusId : studentStatusId,
      hobbies : hobbies,
      radioParticipate : radioParticipate,
      socialMediaPublishingId : socialMediaPublishingId,
      pathologyDescription : pathologyDescription,
      actionRequiredSituation : actionRequiredSituation,
      recommendations : recommendations,
      studentIdImageName : studentIdImageFile?.path ,
      studentProfileImageName : studentProfileImageFile?.path,
      studentVacinationImageName : studentVacinationImageFile?.path,
      studentCustodyImageName : studentCustodyImageFile?.path,
      studentProfileImageFile : studentProfileImageFile ,
      studentIdImageFile :studentIdImageFile ,
      studentVacinationImageFile : studentVacinationImageFile ,
      studentCustodyImageFile : studentCustodyImageFile ,


    );
    studentProfileImageFile = studentProfileImageFile ;
    studentIdImageFile = studentIdImageFile ;
    studentVacinationImageFile = studentVacinationImageFile ;
    studentCustodyImageFile = studentCustodyImageFile ;

    sendImagesToApi();


    studentDataList[index!] = registrationRequestsData;

  }


  Future<void> sendSignUpDataToServer() async {
    final Dio _dio = Dio();

    final data = {
      "gFirstName": registrationRequestsData.gFirstName,
      "gFatherName": registrationRequestsData.gFatherName,
      "gGrandFatherName": registrationRequestsData.gGrandFatherName,
      "gLastName": registrationRequestsData.gLastName,
      "identityTypeId": registrationRequestsData.identityTypeId,
      "identitySourceId": registrationRequestsData.identitySourceId,
      "identityExpiryDate": registrationRequestsData.identityExpiryDate,
      "relationId": registrationRequestsData.relationId,
      "nationalityCountryCode": registrationRequestsData.nationalityCountryCode,
      "identityNumber": registrationRequestsData.identityNumber,
      "mobileNumber": registrationRequestsData.mobileNumber,
      "workPhone": registrationRequestsData.workPhone,
      "relative1Name": registrationRequestsData.relative1Name,
      "relative2Name": registrationRequestsData.relative2Name,
      "relative1MobileNumber": registrationRequestsData.relative1MobileNumber,
      "relative2MobileNumber": registrationRequestsData.relative2MobileNumber,
      "relative1Address": registrationRequestsData.relative1Address,
      "relative2Address": registrationRequestsData.relative2Address,
      "contactCityId": registrationRequestsData.contactCityId,
      "neighborhood": registrationRequestsData.neighborhood,
      "mainStreet": registrationRequestsData.mainStreet,
      "subStreet": registrationRequestsData.subStreet,
      "email": registrationRequestsData.email,
      "postalCode": registrationRequestsData.postalCode,
      "mailBox": registrationRequestsData.mailBox,
      "fax": registrationRequestsData.houseNumber,
      "addressOnVacation": registrationRequestsData.addressOnVacation,
      "housingTypeId": registrationRequestsData.housingTypeId,
      "roomsNumber": registrationRequestsData.roomsNumber,
      "floorsNumber": registrationRequestsData.floorsNumber,
      "incomeSource": registrationRequestsData.incomeSource,
      "incomeAmount": registrationRequestsData.incomeAmount,
      "isOtherSourceOfIncome": registrationRequestsData.isOtherSourceOfIncome,
      "otherSourceOfIncome": registrationRequestsData.otherSourceOfIncome,
      "otherSourceOfIncomeAmount":
          registrationRequestsData.otherSourceOfIncomeAmount,
      "studentFirstNameAr": registrationRequestsData.studentFirstNameAr,
      "studentFatherNameAr": registrationRequestsData.studentFatherNameAr,
      "studentGrandFatherNameAr":
          registrationRequestsData.studentGrandFatherNameAr,
      "studentLastNameAr": registrationRequestsData.studentLastNameAr,
      "studentFirstNameEn": registrationRequestsData.studentFirstNameEn,
      "studentFatherNameEn": registrationRequestsData.studentFatherNameEn,
      "studentGrandFatherNameEn":
          registrationRequestsData.studentGrandFatherNameEn,
      "studentLastNameEn": registrationRequestsData.studentLastNameEn,
      "genderId": registrationRequestsData.genderId,
      "studentNationalityCode": registrationRequestsData.studentNationalityCode,
      "studentIdentityNumber": registrationRequestsData.studentIdentityNumber,
      "studentIdentityTypeId": registrationRequestsData.studentIdentityTypeId,
      "studentBirthDate": registrationRequestsData.studentBirthDate,
      "studentBirthPlaceCountryCode":
          registrationRequestsData.studentBirthPlaceCountryCode,
      "studentBirthPlaceCity": registrationRequestsData.studentBirthPlaceCity,
      "studentBloodGroupId": registrationRequestsData.studentBloodGroupId,
      "studentIdImageName": registrationRequestsData.studentIdImageName,
      "studentProfileImageName":
          registrationRequestsData.studentProfileImageName,
      "studentVacinationImageName":
          registrationRequestsData.studentVacinationImageName,
      "studentCustodyImageName":
          registrationRequestsData.studentCustodyImageName,
      "studentNeedFinancialHelp":
          registrationRequestsData.studentNeedFinancialHelp,
      "isSchoolProblems": registrationRequestsData.isSchoolProblems,
      "schoolProblems": registrationRequestsData.schoolProblems,
      "houseNumber": registrationRequestsData.houseNumber,
      "studentFavoriteSubjectIds":
          registrationRequestsData.studentFavoriteSubjectIds,
      "studentStatusId": registrationRequestsData.studentStatusId,
      "studentUnwantedSubjectIds":
          registrationRequestsData.studentUnwantedSubjectIds,
      "hobbies": registrationRequestsData.hobbies,
      "radioParticipate": registrationRequestsData.radioParticipate,
      "socialMediaPublishingId":
          registrationRequestsData.socialMediaPublishingId,
      "studentLivesWithId": registrationRequestsData.studentLivesWithId,
      "pathologyDescription": registrationRequestsData.pathologyDescription,
      "actionRequiredSituation":
          registrationRequestsData.actionRequiredSituation,
      "recommendations": registrationRequestsData.recommendations,
      "studyTrackId": registrationRequestsData.studyTrackId,
    };


    try {
      emit(FileUploadLoading());
      final response = await _dio.post(
        'https://masiratiapi.azurewebsites.net/api/Registration',
        data: jsonEncode(data),
        options: Options(
          headers: {
            HttpHeaders.contentTypeHeader: 'application/json',
            'Connection': 'Keep-Alive',
          },
          sendTimeout: Duration(seconds: 15000),
          receiveTimeout: Duration(seconds: 15000),
        ),
      );

      if (response.statusCode == 200) {
        emit(FileUploadSuccess());
        print('File upload success!');
        // Handle success
      } else {
        print('Failed to upload file');
        // Handle failure
      }
    } catch (e) {
      print('Error: $e');
      // Handle error
    }
  }

  Future<void> uploadFile(XFile file) async {
    final Dio _dio = Dio();

    try {

      final bytes = await file.readAsBytes();
      final base64File = base64Encode(bytes);

      final data = {'name': file.path.split('/').last, 'file': base64File};

      final response = await _dio.post(
        'https://masiratiapi.azurewebsites.net/api/Registration/Upload',
        data: data,
      );

      if (response.statusCode == 200) {
        emit(FileUploadSuccess());
      } else {

      }
    } catch (e) {

    }
  }

  void sendImagesToApi() async{

    if (studentProfileImageFile != null) {
      await uploadFile(studentProfileImageFile!);
    }
    if (studentIdImageFile != null) {
      await uploadFile(studentIdImageFile!);
    }
    if (studentVacinationImageFile != null) {
      await uploadFile(studentVacinationImageFile!);
    }
    if (studentCustodyImageFile != null) {
      await uploadFile(studentCustodyImageFile!);
    }

  }
}
