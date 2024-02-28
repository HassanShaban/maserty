import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'bound.dart';
import 'data_helper.dart';

class DiffDrawAyaLine extends CustomPainter {
  late double previousX,
      previousY,
      currentX,
      currentY,
      nextX,
      nextY,
      numOfLines;
  late BuildContext context;
  late bool isFirstAya, isFirstIndex;
  late double lineHeight;
  double paddingLeft = 8;
  bool justSurahNameExist = false;
  bool justBasmalaExist = false;
  bool isSurahNameAndBasmalaExist = false;
  bool isSurahNameAndBasmalaNotExist = false;
  int numOfLineFromTop = 0;

  late double min_x, max_x, max_y, min_y;
   late double selectedX , selectedY;
  late DataHelper dataHelper;
  DiffDrawAyaLine.newHassan(this.min_x, this.max_x, this.min_y, this.max_y);
  DiffDrawAyaLine.newXY(this.selectedX, this.selectedY);

  DiffDrawAyaLine(this.previousX,
      this.previousY,
      this.currentX,
      this.currentY,
      this.nextX,
      this.nextY,
      this.isFirstAya,
      this.lineHeight,
      this.numOfLines,
      this.isFirstIndex,
      this.justSurahNameExist,
      this.justBasmalaExist,
      this.isSurahNameAndBasmalaExist,
      this.isSurahNameAndBasmalaNotExist,
      this.numOfLineFromTop,
      this.context);

  int lineOwnHeigh = 1;
  late Paint hPaint;
late int current_ayah;
  @override
  void paint(Canvas canvas, Size size)  {
    print('Paint ' + '${isFirstAya}');

    //dataHelper = new DataHelper();
   //  dataHelper.readImageJson();
 //   dataHelper.populateEntries();
  //  Fluttertoast.showToast(msg: 'Entries is ' + dataHelper.entries.length.toString());
     current_ayah = dataHelper.entries[0].ayah_number;

    hPaint = new  Paint()
      ..strokeWidth = MediaQuery
          .of(context)
          .size
          .shortestSide < 600 ? 34 : 68
    // ..color = Colors.green.withOpacity(.1)
      ..color = Color(0xff20A5A8).withOpacity(.03)
      ..style = PaintingStyle.stroke;

    Offset p1 = Offset(dataHelper.entries[0].bounds.min_x, dataHelper.entries[0].bounds.min_y);
    Offset p2 = Offset(dataHelper.entries[0].bounds.max_x, dataHelper.entries[0].bounds.max_y);
    canvas.drawLine(p1, p2, hPaint);


    drawGlyphs(canvas);
    //numOfLines =2;
    if (MediaQuery
        .of(context)
        .size
        .shortestSide > 600) lineHeight = 72;
    // double originalY = previousY;
    // print('original y ' + '${originalY}');
    // print('lineHeight ' + '${lineHeight}');
    // if (numOfLines > 1) {
    //   for (int i = 1; i <= numOfLines; i++) {
    //     // firstLine
    //     if (i == 1) {
    //       if (isFirstIndex) {
    //         previousX = MediaQuery.of(context).size.width;
    //         previousY = currentY - lineHeight;
    //         originalY = previousY;
    //       }
    //
    //       if (isFirstAya) {
    //         // not fatah not baqra ... any start surah
    //         previousX = MediaQuery.of(context).size.width;
    //         if (numOfLineFromTop == 2) {
    //           previousY = lineHeight * 3;
    //           originalY = previousY;
    //         } else if (numOfLineFromTop == 1) {
    //           previousY = lineHeight * 1.5;
    //           originalY = previousY;
    //         }
    //         //  previousY =  lineHeight*2;
    //         // originalY = previousY;
    //
    //         //
    //         originalY = previousY;
    //       }
    //
    //       print('diff is ' + '${previousX - paddingLeft}');
    //       double diffBetweenTwoX = previousX - paddingLeft;
    //       // normal size
    //       if (MediaQuery.of(context).size.shortestSide < 600) {
    //         // to avoid draw not aya
    //         if (diffBetweenTwoX > 10) {
    //           Offset p1 = Offset(previousX, previousY);
    //           // Offset p2 = Offset(size.width, 3.4 * lineHeight);
    //           //  Offset p2 = Offset(0, 3.4 * lineHeight);
    //           Offset p2 = Offset(paddingLeft, previousY);
    //           canvas.drawLine(p1, p2, paint);
    //         }
    //       }
    //       // tablet
    //       else {
    //         if (diffBetweenTwoX > 28) {
    //           previousY = previousY + 0;
    //           Offset p1 = Offset(previousX, previousY);
    //           // Offset p2 = Offset(size.width, 3.4 * lineHeight);
    //           //  Offset p2 = Offset(0, 3.4 * lineHeight);
    //           Offset p2 = Offset(paddingLeft, previousY);
    //           canvas.drawLine(p1, p2, paint);
    //         }
    //       }
    //     }
    //     // lines between first line and last line
    //     else if (i < numOfLines) {
    //       previousY = originalY + (lineHeight * (i - lineOwnHeigh));
    //
    //       print('new Y  ' + '${previousY}');
    //
    //       Offset p1 = Offset(MediaQuery.of(context).size.width, previousY);
    //       Offset p2 = Offset(paddingLeft, previousY);
    //       canvas.drawLine(p1, p2, paint);
    //     }
    //     // last line
    //     else {
    //       // if (isFirstAya)
    //       //   previousY = originalY + (lineHeight * (i - 2));
    //       // else
    //       //   previousY = originalY + (lineHeight * (i - lineOwnHeigh));
    //
    //       currentY = originalY + (lineHeight * (i - lineOwnHeigh));
    //
    //       Offset p1 = Offset(MediaQuery.of(context).size.width, currentY);
    //       //  Offset p2 = Offset(size.width, currentY);
    //       Offset p2 = Offset(currentX.toDouble() + 0, currentY.toDouble());
    //       canvas.drawLine(p1, p2, paint);
    //     }
    //   }
    // }
    // // single line
    // else {
    //   // to start from right
    //   if (isFirstAya) {
    //     print('isFirstAya' + '${isFirstAya}');
    //     // not fatah not baqra ... any start surah
    //     previousX = MediaQuery.of(context).size.width;
    //     previousY = currentY;
    //     //////////////////////////////////////////////
    //     // previousX = MediaQuery.of(context).size.width;
    //     previousY = currentY;
    //   }
    //   Offset p1 = Offset(previousX, previousY);
    //   //  Offset p2 = Offset(size.width, currentY);
    //   Offset p2 = Offset(currentX.toDouble(), currentY.toDouble());
    //   canvas.drawLine(p1, p2, paint);
    // }
  }

