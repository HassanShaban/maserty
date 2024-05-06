
import 'package:maserty/features/sign_up/data/model/registration_model.dart';
class RegistrationEntity {
  RegistrationEntity({
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

}
