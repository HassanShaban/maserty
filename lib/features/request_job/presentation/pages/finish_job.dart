import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/request_job/presentation/pages/send_job_successfully.dart';
import 'package:maserty/features/request_job/presentation/widgets/header.dart';
import 'package:maserty/features/request_job/presentation/widgets/next_previous_buttons.dart';
import 'package:maserty/features/request_job/presentation/widgets/send_namozag.dart';
import 'package:maserty/style/colors/colors.dart';
import 'package:maserty/utils/navigation_widget.dart';

class FinishJob extends StatelessWidget {
   FinishJob({Key? key}) : super(key: key);
  List<String> degree= [
    'College'

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        padding: EdgeInsetsDirectional.fromSTEB(16.w, 60.h, 16.h, 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              JobHeader(
                onBackPressed: (){
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'الوظيفة المطلوبة',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),
              SizedBox(height: 10.h,),

              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsetsDirectional.fromSTEB(10.w, 3.h, 10.w, 3.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: enableColor)

                ),
                child:
                DropdownButton<String>(
                  isExpanded: true,
                  hint: Text(
                    'الوظيفة المطلوبة',
                    style: TextStyle(
                        color: enableColor,
                        fontSize: 12.sp
                    ),
                  ),
                  underline: const SizedBox(),
                  items:
                  degree.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            value,
                            style: TextStyle(
                                fontSize: 14.sp, color: gridcolor),
                          ),
                          Divider(
                            // height: 2.h,
                          )
                        ],
                      ),
                    );
                  }).toList(),
                  onChanged: (Object? value) {},
                ),

              ),


              SizedBox(height: 20.h,),

              Row(
                children: [
                  Checkbox(value: false, onChanged: (val){

                  }),
                  Text(
                    'أقر بأن جميع المعلومات المدخلة صحيحة',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'poppins'),
                  ),

                ],
              ),

              SizedBox(height: 30.h,),

              SendNamozag(
                sendNamozag: (){
                  navigateTo(context, SendJobSuccessfully());
                },
                previousPressed: (){
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
