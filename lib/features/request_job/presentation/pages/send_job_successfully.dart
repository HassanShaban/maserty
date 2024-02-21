import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/request_job/presentation/pages/personal_data.dart';
import 'package:maserty/features/request_job/presentation/widgets/header.dart';
import 'package:maserty/style/colors/colors.dart';
import 'package:maserty/utils/navigation_widget.dart';

class SendJobSuccessfully extends StatelessWidget {
  const SendJobSuccessfully({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        padding: EdgeInsetsDirectional.fromSTEB(16.w, 60.h, 16.h, 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            JobHeader(
              onBackPressed: (){
                Navigator.pop(context);
              },
            ),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 128.w,
                    height: 128.h,
                    child: Image.asset(

                        'assets/images/success.png'),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "تم التقديم علي الوظيفة بنجاج",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: blackColor,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'poppins'),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      navigateAndFinish(context, PersonalData());
                    },
                    child: Container(
                      width: 232.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                          color: primaryColor,
                          border: Border.all(color: primaryColor),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          'ارسال نموذج اخر',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h,),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 232.w,
                      height: 48.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: primaryColor),
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          'العودة للصفحة الرئيسية',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
