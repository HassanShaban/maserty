class DiffQuranTabaa {
  String name;
  double imageHeight;
  double imageWidth;
  double lineRatio;
  bool isLineHeightAdding;
  double startXSpace;

  double lastAyaXSpace;
  double valueAddedToLineRatio;

  DiffQuranTabaa(
      {required this.name,
        required this.imageHeight,
        required this.imageWidth,
        required this.lineRatio,
        required this.isLineHeightAdding,
        required this.startXSpace,
        required this.lastAyaXSpace,
        required this.valueAddedToLineRatio});
}
