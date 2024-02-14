import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/login/presentation/widgets/category_widget.dart';
import 'package:maserty/style/colors/colors.dart';

class ChooseCategory extends StatefulWidget {
  const ChooseCategory({Key? key}) : super(key: key);

  @override
  State<ChooseCategory> createState() => _ChooseCategoryState();
}

class _ChooseCategoryState extends State<ChooseCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        padding: EdgeInsetsDirectional.fromSTEB(16.w, 60.h, 16.h, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/splash.png'),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'أختر الفئة الخاصة بك',
                style: TextStyle(
                    color: blackColor,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'

                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              CategoryWidget(onTap: () {}, name: 'الطلاب', path: 'students'),
              SizedBox(
                height: 20.h,
              ),
              CategoryWidget(onTap: () {}, name: 'المعلمين', path: 'teatcher'),
            ],
          ),
        ),
      ),
    );
  }
}
