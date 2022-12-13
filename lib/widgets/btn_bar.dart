import 'package:flutter/material.dart';
import 'package:layouts/widgets/icon_btn.dart';
export "./btn_bar.dart";

class BtnBar extends StatelessWidget {
  final List<IconBtn> btns;

  const BtnBar({super.key, required this.btns});

  @override
  Widget build(BuildContext context) {
    final spacedBtns = <Widget>[];

    for (IconBtn btn in btns) {
      spacedBtns.add(btn);
      spacedBtns.add(SizedBox(width: btn.size));
    }

    return Row(
        mainAxisAlignment: MainAxisAlignment.center, children: spacedBtns);
  }
}
