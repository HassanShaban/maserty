import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/style/colors/colors.dart';
import 'package:maserty/utils/app_localizations.dart';
import 'package:maserty/utils/navigation_widget.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class WalkThrough extends StatefulWidget {
  const WalkThrough({Key? key}) : super(key: key);

  @override
  State<WalkThrough> createState() => _WalkThroughState();
}

class _WalkThroughState extends State<WalkThrough> {
  late int selectedPage;
  late final PageController _pageController;

  @override
  void initState() {
    selectedPage = 0;
    _pageController = PageController(initialPage: selectedPage);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(50.h),
      //   child: SafeArea(
      //     child: AppBar(
      //       backgroundColor: Colors.white,
      //     ),
      //   ),
      // ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Column(
                children: [
                  Expanded(
                    flex: 50,
                    child: PageView(
                      controller: _pageController,
                      onPageChanged: (page) {
                        setState(() {
                          selectedPage = page;
                        });
                      },
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 58.w),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 90.h,
                              ),
                              Image.asset('assets/images/first.png'),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'مرحبا بكم في أكاديمية مسيرتي',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24.sp,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'poppins'),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              Text(
                                'لوريم إيبسوم هو نص عربي غير معنى، يُستخدم في مجالات الطباعة ومواقع الويب كنص دال على الشكل والتخطيط. يمكنك اختيار عدد الفقرات.',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: walkThroughText,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'poppins'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: PageViewDotIndicator(
                        currentItem: selectedPage,
                        count: 3,
                        unselectedColor: Colors.black26,
                        selectedColor: primaryColor,
                        duration: const Duration(milliseconds: 200),
                        boxShape: BoxShape.circle,
                        onItemClicked: (index) {
                          _pageController.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.easeInOut,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 4,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 25.h,
                      ),
                      Divider(
                        height: 3,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      InkWell(
                        onTap: () {
                          // navigateAndFinish(context, TabeebakSideMenu());
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.w),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                    horizontal: 35.w, vertical: 22.h),
                                    decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius:
                                        BorderRadius.circular(10.r)),
                                    child: Center(
                                  child: Text(
                                    'انشاء حساب جديد',
                                    style: TextStyle(
                                        fontFamily: 'poppins',
                                        fontWeight: FontWeight.w300,
                                        fontSize: 18.sp,
                                        color: Colors.white),
                                  ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.w,
                                  ),
                                  InkWell(
                                    onTap: () {
                                  // navigateAndFinish(context, SignUp());
                                    },
                                    child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 35.w, vertical: 22.h),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border:
                                          Border.all(color: Colors.blue),
                                      borderRadius:
                                          BorderRadius.circular(10.r)),
                                  child: Center(
                                    child: Text(
                                      'تسجيل الدخول',
                                      style: TextStyle(
                                          fontSize: 18.sp,
                                          fontFamily: 'poppins',
                                          fontWeight: FontWeight.w300,
                                          color: Colors.black),
                                    ),
                                  ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 29.w,
                              ),
                              Text(
                                'Have an account? Log in',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20.sp,
                                  fontFamily: 'poppins',
                                  fontWeight: FontWeight.w300,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
