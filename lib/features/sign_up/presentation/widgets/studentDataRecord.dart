import 'dart:io';

import 'package:flutter/material.dart';
import 'package:maserty/features/sign_up/data/model/signup_model.dart';
import 'package:maserty/features/sign_up/presentation/cubit/sign_up_cubit.dart';

class StudentDataRecord extends StatelessWidget {
   StudentDataRecord({Key? key, required this.studentData , required this.onDeletePressed , required this.onEditPressed}) : super(key: key);
  RegistrationRequestsData studentData ;
   void Function()? onDeletePressed ;
   void Function()? onEditPressed ;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), // Rounded corners
          border: Border.all(
            color: Colors.grey, // Border color
            width: 2, // Border width
          ),

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if ( studentData.studentProfileImageFile != null )
            CircleAvatar(
              radius: 25,
              child:
              Image(image: FileImage(File(studentData.studentProfileImageFile!.path)))
              // Image.asset('assets/images/splash.png')
            )
            ,
            Text(
                     "${studentData.studentFirstNameAr}"
                    " ${studentData.studentFatherNameAr}"
                    " ${studentData.studentGrandFatherNameAr} "
                    "${studentData.studentLastNameAr}"

            ) ,

            IconButton(
                onPressed:onEditPressed,

                 icon: Icon(Icons.edit)),

            IconButton(
                onPressed: onDeletePressed
                , icon: Icon(Icons.delete_forever)),


          ],),
      ),
    );
  }
}
