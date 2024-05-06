import 'package:get_it/get_it.dart';
import 'package:maserty/features/sign_up/data/data_source/registration_data_source.dart';
import 'package:maserty/features/sign_up/data/repo_impl/register_repo_impl.dart';
import 'package:maserty/features/sign_up/domain/repo/registration_repo.dart';
import 'package:maserty/features/sign_up/domain/use_case/get_register_data_use_case.dart';
import 'package:maserty/features/sign_up/presentation/cubit/sign_up_cubit.dart';

final locator = GetIt.instance;

void setup() {
  // cubit
  locator.registerFactory(() => SignUpCubit(locator()));
  // use case
  locator.registerLazySingleton<GetRegisterDataUseCase>(
      () => GetRegisterDataUseCase(
            locator(),
          ));
  // repository
  locator.registerLazySingleton<RegistrationRepo>(
      () => RegisterRepoImpl(locator()));

  // Data Source
  locator.registerLazySingleton<RegisterDataSource>(() => RegisterDataSource());

//   //! pray time schedule
//   locator.registerLazySingleton<PrayerTimeScheduleRepo>(
//       () => PrayerTimeScheduleRepo());
//
//   locator.registerFactory(() => PrayerTimeScheduleCubitBob(locator()));
//
//   // UseCases
//
//   locator.registerLazySingleton(() => PrayerTimeUseCase(locator()));
//
// // Repository
//
//   locator.registerLazySingleton<PrayerTimeRepo>(
//       () => PrayerTimeRepoImpl(locator()));
//
// // Datasources
//
//   locator.registerLazySingleton<PrayerTimeDataSource>(
//       () => PrayerTimeDataSource());

// Feature ------------- Sign Up Feature-----------

  //--- data source ----
}
