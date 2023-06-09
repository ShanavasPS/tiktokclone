import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/tiktok_colors.dart';
import '../utils/tiktok_strings.dart';
import '../widgets/rating_button.dart';

class RatingView extends StatefulWidget {
  final bool showBackOfFlashCard;
  final Function(bool) updateFlashCardBackState;

  const RatingView({Key? key, required this.showBackOfFlashCard, required this.updateFlashCardBackState})
      : super(key: key);

  @override
  RatingViewState createState() => RatingViewState();
}

class RatingViewState extends State<RatingView> {
  RatingViewState() : super();

  void handleRatingButtonTap(int index) {
    setState(() {
      if (!didTapOnButtons.any((tapped) => tapped)) {
        didTapOnButtons[index] = true;
      } else {
        widget.updateFlashCardBackState(false);
      }
    });
  }

  @override
  void initState() {
    super.initState();
  }

  List<bool> didTapOnButtons = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    bool didTapOnAnyButton = didTapOnButtons.any((tapped) => tapped);

    List<Color> ratingColors = [
      TikTokColors.princetonOrange,
      TikTokColors.mellowApricot,
      TikTokColors.mustard,
      TikTokColors.darkGreenColor,
      TikTokColors.illuminatingEmerald,
    ];

    List<String> ratingStrings = [
      TikTokStrings.ratingOne,
      TikTokStrings.ratingTwo,
      TikTokStrings.ratingThree,
      TikTokStrings.ratingFour,
      TikTokStrings.ratingFive,
    ];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 28, bottom: 5),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              TikTokStrings.howWellDidYouKnowThis,
              style: TextStyle(
                color: TikTokColors.descriptionTextColor,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            for (int i = 0; i < didTapOnButtons.length; i++) ...[
              if (!didTapOnAnyButton || didTapOnButtons[i]) ...[
                ratingButton(
                  context,
                  ratingStrings[i],
                  ratingColors[i],
                      () => handleRatingButtonTap(i),
                ),
                if (i < didTapOnButtons.length - 1) const SizedBox(width: 8),
              ],
            ],
          ],
        ),
      ],
    );
  }
}
