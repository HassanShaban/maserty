
import 'dart:convert';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../utils/cash_helper.dart';
import '../../utils/constants.dart';
import 'landscape_mode.dart';
import 'navigate_to_quran_screen.dart';
import 'new_diff_quran_ayah.dart';

bool isSwitchQuran = false;
List<Widget> quranPages = <Widget>[];
late NavigateToQuranScreen navigateToQuranScreen;

class QuranScreen extends StatefulWidget {
  final int initailPage;
  LandscapeMode landscapeMode;

  QuranScreen(
      {Key? key,
       // required this.hideBottomToolBar,
        required this.navigateToQuranScreen,
        this.initailPage = 1,
       // this.changeBgColor,
        required this.landscapeMode
      })
      : super(key: key);
  late NavigateToQuranScreen navigateToQuranScreen;

  @override
  _MainQuranScreenState createState() => _MainQuranScreenState();
}

class _MainQuranScreenState extends State<QuranScreen> {
  late PageController pageController;

  List<Widget> quranPages = <Widget>[];


  late DateTime startTime;
  Color bgColor = Colors.white;
  late final readingPeriod;
  late final hasanatNum;
  int currentReadingPage = 1;
  bool isDarkMode = false;
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  //NavigateToQuranScreen? navigateToQuranScreen;


  late bool isFromSearch;
  bool isReverse = true;
  late PageController controller;


  late String language;

  /*getLanguage() {
    language = CacheHelper.getData(key: Constants.lang.toString()) ?? 'ar';
  }*/

  @override
  void initState() {
    //  hideStatusBar();
    super.initState();
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
    /* WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));*/
    /*  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);*/
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    //SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    navigateToQuranScreen = widget.navigateToQuranScreen;
    addDataToList();
    readFehresJson();

    // currentReadingPage = CacheHelper.getData(key: Constants.currentReadingPage.toString()) ?? 0;
    //currentReadingPage = CacheHelper.getData(key: Constants.currentReadingPage.toString()) ?? 0;

  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
          statusBarColor: Colors.white),
      child: WillPopScope(
          onWillPop: onBackPressed,
          child: Scaffold(
            backgroundColor: Colors.white,
            key: _scaffoldKey,
            body: GestureDetector(
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                //color: Colors.white,
                child: PageView(
                  reverse: language == 'ar' ? false : true,
                  children: quranPages,
                  scrollDirection: Axis.horizontal,
                  // physics: BouncingScrollPhysics(),
                  controller: pageController,
                  onPageChanged: (num) {
                    /*int currentPageChecker = CacheHelper.getData(
                        key: Constants.currentReadingPage.toString()) ?? 0;
                    currentReadingPage = num;
                    CacheHelper.saveData(
                        key: Constants.currentReadingPage.toString(),
                        value: currentReadingPage);*/
                  },
                ),
              ),
            ),
          )),
    );
  }

  // }


  void addDataToList() {
    String jsonName;
    String imageName;
    for (int i = 1;
    i <= (604);
    i++) {
      jsonName = i.toString();
      if (i < 10) {
        // uploaded
        imageName = '00' '$i';
        // imageName = 'page' '00' '$i';
        jsonName = '00' '$i';
      } else if (i < 100) {
        imageName = '0' '$i';
        // imageName = 'page' '0' '$i';

        jsonName = '0' '$i';
      } else {
        //uploaded
        imageName = '$i';
        // imageName = 'page' '$i';

        jsonName = '$i';
      }
      quranPages.add(NewDiffQuranAyah(
        imageName: imageName,
        jsonName: jsonName,
        pageNumber: i,
        navigateToQuranScreen: navigateToQuranScreen,
        landscapeMode: widget.landscapeMode,
      ));
      // uploaded
      //   quranPages.add(NewQuranWithAyahOriginal(imageName, jsonName, this, this,
      //       i, hideBottomToolBar, navigateToQuranScreen, widget.changeBgColor!, widget.onColorChange));
      //   //  quranPages.add(KingFahdScreen(imageName, jsonName, this, this));
      // }
    }
  }

  List quranFehres = [];
  List surat = [];
  late final surahFahres;

  void readFehresJson() async {
    surahFahres = json.decode(await getJson());
    surat = surahFahres['surat'];
    //setState(() {});
  }

  Future<String> getJson() {
    return rootBundle.loadString('assets/quran_json/fehres.json');
  }

  @override
  onSurahPressed(int index) {
    // pageController.jumpToPage(index);
    // Navigator.pop(context);
  }

  late DateTime endTime;

  Future<bool> onBackPressed() async {
    return true;
  }

  Duration duration = const Duration();

  @override
  void dispose() async {
    //  await StatusBarControl.setHidden(false, animation:StatusBarAnimation.SLIDE);

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    //super.dispose();
  }

// <<<<<<< HEAD
//   @override
//   void startTimeCounter() {
//     startTime = DateTime.now();
//     if (isFromSearch == true) {
//       currentReadingPage =
//           CacheHelper.getData(key: Constants.searchReadingPage.toString()) ?? 0;
//     } else {
//       currentReadingPage =
//           CacheHelper.getData(key: Constants.currentReadingPage.toString()) ??
//               0;
//     }
//     pageController.jumpToPage(590);
//     print("page" + currentReadingPage.toString());
//   }

  @override
  void startTimeCounter() {

    /* currentReadingPage =
          CacheHelper.getData(key: Constants.currentReadingPage.toString()) ??
              0;*/
  }

  String currentLang = '';


  @override
  languageChanged() {

  }

  @override
  void openDrawer() {}

  @override
  void changeBackgroundColor() {}

  @override
  jumpTo() {
    currentReadingPage =
        CacheHelper.getData(key: Constants.currentReadingPage.toString()) ??
            0;

    pageController.jumpToPage(currentReadingPage + 1);
  }


}