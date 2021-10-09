import 'package:flutter/material.dart';

enum AlignItems {
  start,
  end,
  center,
  spaceBetween,
  spaceAround,
  spaceEvenly,
}

class StyleSheet {
  // Text
  // ===============
  // Box Style
  final double? width;
  final double? height;
  final Color color;
  final Color backgroundColor;
  // ===============
  // Margin
  final double margin;
  final double marginTop;
  final double marginLeft;
  final double marginRight;
  final double marginBottom;
  // ===============
  // Padding
  final double padding;
  final double paddingTop;
  final double paddingLeft;
  final double paddingRight;
  final double paddingBottom;
  // ===============
  // Flex Properties
  final AlignItems? alignItems;
  // ===============
  // Flutter Specific
  final bool center;
  // ===============

  const StyleSheet({
    this.width,
    this.height,
    this.alignItems,
    this.backgroundColor = Colors.transparent,
    this.color = Colors.black,
    this.margin = 0,
    this.marginTop = 0,
    this.marginBottom = 0,
    this.marginLeft = 0,
    this.marginRight = 0,
    this.padding = 0,
    this.paddingTop = 0,
    this.paddingBottom = 0,
    this.paddingLeft = 0,
    this.paddingRight = 0,
    this.center = false,
  });
}
