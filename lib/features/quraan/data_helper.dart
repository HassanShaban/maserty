import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maserty/features/quraan/diff_quran_tabaa.dart';
import 'package:maserty/features/quraan/selected_ayah_data.dart';

import 'Entries.dart';
import 'bound.dart';
double mX = 6;
double MX = 7;
double mY = 8;
double MY = 9;
double L_NO = 2;

class DataHelper {
  late double min_x;
  late double max_x;
  late double min_y;
  late double max_y;

  late Bounds bounds;
  late List quranData;

  late List glyphs;

  getAyahFromClick(x, y, double imageHeight, double displayImageHeight) {
    for (var i = 0; i < entries.length; i++) {
      var entry = entries[i];
      var bound = entry.bounds;
      if (x >= (bound.min_x) && x <= bound.max_x && y >= bound.min_y && y <= bound.max_y) {
        SelectedAyahData selectedAyahData = SelectedAyahData(
            surahNumber: entry.sura_number, ayahNumber: entry.ayah_number);
        return selectedAyahData;
      }
    }
  }


  DataBaseHelper(double min_x, double max_x, double min_y, double max_y) {
    this.min_x = min_x;
    this.max_x = max_x;
    this.min_y = min_y;
    this.max_y = max_y;
    bounds = new Bounds(min_x, max_x, min_y, max_y);
  }

  late int glyph_id;
  late int page_number;
  late int line_number;
  late int sura_number;
  late int ayah_number;
  late int position;

  Entry(glyph_id, page_number, line_number, sura_number, ayah_number, position,
      bounds) {
    this.glyph_id = glyph_id;
    this.page_number = page_number;
    this.line_number = line_number;
    this.sura_number = sura_number;
    this.ayah_number = ayah_number;
    this.position = position;
    this.bounds = bounds;
  }

  List<ScreenEntry> entries = [];

  // populateEntries()

  late double lineRatio;
  late bool isAdding;
  late double startXSpace = 0;

  populateEntries(List glyphs, double valueAddedToLineRatio) {
    this.glyphs = glyphs;
    for (int i = 0; i < glyphs.length; i++) {
      var glyphsItem = glyphs[i];
      var bounds = new Bounds(
          glyphsItem['min_x'],
          glyphsItem['max_x'] + startXSpace,
          // king fahd
          // glyphsItem['min_y'] + 4 * glyphsItem['line_number'],
          // glyphsItem['max_y'] + 4 * glyphsItem['line_number']);
          glyphsItem['min_y'] +
              (lineRatio + valueAddedToLineRatio) * glyphsItem['line_number'],
          glyphsItem['max_y'] +
              (lineRatio + valueAddedToLineRatio) * glyphsItem['line_number']);
      ScreenEntry entry = ScreenEntry(
          glyphsItem['glyph_id'],
          glyphsItem['page_number'],
          glyphsItem['line_number'],
          glyphsItem['sura_number'],
          glyphsItem['ayah_number'],
          glyphsItem['position'],
          bounds);
      entries.add(entry);
    }
  }

  List<double> getLeftRightExtremesForAyah(ayah , surah) {
    double minest_x = 99999;
    double maxest_x = -1;
    for (int i = 0; i < entries.length; i++) {
      var e = entries[i];
      var b = e.bounds;
      if (e.ayah_number != ayah || e.sura_number != surah) {
        continue;
      }
      if (b.min_x < minest_x) {
        minest_x = b.min_x;
      }
      if (b.max_x > maxest_x) {
        maxest_x = b.max_x;
      }
    }
    List<double> x = [];
    x.add(minest_x);
    x.add(maxest_x);
    return x;
  }

  getExtremePointsForAyahSegment(ayah, line , surah) {
    double minest_x = 99999;
    double minest_y = 99999;
    double maxest_x = -1;
    double maxest_y = -1;
    for (var i = 0; i < entries.length; ++i) {
      var e = entries[i];
      var b = e.bounds;
      if (e.line_number != line || e.ayah_number != ayah || e.sura_number !=surah) {
        continue;
      }
      if (b.min_x < minest_x) {
        minest_x = b.min_x;
      }
      if (b.max_x > maxest_x) {
        maxest_x = b.max_x;
      }

      if (b.min_y < minest_y) {
        minest_y = b.min_y;
      }
      if (b.max_y > maxest_y) {
        maxest_y = b.max_y;
      }
    }
    return new Bounds(minest_x, maxest_x, minest_y, maxest_y);
  }

  getLineSpanForAyah(ayah , surah) {
    int min_line = 16;
    int max_line = -1;
    for (int i = 0; i < entries.length; i++) {
      var e = entries[i];
      if (e.ayah_number != ayah || e.sura_number != surah) {
        continue;
      }
      if (e.line_number < min_line) {
        min_line = e.line_number;
      }
      if (e.line_number > max_line) {
        max_line = e.line_number;
      }
    }
    return [min_line, max_line];
  }

  getBoundingBoxForAyah(ayah , surah) {
    var lineSpan = getLineSpanForAyah(ayah , surah);
    var min_line = lineSpan[0];
    var max_line = lineSpan[1];
    var extremeHorizontal = getLeftRightExtremesForAyah(ayah , surah);
    var minest_x = extremeHorizontal[0];
    var maxest_x = extremeHorizontal[1];

    var firstSegment = getExtremePointsForAyahSegment(ayah, min_line , surah);
    var lastSegment = getExtremePointsForAyahSegment(ayah, max_line , surah);

    return [
      [firstSegment.max_x, firstSegment.max_y],
      [firstSegment.max_x, firstSegment.min_y],
      [minest_x, firstSegment.min_y],
      [minest_x, lastSegment.min_y],
      [lastSegment.min_x, lastSegment.min_y],
      [lastSegment.min_x, lastSegment.max_y],
      [maxest_x, lastSegment.max_y],
      [maxest_x, firstSegment.max_y]
    ];
  }

  getIntermediateBoundingBox(bbFrom, bbTo, double frac, double x, double y) {
    List bb = [];
    for (var i = 0; i < bbFrom.length; i++) {
      x = (1 - frac) * bbFrom[i][0] + frac * bbTo[i][0];
      y = (1 - frac) * bbFrom[i][1] + frac * bbTo[i][1];
      bb.add([x, y+128]);
    }
    return bb;
  }

  DiffQuranTabaa setTabaaProperities(String quranTabaaType, bool isTablet) {
    DiffQuranTabaa diffQuranTabaa;
    switch (quranTabaaType) {
      case 'king_fahd':
        diffQuranTabaa = DiffQuranTabaa(
            name: 'King_Fahd',
            imageHeight: 1792,
            imageWidth: 1120,
            lineRatio: 0,
            isLineHeightAdding: true,
            startXSpace: 100,
            lastAyaXSpace: 25,
            valueAddedToLineRatio: isTablet ? 8 : 5);

        break;
      case 'warsh':
        diffQuranTabaa = DiffQuranTabaa(
            name: 'Warsh',
           imageHeight: 1584,
          //  imageHeight: 1460,
            imageWidth: 1024,
            lineRatio: 0,
            isLineHeightAdding: false,
            startXSpace: 0,
            lastAyaXSpace: 0,
            valueAddedToLineRatio: -2.5);
        break;
      default:
        diffQuranTabaa = DiffQuranTabaa(
            name: 'King_Fahd',
            imageHeight: 1792,
            imageWidth: 1120,
            lineRatio: 0,
            isLineHeightAdding: true,
            startXSpace: 100,
            lastAyaXSpace: 35,
            valueAddedToLineRatio: 5);
        break;
    }

    return diffQuranTabaa;
  }
}
