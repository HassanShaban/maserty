import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/home/home_screen.dart';
import 'package:maserty/features/login/presentation/widgets/custom_button.dart';
import 'package:maserty/features/login/presentation/widgets/custom_text_field.dart';
import 'package:maserty/features/login/presentation/widgets/password_text_field.dart';
import 'package:openid_client/openid_client.dart' as openid;
// import 'package:openid_client/openid_client.dart';
// import 'package:openid_client/openid_client_browser.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:crypto/crypto.dart';



class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  TextEditingController userNameTextField = TextEditingController();

  TextEditingController passwordTextField = TextEditingController();

  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        height: MediaQuery
            .of(context)
            .size
            .height,
        color: Colors.white,
        padding: EdgeInsetsDirectional.fromSTEB(16.w, 60.h, 16.h, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(onTap: () {
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
                onTap: () async {
                  await login();

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => HomeScreen()),
                  // );
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

  final String issuerUrl ="https://masiraribackend.azurewebsites.net/";

  final String clientId = "mobile_app_flutter";

  final String clientSecret = sha256Of( "mobile_app_flutter" );

  final List<String> scopes = ["openid", "profile", "scope2", "api1", "email"];

  final String redirectUri = "https://masiraribackend.azurewebsites.net/auth-callback";

  Future<void> login() async {
    // Discover the OpenID configuration
    var issuer = await openid.Issuer.discover(Uri.parse(issuerUrl));



    // authenticate(Uri.parse(issuerUrl), clientId, scopes);
    // Create the client
    var client = openid.Client(
      issuer,
      clientId,
      clientSecret: clientSecret,
    );



    // validate an id token
    // var violations = await c.validateToken();




    // Create an authorization flow
    var flow = openid.Flow.authorizationCodeWithPKCE(
      client,
      scopes: scopes,
    );

    flow.redirectUri = Uri.parse(redirectUri) ;

    var authUrl = flow.authenticationUri;
    if (await canLaunchUrl(authUrl)) {
      await launchUrl(authUrl);
    } else {
      throw 'Could not launch $authUrl';
    }
  }
}




String sha256Of(String input) {
  var bytes = utf8.encode(input);
  var digest = sha256.convert(bytes);
  print("digest  ::  $digest");
  return digest.toString();
}



