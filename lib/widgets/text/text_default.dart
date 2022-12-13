import 'package:flutter/material.dart';
export './text_default.dart';

class TextDefaultWidget extends StatelessWidget {
  static const fontSizeDefault = 14.0;
  static const colorDefault = Colors.black;

  final String text;
  final double fontSize;
  final Color color;

  const TextDefaultWidget({
    super.key,
    required this.text,
    this.fontSize = fontSizeDefault,
    this.color = colorDefault,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: fontSize, color: color));
  }
}

class TitleDefaultWidget extends StatelessWidget {
  static const fontSizeDefault = 20.0;
  static const colorDefault = Colors.black;
  static const fontWeigthDefault = FontWeight.bold;

  final String text;
  final double fontSize;
  final Color color;
  final FontWeight fontWeight;

  const TitleDefaultWidget({
    super.key,
    required this.text,
    this.fontSize = fontSizeDefault,
    this.color = colorDefault,
    this.fontWeight = fontWeigthDefault,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: fontSize, color: color, fontWeight: fontWeight));
  }
}
