import 'package:flutter/material.dart';
import 'package:layouts/widgets/home/home_btn_bar.dart';
import 'package:layouts/widgets/home/home_img.dart';
import 'package:layouts/widgets/home/home_text_section.dart';

import 'home_title_section.dart';

export "home_content.dart";

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(minWidth: 300, maxWidth: 1200),
        child: ListView(
          children: [
            Column(
              children: const [
                HomeMainImg(),
                HomeTitleSection(),
                HomeBtnBar(),
                HomeTextSection()
              ],
            )
          ],
        ));
  }
}
