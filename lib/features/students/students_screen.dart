import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/students/students_item.dart';

class StudentsScreen extends StatelessWidget {
  const StudentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Scaffold(backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: Text("الطلاب",style: TextStyle(fontSize:24.sp , fontFamily: 'poppins',
              fontWeight: FontWeight.w600,color: Colors.black),),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h,),
            Center(
              child: Text(
                'الصف الاول الإبتدائي',
                style: TextStyle(
                    fontFamily: 'poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 18.sp,
                    color: Colors.black),
              ),
            ),
            SizedBox(height: 20.h,),
            ListView.builder(shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context,index){
                  return StudentsItem();
                })
          ],
        ),
      ),
      height: MediaQuery.of(context).size.height,
    );
  }
}
