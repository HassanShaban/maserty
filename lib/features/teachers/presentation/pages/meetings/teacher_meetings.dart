import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/teachers/presentation/pages/mission/add_mission_teacher.dart';
import 'package:maserty/style/colors/colors.dart';

import 'Teacher_meetings_item.dart';
import 'add_meeting_teacher.dart';


class TeacherMeetings extends StatefulWidget {
  TeacherMeetings({Key? key}) : super(key: key);

  @override
  State<TeacherMeetings> createState() => _TeacherMeetingsState();
}

class _TeacherMeetingsState extends State<TeacherMeetings>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        padding: EdgeInsetsDirectional.fromSTEB(16.w, 60.h, 16.h, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(onTap: (){Navigator.pop(context);},
                    child: Icon(Icons.arrow_back_ios)),
                Expanded(
                  child: Text(
                    "المعلمين",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: blackColor,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'poppins'),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            TabBar(controller: tabController, labelColor: primaryColor, tabs: [
              Tab(
                child: Text('أضافة إجتماع'),
              ),
              Tab(
                child: Text('الاطلاع علي الإجتماعات'),
              )
            ]),
            SizedBox(height: 10.h,),
            Expanded(
                child: TabBarView(
              controller: tabController,
              children: [
                AddMeetingTeacher(),
                ListView.builder(
                  itemCount: 200,
                  shrinkWrap: true,
                  itemBuilder: (context, position) {
                    return TeacherMeetingsItem();
                  },
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}