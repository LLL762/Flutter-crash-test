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
          const TitleSectionRating(rating: 47)
        ]));
  }
}

class TitleSectionRating extends StatelessWidget {
  static const ratingColor = Color(0xFFF44336);
  static const noRatingColor = Color(0xFFBBBABA);

  final int rating;

  const TitleSectionRating({super.key, this.rating = 0});

  Widget _buildDefault(int rating) {
    return Row(children: [
      const Icon(Icons.star, color: ratingColor),
      const SizedBox(width: 5),
      TextDefaultWidget(text: rating.toString())
    ]);
  }

  Widget _buildNoRating() {
    return Row(children: const [
      Icon(Icons.star, color: noRatingColor),
      SizedBox(width: 10),
      TextDefaultWidget(text: "No rating yet", color: noRatingColor)
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return rating > 0 ? _buildDefault(rating) : _buildNoRating();
  }
}
