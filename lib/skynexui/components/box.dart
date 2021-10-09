import 'package:flutter/material.dart';
import 'package:myapp/skynexui/core/stylesheet.dart';

// decide between two values

const aligmItemsMapBy = {
  AlignItems.center: MainAxisAlignment.center,
  AlignItems.spaceBetween: MainAxisAlignment.spaceBetween,
  AlignItems.spaceEvenly: MainAxisAlignment.spaceEvenly,
  AlignItems.start: MainAxisAlignment.start,
  AlignItems.end: MainAxisAlignment.end,
};

enum As { row, column }
const Map<As, Type> structureStrategies = {
  As.row: Row,
  As.column: Column,
};

class Box extends StatelessWidget {
  final As as;
  final Widget? child;
  final List<Widget> children;
  final StyleSheet styleSheet;

  const Box({
    Key? key,
    this.as = As.row,
    this.styleSheet = const StyleSheet(),
    this.children = const [],
    this.child,
  }) : super(key: key);

  renderChild() {
    if (child != null) {
      return child;
    }

    if (as == As.row) {
      return Row(
        mainAxisAlignment:
            aligmItemsMapBy[styleSheet.alignItems ?? MainAxisAlignment.start]
                as MainAxisAlignment,
        children: children,
      );
    }

    if (as == As.column) {
      return Column(
        mainAxisAlignment:
            aligmItemsMapBy[styleSheet.alignItems ?? MainAxisAlignment.start]
                as MainAxisAlignment,
        children: children,
      );
    }
    return;
  }

  Widget core() {
    return DefaultTextStyle.merge(
      style: TextStyle(
        color: styleSheet.color,
      ),
      child: Container(
        color: styleSheet.backgroundColor,
        width: styleSheet.width,
        height: styleSheet.height,
        margin: EdgeInsets.only(
          top: styleSheet.marginTop != 0
              ? styleSheet.marginTop
              : styleSheet.margin,
          left: styleSheet.marginLeft != 0
              ? styleSheet.marginLeft
              : styleSheet.margin,
          right: styleSheet.marginRight != 0
              ? styleSheet.marginRight
              : styleSheet.margin,
          bottom: styleSheet.marginBottom != 0
              ? styleSheet.marginBottom
              : styleSheet.margin,
        ),
        padding: EdgeInsets.only(
          top: styleSheet.paddingTop != 0
              ? styleSheet.paddingTop
              : styleSheet.padding,
          left: styleSheet.paddingLeft != 0
              ? styleSheet.paddingLeft
              : styleSheet.padding,
          right: styleSheet.paddingRight != 0
              ? styleSheet.paddingRight
              : styleSheet.padding,
          bottom: styleSheet.paddingBottom != 0
              ? styleSheet.paddingBottom
              : styleSheet.padding,
        ),
        child: renderChild(),
      ),
    );
  }

  withCenter(Function core, bool center) {
    if (center) {
      return Center(
        child: core(),
      );
    }

    return core();
  }

  @override
  Widget build(BuildContext context) {
    return withCenter(core, styleSheet.center);
  }
}
