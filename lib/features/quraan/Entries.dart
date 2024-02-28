
import 'bound.dart';

class ScreenEntry{
  int glyph_id;
  int page_number;
  int line_number;
  int sura_number;
  int ayah_number;
  int position;
  Bounds bounds;

  ScreenEntry(this.glyph_id, this.page_number, this.line_number, this.sura_number,
      this.ayah_number, this.position , this.bounds);
}