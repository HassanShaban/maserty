import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:maserty/features/diff_quran_tabaa.dart';
import 'package:maserty/features/land.dart';
import 'package:maserty/features/quraan/selected_ayah_data.dart';


import '../../../../../../utils/cash_helper.dart';
import '../../../../../../utils/constants.dart';
import '../../utils/app_localizations.dart';
import 'data_helper.dart';
import 'navigate_to_quran_screen.dart';
import 'new_diff_quran_ayah_draw.dart';


bool isAudioVisible = false;

class NewDiffQuranAyah extends StatefulWidget {
  String jsonName;
  String imageName;
  int pageNumber;
  LandscapeMode landscapeMode;
  NavigateToQuranScreen navigateToQuranScreen;
  //final SwitchQuranPage switchQuranPage;

  NewDiffQuranAyah(
      {Key? key,
      required this.imageName,
      required this.jsonName,
      required this.pageNumber,
        required this.landscapeMode,
      required this.navigateToQuranScreen,

      //required this.switchQuranPage,
      })
      : super(key: key);

  @override
  State<NewDiffQuranAyah> createState() => _NewDiffQuranAyahState();
}

class _NewDiffQuranAyahState extends State<NewDiffQuranAyah>
    with WidgetsBindingObserver, SingleTickerProviderStateMixin
     {
  late double xCoordinate;
  late AnimationController animate_controller;
  late Animation<double> animate_fadeAnimation;
  late int pageNumber;
  late double yCoordinate;
  DataHelper dataHelper = new DataHelper();
  GlobalKey key = GlobalKey(); // declare a global key
  String localPath = "";
  late bool isTablet;
  List<String> ayatText = [];
  String aya = '';
  String selctedAya = '';
  String surah_name = "";
  int aya_index = 0;
  int lastIndex = 0;
  int surahNumber = 3;
  int surahNum = 0;
  int index = 0;
  List tafseerAya = [];
  List jsonType = [];
  List jsonReasons = [];
  List jsonBenfits = [];
  List jsonTranslate = [];
  bool menuVisible = false;
  List jsonEarab = [];
  List jsonBlaghah = [];
  List jsonMeaning = [];
  List detailsSurahData = [];
  late int ayat_length = 0;
  late final surahFahres;
  late var content = '', returncontent = "";
  List quranData = [];
  late var reasonsContent = "";
  late var meaningContent = "";
  late var blaghahcontent = "";
  late var translateContent = "";
  late var sarfcontent = "";
  late var benifitsContent = "";
  late var eraabContent = "";
  late int lenght;
  late String Url;
  late String newData = "";
  String state1 = "";
  late String surahText = "";
  late String newtext = "";
  List<String> newContent = [];
  List<String> datalist = [];
  List<String> newDataList = [];
  List<List<String>> textList = []; //firstlist
  int newAyah = 0;
  double currentPage = 0;
  int juze = 1;
  List ourSurahData = [];
  int hezb = 0;
  bool isnewayah = false;
  var ayaSelectedIndex;
  String newdata = "";
  String imageName = "";
  String newSelected = "";
  List<int> ayatNumberList = [];
  List<int> sortAyatNumberList = [];
  Color bgColor = Colors.white;
  String shareAyaText = '';
  String pathName = "";
  String quranPath = "";
  late bool isKingFahdSelected, isShmarlySelected, isMadinaSelected;

  // getSurahdetailsJson() {
  //   return rootBundle.loadString('assets/quran_json/quran_data_json.json');
  // }

  int numOfLIneFromTop = 0;

  readImageJson() async {
    for (int i = 0; i < quranData.length; i++) {
      ayatNumberList.add(quranData[i]['ayahNumber']);
    }
  }



  @override
  void dispose() {
    super.dispose();
  }


  @override
  void initState() {
    isKingFahdSelected = true;
  /*  isKingFahdSelected =
        CacheHelper.getData(key: Constants.isKingFahdSelected.toString()) ??
            false;*/

    imageName = widget.imageName;
    pageNumber = widget.pageNumber;

    getGlyphsJson();



    final data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);
    isTablet = data.size.shortestSide < 600 ? false : true;
    isTablet = data.size.shortestSide < 600 ? false : true;
    if (isKingFahdSelected)
      diffQuranTabaa = dataHelper.setTabaaProperities('king_fahd', isTablet);

    /*if (isKingFahdSelected)
      diffQuranTabaa = dataHelper.setTabaaProperities('king_fahd', isTablet);
    else
      diffQuranTabaa = dataHelper.setTabaaProperities('warsh', isTablet);
*/
    //  Fluttertoast.showToast(msg: pathName.toString());
    imageName = widget.imageName;
    pageNumber = widget.pageNumber;

    Color savedColor =
         Colors.white;
    bgColor = savedColor;
    //print("savedColor" + bgColor.toString());
    // print(widget.onColorChanged.toString());

    ayat_length = quranData.length;

      CacheHelper.saveData(
          key: 'newColor',
          value: '0xff333739');


    super.initState();
  }

  late List glyphs;
  bool isVisible = false;
  late DiffQuranTabaa diffQuranTabaa;
  late double containerHeight, containerWidth;
  bool isDarkColor = false;
  late bool isPortrait;
  bool isShamarlySelected = false;
  bool isWarshMadinaSelected = false;
  late String lang;
  bool isSelectVisable = false;
  String surahnewNum = "1";

  void getAllJson() async {
    //readImageJson();
    // for (int i = 0; i < detailsSurahData.length; i++) {
    //   if (quranData[0]['sura_number'] == detailsSurahData[i]['number']) {
    //     surah_name = detailsSurahData[i]['name'];
    //     // surahNumber = detailsSurahData[i]['number'];
    //     surahText = detailsSurahData[i]['text'];
    //
    //     for (int z = 0; z < detailsSurahData[i]['ayahs'].length; z++) {
    //       if (quranData[0]['ayah_number'] ==
    //           detailsSurahData[i]['ayahs'][z]['numberInSurah']) {
    //         juze = detailsSurahData[i]['ayahs'][z]['juz'];
    //         break;
    //       }
    //     }
    //     hezb = detailsSurahData[i]['ayahs'][0]['hizbQuarter'];
    //
    //     print(
    //         "surahname" + surah_name.toString() + "  juz  " + juze.toString());
    //     break;
    //   }
    // }
    setState(() {});
  }

  void getSurahName() {
    if (quranData.isNotEmpty || quranData.length != 0) {
      // surahNumber = quranData[aya_index]['surahNumber'];
      surahNum = quranData[quranData.length - 1]['sura_number'];

      if (surahNum < 10) {
        // uploaded
        surahnewNum = '00'
            '$surahNum';
        // CacheHelper.saveData(key: 'sura', value: surahnewNum.toString());
        // imageName = 'page' '00' '$i';
      } else if (surahNum < 100) {
        surahnewNum = '0' '$surahNum';
        // imageName = 'page' '0' '$i';
        //CacheHelper.saveData(key: 'sura', value: surahnewNum.toString());
      } else {
        //uploaded
        surahnewNum = '$surahNum';
        //CacheHelper.saveData(key: 'sura', value: surahnewNum.toString());
      }
    }
    print("suraa" + surahNum.toString());
  }

  bool isDarkMode = false;


  num nextAyahTime = 0;
  num thirdAyahTime = 0;
  num quarterAyahTime = 0;
  num startTime = 0;
  int ayahNumber = 1;
  int ayahRepeatCount = 1;
  int counter = 1;

  // List<QuranListenTimingModel> currentSuraTimingList = [];

  @override
  Widget build(BuildContext context) {
    //  Fluttertoast.showToast(msg: 'kingfahd');
    String colorString = bgColor.toString();

    isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;
    checkIfIsInPortrait();
    lang = 'ar';
    final savedColor =
        Colors.white;

      quranPath = localPath + "/" + "page";



    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Container(
          padding: MediaQuery.of(context).size.shortestSide < 600
              ? null
              : EdgeInsetsDirectional.only(start: 40, end: 40),
          color: bgColor,
          //   key: key,
          child: Stack(
              children: [
          // containerHeight = constraints.maxHeight;
          // containerWidth = constraints.maxWidth;

           Container(
          color: bgColor,
          child: Column(
            children: [
              Visibility(
                visible: isPortrait,
                child: Row(
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  crossAxisAlignment:
                  CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 65.h,
                      width: MediaQuery.of(context)
                          .size
                          .shortestSide <
                          600
                          ? 200.w
                          : 183.w,
                      margin: EdgeInsetsDirectional.only(
                        top: 10,
                      ),
                      /*   decoration: BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      15),
                                                              border: Border.all(
                                                                  color: progressbg)),*/
                      child: Center(
                        child: Text(
                            AppLocalizations.of(context)!
                                .translate('juze') +
                                " "
                                    "${juze}" +
                                " ",
                            style: TextStyle(
                                fontSize: MediaQuery.of(
                                    context)
                                    .size
                                    .shortestSide <
                                    600
                                    ? 22.sp
                                    : 15,
                                fontFamily: 'Dexef',
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            )
                          // isDarkMode == true ? Colors.white : Color(0xffB84C4C))
                        ),
                      ),
                    ),


                  ],
                ),
              ),
              // SizedBox(
              //   height: 60.h,
              // ),
              Expanded(
                  flex: 16,
                  child: LayoutBuilder(
                      builder: (context, constraints) {
                        containerHeight = constraints.maxHeight;
                        containerWidth = constraints.maxWidth;
                        return  GestureDetector(
                          child: Container(
                            key: key,
                            width: MediaQuery.of(context)
                                .size
                                .width,
                            // padding: EdgeInsetsDirectional
                            //     .only(
                            //         start: 15.w,
                            //         end: 15.w),
                            color: bgColor,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: isKingFahdSelected
                                  ? Image.asset(
                                'assets/king_fahd_images/page' +
                                    widget
                                        .imageName +
                                    ".webp",
                                fit: BoxFit.fill,
                                color:
                                isShamarlySelected
                                    ? null
                                    : isDarkColor ==
                                    true
                                    ? Colors
                                    .white
                                    : null,
                              )
                                  : (localPath.isNotEmpty
                                  ? Image.file(
                                (File(
                                    '${quranPath + widget.imageName + ".png"}')),
                                fit:
                                BoxFit.fill,
                                color: isShamarlySelected
                                    ? null
                                    : isDarkColor == true
                                    ? Colors.white
                                    : null,
                              )
                                  : Container()),
                            )));




                      })),
              Visibility(
                visible: isVisible,
                child: Padding(
                  padding: EdgeInsets.only(top: 1.0),
                  child: CustomPaint(
                    painter: (NewDiffDrawAyaLine(
                        context,
                        boundingBox,
                        xPercent,
                        diffQuranTabaa.lineRatio,
                        diffQuranTabaa.lastAyaXSpace)),
                  ),
                ),
              ),

              // SvgPicture.asset('assets/icons/mosque.svg' , height: 40.h , width: 40.h,),




            ],
          ),
        )
]
      ),
    )));


  }

  late double displayScreenHeight;
  late double displayScreenWidth;


  List boundingBox = [];
  late double lineRatio = 0;
  late double xPercent = 0;
  late int ayaNmuber;
  SelectedAyahData selectedAyahData =
  SelectedAyahData(surahNumber: 0, ayahNumber: 0);
  onTapDown(BuildContext context, TapDownDetails details) {
    if (isPortrait) calculateSelectedPoints(details);
  }

  double startX = 0;
  double startY = 0;
  double endX = 0;
  double endY = 0;

  void getGlyphsJson() async {
    glyphs = json.decode(await getImageJson());
    quranData = glyphs;
    getAllJson();
    // getSurahName();
//    dataHelper.populateEntries(glyphs);
  }

  Future<String> readJsonName() {
    String jsonNumber;
    if (pageNumber < 10) {
      // uploaded
      // imageName = 'page' '00' '$i';
      jsonNumber = '00' '$pageNumber';
    } else if (pageNumber < 100) {
      // imageName = 'page' '0' '$i';

      jsonNumber = '0' '$pageNumber';
    } else {
      //uploaded
      // imageName = 'page' '$i';

      jsonNumber = '$pageNumber';
    }
    return  rootBundle.loadString('assets/kingfahd/$jsonNumber.json')
   ;
  }


  Future<String> getImageJson() {
    //  return rootBundle.loadString('assets/warsh/${widget.jsonName}.json');
    debugPrint(' Selected');
    //Fluttertoast.showToast(msg: widget.jsonName.toString());
    return  rootBundle.loadString('assets/kingfahd/003.json');
  }


  void saveAyaNumber() {
    CacheHelper.saveData(
        key: "aya_numner", value: ayaNmuber);
    CacheHelper.saveData(
        key: "surah_number", value: surahNumber);
    print("ayaaaaa" + ayaNmuber.toString() + " " + surahNumber.toString());
  }

  dynamicAyaHighlight() {
    xCoordinate = 356;
    yCoordinate = 100;
    displayScreenHeight = containerHeight;
    displayScreenWidth = MediaQuery.of(context).size.width;
    lineRatio = diffQuranTabaa.imageHeight / displayScreenHeight;
    //yCoordinate = yCoordinate * lineRatio;
    xPercent = diffQuranTabaa.imageWidth / displayScreenWidth;
    // xCoordinate = xCoordinate * xPercent;
    dataHelper.lineRatio = lineRatio;
    diffQuranTabaa.lineRatio = lineRatio;
    dataHelper.isAdding = diffQuranTabaa.isLineHeightAdding;
    dataHelper.startXSpace = diffQuranTabaa.startXSpace;
    dataHelper.populateEntries(glyphs, diffQuranTabaa.valueAddedToLineRatio);
    debugPrint('Y Percent is ' + lineRatio.toString());
    debugPrint('X Percent is ' + xPercent.toString());
    selectedAyahData = SelectedAyahData(ayahNumber: 10, surahNumber: 2);
   // selectedAyahData.ayahNumber = nextAyaDrawNumber-1;
   // selectedAyahData.surahNumber = currentSuraDrawNumber;
    if (selectedAyahData != null) {
      ayaNmuber = selectedAyahData.ayahNumber;
      surahNumber = selectedAyahData.surahNumber;
      //    surahNum = surahNumber;
      saveAyaNumber();
      List<double> x = dataHelper.getLeftRightExtremesForAyah(
          selectedAyahData.ayahNumber, selectedAyahData.surahNumber);
      List<double> y = dataHelper.getLeftRightExtremesForAyah(
          selectedAyahData.ayahNumber + 1, selectedAyahData.surahNumber);
      var bbfrom = dataHelper.getBoundingBoxForAyah(
          selectedAyahData.ayahNumber, selectedAyahData.surahNumber);
      var bbto = dataHelper.getBoundingBoxForAyah(
          selectedAyahData.ayahNumber + 1, selectedAyahData.surahNumber);
      int start = 0;
      var duration = 500;
      int timeStamp = DateTime.now().microsecondsSinceEpoch;
      if (start == 0) {
        start = timeStamp;
      }
      var frac = (timeStamp - start) / duration;
      boundingBox = dataHelper.getIntermediateBoundingBox(
          bbfrom, bbto, 0, this.xCoordinate, this.yCoordinate);
      WidgetsBinding.instance.addPostFrameCallback((_) {
        // Add Your Code here.
        setState(() {
          isVisible = true;
        });
      });

      // drawBoundingBox(bb);
    }
  }



  void calculateSelectedPoints(TapDownDetails details) {
    xCoordinate = details.globalPosition.dx;
    yCoordinate = details.globalPosition.dy;

    debugPrint('yCoordinate ' + yCoordinate.toString());
    debugPrint('xCoordinate ' + xCoordinate.toString());
    RenderBox box = key.currentContext?.findRenderObject() as RenderBox;
    Offset position = box.localToGlobal(Offset.zero); //this is global position
    double yContainer = position.dy; //this is y - I think it's what you want
    debugPrint('yContainer is ' + yContainer.toString());
    // working
    yCoordinate = yCoordinate - yContainer;
    // displayScreenHeight = MediaQuery.of(context).size.height;
    displayScreenHeight = containerHeight;
    displayScreenWidth = MediaQuery.of(context).size.width;
    lineRatio = diffQuranTabaa.imageHeight / displayScreenHeight;
    yCoordinate = yCoordinate * lineRatio;
    xPercent = diffQuranTabaa.imageWidth / displayScreenWidth;
    xCoordinate = xCoordinate * xPercent;
    dataHelper.lineRatio = lineRatio;
    diffQuranTabaa.lineRatio = lineRatio;
    dataHelper.isAdding = diffQuranTabaa.isLineHeightAdding;
    dataHelper.startXSpace = diffQuranTabaa.startXSpace;
    dataHelper.populateEntries(glyphs, diffQuranTabaa.valueAddedToLineRatio);
    debugPrint('Y Percent is ' + lineRatio.toString());
    debugPrint('X Percent is ' + xPercent.toString());
    selectedAyahData = dataHelper.getAyahFromClick(xCoordinate, yCoordinate,
        diffQuranTabaa.imageHeight, displayScreenHeight);

    // Fluttertoast.showToast(msg: selectedAyahData.surahNumber.toString());
    if (selectedAyahData != null)
      debugPrint('Aya Number ' + selectedAyahData.ayahNumber.toString());

    if (selectedAyahData != null) {
      ayaNmuber = selectedAyahData.ayahNumber;
      surahNumber = selectedAyahData.surahNumber;
      //    surahNum = surahNumber;
      saveAyaNumber();
      List<double> x = dataHelper.getLeftRightExtremesForAyah(
          selectedAyahData.ayahNumber, selectedAyahData.surahNumber);
      List<double> y = dataHelper.getLeftRightExtremesForAyah(
          selectedAyahData.ayahNumber + 1, selectedAyahData.surahNumber);
      var bbfrom = dataHelper.getBoundingBoxForAyah(
          selectedAyahData.ayahNumber, selectedAyahData.surahNumber);
      var bbto = dataHelper.getBoundingBoxForAyah(
          selectedAyahData.ayahNumber + 1, selectedAyahData.surahNumber);
      int start = 0;
      var duration = 500;
      int timeStamp = DateTime.now().microsecondsSinceEpoch;
      if (start == 0) {
        start = timeStamp;
      }
      var frac = (timeStamp - start) / duration;
      boundingBox = dataHelper.getIntermediateBoundingBox(
          bbfrom, bbto, 0, this.xCoordinate, this.yCoordinate);

      setState(() {
        isVisible = true;
      });
      // drawBoundingBox(bb);
    }
  }

  bool isLandcape = false;

  void checkIfIsInPortrait() {
    if (isPortrait) {
      if (isLandcape) {
        widget.landscapeMode.jumpToQuranScreen();
        isLandcape = false;
      }
    } else {
      isLandcape = true;

    }
  }
}


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [


        SizedBox(
          width: 5.w,
        ),

]);

}
