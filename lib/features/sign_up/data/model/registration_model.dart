import 'package:maserty/features/sign_up/domain/entity/registration_entity.dart';

class Registration extends RegistrationEntity{
  Registration({
    required this.isAvailable,
    required this.messageAr,
    required this.messageEn,
    required this.closureMessageAr,
    required this.closureMessageEn,
    required this.relations,
    required this.identityTypes,
    required this.genders,
    required this.housingTypes,
    required this.bloodGroups,
    required this.subjects,
    required this.lifeStatus,
    required this.socialMediaPublishing,
    required this.livesWith,
    required this.maritalStatuses,
    required this.academicDegrees,
    required this.gpAs,
    required this.specializations,
    required this.coursePlaces,
    required this.courseRequesters,
    required this.countries,
    required this.studyTracks,
  });
  late  bool isAvailable;
  late  String messageAr;
  late  String messageEn;
  late  String closureMessageAr;
  late  String closureMessageEn;
  late  List<Relations> relations;
  late  List<IdentityTypes> identityTypes;
  late  List<Genders> genders;
  late  List<HousingTypes> housingTypes;
  late  List<BloodGroups> bloodGroups;
  late  List<Subjects> subjects;
  late  List<LifeStatus> lifeStatus;
  late  List<SocialMediaPublishing> socialMediaPublishing;
  late  List<LivesWith> livesWith;
  late  List<MaritalStatuses> maritalStatuses;
  late  List<AcademicDegrees> academicDegrees;
  late  List<GpAs> gpAs;
  late  List<Specializations> specializations;
  late  List<CoursePlaces> coursePlaces;
  late  List<CourseRequesters> courseRequesters;
  late  List<Countries> countries;
  late  List<StudyTracks> studyTracks;

