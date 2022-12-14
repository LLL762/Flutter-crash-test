import 'package:flutter/material.dart';
import 'package:layouts/widgets/text/text_default.dart';
export "./icon_btn.dart";

class IconBtn extends StatelessWidget {
  static const bgColorDefault = Color(0xFF2196F3);
  static const iconColorDefault = Color(0xFFFFFFFF);
  static const sizeDefault = 30.0;

  final double size;
  final Color bgColor;
  final Color iconColor;
  final IconData iconData;
  final String? text;
  final VoidCallback? onPressed;

  const IconBtn(
      {super.key,
      this.size = sizeDefault,
      this.bgColor = bgColorDefault,
      this.iconColor = iconColorDefault,
      required this.iconData,
      this.text,
      this.onPressed});

  onPressedDefault() {}

  Widget buildNoText() {
    return CircleAvatar(
        radius: size - 5,
        backgroundColor: bgColor,
        child: IconButton(
            iconSize: size,
            onPressed: onPressed ?? onPressedDefault,
            icon: Icon(
              iconData,
              color: iconColor,
            )));
  }

  Widget buildWithText(String text) {
    return Column(children: [
      buildNoText(),
      SizedBox(height: size / 10),
      TextDefaultWidget(
        text: text,
        color: bgColor,
        fontSize: size / 1.8,
      )
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return text == null ? buildNoText() : buildWithText(text!);
  }
}
