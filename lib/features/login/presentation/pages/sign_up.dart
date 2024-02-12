import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/login/presentation/widgets/custom_button.dart';
import 'package:maserty/features/login/presentation/widgets/custom_text_field.dart';
import 'package:maserty/features/login/presentation/widgets/password_text_field.dart';

class SignUP extends StatelessWidget {
  SignUP({Key? key}) : super(key: key);
  TextEditingController userNameTextField = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController passwordTextField = TextEditingController();
  TextEditingController confirmPasswordTextField = TextEditingController();
  bool checkBoxValue = false;

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
              Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Icon(Icons.arrow_back_ios)),
              Image.asset('assets/images/splash.png'),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'انشاء حساب جديد',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'الحساب الألكتروني',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormField(
                  controller: email, autoFocus: true,
              hint: 'الحساب الألكتروني',),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'اسم المستخدم',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomTextFormField(
                  controller: userNameTextField, autoFocus: false,
              hint: 'اسم المستخدم',),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'كلمة المرور',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomPassTextFormField(
                  controller: email, autoFocus: true,
              hint: 'كلمة المرور',),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'تأكيد كلمة المرور',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),
              SizedBox(
                height: 10.h,
              ),
              CustomPassTextFormField(
                  controller: confirmPasswordTextField, autoFocus: false,
              hint: 'تأكيد كلمة المرور',),
              SizedBox(
                height: 10.h,
              ),
              CheckboxListTile(
                title: Text('تذكرني'),
                value: checkBoxValue,
                onChanged: (newValue) {
                  checkBoxValue = newValue!;
                },
              ),

              CustomButton(
                text: 'انشاء حساب',
                onTap: (){},
              ),


            ],
          ),
        ),
      ),
    );
  }
}
