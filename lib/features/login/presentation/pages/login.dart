import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/home/home_screen.dart';
import 'package:maserty/features/login/presentation/widgets/custom_button.dart';
import 'package:maserty/features/login/presentation/widgets/custom_text_field.dart';
import 'package:maserty/features/login/presentation/widgets/password_text_field.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  TextEditingController userNameTextField = TextEditingController();
  TextEditingController passwordTextField = TextEditingController();
  bool checkBoxValue = false;

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
              GestureDetector(onTap: (){
                Navigator.pop(context);
              },
                child: Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Icon(Icons.arrow_back_ios
                    )),
              ),
              Image.asset('assets/images/splash.png'),

              Text(
                'تسجيل الدخول',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'
                ),
              ),
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
                  controller: userNameTextField, autoFocus: true,
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
                  controller: passwordTextField, autoFocus: false,
              hint: 'كلمة المرور',),
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
              SizedBox(height: 10.h,),
              CustomButton(
                text: 'دخول',
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
             SizedBox(height: 15.h,),
              Center(
                child: Text(
                  'اعادة تعيين كلمة المرور',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                Text('ليس لديك حساب؟'),
                Text('انشاء حساب جديد',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                )
              ],),

              SizedBox(height: 5.h,),
            ],
          ),
        ),
      ),
    );
  }
}
