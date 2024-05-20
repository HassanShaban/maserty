import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/request_job/presentation/pages/send_job_successfully.dart';
import 'package:maserty/features/request_job/presentation/widgets/header.dart';
import 'package:maserty/features/request_job/presentation/widgets/next_previous_buttons.dart';
import 'package:maserty/features/request_job/presentation/widgets/send_namozag.dart';
import 'package:maserty/features/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:maserty/features/sign_up/presentation/cubit/sign_up_state.dart';
import 'package:maserty/features/sign_up/presentation/pages/send_sign_up_successfully.dart';
import 'package:maserty/style/colors/colors.dart';
import 'package:maserty/utils/navigation_widget.dart';

class FinishSignUp extends StatefulWidget {
  FinishSignUp({Key? key, required this.signUpCubit}) : super(key: key);
  SignUpCubit signUpCubit ;

  @override
  State<FinishSignUp> createState() => _FinishSignUpState();
}

class _FinishSignUpState extends State<FinishSignUp> {
  bool isAllDataRight = false ;
  bool isError = false ;
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

              Row(
                children: [
                  Checkbox(
                      isError: isError,
                      value: isAllDataRight,
                      activeColor: Colors.green,
                      onChanged: (val) {
                        setState(() {
                          isAllDataRight = val!;
                        });
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
                sendNamozag: () async {
                  if (isAllDataRight == true) {
                    await widget.signUpCubit.sendSignUpDataToServer();
                    return BlocBuilder<SignUpCubit, SignUpState>(
                      builder: (context, state) {
                        if (state is FileUploadLoading) {
                          return const CircularProgressIndicator();
                        }  else if (state is FileUploadSuccess) {
                          navigateTo(context, SendSignUpSuccessfully(signUpCubit: widget.signUpCubit,));
                        } else if (state is FileUploadFailure){
                           print("error is $state.error");
                        }
                        return Container();
                      },
                    );


                  }  else{
                   setState(() {
                     isError = true ;
                   });
                  }

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
