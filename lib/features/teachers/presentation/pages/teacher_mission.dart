import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/teachers/presentation/pages/add_mission_teacher.dart';
import 'package:maserty/style/colors/colors.dart';

class TeacherMission extends StatefulWidget {
  TeacherMission({Key? key}) : super(key: key);

  @override
  State<TeacherMission> createState() => _TeacherMissionState();
}

class _TeacherMissionState extends State<TeacherMission>
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
            TabBar(controller: tabController, labelColor: primaryColor, tabs: [
              Tab(
                child: Text('أضافة مهمة'),
              ),
              Tab(
                child: Text('الاطلاع علي المهام'),
              )
            ]),
            SizedBox(height: 30.h,),
            Expanded(
                child: TabBarView(
              controller: tabController,
              children: [
                AddMissionTeacher(),
                ListView.builder(
                  itemCount: 200,
                  shrinkWrap: true,
                  itemBuilder: (context, position) {
                    return Container(
                      color: Colors.black12,
                      child: Row(
                        children: [
                          Expanded(flex: 5, child: Text('Items')),
                          Expanded(flex: 2, child: Text('Items')),
                          Expanded(flex: 2, child: Text('Items')),
                          Expanded(flex: 2, child: Text('Items'))
                        ],
                      ),
                    );
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