  // @override
  // void paint(Canvas canvas, Size size) {
  //   print('Paint ' + '${isFirstAya}');
  //
  //   final paint = Paint()
  //     ..strokeWidth = MediaQuery.of(context).size.shortestSide < 600 ? 34 : 68
  //     // ..color = Colors.green.withOpacity(.1)
  //     ..color = Color(0xff20A5A8).withOpacity(.03)
  //     ..style = PaintingStyle.stroke;
  //   //numOfLines =2;
  //   if (MediaQuery.of(context).size.shortestSide > 600) lineHeight = 72;
  //   double originalY = previousY;
  //   print('original y ' + '${originalY}');
  //   print('lineHeight ' + '${lineHeight}');
  //   if (numOfLines > 1) {
  //     for (int i = 1; i <= numOfLines; i++) {
  //       // firstLine
  //       if (i == 1) {
  //         if (isFirstIndex) {
  //           previousX = MediaQuery.of(context).size.width;
  //           previousY = currentY - lineHeight;
  //           originalY = previousY;
  //         }
  //
  //         if (isFirstAya) {
  //           // not fatah not baqra ... any start surah
  //           previousX = MediaQuery.of(context).size.width;
  //           if (numOfLineFromTop == 2) {
  //             previousY = lineHeight * 3;
  //             originalY = previousY;
  //           } else if (numOfLineFromTop == 1) {
  //             previousY = lineHeight * 1.5;
  //             originalY = previousY;
  //           }
  //           //  previousY =  lineHeight*2;
  //           // originalY = previousY;
  //
  //           //
  //           originalY = previousY;
  //         }
  //
  //         print('diff is ' + '${previousX - paddingLeft}');
  //         double diffBetweenTwoX = previousX - paddingLeft;
  //         // normal size
  //         if (MediaQuery.of(context).size.shortestSide < 600) {
  //           // to avoid draw not aya
  //           if (diffBetweenTwoX > 10) {
  //             Offset p1 = Offset(previousX, previousY);
  //             // Offset p2 = Offset(size.width, 3.4 * lineHeight);
  //             //  Offset p2 = Offset(0, 3.4 * lineHeight);
  //             Offset p2 = Offset(paddingLeft, previousY);
  //             canvas.drawLine(p1, p2, paint);
  //           }
  //         }
  //         // tablet
  //         else {
  //           if (diffBetweenTwoX > 28) {
  //             previousY = previousY + 0;
  //             Offset p1 = Offset(previousX, previousY);
  //             // Offset p2 = Offset(size.width, 3.4 * lineHeight);
  //             //  Offset p2 = Offset(0, 3.4 * lineHeight);
  //             Offset p2 = Offset(paddingLeft, previousY);
  //             canvas.drawLine(p1, p2, paint);
  //           }
  //         }
  //       }
  //       // lines between first line and last line
  //       else if (i < numOfLines) {
  //         previousY = originalY + (lineHeight * (i - lineOwnHeigh));
  //
  //         print('new Y  ' + '${previousY}');
  //
  //         Offset p1 = Offset(MediaQuery.of(context).size.width, previousY);
  //         Offset p2 = Offset(paddingLeft, previousY);
  //         canvas.drawLine(p1, p2, paint);
  //       }
  //       // last line
  //       else {
  //         // if (isFirstAya)
  //         //   previousY = originalY + (lineHeight * (i - 2));
  //         // else
  //         //   previousY = originalY + (lineHeight * (i - lineOwnHeigh));
  //
  //         currentY = originalY + (lineHeight * (i - lineOwnHeigh));
  //
  //         Offset p1 = Offset(MediaQuery.of(context).size.width, currentY);
  //         //  Offset p2 = Offset(size.width, currentY);
  //         Offset p2 = Offset(currentX.toDouble() + 0, currentY.toDouble());
  //         canvas.drawLine(p1, p2, paint);
  //       }
  //     }
  //   }
  //   // single line
  //   else {
  //     // to start from right
  //     if (isFirstAya) {
  //       print('isFirstAya' + '${isFirstAya}');
  //       // not fatah not baqra ... any start surah
  //       previousX = MediaQuery.of(context).size.width;
  //       previousY = currentY;
  //       //////////////////////////////////////////////
  //       // previousX = MediaQuery.of(context).size.width;
  //       previousY = currentY;
  //     }
  //     Offset p1 = Offset(previousX, previousY);
  //     //  Offset p2 = Offset(size.width, currentY);
  //     Offset p2 = Offset(currentX.toDouble(), currentY.toDouble());
  //     canvas.drawLine(p1, p2, paint);
  //   }
  // }

