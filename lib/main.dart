import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/login/presentation/pages/choose_category.dart';
import 'package:maserty/features/login/presentation/pages/login.dart';
import 'package:maserty/features/login/presentation/pages/sign_up.dart';
import 'package:maserty/features/login/presentation/pages/students.dart';
import 'package:maserty/features/login/presentation/pages/students_grid.dart';
import 'package:maserty/features/splash_screen.dart';
import 'package:maserty/features/teachers/presentation/pages/teacher_mission.dart';
import 'package:maserty/rest/dio_helper.dart';
import 'package:maserty/utils/app_localizations.dart';
import 'package:maserty/utils/bolc_observer.dart';
import 'package:maserty/utils/cash_helper.dart';
import 'package:maserty/utils/constants.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  await CacheHelper.init();

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      Phoenix(
        child: EasyLocalization(
            path: 'assets/translations',
            supportedLocales: [
              Locale('en'),
              Locale('ar'),
            ],
            fallbackLocale: Locale('ar'),
            startLocale: Locale('ar'),
            // assetLoader: CodegenLoader(),
            child: DevicePreview(
              enabled: false,
              //enabled: true,
              builder: (context) => MyApp(), // Wrap your app
            )),
      ),
    );
  });
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  // This widget is the root of your application.
  String? lang;

  @override
  void initState() {
    super.initState();
  }

  void setData() async {
    lang = CacheHelper.getData(key: Constants.lang.toString());
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // original
        designSize: Size(412, 870),
        builder: (context,widget) => MaterialApp(
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            // GlobalMaterialLocalizations.delegate,
            // GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: context.supportedLocales,

          //localizationsDelegates: context.localizationDelegates,
          locale: context.locale,
          // locale: Locale('ar'),
          debugShowCheckedModeBanner: false,
          // theme: lightTheme,
          // darkTheme: darkTheme,
          themeMode: ThemeMode.light,

          builder: (context, child) {
            final mediaQueryData = MediaQuery.of(context);
            return MediaQuery(
              data: mediaQueryData.copyWith(textScaleFactor: 1.0),
              child: child!,
            );
          },

          home: StudentsGrid(),
        ));
  }
}