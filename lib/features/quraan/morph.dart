// import 'package:flutter/material.dart';
//
// class Morph extends CustomPainter{
//
//   var canvas = document.getElementById('canvas')
//   var ctx = canvas.getContext("2d")
//
//   function drawRect(min_x, max_x, min_y, max_y) {
//     ctx.beginPath()
//     ctx.rect(min_x, min_y, max_x - min_x, max_y - min_y)
//     ctx.stroke()
//   }
//
//   function drawGlyphs() {
//     for(var i=0; i<glyphs.length; ++i) {
//       ctx.beginPath()
//       var bounds = glyphs[i]
//       ctx.rect(bounds[mX], bounds[mY], bounds[MX]-bounds[mX], bounds[MY]-bounds[mY])
//       ctx.stroke()
//     }
//   }
//
//   function drawSegments() {
//     var starting_line = glyphs[0][L_NO]
//     var ending_line = glyphs[glyphs.length-1][L_NO]
//     for(var i=starting_line; i<=ending_line; i++) {
//       var bounds = getExtremePointsForLine(i)
//       drawRect(bounds[0], bounds[1], bounds[2], bounds[3])
//     }
//   }
//
//   function getExtremePointsForLine(line) {
//     var minest_x = minest_y = 99999
//     var maxest_x = maxest_y = -1
//     for(var i=0; i<glyphs.length; ++i) {
//       if(glyphs[i][L_NO] != line) {
//         continue
//       }
//       if(glyphs[i][mX] < minest_x) {
//         minest_x = glyphs[i][mX]
//       }
//       if(glyphs[i][MX] > maxest_x) {
//         maxest_x = glyphs[i][MX]
//       }
//
//       if(glyphs[i][mY] < minest_y) {
//         minest_y = glyphs[i][mY]
//       }
//       if(glyphs[i][MY] > maxest_y) {
//         maxest_y = glyphs[i][MY]
//       }
//     }
//     return new Bounds(minest_x, maxest_x, minest_y, maxest_y)
//   }
//
//   function Bounds(min_x, max_x, min_y, max_y) {
//     this.min_x = min_x
//     this.max_x = max_x
//     this.min_y = min_y
//     this.max_y = max_y
//   }
//
//   function getAyahFromClick(x, y) {
//     for(var i=0; i<entries.length; ++i) {
//       e = entries[i]
//       b = e.bounds
//       if(x>= b.min_x && x<= b.max_x && y>=b.min_y && y<=b.max_y) {
//         return e.ayah_number
//       }
//     }
//   }
//
//   function drawBoundingBox(values) {
//     ctx.clearRect(0, 0, canvas.width, canvas.height)
//     ctx.beginPath()
//
//     // the first line segment
//     ctx.moveTo(values[0][0], values[0][1])
//     for(var i=1; i<values.length; ++i) {
//       ctx.lineTo(values[i][0], values[i][1])
//     }
//     //eight
//     ctx.fillStyle="rgba(70,148,166,0.25)"
//     ctx.fill()
//     ctx.closePath()
//
//   }
//
//   function getBoundingBoxForAyah(ayah) {
//     var lineSpan = getLineSpanForAyah(ayah)
//     var min_line = lineSpan[0]
//     var max_line = lineSpan[1]
//     var extremeHorizontal = getLeftRightExtremesForAyah(ayah)
//     var minest_x = extremeHorizontal[0]
//     var maxest_x = extremeHorizontal[1]
//
//     var firstSegment = getExtremePointsForAyahSegment(ayah, min_line)
//     var lastSegment = getExtremePointsForAyahSegment(ayah, max_line)
//
//     return [
//       [firstSegment.max_x, firstSegment.max_y],
//       [firstSegment.max_x, firstSegment.min_y],
//       [minest_x, firstSegment.min_y],
//       [minest_x, lastSegment.min_y],
//       [lastSegment.min_x, lastSegment.min_y],
//       [lastSegment.min_x, lastSegment.max_y],
//       [maxest_x, lastSegment.max_y],
//       [maxest_x, firstSegment.max_y]
//     ]
//   }
//
//   function getIntermediateBoundingBox(bbFrom, bbTo, frac) {
//     bb = []
//     for(var i=0; i<bbFrom.length; ++i) {
//       x = (1-frac)*bbFrom[i][0] + frac*bbTo[i][0]
//       y = (1-frac)*bbFrom[i][1] + frac*bbTo[i][1]
//       bb.push([x,y])
//     }
//     return bb
//   }
//
//   var duration = 500
//   var current_ayah = entries[0].ayah_number
//
//   function startAnimation(from_ayah, to_ayah) {
//     var bbFrom = getBoundingBoxForAyah(from_ayah)
//     var bbTo = getBoundingBoxForAyah(to_ayah)
//     var start = null
//     var updateBoundingBox = function(timestamp) {
//       if(!start) {
//         start = timestamp
//       }
//       var frac = (timestamp - start)/duration
//       bb = getIntermediateBoundingBox(bbFrom, bbTo, frac)
//       drawBoundingBox(bb)
//       if (frac < 1) {
//         window.requestAnimationFrame(updateBoundingBox)
//       }
//     }
//
//     requestAnimationFrame(updateBoundingBox)
//   }
//
//   canvas.addEventListener('click', function(event) {
//     x = event.pageX
//     y = event.pageY
//     ayah = getAyahFromClick(x, y)
//     if(!ayah) {
//       return
//     }
//     if (current_ayah != ayah) {
//       startAnimation(current_ayah, ayah)
//       setTimeout(() => {
//         current_ayah = ayah
//       }, duration);
//     }
//   })
//
//
//
//
//   @override
//   void paint(Canvas canvas, Size size) {
//
//
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     // TODO: implement shouldRepaint
//     return true;
//   }}