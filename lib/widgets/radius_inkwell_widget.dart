import 'package:flutter/material.dart';

/// 带圆角点击渐变的布局view
class RadiusInkWellWidget extends StatelessWidget {
  // 圆角半径
  final double radius;

  // 颜色
  final Color color;
  final Widget child;
  final VoidCallback onPressed;

  final List<Color> colors;
  final AlignmentGeometry begin;
  final AlignmentGeometry end;

  final BoxBorder border;

  final GestureTapDownCallback onTapDown;

  final EdgeInsetsGeometry margin;

  final EdgeInsetsGeometry padding;

  final List<BoxShadow> boxShadow;

  final bool showShadow;

  const RadiusInkWellWidget({
    Key key,
    @required this.child,
    this.radius: 8,
    this.color,
    @required this.onPressed,
    this.border,
    this.onTapDown,
    this.margin: EdgeInsets.zero,
    this.padding: EdgeInsets.zero,
    this.colors,
    this.begin = Alignment.centerLeft,
    this.end = Alignment.centerRight,
    this.showShadow: false,
    this.boxShadow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin,
        decoration: BoxDecoration(
            boxShadow: showShadow
                ? boxShadow ??
                    [
                      BoxShadow(
                          blurRadius: 13,
                          spreadRadius: -14,
                          offset: Offset(0, 14),
                          color: Theme.of(context).cardColor)
                    ]
                : []),
        child: Material(
            type: MaterialType.transparency,
            child: Ink(
                decoration: BoxDecoration(
                    color: colors != null && colors.length > 0
                        ? null
                        : color ??
                            (onPressed == null
                                ? Theme.of(context).unselectedWidgetColor
                                : Theme.of(context).primaryColor),
                    border: border,
                    borderRadius: BorderRadius.circular(radius),
                    gradient: colors != null && colors.length > 0
                        ? LinearGradient(colors: colors, begin: begin, end: end)
                        : null),
                child: InkWell(
                    onTapDown: onTapDown,
                    borderRadius: BorderRadius.circular(radius),
                    onTap: onPressed,
                    child: Padding(padding: padding, child: child)))));
  }
}
