import 'package:image_picker/image_picker.dart';
import 'package:image_picker/image_picker.dart';

class SignUpModel {
  List<RegistrationRequestsData>? registrationRequestsData;

  SignUpModel({this.registrationRequestsData});

  SignUpModel.fromJson(Map<String, dynamic> json) {
    if (json['registrationRequestsData'] != null) {
      registrationRequestsData = <RegistrationRequestsData>[];
      json['registrationRequestsData'].forEach((v) {
        registrationRequestsData!.add(new RegistrationRequestsData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.registrationRequestsData != null) {
      data['registrationRequestsData'] =
          this.registrationRequestsData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RegistrationRequestsData {
  String? gFirstName;
  String? gFatherName;
  String? gGrandFatherName;
  String? gLastName;
  int? identityTypeId;
  int? identitySourceId;
  String? identityExpiryDate;
  int? relationId;
  String? nationalityCountryCode;
  String? identityNumber;
  String? mobileNumber;
  String? workPhone;
  String? relative1Name;
  String? relative2Name;
  String? relative1MobileNumber;
  String? relative2MobileNumber;
  String? relative1Address;
  String? relative2Address;

  int? contactCityId;
  String? neighborhood;
  String? mainStreet;
  String? subStreet;
  String? email;
  String? postalCode;
  String? mailBox;
  String? fax;
  String? addressOnVacation;
  String? houseNumber;

  int? housingTypeId;
  int? roomsNumber;
  int? floorsNumber;
  String? incomeSource;
  int? incomeAmount;
  bool? isOtherSourceOfIncome;
  String? otherSourceOfIncome;
  int? otherSourceOfIncomeAmount;

  String? studentFirstNameAr;
  String? studentFatherNameAr;
  String? studentGrandFatherNameAr;
  String? studentLastNameAr;
  String? studentFirstNameEn;
  String? studentFatherNameEn;
  String? studentGrandFatherNameEn;
  String? studentLastNameEn;
  int? genderId;
  String? studentNationalityCode;
  String? studentIdentityNumber;
  int? studentIdentityTypeId;  //
  String? studentBirthDate;
  String? studentBirthPlaceCountryCode;
  String? studentBirthPlaceCity;

  int? studyTrackId;
  int? studentBloodGroupId;
  bool? studentNeedFinancialHelp;
  List<int>? studentFavoriteSubjectIds;

  int? studentLivesWithId;
  List<int>? studentUnwantedSubjectIds;

  bool? isSchoolProblems;
  String? schoolProblems;

  int? studentStatusId;

  String? hobbies;
  bool? radioParticipate;
  int? socialMediaPublishingId;

  String? pathologyDescription;
  String? actionRequiredSituation;
  String? recommendations;

  String? studentIdImageName;
  String? studentProfileImageName;
  String? studentVacinationImageName;
  String? studentCustodyImageName;

  XFile? studentIdImageFile;
  XFile? studentProfileImageFile;
  XFile? studentVacinationImageFile;
  XFile? studentCustodyImageFile;

  RegistrationRequestsData(
      {this.gFirstName,
        this.gFatherName,
        this.gGrandFatherName,
        this.gLastName,
        this.identityTypeId,
        this.identitySourceId,
        this.identityExpiryDate,
        this.relationId,
        this.nationalityCountryCode,
        this.identityNumber,
        this.mobileNumber,
        this.workPhone,
        this.relative1Name,
        this.relative2Name,
        this.relative1MobileNumber,
        this.relative2MobileNumber,
        this.relative1Address,
        this.relative2Address,
        this.contactCityId,
        this.neighborhood,
        this.mainStreet,
        this.subStreet,
        this.email,
        this.postalCode,
        this.mailBox,
        this.fax,
        this.addressOnVacation,
        this.housingTypeId,
        this.roomsNumber,
        this.floorsNumber,
        this.incomeSource,
        this.incomeAmount,
        this.isOtherSourceOfIncome,
        this.otherSourceOfIncome,
        this.otherSourceOfIncomeAmount,
        this.studentFirstNameAr,
        this.studentFatherNameAr,
        this.studentGrandFatherNameAr,
        this.studentLastNameAr,
        this.studentFirstNameEn,
        this.studentFatherNameEn,
        this.studentGrandFatherNameEn,
        this.studentLastNameEn,
        this.genderId,
        this.studentNationalityCode,
        this.studentIdentityNumber,
        this.studentIdentityTypeId,
        this.studentBirthDate,
        this.studentBirthPlaceCountryCode,
        this.studentBirthPlaceCity,

        this.studentBloodGroupId,
        this.studentIdImageName,
        this.studentProfileImageName,
        this.studentVacinationImageName,
        this.studentCustodyImageName,
        this.studentNeedFinancialHelp,
        this.isSchoolProblems,
        this.schoolProblems,
        this.houseNumber,
        this.studentFavoriteSubjectIds,
        this.studentStatusId,
        this.studentUnwantedSubjectIds,
        this.hobbies,
        this.radioParticipate,
        this.socialMediaPublishingId,
        this.studentLivesWithId,
        this.pathologyDescription,
        this.actionRequiredSituation,
        this.recommendations,
        this.studyTrackId,
        this.studentIdImageFile,
        this.studentProfileImageFile,
        this.studentVacinationImageFile,
        this.studentCustodyImageFile

      });

  RegistrationRequestsData.fromJson(Map<String, dynamic> json) {
    gFirstName = json['gFirstName'];
    gFatherName = json['gFatherName'];
    gGrandFatherName = json['gGrandFatherName'];
    gLastName = json['gLastName'];
    identityTypeId = json['identityTypeId'];
    identitySourceId = json['identitySourceId'];
    identityExpiryDate = json['identityExpiryDate'];
    relationId = json['relationId'];
    nationalityCountryCode = json['nationalityCountryCode'];
    identityNumber = json['identityNumber'];
    mobileNumber = json['mobileNumber'];
    workPhone = json['workPhone'];
    relative1Name = json['relative1Name'];
    relative2Name = json['relative2Name'];
    relative1MobileNumber = json['relative1MobileNumber'];
    relative2MobileNumber = json['relative2MobileNumber'];
    relative1Address = json['relative1Address'];
    relative2Address = json['relative2Address'];
    contactCityId = json['contactCityId'];
    neighborhood = json['neighborhood'];
    mainStreet = json['mainStreet'];
    subStreet = json['subStreet'];
    email = json['email'];
    postalCode = json['postalCode'];
    mailBox = json['mailBox'];
    fax = json['fax'];
    addressOnVacation = json['addressOnVacation'];
    housingTypeId = json['housingTypeId'];
    roomsNumber = json['roomsNumber'];
    floorsNumber = json['floorsNumber'];
    incomeSource = json['incomeSource'];
    incomeAmount = json['incomeAmount'];
    isOtherSourceOfIncome = json['isOtherSourceOfIncome'];
    otherSourceOfIncome = json['otherSourceOfIncome'];
    otherSourceOfIncomeAmount = json['otherSourceOfIncomeAmount'];
    studentFirstNameAr = json['studentFirstNameAr'];
    studentFatherNameAr = json['studentFatherNameAr'];
    studentGrandFatherNameAr = json['studentGrandFatherNameAr'];
    studentLastNameAr = json['studentLastNameAr'];
    studentFirstNameEn = json['studentFirstNameEn'];
    studentFatherNameEn = json['studentFatherNameEn'];
    studentGrandFatherNameEn = json['studentGrandFatherNameEn'];
    studentLastNameEn = json['studentLastNameEn'];
    genderId = json['genderId'];
    studentNationalityCode = json['studentNationalityCode'];
    studentIdentityNumber = json['studentIdentityNumber'];
    studentIdentityTypeId = json['studentIdentityTypeId'];
    studentBirthDate = json['studentBirthDate'];
    studentBirthPlaceCountryCode = json['studentBirthPlaceCountryCode'];
    studentBirthPlaceCity = json['studentBirthPlaceCity'];
    studentBloodGroupId = json['studentBloodGroupId'];
    studentIdImageName = json['studentIdImageName'];
    studentProfileImageName = json['studentProfileImageName'];
    studentVacinationImageName = json['studentVacinationImageName'];
    studentCustodyImageName = json['studentCustodyImageName'];
    studentNeedFinancialHelp = json['studentNeedFinancialHelp'];
    isSchoolProblems = json['isSchoolProblems'];
    schoolProblems = json['schoolProblems'];
    houseNumber = json['houseNumber'];
    studentFavoriteSubjectIds = json['studentFavoriteSubjectIds'].cast<int>();
    studentStatusId = json['studentStatusId'];
    studentUnwantedSubjectIds = json['studentUnwantedSubjectIds'].cast<int>();
    hobbies = json['hobbies'];
    radioParticipate = json['radioParticipate'];
    socialMediaPublishingId = json['socialMediaPublishingId'];
    studentLivesWithId = json['studentLivesWithId'];
    pathologyDescription = json['pathologyDescription'];
    actionRequiredSituation = json['actionRequiredSituation'];
    recommendations = json['recommendations'];
    studyTrackId = json['studyTrackId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gFirstName'] = this.gFirstName;
    data['gFatherName'] = this.gFatherName;
    data['gGrandFatherName'] = this.gGrandFatherName;
    data['gLastName'] = this.gLastName;
    data['identityTypeId'] = this.identityTypeId;
    data['identitySourceId'] = this.identitySourceId;
    data['identityExpiryDate'] = this.identityExpiryDate;
    data['relationId'] = this.relationId;
    data['nationalityCountryCode'] = this.nationalityCountryCode;
    data['identityNumber'] = this.identityNumber;
    data['mobileNumber'] = this.mobileNumber;
    data['workPhone'] = this.workPhone;
    data['relative1Name'] = this.relative1Name;
    data['relative2Name'] = this.relative2Name;
    data['relative1MobileNumber'] = this.relative1MobileNumber;
    data['relative2MobileNumber'] = this.relative2MobileNumber;
    data['relative1Address'] = this.relative1Address;
    data['relative2Address'] = this.relative2Address;
    data['contactCityId'] = this.contactCityId;
    data['neighborhood'] = this.neighborhood;
    data['mainStreet'] = this.mainStreet;
    data['subStreet'] = this.subStreet;
    data['email'] = this.email;
    data['postalCode'] = this.postalCode;
    data['mailBox'] = this.mailBox;
    data['fax'] = this.fax;
    data['addressOnVacation'] = this.addressOnVacation;
    data['housingTypeId'] = this.housingTypeId;
    data['roomsNumber'] = this.roomsNumber;
    data['floorsNumber'] = this.floorsNumber;
    data['incomeSource'] = this.incomeSource;
    data['incomeAmount'] = this.incomeAmount;
    data['isOtherSourceOfIncome'] = this.isOtherSourceOfIncome;
    data['otherSourceOfIncome'] = this.otherSourceOfIncome;
    data['otherSourceOfIncomeAmount'] = this.otherSourceOfIncomeAmount;
    data['studentFirstNameAr'] = this.studentFirstNameAr;
    data['studentFatherNameAr'] = this.studentFatherNameAr;
    data['studentGrandFatherNameAr'] = this.studentGrandFatherNameAr;
    data['studentLastNameAr'] = this.studentLastNameAr;
    data['studentFirstNameEn'] = this.studentFirstNameEn;
    data['studentFatherNameEn'] = this.studentFatherNameEn;
    data['studentGrandFatherNameEn'] = this.studentGrandFatherNameEn;
    data['studentLastNameEn'] = this.studentLastNameEn;
    data['genderId'] = this.genderId;
    data['studentNationalityCode'] = this.studentNationalityCode;
    data['studentIdentityNumber'] = this.studentIdentityNumber;
    data['studentIdentityTypeId'] = this.studentIdentityTypeId;
    data['studentBirthDate'] = this.studentBirthDate;
    data['studentBirthPlaceCountryCode'] = this.studentBirthPlaceCountryCode;
    data['studentBirthPlaceCity'] = this.studentBirthPlaceCity;
    data['studentBloodGroupId'] = this.studentBloodGroupId;
    data['studentIdImageName'] = this.studentIdImageName;
    data['studentProfileImageName'] = this.studentProfileImageName;
    data['studentVacinationImageName'] = this.studentVacinationImageName;
    data['studentCustodyImageName'] = this.studentCustodyImageName;
    data['studentNeedFinancialHelp'] = this.studentNeedFinancialHelp;
    data['isSchoolProblems'] = this.isSchoolProblems;
    data['schoolProblems'] = this.schoolProblems;
    data['houseNumber'] = this.houseNumber;
    data['studentFavoriteSubjectIds'] = this.studentFavoriteSubjectIds;
    data['studentStatusId'] = this.studentStatusId;
    data['studentUnwantedSubjectIds'] = this.studentUnwantedSubjectIds;
    data['hobbies'] = this.hobbies;
    data['radioParticipate'] = this.radioParticipate;
    data['socialMediaPublishingId'] = this.socialMediaPublishingId;
    data['studentLivesWithId'] = this.studentLivesWithId;
    data['pathologyDescription'] = this.pathologyDescription;
    data['actionRequiredSituation'] = this.actionRequiredSituation;
    data['recommendations'] = this.recommendations;
    data['studyTrackId'] = this.studyTrackId;
    return data;
  }
}
