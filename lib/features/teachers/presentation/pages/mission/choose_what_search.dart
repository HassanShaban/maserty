import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/teachers/presentation/pages/meetings/teacher_meetings.dart';
import 'package:maserty/features/teachers/presentation/pages/mission/teacher_mission.dart';
import 'package:maserty/features/teachers/presentation/pages/vacations/teacher_vacations.dart';
import 'package:maserty/features/teachers/presentation/widgets/search_for_widget.dart';
import 'package:maserty/style/colors/colors.dart';

class ChooseWhatSearch extends StatelessWidget {
  const ChooseWhatSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        padding: EdgeInsetsDirectional.fromSTEB(16.w, 60.h, 16.h, 0),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back_ios),
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
            Center(
              child: Text(
                "أختر ما تبحث عنه",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: blackColor,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'poppins'),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),

            SearchFor(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TeacherMission()),
                );
              },
              text: 'المهام',
              path: 'mission',
            ),
            SizedBox(height: 10.h,),
            SearchFor(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TeacherMeetings()),
                );
              },
              text: 'الاجتماعات',
              path: 'meetings',
            ),
            SizedBox(height: 10.h,),
            SearchFor(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TeacherVacations()),
                );
              },
              text: 'الاجازات',
              path: 'vacation',
            ),

          ]),
        ),
      ),
    );
  }
}
