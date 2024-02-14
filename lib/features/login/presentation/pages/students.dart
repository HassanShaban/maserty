import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/login/presentation/widgets/degree_widget.dart';
import 'package:maserty/style/colors/colors.dart';

class Students extends StatelessWidget {
  const Students({Key? key}) : super(key: key);

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Icon(Icons.arrow_back_ios),

                  Expanded(
                    child:
                    Text(
                      "الطلاب",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: blackColor,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'poppins'
                      ),
                    ),
                  ),



                ],
              ),
              SizedBox(height: 20.h,),
              Center(
                child: Text(
                  "أختر الصف الدراسي الخاص بك",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: blackColor,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'poppins'
                  ),
                ),
              )
              ,

              SizedBox(height: 20.h,),

              Text(
                "الصفوف الابتدائية",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: blackColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'
                ),
              ),
              SizedBox(height: 10.h,),

             Row(
               children: [
                 Expanded(child: Degree(
                   onTap: (){},
                   text: ' الصف الاول الابتدائي',
                 )),
                 SizedBox(width: 10.w,),
                 Expanded(child: Degree(
                   onTap: (){},
                   text: ' الصف الثاني الابتدائي',
                 )),

               ],
             ),
              SizedBox(height: 10.h,),

              Row(
                children: [
                  Expanded(child: Degree(
                    onTap: (){},
                    text: ' الصف الثالث الابتدائي',
                  )),
                  SizedBox(width: 10.w,),
                  Expanded(child: Degree(
                    onTap: (){},
                    text: ' الصف الرابع الابتدائي',
                  )),

                ],
              ),
              SizedBox(height: 10.h,),

              Row(
                children: [
                  Expanded(child: Degree(
                    onTap: (){},
                    text: ' الصف الخامس الابتدائي',
                  )),
                  SizedBox(width: 10.w,),
                  Expanded(child: Degree(
                    onTap: (){},
                    text: ' الصف السادس الابتدائي',
                  )),

                ],
              ),
              SizedBox(height: 15.h,),

              Divider(
                height: 2.h,
                color: enableColor,
              ),
              SizedBox(height: 20.h,),
              Text(
                "الصفوف الاعدادية",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: blackColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'
                ),
              ),
              SizedBox(height: 20.h,),

              Row(
                children: [
                  Expanded(child: Degree(
                    onTap: (){},
                    text: ' الصف الاول الاعدادي',
                  )),
                  SizedBox(width: 10.w,),
                  Expanded(child: Degree(
                    onTap: (){},
                    text: ' الصف الثاني الاعدادي',
                  )),

                ],
              ),

              SizedBox(height: 10.h,),
              Row(
                children: [
                  Expanded(child: Degree(
                    onTap: (){},
                    text: ' الصف الثالث الاعدادي',
                  )),
                  SizedBox(width: 10.w,),
                  Expanded(child: Visibility(
                    visible: false,
                    child: Degree(
                      onTap: (){},
                      text: ' الصف الثاني الاعدادي',
                    ),
                  )),

                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
