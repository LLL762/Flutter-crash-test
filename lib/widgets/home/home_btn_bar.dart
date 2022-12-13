import 'package:flutter/material.dart';
import 'package:layouts/widgets/btn_bar.dart';
import 'package:layouts/widgets/icon_btn.dart';
export './home_btn_bar.dart';

class HomeBtnBar extends StatelessWidget {
  static const btns = [
    IconBtn(iconData: Icons.phone, text: "CALL"),
    IconBtn(iconData: Icons.near_me, text: "ROUTE"),
    IconBtn(iconData: Icons.share, text: "SHARE"),
  ];

  const HomeBtnBar({super.key});
  @override
  Widget build(BuildContext context) {
    return const BtnBar(btns: btns);
  }
}
