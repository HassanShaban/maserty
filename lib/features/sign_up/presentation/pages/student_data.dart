import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/request_job/presentation/pages/add_qualification.dart';
import 'package:maserty/features/request_job/presentation/pages/experience.dart';
import 'package:maserty/features/request_job/presentation/widgets/header.dart';
import 'package:maserty/features/request_job/presentation/widgets/next_previous_buttons.dart';
import 'package:maserty/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:maserty/features/sign_up/presentation/cubit/sign_up_state.dart';
import 'package:maserty/features/sign_up/presentation/pages/add_student_data.dart';
import 'package:maserty/features/sign_up/presentation/pages/edit_student_data.dart';
import 'package:maserty/features/sign_up/presentation/pages/finish_sign_up.dart';
import 'package:maserty/style/colors/colors.dart';
import 'package:maserty/utils/navigation_widget.dart';

import '../../data/model/signup_model.dart';
import '../widgets/studentDataRecord.dart';

class StudentData extends StatefulWidget {
  StudentData({Key? key, required this.signUpCubit} ) : super(key: key);
  SignUpCubit signUpCubit ;

  @override
  State<StudentData> createState() => _StudentDataState();
}

class _StudentDataState extends State<StudentData> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        padding: EdgeInsetsDirectional.fromSTEB(16.w, 60.h, 16.h, 30.h),
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
              'الرجاء اضافة  طالب/ة واحد/ة علي الاقل',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'poppins'),
            ),
            SizedBox(height: 20.h,),

         Expanded(
           child: ListView.builder(
             itemCount: widget.signUpCubit.studentDataList.length ,
               itemBuilder: (context, index) {
                 // print("image ${signUpCubit.studentDataList[index].studentProfileImageName} " );
               final data = widget.signUpCubit.studentDataList[index];
               return StudentDataRecord(studentData:data ,
                 onDeletePressed: () {
                   setState(() {
                     widget.signUpCubit.studentDataList.removeAt(index);
                     // print(widget.signUpCubit.studentDataList.length );
                   });
               }, onEditPressed: () {

                 Navigator.push(context, MaterialPageRoute(
                   builder: (context) {
                   return EditStudentData(signUpCubit: widget.signUpCubit, index: index , studentDataList: data );
                 },));


                 },

               );

               },),
         ),


            GestureDetector(
              onTap: (){
                navigateTo(context, AddStudentData(signUpCubit: widget.signUpCubit,));
              },
              child: Container(
                width: 151.w,
                height: 48.h,
                decoration: BoxDecoration(
                    color: primaryColor,
                    border: Border.all(color: primaryColor),
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'اضافة طالب/ة',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(width: 20.w,),
                    Icon(Icons.add,
                      color: Colors.white,)
                  ],
                ),
              ),
            ),

            SizedBox(height: 30.h,),

            NextPreviousButtons(
              previousPressed: (){
                Navigator.pop(context);
              },
              nextPressed: (){
                if (widget.signUpCubit.studentDataList.isEmpty) {
                   return ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(content: Text('"يجب ادخال طالب واحد على الاقل "')),
                   );



                }
                else{
                  navigateTo(context, FinishSignUp(signUpCubit: widget.signUpCubit,));
                }

              },


            )
            ,
            // GestureDetector(
            //   onTap: () {
            //     print("Image is  ${widget.signUpCubit.registrationRequestsData.studentProfileImageName}") ;
            //
            //   },
            //   child:
            //   Container(
            //     width: 104.w,
            //     height: 48.h,
            //     decoration: BoxDecoration(
            //         color: primaryColor,
            //         border: Border.all(color: primaryColor),
            //         borderRadius: BorderRadius.circular(8)),
            //     child: Center(
            //       child: Text(
            //         'التالي',
            //         style: TextStyle(color: Colors.white),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
