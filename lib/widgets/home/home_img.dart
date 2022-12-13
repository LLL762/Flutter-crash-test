import 'package:flutter/material.dart';
export "./home_img.dart";

class HomeMainImg extends StatelessWidget {
  const HomeMainImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(
          minWidth: 250,
          maxWidth: 1200,
        ),
        child: Image.asset(
          'images/lake.jpg',
          width: 600,
          height: 240,
          fit: BoxFit.cover,
        ));
  }
}
