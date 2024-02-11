import 'package:flutter/cupertino.dart';

class LazyIndexedStack extends StatefulWidget {
  final int? index;
  final List<Widget>? children;
  final AlignmentGeometry alignment;
  final TextDirection? textDirection;
  final StackFit sizing;
  const LazyIndexedStack({
    Key? key,
    @required this.index,
    @required this.children,
    this.alignment = AlignmentDirectional.topStart,
    this.textDirection,
    this.sizing = StackFit.loose,
  })  : assert(index != null),
        assert(children != null),
        super(key: key);

  @override
  State<LazyIndexedStack> createState() => _LazyIndexedStackState();
}

class _LazyIndexedStackState extends State<LazyIndexedStack> {
  Map<int, bool>? _innerWidgetMap;
  late int index;
  @override
  void initState() {
    super.initState();
    index = widget.index!;
    _innerWidgetMap = Map<int, bool>.fromEntries(
      List<MapEntry<int, bool>>.generate(
        widget.children!.length,
        (int i) => MapEntry<int, bool>(i, i == index),
      ),
    );
  }

  void _activeCurrentIndex(int index) {
    if (_innerWidgetMap![index] != true) {
      _innerWidgetMap![index] = true;
    }
  }

  void _changeIndex(int value) {
    if (value == index) {
      return;
    }
    setState(() {
      index = value;
    });
  }

  bool _hasInit(int index) {
    final bool? result = _innerWidgetMap![index];
    if (result == null) {
      return false;
    }
    return result == true;
  }

  List<Widget> _buildChildren(BuildContext context) {
    final List<Widget> list = <Widget>[];
    for (int i = 0; i < widget.children!.length; i++) {
      if (_hasInit(i)) {
        list.add(widget.children![i]);
      } else {
        list.add(const SizedBox.shrink());
      }
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    _activeCurrentIndex(index);
    return IndexedStack(
      index: index,
      children: _buildChildren(context),
      alignment: widget.alignment,
      sizing: widget.sizing,
      textDirection: widget.textDirection,
    );
  }
}
