import 'package:flutter/material.dart';
import 'package:layouts/widgets/text/text_default.dart';
export 'home_title_section.dart';

class HomeTitleSection extends StatelessWidget {
  const HomeTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    print("refresh!");
    return Container(
        constraints: const BoxConstraints(minWidth: 250, maxWidth: 500),
        padding: const EdgeInsets.all(32),
        child: Row(children: [
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              TitleDefaultWidget(text: "Oeschinen Lake Campground"),
              TextDefaultWidget(
                  text: 'Kandersteg, Switzerland', color: Color(0xFF9E9E9E)),
            ],
          )),
          const TitleSectionRating()
        ]));
  }
}

class TitleSectionRating extends StatefulWidget {
  const TitleSectionRating({super.key});

  @override
  State<StatefulWidget> createState() => TitleSectionRatingState();
}

class TitleSectionRatingState extends State<TitleSectionRating> {
  static const noRatingColor = Color(0xFFBBBABA);
  static const defaultColor = Colors.orangeAccent;

  bool isFavorited = false;
  int favoritedCount = 41;

  toggleFavorite() {
    setState(() {
      favoritedCount += isFavorited ? -1 : 1;
      isFavorited = !isFavorited;
    });
  }

  Widget _buildDefault() {
    final icon = Icon(isFavorited ? Icons.star : Icons.star_border_outlined);

    return Row(children: [
      IconButton(
          splashRadius: 25,
          icon: icon,
          onPressed: toggleFavorite,
          color: favoritedCount > 0 ? defaultColor : noRatingColor),
      SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$favoritedCount'),
          ))
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return _buildDefault();
  }
}
