import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Teacher_duties_item.dart';

class TeacherDuties extends StatelessWidget {
  const TeacherDuties({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Scaffold(
        body: Container(child: ListView.builder(shrinkWrap: true,
            itemBuilder: (context,index){
          return TeacherDutiesItem();
        }),),
      ),
    );
  }
}