  Registration.fromJson(Map<String, dynamic> json){
    isAvailable = json['isAvailable'];
    messageAr = json['messageAr'];
    messageEn = json['messageEn'];
    closureMessageAr = json['closureMessageAr'];
    closureMessageEn = json['closureMessageEn'];
    relations = List.from(json['relations']).map((e)=>Relations.fromJson(e)).toList();
    identityTypes = List.from(json['identityTypes']).map((e)=>IdentityTypes.fromJson(e)).toList();
    genders = List.from(json['genders']).map((e)=>Genders.fromJson(e)).toList();
    housingTypes = List.from(json['housingTypes']).map((e)=>HousingTypes.fromJson(e)).toList();
    bloodGroups = List.from(json['bloodGroups']).map((e)=>BloodGroups.fromJson(e)).toList();
    subjects = List.from(json['subjects']).map((e)=>Subjects.fromJson(e)).toList();
    lifeStatus = List.from(json['lifeStatus']).map((e)=>LifeStatus.fromJson(e)).toList();
    socialMediaPublishing = List.from(json['socialMediaPublishing']).map((e)=>SocialMediaPublishing.fromJson(e)).toList();
    livesWith = List.from(json['livesWith']).map((e)=>LivesWith.fromJson(e)).toList();
    maritalStatuses = List.from(json['maritalStatuses']).map((e)=>MaritalStatuses.fromJson(e)).toList();
    academicDegrees = List.from(json['academicDegrees']).map((e)=>AcademicDegrees.fromJson(e)).toList();
    gpAs = List.from(json['gpAs']).map((e)=>GpAs.fromJson(e)).toList();
    specializations = List.from(json['specializations']).map((e)=>Specializations.fromJson(e)).toList();
    coursePlaces = List.from(json['coursePlaces']).map((e)=>CoursePlaces.fromJson(e)).toList();
    courseRequesters = List.from(json['courseRequesters']).map((e)=>CourseRequesters.fromJson(e)).toList();
    countries = List.from(json['countries']).map((e)=>Countries.fromJson(e)).toList();
    studyTracks = List.from(json['studyTracks']).map((e)=>StudyTracks.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['isAvailable'] = isAvailable;
    _data['messageAr'] = messageAr;
    _data['messageEn'] = messageEn;
    _data['closureMessageAr'] = closureMessageAr;
    _data['closureMessageEn'] = closureMessageEn;
    _data['relations'] = relations.map((e)=>e.toJson()).toList();
    _data['identityTypes'] = identityTypes.map((e)=>e.toJson()).toList();
    _data['genders'] = genders.map((e)=>e.toJson()).toList();
    _data['housingTypes'] = housingTypes.map((e)=>e.toJson()).toList();
    _data['bloodGroups'] = bloodGroups.map((e)=>e.toJson()).toList();
    _data['subjects'] = subjects.map((e)=>e.toJson()).toList();
    _data['lifeStatus'] = lifeStatus.map((e)=>e.toJson()).toList();
    _data['socialMediaPublishing'] = socialMediaPublishing.map((e)=>e.toJson()).toList();
    _data['livesWith'] = livesWith.map((e)=>e.toJson()).toList();
    _data['maritalStatuses'] = maritalStatuses.map((e)=>e.toJson()).toList();
    _data['academicDegrees'] = academicDegrees.map((e)=>e.toJson()).toList();
    _data['gpAs'] = gpAs.map((e)=>e.toJson()).toList();
    _data['specializations'] = specializations.map((e)=>e.toJson()).toList();
    _data['coursePlaces'] = coursePlaces.map((e)=>e.toJson()).toList();
    _data['courseRequesters'] = courseRequesters.map((e)=>e.toJson()).toList();
    _data['countries'] = countries.map((e)=>e.toJson()).toList();
    _data['studyTracks'] = studyTracks.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Relations {
  Relations({
    required this.id,
    required this.titleAr,
    required this.titleEn,
    this.code,
    required this.lookupCategoryId,
    required this.lookupCategory,
    this.permissionLevelId,
    this.permissionLevel,
    this.viewLevelId,
    this.viewLevel,
    this.favoriteSubjectsLookupValues,
    this.unwantedSubjectLookupValues,
    this.genderOperatorRequests,
    this.identityTypeOperatorRequests,
    this.relationOperatorRequests,
    this.genderTeachers,
    this.identityTypeTeachers,
    this.relationTeachers,
    this.operatorRequestQualifications,
  });
  late final int id;
  late final String titleAr;
  late final String titleEn;
  late final Null code;
  late final int lookupCategoryId;
  late final LookupCategory lookupCategory;
  late final Null permissionLevelId;
  late final Null permissionLevel;
  late final Null viewLevelId;
  late final Null viewLevel;
  late final Null favoriteSubjectsLookupValues;
  late final Null unwantedSubjectLookupValues;
  late final Null genderOperatorRequests;
  late final Null identityTypeOperatorRequests;
  late final Null relationOperatorRequests;
  late final Null genderTeachers;
  late final Null identityTypeTeachers;
  late final Null relationTeachers;
  late final Null operatorRequestQualifications;

  Relations.fromJson(Map<String, dynamic> json){
    id = json['id'];
    titleAr = json['titleAr'];
    titleEn = json['titleEn'];
    code = null;
    lookupCategoryId = json['lookupCategoryId'];
    lookupCategory = LookupCategory.fromJson(json['lookupCategory']);
    permissionLevelId = null;
    permissionLevel = null;
    viewLevelId = null;
    viewLevel = null;
    favoriteSubjectsLookupValues = null;
    unwantedSubjectLookupValues = null;
    genderOperatorRequests = null;
    identityTypeOperatorRequests = null;
    relationOperatorRequests = null;
    genderTeachers = null;
    identityTypeTeachers = null;
    relationTeachers = null;
    operatorRequestQualifications = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['titleAr'] = titleAr;
    _data['titleEn'] = titleEn;
    _data['code'] = code;
    _data['lookupCategoryId'] = lookupCategoryId;
    _data['lookupCategory'] = lookupCategory.toJson();
    _data['permissionLevelId'] = permissionLevelId;
    _data['permissionLevel'] = permissionLevel;
    _data['viewLevelId'] = viewLevelId;
    _data['viewLevel'] = viewLevel;
    _data['favoriteSubjectsLookupValues'] = favoriteSubjectsLookupValues;
    _data['unwantedSubjectLookupValues'] = unwantedSubjectLookupValues;
    _data['genderOperatorRequests'] = genderOperatorRequests;
    _data['identityTypeOperatorRequests'] = identityTypeOperatorRequests;
    _data['relationOperatorRequests'] = relationOperatorRequests;
    _data['genderTeachers'] = genderTeachers;
    _data['identityTypeTeachers'] = identityTypeTeachers;
    _data['relationTeachers'] = relationTeachers;
    _data['operatorRequestQualifications'] = operatorRequestQualifications;
    return _data;
  }
}

class LookupCategory {
  LookupCategory({
    required this.id,
    required this.categoryCode,
    required this.titleAr,
    required this.titleEn,
    required this.lookupValues,
  });
  late final int id;
  late final String categoryCode;
  late final String titleAr;
  late final String titleEn;
  late final List<dynamic> lookupValues;

  LookupCategory.fromJson(Map<String, dynamic> json){
    id = json['id'];
    categoryCode = json['categoryCode'];
    titleAr = json['titleAr'];
    titleEn = json['titleEn'];
    lookupValues = List.castFrom<dynamic, dynamic>(json['lookupValues']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['categoryCode'] = categoryCode;
    _data['titleAr'] = titleAr;
    _data['titleEn'] = titleEn;
    _data['lookupValues'] = lookupValues;
    return _data;
  }
}

class IdentityTypes {
  IdentityTypes({
    required this.id,
    required this.titleAr,
    required this.titleEn,
    this.code,
    required this.lookupCategoryId,
    required this.lookupCategory,
    this.permissionLevelId,
    this.permissionLevel,
    this.viewLevelId,
    this.viewLevel,
    this.favoriteSubjectsLookupValues,
    this.unwantedSubjectLookupValues,
    this.genderOperatorRequests,
    this.identityTypeOperatorRequests,
    this.relationOperatorRequests,
    this.genderTeachers,
    this.identityTypeTeachers,
    this.relationTeachers,
    this.operatorRequestQualifications,
  });
  late final int id;
  late final String titleAr;
  late final String titleEn;
  late final Null code;
  late final int lookupCategoryId;
  late final LookupCategory lookupCategory;
  late final Null permissionLevelId;
  late final Null permissionLevel;
  late final Null viewLevelId;
  late final Null viewLevel;
  late final Null favoriteSubjectsLookupValues;
  late final Null unwantedSubjectLookupValues;
  late final Null genderOperatorRequests;
  late final Null identityTypeOperatorRequests;
  late final Null relationOperatorRequests;
  late final Null genderTeachers;
  late final Null identityTypeTeachers;
  late final Null relationTeachers;
  late final Null operatorRequestQualifications;

  IdentityTypes.fromJson(Map<String, dynamic> json){
    id = json['id'];
    titleAr = json['titleAr'];
    titleEn = json['titleEn'];
    code = null;
    lookupCategoryId = json['lookupCategoryId'];
    lookupCategory = LookupCategory.fromJson(json['lookupCategory']);
    permissionLevelId = null;
    permissionLevel = null;
    viewLevelId = null;
    viewLevel = null;
    favoriteSubjectsLookupValues = null;
    unwantedSubjectLookupValues = null;
    genderOperatorRequests = null;
    identityTypeOperatorRequests = null;
    relationOperatorRequests = null;
    genderTeachers = null;
    identityTypeTeachers = null;
    relationTeachers = null;
    operatorRequestQualifications = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['titleAr'] = titleAr;
    _data['titleEn'] = titleEn;
    _data['code'] = code;
    _data['lookupCategoryId'] = lookupCategoryId;
    _data['lookupCategory'] = lookupCategory.toJson();
    _data['permissionLevelId'] = permissionLevelId;
    _data['permissionLevel'] = permissionLevel;
    _data['viewLevelId'] = viewLevelId;
    _data['viewLevel'] = viewLevel;
    _data['favoriteSubjectsLookupValues'] = favoriteSubjectsLookupValues;
    _data['unwantedSubjectLookupValues'] = unwantedSubjectLookupValues;
    _data['genderOperatorRequests'] = genderOperatorRequests;
    _data['identityTypeOperatorRequests'] = identityTypeOperatorRequests;
    _data['relationOperatorRequests'] = relationOperatorRequests;
    _data['genderTeachers'] = genderTeachers;
    _data['identityTypeTeachers'] = identityTypeTeachers;
    _data['relationTeachers'] = relationTeachers;
    _data['operatorRequestQualifications'] = operatorRequestQualifications;
    return _data;
  }
}

class Genders {
  Genders({
    required this.id,
    required this.titleAr,
    required this.titleEn,
    this.code,
    required this.lookupCategoryId,
    required this.lookupCategory,
    this.permissionLevelId,
    this.permissionLevel,
    this.viewLevelId,
    this.viewLevel,
    this.favoriteSubjectsLookupValues,
    this.unwantedSubjectLookupValues,
    this.genderOperatorRequests,
    this.identityTypeOperatorRequests,
    this.relationOperatorRequests,
    this.genderTeachers,
    this.identityTypeTeachers,
    this.relationTeachers,
    this.operatorRequestQualifications,
  });
  late final int id;
  late final String titleAr;
  late final String titleEn;
  late final Null code;
  late final int lookupCategoryId;
  late final LookupCategory lookupCategory;
  late final Null permissionLevelId;
  late final Null permissionLevel;
  late final Null viewLevelId;
  late final Null viewLevel;
  late final Null favoriteSubjectsLookupValues;
  late final Null unwantedSubjectLookupValues;
  late final Null genderOperatorRequests;
  late final Null identityTypeOperatorRequests;
  late final Null relationOperatorRequests;
  late final Null genderTeachers;
  late final Null identityTypeTeachers;
  late final Null relationTeachers;
  late final Null operatorRequestQualifications;

  Genders.fromJson(Map<String, dynamic> json){
    id = json['id'];
    titleAr = json['titleAr'];
    titleEn = json['titleEn'];
    code = null;
    lookupCategoryId = json['lookupCategoryId'];
    lookupCategory = LookupCategory.fromJson(json['lookupCategory']);
    permissionLevelId = null;
    permissionLevel = null;
    viewLevelId = null;
    viewLevel = null;
    favoriteSubjectsLookupValues = null;
    unwantedSubjectLookupValues = null;
    genderOperatorRequests = null;
    identityTypeOperatorRequests = null;
    relationOperatorRequests = null;
    genderTeachers = null;
    identityTypeTeachers = null;
    relationTeachers = null;
    operatorRequestQualifications = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['titleAr'] = titleAr;
    _data['titleEn'] = titleEn;
    _data['code'] = code;
    _data['lookupCategoryId'] = lookupCategoryId;
    _data['lookupCategory'] = lookupCategory.toJson();
    _data['permissionLevelId'] = permissionLevelId;
    _data['permissionLevel'] = permissionLevel;
    _data['viewLevelId'] = viewLevelId;
    _data['viewLevel'] = viewLevel;
    _data['favoriteSubjectsLookupValues'] = favoriteSubjectsLookupValues;
    _data['unwantedSubjectLookupValues'] = unwantedSubjectLookupValues;
    _data['genderOperatorRequests'] = genderOperatorRequests;
    _data['identityTypeOperatorRequests'] = identityTypeOperatorRequests;
    _data['relationOperatorRequests'] = relationOperatorRequests;
    _data['genderTeachers'] = genderTeachers;
    _data['identityTypeTeachers'] = identityTypeTeachers;
    _data['relationTeachers'] = relationTeachers;
    _data['operatorRequestQualifications'] = operatorRequestQualifications;
    return _data;
  }
}

class HousingTypes {
  HousingTypes({
    required this.id,
    required this.titleAr,
    required this.titleEn,
    this.code,
    required this.lookupCategoryId,
    required this.lookupCategory,
    this.permissionLevelId,
    this.permissionLevel,
    this.viewLevelId,
    this.viewLevel,
    this.favoriteSubjectsLookupValues,
    this.unwantedSubjectLookupValues,
    this.genderOperatorRequests,
    this.identityTypeOperatorRequests,
    this.relationOperatorRequests,
    this.genderTeachers,
    this.identityTypeTeachers,
    this.relationTeachers,
    this.operatorRequestQualifications,
  });
  late final int id;
  late final String titleAr;
  late final String titleEn;
  late final Null code;
  late final int lookupCategoryId;
  late final LookupCategory lookupCategory;
  late final Null permissionLevelId;
  late final Null permissionLevel;
  late final Null viewLevelId;
  late final Null viewLevel;
  late final Null favoriteSubjectsLookupValues;
  late final Null unwantedSubjectLookupValues;
  late final Null genderOperatorRequests;
  late final Null identityTypeOperatorRequests;
  late final Null relationOperatorRequests;
  late final Null genderTeachers;
  late final Null identityTypeTeachers;
  late final Null relationTeachers;
  late final Null operatorRequestQualifications;

  HousingTypes.fromJson(Map<String, dynamic> json){
    id = json['id'];
    titleAr = json['titleAr'];
    titleEn = json['titleEn'];
    code = null;
    lookupCategoryId = json['lookupCategoryId'];
    lookupCategory = LookupCategory.fromJson(json['lookupCategory']);
    permissionLevelId = null;
    permissionLevel = null;
    viewLevelId = null;
    viewLevel = null;
    favoriteSubjectsLookupValues = null;
    unwantedSubjectLookupValues = null;
    genderOperatorRequests = null;
    identityTypeOperatorRequests = null;
    relationOperatorRequests = null;
    genderTeachers = null;
    identityTypeTeachers = null;
    relationTeachers = null;
    operatorRequestQualifications = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['titleAr'] = titleAr;
    _data['titleEn'] = titleEn;
    _data['code'] = code;
    _data['lookupCategoryId'] = lookupCategoryId;
    _data['lookupCategory'] = lookupCategory.toJson();
    _data['permissionLevelId'] = permissionLevelId;
    _data['permissionLevel'] = permissionLevel;
    _data['viewLevelId'] = viewLevelId;
    _data['viewLevel'] = viewLevel;
    _data['favoriteSubjectsLookupValues'] = favoriteSubjectsLookupValues;
    _data['unwantedSubjectLookupValues'] = unwantedSubjectLookupValues;
    _data['genderOperatorRequests'] = genderOperatorRequests;
    _data['identityTypeOperatorRequests'] = identityTypeOperatorRequests;
    _data['relationOperatorRequests'] = relationOperatorRequests;
    _data['genderTeachers'] = genderTeachers;
    _data['identityTypeTeachers'] = identityTypeTeachers;
    _data['relationTeachers'] = relationTeachers;
    _data['operatorRequestQualifications'] = operatorRequestQualifications;
    return _data;
  }
}

class BloodGroups {
  BloodGroups({
    required this.id,
    required this.titleAr,
    required this.titleEn,
    this.code,
    required this.lookupCategoryId,
    required this.lookupCategory,
    this.permissionLevelId,
    this.permissionLevel,
    this.viewLevelId,
    this.viewLevel,
    this.favoriteSubjectsLookupValues,
    this.unwantedSubjectLookupValues,
    this.genderOperatorRequests,
    this.identityTypeOperatorRequests,
    this.relationOperatorRequests,
    this.genderTeachers,
    this.identityTypeTeachers,
    this.relationTeachers,
    this.operatorRequestQualifications,
  });
  late final int id;
  late final String titleAr;
  late final String titleEn;
  late final Null code;
  late final int lookupCategoryId;
  late final LookupCategory lookupCategory;
  late final Null permissionLevelId;
  late final Null permissionLevel;
  late final Null viewLevelId;
  late final Null viewLevel;
  late final Null favoriteSubjectsLookupValues;
  late final Null unwantedSubjectLookupValues;
  late final Null genderOperatorRequests;
  late final Null identityTypeOperatorRequests;
  late final Null relationOperatorRequests;
  late final Null genderTeachers;
  late final Null identityTypeTeachers;
  late final Null relationTeachers;
  late final Null operatorRequestQualifications;

  BloodGroups.fromJson(Map<String, dynamic> json){
    id = json['id'];
    titleAr = json['titleAr'];
    titleEn = json['titleEn'];
    code = null;
    lookupCategoryId = json['lookupCategoryId'];
    lookupCategory = LookupCategory.fromJson(json['lookupCategory']);
    permissionLevelId = null;
    permissionLevel = null;
    viewLevelId = null;
    viewLevel = null;
    favoriteSubjectsLookupValues = null;
    unwantedSubjectLookupValues = null;
    genderOperatorRequests = null;
    identityTypeOperatorRequests = null;
    relationOperatorRequests = null;
    genderTeachers = null;
    identityTypeTeachers = null;
    relationTeachers = null;
    operatorRequestQualifications = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['titleAr'] = titleAr;
    _data['titleEn'] = titleEn;
    _data['code'] = code;
    _data['lookupCategoryId'] = lookupCategoryId;
    _data['lookupCategory'] = lookupCategory.toJson();
    _data['permissionLevelId'] = permissionLevelId;
    _data['permissionLevel'] = permissionLevel;
    _data['viewLevelId'] = viewLevelId;
    _data['viewLevel'] = viewLevel;
    _data['favoriteSubjectsLookupValues'] = favoriteSubjectsLookupValues;
    _data['unwantedSubjectLookupValues'] = unwantedSubjectLookupValues;
    _data['genderOperatorRequests'] = genderOperatorRequests;
    _data['identityTypeOperatorRequests'] = identityTypeOperatorRequests;
    _data['relationOperatorRequests'] = relationOperatorRequests;
    _data['genderTeachers'] = genderTeachers;
    _data['identityTypeTeachers'] = identityTypeTeachers;
    _data['relationTeachers'] = relationTeachers;
    _data['operatorRequestQualifications'] = operatorRequestQualifications;
    return _data;
  }
}

class Subjects {
  Subjects({
    required this.id,
    required this.titleAr,
    required this.titleEn,
    this.code,
    required this.lookupCategoryId,
    required this.lookupCategory,
    this.permissionLevelId,
    this.permissionLevel,
    this.viewLevelId,
    this.viewLevel,
    this.favoriteSubjectsLookupValues,
    this.unwantedSubjectLookupValues,
    this.genderOperatorRequests,
    this.identityTypeOperatorRequests,
    this.relationOperatorRequests,
    this.genderTeachers,
    this.identityTypeTeachers,
    this.relationTeachers,
    this.operatorRequestQualifications,
  });
  late final int id;
  late final String titleAr;
  late final String titleEn;
  late final Null code;
  late final int lookupCategoryId;
  late final LookupCategory lookupCategory;
  late final Null permissionLevelId;
  late final Null permissionLevel;
  late final Null viewLevelId;
  late final Null viewLevel;
  late final Null favoriteSubjectsLookupValues;
  late final Null unwantedSubjectLookupValues;
  late final Null genderOperatorRequests;
  late final Null identityTypeOperatorRequests;
  late final Null relationOperatorRequests;
  late final Null genderTeachers;
  late final Null identityTypeTeachers;
  late final Null relationTeachers;
  late final Null operatorRequestQualifications;

  Subjects.fromJson(Map<String, dynamic> json){
    id = json['id'];
    titleAr = json['titleAr'];
    titleEn = json['titleEn'];
    code = null;
    lookupCategoryId = json['lookupCategoryId'];
    lookupCategory = LookupCategory.fromJson(json['lookupCategory']);
    permissionLevelId = null;
    permissionLevel = null;
    viewLevelId = null;
    viewLevel = null;
    favoriteSubjectsLookupValues = null;
    unwantedSubjectLookupValues = null;
    genderOperatorRequests = null;
    identityTypeOperatorRequests = null;
    relationOperatorRequests = null;
    genderTeachers = null;
    identityTypeTeachers = null;
    relationTeachers = null;
    operatorRequestQualifications = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['titleAr'] = titleAr;
    _data['titleEn'] = titleEn;
    _data['code'] = code;
    _data['lookupCategoryId'] = lookupCategoryId;
    _data['lookupCategory'] = lookupCategory.toJson();
    _data['permissionLevelId'] = permissionLevelId;
    _data['permissionLevel'] = permissionLevel;
    _data['viewLevelId'] = viewLevelId;
    _data['viewLevel'] = viewLevel;
    _data['favoriteSubjectsLookupValues'] = favoriteSubjectsLookupValues;
    _data['unwantedSubjectLookupValues'] = unwantedSubjectLookupValues;
    _data['genderOperatorRequests'] = genderOperatorRequests;
    _data['identityTypeOperatorRequests'] = identityTypeOperatorRequests;
    _data['relationOperatorRequests'] = relationOperatorRequests;
    _data['genderTeachers'] = genderTeachers;
    _data['identityTypeTeachers'] = identityTypeTeachers;
    _data['relationTeachers'] = relationTeachers;
    _data['operatorRequestQualifications'] = operatorRequestQualifications;
    return _data;
  }
}

class LifeStatus {
  LifeStatus({
    required this.id,
    required this.titleAr,
    required this.titleEn,
    this.code,
    required this.lookupCategoryId,
    required this.lookupCategory,
    this.permissionLevelId,
    this.permissionLevel,
    this.viewLevelId,
    this.viewLevel,
    this.favoriteSubjectsLookupValues,
    this.unwantedSubjectLookupValues,
    this.genderOperatorRequests,
    this.identityTypeOperatorRequests,
    this.relationOperatorRequests,
    this.genderTeachers,
    this.identityTypeTeachers,
    this.relationTeachers,
    this.operatorRequestQualifications,
  });
  late final int id;
  late final String titleAr;
  late final String titleEn;
  late final Null code;
  late final int lookupCategoryId;
  late final LookupCategory lookupCategory;
  late final Null permissionLevelId;
  late final Null permissionLevel;
  late final Null viewLevelId;
  late final Null viewLevel;
  late final Null favoriteSubjectsLookupValues;
  late final Null unwantedSubjectLookupValues;
  late final Null genderOperatorRequests;
  late final Null identityTypeOperatorRequests;
  late final Null relationOperatorRequests;
  late final Null genderTeachers;
  late final Null identityTypeTeachers;
  late final Null relationTeachers;
  late final Null operatorRequestQualifications;

  LifeStatus.fromJson(Map<String, dynamic> json){
    id = json['id'];
    titleAr = json['titleAr'];
    titleEn = json['titleEn'];
    code = null;
    lookupCategoryId = json['lookupCategoryId'];
    lookupCategory = LookupCategory.fromJson(json['lookupCategory']);
    permissionLevelId = null;
    permissionLevel = null;
    viewLevelId = null;
    viewLevel = null;
    favoriteSubjectsLookupValues = null;
    unwantedSubjectLookupValues = null;
    genderOperatorRequests = null;
    identityTypeOperatorRequests = null;
    relationOperatorRequests = null;
    genderTeachers = null;
    identityTypeTeachers = null;
    relationTeachers = null;
    operatorRequestQualifications = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['titleAr'] = titleAr;
    _data['titleEn'] = titleEn;
    _data['code'] = code;
    _data['lookupCategoryId'] = lookupCategoryId;
    _data['lookupCategory'] = lookupCategory.toJson();
    _data['permissionLevelId'] = permissionLevelId;
    _data['permissionLevel'] = permissionLevel;
    _data['viewLevelId'] = viewLevelId;
    _data['viewLevel'] = viewLevel;
    _data['favoriteSubjectsLookupValues'] = favoriteSubjectsLookupValues;
    _data['unwantedSubjectLookupValues'] = unwantedSubjectLookupValues;
    _data['genderOperatorRequests'] = genderOperatorRequests;
    _data['identityTypeOperatorRequests'] = identityTypeOperatorRequests;
    _data['relationOperatorRequests'] = relationOperatorRequests;
    _data['genderTeachers'] = genderTeachers;
    _data['identityTypeTeachers'] = identityTypeTeachers;
    _data['relationTeachers'] = relationTeachers;
    _data['operatorRequestQualifications'] = operatorRequestQualifications;
    return _data;
  }
}

class SocialMediaPublishing {
  SocialMediaPublishing({
    required this.id,
    required this.titleAr,
    required this.titleEn,
    this.code,
    required this.lookupCategoryId,
    required this.lookupCategory,
    this.permissionLevelId,
    this.permissionLevel,
    this.viewLevelId,
    this.viewLevel,
    this.favoriteSubjectsLookupValues,
    this.unwantedSubjectLookupValues,
    this.genderOperatorRequests,
    this.identityTypeOperatorRequests,
    this.relationOperatorRequests,
    this.genderTeachers,
    this.identityTypeTeachers,
    this.relationTeachers,
    this.operatorRequestQualifications,
  });
  late final int id;
  late final String titleAr;
  late final String titleEn;
  late final Null code;
  late final int lookupCategoryId;
  late final LookupCategory lookupCategory;
  late final Null permissionLevelId;
  late final Null permissionLevel;
  late final Null viewLevelId;
  late final Null viewLevel;
  late final Null favoriteSubjectsLookupValues;
  late final Null unwantedSubjectLookupValues;
  late final Null genderOperatorRequests;
  late final Null identityTypeOperatorRequests;
  late final Null relationOperatorRequests;
  late final Null genderTeachers;
  late final Null identityTypeTeachers;
  late final Null relationTeachers;
  late final Null operatorRequestQualifications;

  SocialMediaPublishing.fromJson(Map<String, dynamic> json){
    id = json['id'];
    titleAr = json['titleAr'];
    titleEn = json['titleEn'];
    code = null;
    lookupCategoryId = json['lookupCategoryId'];
    lookupCategory = LookupCategory.fromJson(json['lookupCategory']);
    permissionLevelId = null;
    permissionLevel = null;
    viewLevelId = null;
    viewLevel = null;
    favoriteSubjectsLookupValues = null;
    unwantedSubjectLookupValues = null;
    genderOperatorRequests = null;
    identityTypeOperatorRequests = null;
    relationOperatorRequests = null;
    genderTeachers = null;
    identityTypeTeachers = null;
    relationTeachers = null;
    operatorRequestQualifications = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['titleAr'] = titleAr;
    _data['titleEn'] = titleEn;
    _data['code'] = code;
    _data['lookupCategoryId'] = lookupCategoryId;
    _data['lookupCategory'] = lookupCategory.toJson();
    _data['permissionLevelId'] = permissionLevelId;
    _data['permissionLevel'] = permissionLevel;
    _data['viewLevelId'] = viewLevelId;
    _data['viewLevel'] = viewLevel;
    _data['favoriteSubjectsLookupValues'] = favoriteSubjectsLookupValues;
    _data['unwantedSubjectLookupValues'] = unwantedSubjectLookupValues;
    _data['genderOperatorRequests'] = genderOperatorRequests;
    _data['identityTypeOperatorRequests'] = identityTypeOperatorRequests;
    _data['relationOperatorRequests'] = relationOperatorRequests;
    _data['genderTeachers'] = genderTeachers;
    _data['identityTypeTeachers'] = identityTypeTeachers;
    _data['relationTeachers'] = relationTeachers;
    _data['operatorRequestQualifications'] = operatorRequestQualifications;
    return _data;
  }
}

class LivesWith {
  LivesWith({
    required this.id,
    required this.titleAr,
    required this.titleEn,
    this.code,
    required this.lookupCategoryId,
    required this.lookupCategory,
    this.permissionLevelId,
    this.permissionLevel,
    this.viewLevelId,
    this.viewLevel,
    this.favoriteSubjectsLookupValues,
    this.unwantedSubjectLookupValues,
    this.genderOperatorRequests,
    this.identityTypeOperatorRequests,
    this.relationOperatorRequests,
    this.genderTeachers,
    this.identityTypeTeachers,
    this.relationTeachers,
    this.operatorRequestQualifications,
  });
  late final int id;
  late final String titleAr;
  late final String titleEn;
  late final Null code;
  late final int lookupCategoryId;
  late final LookupCategory lookupCategory;
  late final Null permissionLevelId;
  late final Null permissionLevel;
  late final Null viewLevelId;
  late final Null viewLevel;
  late final Null favoriteSubjectsLookupValues;
  late final Null unwantedSubjectLookupValues;
  late final Null genderOperatorRequests;
  late final Null identityTypeOperatorRequests;
  late final Null relationOperatorRequests;
  late final Null genderTeachers;
  late final Null identityTypeTeachers;
  late final Null relationTeachers;
  late final Null operatorRequestQualifications;

  LivesWith.fromJson(Map<String, dynamic> json){
    id = json['id'];
    titleAr = json['titleAr'];
    titleEn = json['titleEn'];
    code = null;
    lookupCategoryId = json['lookupCategoryId'];
    lookupCategory = LookupCategory.fromJson(json['lookupCategory']);
    permissionLevelId = null;
    permissionLevel = null;
    viewLevelId = null;
    viewLevel = null;
    favoriteSubjectsLookupValues = null;
    unwantedSubjectLookupValues = null;
    genderOperatorRequests = null;
    identityTypeOperatorRequests = null;
    relationOperatorRequests = null;
    genderTeachers = null;
    identityTypeTeachers = null;
    relationTeachers = null;
    operatorRequestQualifications = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['titleAr'] = titleAr;
    _data['titleEn'] = titleEn;
    _data['code'] = code;
    _data['lookupCategoryId'] = lookupCategoryId;
    _data['lookupCategory'] = lookupCategory.toJson();
    _data['permissionLevelId'] = permissionLevelId;
    _data['permissionLevel'] = permissionLevel;
    _data['viewLevelId'] = viewLevelId;
    _data['viewLevel'] = viewLevel;
    _data['favoriteSubjectsLookupValues'] = favoriteSubjectsLookupValues;
    _data['unwantedSubjectLookupValues'] = unwantedSubjectLookupValues;
    _data['genderOperatorRequests'] = genderOperatorRequests;
    _data['identityTypeOperatorRequests'] = identityTypeOperatorRequests;
    _data['relationOperatorRequests'] = relationOperatorRequests;
    _data['genderTeachers'] = genderTeachers;
    _data['identityTypeTeachers'] = identityTypeTeachers;
    _data['relationTeachers'] = relationTeachers;
    _data['operatorRequestQualifications'] = operatorRequestQualifications;
    return _data;
  }
}

class MaritalStatuses {
  MaritalStatuses({
    required this.id,
    required this.titleAr,
    required this.titleEn,
    this.code,
    required this.lookupCategoryId,
    required this.lookupCategory,
    this.permissionLevelId,
    this.permissionLevel,
    this.viewLevelId,
    this.viewLevel,
    this.favoriteSubjectsLookupValues,
    this.unwantedSubjectLookupValues,
    this.genderOperatorRequests,
    this.identityTypeOperatorRequests,
    this.relationOperatorRequests,
    this.genderTeachers,
    this.identityTypeTeachers,
    this.relationTeachers,
    this.operatorRequestQualifications,
  });
  late final int id;
  late final String titleAr;
  late final String titleEn;
  late final Null code;
  late final int lookupCategoryId;
  late final LookupCategory lookupCategory;
  late final Null permissionLevelId;
  late final Null permissionLevel;
  late final Null viewLevelId;
  late final Null viewLevel;
  late final Null favoriteSubjectsLookupValues;
  late final Null unwantedSubjectLookupValues;
  late final Null genderOperatorRequests;
  late final Null identityTypeOperatorRequests;
  late final Null relationOperatorRequests;
  late final Null genderTeachers;
  late final Null identityTypeTeachers;
  late final Null relationTeachers;
  late final Null operatorRequestQualifications;

  MaritalStatuses.fromJson(Map<String, dynamic> json){
    id = json['id'];
    titleAr = json['titleAr'];
    titleEn = json['titleEn'];
    code = null;
    lookupCategoryId = json['lookupCategoryId'];
    lookupCategory = LookupCategory.fromJson(json['lookupCategory']);
    permissionLevelId = null;
    permissionLevel = null;
    viewLevelId = null;
    viewLevel = null;
    favoriteSubjectsLookupValues = null;
    unwantedSubjectLookupValues = null;
    genderOperatorRequests = null;
    identityTypeOperatorRequests = null;
    relationOperatorRequests = null;
    genderTeachers = null;
    identityTypeTeachers = null;
    relationTeachers = null;
    operatorRequestQualifications = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['titleAr'] = titleAr;
    _data['titleEn'] = titleEn;
    _data['code'] = code;
    _data['lookupCategoryId'] = lookupCategoryId;
    _data['lookupCategory'] = lookupCategory.toJson();
    _data['permissionLevelId'] = permissionLevelId;
    _data['permissionLevel'] = permissionLevel;
    _data['viewLevelId'] = viewLevelId;
    _data['viewLevel'] = viewLevel;
    _data['favoriteSubjectsLookupValues'] = favoriteSubjectsLookupValues;
    _data['unwantedSubjectLookupValues'] = unwantedSubjectLookupValues;
    _data['genderOperatorRequests'] = genderOperatorRequests;
    _data['identityTypeOperatorRequests'] = identityTypeOperatorRequests;
    _data['relationOperatorRequests'] = relationOperatorRequests;
    _data['genderTeachers'] = genderTeachers;
    _data['identityTypeTeachers'] = identityTypeTeachers;
    _data['relationTeachers'] = relationTeachers;
    _data['operatorRequestQualifications'] = operatorRequestQualifications;
    return _data;
  }
}

class AcademicDegrees {
  AcademicDegrees({
    required this.id,
    required this.titleAr,
    required this.titleEn,
    this.code,
    required this.lookupCategoryId,
    required this.lookupCategory,
    this.permissionLevelId,
    this.permissionLevel,
    this.viewLevelId,
    this.viewLevel,
    this.favoriteSubjectsLookupValues,
    this.unwantedSubjectLookupValues,
    this.genderOperatorRequests,
    this.identityTypeOperatorRequests,
    this.relationOperatorRequests,
    this.genderTeachers,
    this.identityTypeTeachers,
    this.relationTeachers,
    this.operatorRequestQualifications,
  });
  late final int id;
  late final String titleAr;
  late final String titleEn;
  late final Null code;
  late final int lookupCategoryId;
  late final LookupCategory lookupCategory;
  late final Null permissionLevelId;
  late final Null permissionLevel;
  late final Null viewLevelId;
  late final Null viewLevel;
  late final Null favoriteSubjectsLookupValues;
  late final Null unwantedSubjectLookupValues;
  late final Null genderOperatorRequests;
  late final Null identityTypeOperatorRequests;
  late final Null relationOperatorRequests;
  late final Null genderTeachers;
  late final Null identityTypeTeachers;
  late final Null relationTeachers;
  late final Null operatorRequestQualifications;

  AcademicDegrees.fromJson(Map<String, dynamic> json){
    id = json['id'];
    titleAr = json['titleAr'];
    titleEn = json['titleEn'];
    code = null;
    lookupCategoryId = json['lookupCategoryId'];
    lookupCategory = LookupCategory.fromJson(json['lookupCategory']);
    permissionLevelId = null;
    permissionLevel = null;
    viewLevelId = null;
    viewLevel = null;
    favoriteSubjectsLookupValues = null;
    unwantedSubjectLookupValues = null;
    genderOperatorRequests = null;
    identityTypeOperatorRequests = null;
    relationOperatorRequests = null;
    genderTeachers = null;
    identityTypeTeachers = null;
    relationTeachers = null;
    operatorRequestQualifications = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['titleAr'] = titleAr;
    _data['titleEn'] = titleEn;
    _data['code'] = code;
    _data['lookupCategoryId'] = lookupCategoryId;
    _data['lookupCategory'] = lookupCategory.toJson();
    _data['permissionLevelId'] = permissionLevelId;
    _data['permissionLevel'] = permissionLevel;
    _data['viewLevelId'] = viewLevelId;
    _data['viewLevel'] = viewLevel;
    _data['favoriteSubjectsLookupValues'] = favoriteSubjectsLookupValues;
    _data['unwantedSubjectLookupValues'] = unwantedSubjectLookupValues;
    _data['genderOperatorRequests'] = genderOperatorRequests;
    _data['identityTypeOperatorRequests'] = identityTypeOperatorRequests;
    _data['relationOperatorRequests'] = relationOperatorRequests;
    _data['genderTeachers'] = genderTeachers;
    _data['identityTypeTeachers'] = identityTypeTeachers;
    _data['relationTeachers'] = relationTeachers;
    _data['operatorRequestQualifications'] = operatorRequestQualifications;
    return _data;
  }
}

class GpAs {
  GpAs({
    required this.id,
    required this.titleAr,
    required this.titleEn,
    this.code,
    required this.lookupCategoryId,
    required this.lookupCategory,
    this.permissionLevelId,
    this.permissionLevel,
    this.viewLevelId,
    this.viewLevel,
    this.favoriteSubjectsLookupValues,
    this.unwantedSubjectLookupValues,
    this.genderOperatorRequests,
    this.identityTypeOperatorRequests,
    this.relationOperatorRequests,
    this.genderTeachers,
    this.identityTypeTeachers,
    this.relationTeachers,
    this.operatorRequestQualifications,
  });
  late final int id;
  late final String titleAr;
  late final String titleEn;
  late final Null code;
  late final int lookupCategoryId;
  late final LookupCategory lookupCategory;
  late final Null permissionLevelId;
  late final Null permissionLevel;
  late final Null viewLevelId;
  late final Null viewLevel;
  late final Null favoriteSubjectsLookupValues;
  late final Null unwantedSubjectLookupValues;
  late final Null genderOperatorRequests;
  late final Null identityTypeOperatorRequests;
  late final Null relationOperatorRequests;
  late final Null genderTeachers;
  late final Null identityTypeTeachers;
  late final Null relationTeachers;
  late final Null operatorRequestQualifications;

  GpAs.fromJson(Map<String, dynamic> json){
    id = json['id'];
    titleAr = json['titleAr'];
    titleEn = json['titleEn'];
    code = null;
    lookupCategoryId = json['lookupCategoryId'];
    lookupCategory = LookupCategory.fromJson(json['lookupCategory']);
    permissionLevelId = null;
    permissionLevel = null;
    viewLevelId = null;
    viewLevel = null;
    favoriteSubjectsLookupValues = null;
    unwantedSubjectLookupValues = null;
    genderOperatorRequests = null;
    identityTypeOperatorRequests = null;
    relationOperatorRequests = null;
    genderTeachers = null;
    identityTypeTeachers = null;
    relationTeachers = null;
    operatorRequestQualifications = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['titleAr'] = titleAr;
    _data['titleEn'] = titleEn;
    _data['code'] = code;
    _data['lookupCategoryId'] = lookupCategoryId;
    _data['lookupCategory'] = lookupCategory.toJson();
    _data['permissionLevelId'] = permissionLevelId;
    _data['permissionLevel'] = permissionLevel;
    _data['viewLevelId'] = viewLevelId;
    _data['viewLevel'] = viewLevel;
    _data['favoriteSubjectsLookupValues'] = favoriteSubjectsLookupValues;
    _data['unwantedSubjectLookupValues'] = unwantedSubjectLookupValues;
    _data['genderOperatorRequests'] = genderOperatorRequests;
    _data['identityTypeOperatorRequests'] = identityTypeOperatorRequests;
    _data['relationOperatorRequests'] = relationOperatorRequests;
    _data['genderTeachers'] = genderTeachers;
    _data['identityTypeTeachers'] = identityTypeTeachers;
    _data['relationTeachers'] = relationTeachers;
    _data['operatorRequestQualifications'] = operatorRequestQualifications;
    return _data;
  }
}

class Specializations {
  Specializations({
    required this.id,
    required this.titleAr,
    required this.titleEn,
    this.code,
    required this.lookupCategoryId,
    required this.lookupCategory,
    this.permissionLevelId,
    this.permissionLevel,
    this.viewLevelId,
    this.viewLevel,
    this.favoriteSubjectsLookupValues,
    this.unwantedSubjectLookupValues,
    this.genderOperatorRequests,
    this.identityTypeOperatorRequests,
    this.relationOperatorRequests,
    this.genderTeachers,
    this.identityTypeTeachers,
    this.relationTeachers,
    this.operatorRequestQualifications,
  });
  late final int id;
  late final String titleAr;
  late final String titleEn;
  late final Null code;
  late final int lookupCategoryId;
  late final LookupCategory lookupCategory;
  late final Null permissionLevelId;
  late final Null permissionLevel;
  late final Null viewLevelId;
  late final Null viewLevel;
  late final Null favoriteSubjectsLookupValues;
  late final Null unwantedSubjectLookupValues;
  late final Null genderOperatorRequests;
  late final Null identityTypeOperatorRequests;
  late final Null relationOperatorRequests;
  late final Null genderTeachers;
  late final Null identityTypeTeachers;
  late final Null relationTeachers;
  late final Null operatorRequestQualifications;

  Specializations.fromJson(Map<String, dynamic> json){
    id = json['id'];
    titleAr = json['titleAr'];
    titleEn = json['titleEn'];
    code = null;
    lookupCategoryId = json['lookupCategoryId'];
    lookupCategory = LookupCategory.fromJson(json['lookupCategory']);
    permissionLevelId = null;
    permissionLevel = null;
    viewLevelId = null;
    viewLevel = null;
    favoriteSubjectsLookupValues = null;
    unwantedSubjectLookupValues = null;
    genderOperatorRequests = null;
    identityTypeOperatorRequests = null;
    relationOperatorRequests = null;
    genderTeachers = null;
    identityTypeTeachers = null;
    relationTeachers = null;
    operatorRequestQualifications = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['titleAr'] = titleAr;
    _data['titleEn'] = titleEn;
    _data['code'] = code;
    _data['lookupCategoryId'] = lookupCategoryId;
    _data['lookupCategory'] = lookupCategory.toJson();
    _data['permissionLevelId'] = permissionLevelId;
    _data['permissionLevel'] = permissionLevel;
    _data['viewLevelId'] = viewLevelId;
    _data['viewLevel'] = viewLevel;
    _data['favoriteSubjectsLookupValues'] = favoriteSubjectsLookupValues;
    _data['unwantedSubjectLookupValues'] = unwantedSubjectLookupValues;
    _data['genderOperatorRequests'] = genderOperatorRequests;
    _data['identityTypeOperatorRequests'] = identityTypeOperatorRequests;
    _data['relationOperatorRequests'] = relationOperatorRequests;
    _data['genderTeachers'] = genderTeachers;
    _data['identityTypeTeachers'] = identityTypeTeachers;
    _data['relationTeachers'] = relationTeachers;
    _data['operatorRequestQualifications'] = operatorRequestQualifications;
    return _data;
  }
}

class CoursePlaces {
  CoursePlaces({
    required this.id,
    required this.titleAr,
    required this.titleEn,
    this.code,
    required this.lookupCategoryId,
    required this.lookupCategory,
    this.permissionLevelId,
    this.permissionLevel,
    this.viewLevelId,
    this.viewLevel,
    this.favoriteSubjectsLookupValues,
    this.unwantedSubjectLookupValues,
    this.genderOperatorRequests,
    this.identityTypeOperatorRequests,
    this.relationOperatorRequests,
    this.genderTeachers,
    this.identityTypeTeachers,
    this.relationTeachers,
    this.operatorRequestQualifications,
  });
  late final int id;
  late final String titleAr;
  late final String titleEn;
  late final Null code;
  late final int lookupCategoryId;
  late final LookupCategory lookupCategory;
  late final Null permissionLevelId;
  late final Null permissionLevel;
  late final Null viewLevelId;
  late final Null viewLevel;
  late final Null favoriteSubjectsLookupValues;
  late final Null unwantedSubjectLookupValues;
  late final Null genderOperatorRequests;
  late final Null identityTypeOperatorRequests;
  late final Null relationOperatorRequests;
  late final Null genderTeachers;
  late final Null identityTypeTeachers;
  late final Null relationTeachers;
  late final Null operatorRequestQualifications;

  CoursePlaces.fromJson(Map<String, dynamic> json){
    id = json['id'];
    titleAr = json['titleAr'];
    titleEn = json['titleEn'];
    code = null;
    lookupCategoryId = json['lookupCategoryId'];
    lookupCategory = LookupCategory.fromJson(json['lookupCategory']);
    permissionLevelId = null;
    permissionLevel = null;
    viewLevelId = null;
    viewLevel = null;
    favoriteSubjectsLookupValues = null;
    unwantedSubjectLookupValues = null;
    genderOperatorRequests = null;
    identityTypeOperatorRequests = null;
    relationOperatorRequests = null;
    genderTeachers = null;
    identityTypeTeachers = null;
    relationTeachers = null;
    operatorRequestQualifications = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['titleAr'] = titleAr;
    _data['titleEn'] = titleEn;
    _data['code'] = code;
    _data['lookupCategoryId'] = lookupCategoryId;
    _data['lookupCategory'] = lookupCategory.toJson();
    _data['permissionLevelId'] = permissionLevelId;
    _data['permissionLevel'] = permissionLevel;
    _data['viewLevelId'] = viewLevelId;
    _data['viewLevel'] = viewLevel;
    _data['favoriteSubjectsLookupValues'] = favoriteSubjectsLookupValues;
    _data['unwantedSubjectLookupValues'] = unwantedSubjectLookupValues;
    _data['genderOperatorRequests'] = genderOperatorRequests;
    _data['identityTypeOperatorRequests'] = identityTypeOperatorRequests;
    _data['relationOperatorRequests'] = relationOperatorRequests;
    _data['genderTeachers'] = genderTeachers;
    _data['identityTypeTeachers'] = identityTypeTeachers;
    _data['relationTeachers'] = relationTeachers;
    _data['operatorRequestQualifications'] = operatorRequestQualifications;
    return _data;
  }
}

class CourseRequesters {
  CourseRequesters({
    required this.id,
    required this.titleAr,
    required this.titleEn,
    this.code,
    required this.lookupCategoryId,
    required this.lookupCategory,
    this.permissionLevelId,
    this.permissionLevel,
    this.viewLevelId,
    this.viewLevel,
    this.favoriteSubjectsLookupValues,
    this.unwantedSubjectLookupValues,
    this.genderOperatorRequests,
    this.identityTypeOperatorRequests,
    this.relationOperatorRequests,
    this.genderTeachers,
    this.identityTypeTeachers,
    this.relationTeachers,
    this.operatorRequestQualifications,
  });
  late final int id;
  late final String titleAr;
  late final String titleEn;
  late final Null code;
  late final int lookupCategoryId;
  late final LookupCategory lookupCategory;
  late final Null permissionLevelId;
  late final Null permissionLevel;
  late final Null viewLevelId;
  late final Null viewLevel;
  late final Null favoriteSubjectsLookupValues;
  late final Null unwantedSubjectLookupValues;
  late final Null genderOperatorRequests;
  late final Null identityTypeOperatorRequests;
  late final Null relationOperatorRequests;
  late final Null genderTeachers;
  late final Null identityTypeTeachers;
  late final Null relationTeachers;
  late final Null operatorRequestQualifications;

  CourseRequesters.fromJson(Map<String, dynamic> json){
    id = json['id'];
    titleAr = json['titleAr'];
    titleEn = json['titleEn'];
    code = null;
    lookupCategoryId = json['lookupCategoryId'];
    lookupCategory = LookupCategory.fromJson(json['lookupCategory']);
    permissionLevelId = null;
    permissionLevel = null;
    viewLevelId = null;
    viewLevel = null;
    favoriteSubjectsLookupValues = null;
    unwantedSubjectLookupValues = null;
    genderOperatorRequests = null;
    identityTypeOperatorRequests = null;
    relationOperatorRequests = null;
    genderTeachers = null;
    identityTypeTeachers = null;
    relationTeachers = null;
    operatorRequestQualifications = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['titleAr'] = titleAr;
    _data['titleEn'] = titleEn;
    _data['code'] = code;
    _data['lookupCategoryId'] = lookupCategoryId;
    _data['lookupCategory'] = lookupCategory.toJson();
    _data['permissionLevelId'] = permissionLevelId;
    _data['permissionLevel'] = permissionLevel;
    _data['viewLevelId'] = viewLevelId;
    _data['viewLevel'] = viewLevel;
    _data['favoriteSubjectsLookupValues'] = favoriteSubjectsLookupValues;
    _data['unwantedSubjectLookupValues'] = unwantedSubjectLookupValues;
    _data['genderOperatorRequests'] = genderOperatorRequests;
    _data['identityTypeOperatorRequests'] = identityTypeOperatorRequests;
    _data['relationOperatorRequests'] = relationOperatorRequests;
    _data['genderTeachers'] = genderTeachers;
    _data['identityTypeTeachers'] = identityTypeTeachers;
    _data['relationTeachers'] = relationTeachers;
    _data['operatorRequestQualifications'] = operatorRequestQualifications;
    return _data;
  }
}

class Countries {
  Countries({
    required this.code,
    required this.nameEn,
    required this.nameAr,
    required this.nationalityEn,
    required this.nationalityAr,
    required this.cities,
    this.operatorRequests,
    this.teachers,
  });
  late final String code;
  late final String nameEn;
  late final String nameAr;
  late final String nationalityEn;
  late final String nationalityAr;
  late final List<Cities> cities;
  late final Null operatorRequests;
  late final Null teachers;

  Countries.fromJson(Map<String, dynamic> json){
    code = json['code'];
    nameEn = json['nameEn'];
    nameAr = json['nameAr'];
    nationalityEn = json['nationalityEn'];
    nationalityAr = json['nationalityAr'];
    cities = List.from(json['cities']).map((e)=>Cities.fromJson(e)).toList();
    operatorRequests = null;
    teachers = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['code'] = code;
    _data['nameEn'] = nameEn;
    _data['nameAr'] = nameAr;
    _data['nationalityEn'] = nationalityEn;
    _data['nationalityAr'] = nationalityAr;
    _data['cities'] = cities.map((e)=>e.toJson()).toList();
    _data['operatorRequests'] = operatorRequests;
    _data['teachers'] = teachers;
    return _data;
  }
}

class Cities {
  Cities({
    required this.id,
    required this.nameEn,
    required this.nameAr,
    required this.countryCode,
    this.operatorRequests,
    this.teachers,
  });
  late final int id;
  late final String nameEn;
  late final String nameAr;
  late final String countryCode;
  late final Null operatorRequests;
  late final Null teachers;

  Cities.fromJson(Map<String, dynamic> json){
    id = json['id'];
    nameEn = json['nameEn'];
    nameAr = json['nameAr'];
    countryCode = json['countryCode'];
    operatorRequests = null;
    teachers = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['nameEn'] = nameEn;
    _data['nameAr'] = nameAr;
    _data['countryCode'] = countryCode;
    _data['operatorRequests'] = operatorRequests;
    _data['teachers'] = teachers;
    return _data;
  }
}

class StudyTracks {
  StudyTracks({
    required this.id,
    required this.titleAr,
    required this.titleEn,
    required this.status,
    required this.studyTrackRanges,
  });
  late final int id;
  late final String titleAr;
  late final String titleEn;
  late final int status;
  late final List<StudyTrackRanges> studyTrackRanges;

  StudyTracks.fromJson(Map<String, dynamic> json){
    id = json['id'];
    titleAr = json['titleAr'];
    titleEn = json['titleEn'];
    status = json['status'];
    studyTrackRanges = List.from(json['studyTrackRanges']).map((e)=>StudyTrackRanges.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['titleAr'] = titleAr;
    _data['titleEn'] = titleEn;
    _data['status'] = status;
    _data['studyTrackRanges'] = studyTrackRanges.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class StudyTrackRanges {
  StudyTrackRanges({
    required this.id,
    required this.titleAr,
    required this.titleEn,
    this.fromDate,
    this.toDate,
    required this.studyTrackId,
    required this.index,
    this.subjects,
    this.classRooms,
    this.classRoomSetups,
  });
  late final int id;
  late final String titleAr;
  late final String titleEn;
  late final Null fromDate;
  late final Null toDate;
  late final int studyTrackId;
  late final int index;
  late final Null subjects;
  late final Null classRooms;
  late final Null classRoomSetups;

  StudyTrackRanges.fromJson(Map<String, dynamic> json){
    id = json['id'];
    titleAr = json['titleAr'];
    titleEn = json['titleEn'];
    fromDate = null;
    toDate = null;
    studyTrackId = json['studyTrackId'];
    index = json['index'];
    subjects = null;
    classRooms = null;
    classRoomSetups = null;
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['titleAr'] = titleAr;
    _data['titleEn'] = titleEn;
    _data['fromDate'] = fromDate;
    _data['toDate'] = toDate;
    _data['studyTrackId'] = studyTrackId;
    _data['index'] = index;
    _data['subjects'] = subjects;
    _data['classRooms'] = classRooms;
    _data['classRoomSetups'] = classRoomSetups;
    return _data;
  }
}