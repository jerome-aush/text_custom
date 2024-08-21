library text_custom;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TextCustom extends StatelessWidget {
  final String value;
  final String? fontFamily;
  final bool? softWrap;
  final double? size;
  final Color? color, backgroundColor, decorationColor;
  final FontWeight? fontWeight;
  final int? maxLines;
  final TextAlign? align;
  final FontStyle? fontStyle;
  final TextDecoration? decoration;
  final TextBaseline? textBaseline;
  final double? height, letterSpacing, wordSpacing, decorationTickness;
  final TextDecorationStyle? textDecorationStyle;
  final TextOverflow? textOverflow;
  final TextScaler? textScaler;
  final TextDirection? textDirection;
  const TextCustom(
    this.value, {
    super.key,
    this.size,
    this.color,
    this.fontWeight,
    this.maxLines,
    this.align,
    this.decoration,
    this.height,
    this.textDecorationStyle,
    this.backgroundColor,
    this.fontStyle,
    this.letterSpacing,
    this.wordSpacing,
    this.textBaseline,
    this.decorationColor,
    this.decorationTickness,
    this.fontFamily,
    this.textOverflow,
    this.textScaler, this.softWrap, this.textDirection,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      maxLines: maxLines,
      overflow: maxLines == null ? null : TextOverflow.ellipsis,
      textAlign: align,
      softWrap: softWrap,
      textScaler: textScaler,
      textDirection: textDirection,
      style: TextStyle(
          fontSize: size ?? 14,
          backgroundColor: backgroundColor,
          fontStyle: fontStyle ?? FontStyle.normal,
          letterSpacing: letterSpacing ?? 0,
          wordSpacing: wordSpacing ?? 0,
          textBaseline: textBaseline,
          decorationColor: decorationColor,
          color: color ?? Colors.black,
          fontWeight: fontWeight ?? FontWeight.w500,
          decorationStyle: textDecorationStyle ?? TextDecorationStyle.solid,
          decoration: decoration ?? TextDecoration.none,
          decorationThickness: decorationTickness,
          fontFamily: fontFamily,
          overflow: textOverflow,
          height: height),
    );
  }
}