  @override
  bool shouldRepaint(DiffDrawAyaLine oldDelegate) {
    return true;
  }

  void drawGlyphs(Canvas canvas) {
    // working
  //  glyphs = dataHelper.readImageJson();
    for (int i = 0; i < glyphs.length; i++) {
      var bounds = glyphs[i];

      Offset p1 = Offset(bounds[mX], bounds[mY]);
      Offset p2 = Offset(bounds[MX] - bounds[mX], bounds[MY] - bounds[mY]);

      canvas.drawLine(p1, p2, hPaint);
    }
  }

  late List glyphs;

  drawSegments(Canvas canvas) {
    var starting_line = glyphs[0][L_NO];
    var ending_line = glyphs[glyphs.length - 1][L_NO];
    for (var i = starting_line; i <= ending_line; i++) {
      Bounds bounds = getExtremePointsForLine(i);

      Offset p1 = Offset(bounds.min_x, bounds.min_y);
      Offset p2 = Offset(bounds.max_x, bounds.max_y);

      canvas.drawLine(p1, p2, hPaint);
    }
  }

 Bounds getExtremePointsForLine(line) {
    double minest_x = 99999;
    double minest_y = 99999;
    double maxest_x = -1;
    double maxest_y = -1;
    for (var i = 0; i < glyphs.length; ++i) {
      if (glyphs[i][L_NO] != line) {
        continue;
      }
      if (glyphs[i][mX] < minest_x) {
        minest_x = glyphs[i][mX];
      }
      if (glyphs[i][MX] > maxest_x) {
        maxest_x = glyphs[i][MX];
      }

      if (glyphs[i][mY] < minest_y) {
        minest_y = glyphs[i][mY];
      }
      if (glyphs[i][MY] > maxest_y) {
        maxest_y = glyphs[i][MY];
      }
    }
    return new Bounds(minest_x, maxest_x, minest_y, maxest_y);
  }

