import 'dart:ui';

import 'package:flutter/material.dart';

class NewDiffDrawAyaLine extends CustomPainter {
  late BuildContext context;

  List bb;

  NewDiffDrawAyaLine(
      this.context, this.bb, this.xPercent, this.yPercent, this.lastAyaXSpace);

  double xPercent;
  double yPercent;
  double lastAyaXSpace;

  @override
  void paint(Canvas canvas, Size size) {
    final pointMode = PointMode.polygon;
    List<Offset> points = [];
    //  debugPrint('Hassan BB Length is  ' + bb.length.toString());
    for (int i = 0; i < bb.length; i++) {
      debugPrint('bb x ' + bb[i][0].toString());
      debugPrint('bb y ' + bb[i][1].toString());
      if (i == bb.length - 4 || i == bb.length - 3)
        points.add(Offset((bb[i][0] / xPercent) + 35, (bb[i][1] / yPercent)));
      else
        points.add(Offset((bb[i][0] / xPercent), (bb[i][1] / yPercent)));
      // tablet
      //     points.add(Offset((bb[i][0] /  1.1666666666666667), (bb[i][1] / 1.0856219709208401)));
    }

    // points.add(Offset(81, 28));
    // points.add(Offset(955, 98));
    // points.add(Offset(711, 139));
    // points.add(Offset(953, 209));
    final paint = Paint()
      ..color = Color(0xff20A5A8).withOpacity(.09)
      ..strokeWidth = MediaQuery.of(context).size.shortestSide < 600 ? 2 : 68
      // ..strokeCap = StrokeCap.square
      ..style = PaintingStyle.fill;

    // final paint = Paint()
    //   ..color = Colors.black
    //   ..strokeWidth = 4
    //   ..style = PaintingStyle.fill;
    //   canvas.drawPoints(pointMode, points, paint);

    if (bb.isNotEmpty) {
      Path ayaPath = Path();
      ayaPath.moveTo(
          (bb[0][0] / xPercent), (bb[0][1] / yPercent)); //starting point

      for (int i = 1; i < bb.length; i++) {
        debugPrint('bb x ' + bb[i][0].toString());
        debugPrint('bb y ' + bb[i][1].toString());
        if (i == bb.length - 4 || i == bb.length - 3)
          ayaPath.lineTo(
              (bb[i][0] / xPercent) + lastAyaXSpace, (bb[i][1] / yPercent));
        else
          ayaPath.lineTo((bb[i][0] / xPercent), (bb[i][1] / yPercent));
        // tablet
        //     points.add(Offset((bb[i][0] /  1.1666666666666667), (bb[i][1] / 1.0856219709208401)));
      }

      canvas.drawPath(ayaPath, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