  getAyahFromClick(x, y) {
    for(var i=0; i<dataHelper.entries.length; i++) {
      var e = dataHelper.entries[i];
      var b = e.bounds;
      if(x>= b.min_x && x<= b.max_x && y>=b.min_y && y<=b.max_y) {
        return e.ayah_number;
      }
    }
  }

  // drawBoundingBox(values , Canvas canvas) {
  //   // ctx.clearRect(0, 0, canvas.width, canvas.height);
  //   // ctx.beginPath()
  //
  //   // the first line segment
  //   canvas.moveTo(values[0][0], values[0][1]);
  //   for(var i=1; i<values.length; ++i) {
  //     ctx.lineTo(values[i][0], values[i][1])
  //   }
  //   //eight
  //   ctx.fillStyle="rgba(70,148,166,0.25)"
  //   ctx.fill()
  //   ctx.closePath()
  //
  // }

  // working
  // getBoundingBoxForAyah(ayah) {
  //   var lineSpan = dataHelper.getLineSpanForAyah(ayah);
  //   var min_line = lineSpan[0];
  //   var max_line = lineSpan[1];
  //   var extremeHorizontal = dataHelper.getLeftRightExtremesForAyah(ayah);
  //   var minest_x = extremeHorizontal[0];
  //   var maxest_x = extremeHorizontal[1];
  //
  //   var firstSegment = dataHelper.getExtremePointsForAyahSegment(ayah, min_line);
  //   var lastSegment = dataHelper.getExtremePointsForAyahSegment(ayah, max_line);
  //
  //   return [
  //     [firstSegment.max_x, firstSegment.max_y],
  //     [firstSegment.max_x, firstSegment.min_y],
  //     [minest_x, firstSegment.min_y],
  //     [minest_x, lastSegment.min_y],
  //     [lastSegment.min_x, lastSegment.min_y],
  //     [lastSegment.min_x, lastSegment.max_y],
  //     [maxest_x, lastSegment.max_y],
  //     [maxest_x, firstSegment.max_y]
  //   ];
  // }


  var duration = 500;

  getIntermediateBoundingBox(bbFrom, bbTo, frac) {
    List bb = [];
    for(int i=0; i<bbFrom.length; i++) {
      var x = (1-frac)*bbFrom[i][0] + frac*bbTo[i][0];
     var y = (1-frac)*bbFrom[i][1] + frac*bbTo[i][1];
      bb.add([x,y]);
    }
    return bb;
  }

  // startAnimation(from_ayah, to_ayah) {
  //   var bbFrom = getBoundingBoxForAyah(from_ayah)
  //   var bbTo = getBoundingBoxForAyah(to_ayah)
  //   var start = null;
  //   var updateBoundingBox = function(timestamp) {
  //     if(!start) {
  //       start = timestamp
  //     }
  //     var frac = (timestamp - start)/duration
  //     bb = getIntermediateBoundingBox(bbFrom, bbTo, frac)
  //     drawBoundingBox(bb)
  //     if (frac < 1) {
  //       window.requestAnimationFrame(updateBoundingBox)
  //     }
  //   }
  //
  //   requestAnimationFrame(updateBoundingBox)
  // }
}
