import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tittokclone/utils/tiktok_colors.dart';

class RatingView extends StatefulWidget {
  final bool showBackOfFlashCard;
  final Function(bool) updateFlashCardBackState;
  RatingView({required this.showBackOfFlashCard, required this.updateFlashCardBackState});

  @override
  RatingViewState createState() => RatingViewState();
}

class RatingViewState extends State<RatingView> {
  RatingViewState() : super();

  @override
  void initState() {
    super.initState();
    print('inside state:');
  }

  bool showButtonOne = true;
  bool showButtonTwo = true;
  bool showButtonThree = true;
  bool showButtonFour = true;
  bool showButtonFive = true;
  bool isColoredBoxSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 28, bottom: 5),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "How well did you know this?",
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
            Visibility(
              visible: showButtonOne,
              child: Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if(!isColoredBoxSelected) {
                        showButtonTwo = false;
                        showButtonThree = false;
                        showButtonFour = false;
                        showButtonFive = false;
                        isColoredBoxSelected = true;
                      } else {
                        widget.updateFlashCardBackState(false);
                      }
                    });
                  },
                  behavior: HitTestBehavior.translucent,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: TikTokColors.princetonOrange,
                    ),
                    width: (MediaQuery.of(context).size.width - 8 * 6) / 5,
                    height: 52,
                    child: const Center(
                      child: Text(
                        "1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Visibility(
                visible: showButtonOne,
                child: SizedBox(width: 8)
            ),
            Visibility(
              visible: showButtonTwo,
              child: Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if(!isColoredBoxSelected) {
                        showButtonOne = false;
                        showButtonThree = false;
                        showButtonFour = false;
                        showButtonFive = false;
                        isColoredBoxSelected = true;
                      } else {
                        widget.updateFlashCardBackState(false);
                      }
                    });
                  },
                  behavior: HitTestBehavior.translucent,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: TikTokColors.mellowApricot,
                    ),
                    height: 52,
                    child: const Center(
                      child: Text(
                        "2",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Visibility(
                visible: showButtonTwo,
                child: SizedBox(width: 8)
            ),
            Visibility(
              visible: showButtonThree,
              child: Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if(!isColoredBoxSelected) {
                        showButtonOne = false;
                        showButtonTwo = false;
                        showButtonFour = false;
                        showButtonFive = false;
                        isColoredBoxSelected = true;
                      } else {
                        widget.updateFlashCardBackState(false);
                      }
                    });
                  },
                  behavior: HitTestBehavior.translucent,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: TikTokColors.mustard,
                    ),
                    height: 52,
                    child: const Center(
                      child: Text(
                        "3",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Visibility(
                visible: showButtonThree,
                child: SizedBox(width: 8)
            ),
            Visibility(
              visible: showButtonFour,
              child: Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if(!isColoredBoxSelected) {
                        showButtonOne = false;
                        showButtonTwo = false;
                        showButtonThree = false;
                        showButtonFive = false;
                        isColoredBoxSelected = true;
                      } else {
                        widget.updateFlashCardBackState(false);
                      }
                    });
                  },
                  behavior: HitTestBehavior.translucent,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: TikTokColors.darkGreenColor,
                    ),
                    height: 52,
                    child: const Center(
                      child: Text(
                        "4",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Visibility(
                visible: showButtonOne,
                child: SizedBox(width: 8)
            ),
            Visibility(
              visible: showButtonFive,
              child: Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if(!isColoredBoxSelected) {
                        showButtonOne = false;
                        showButtonTwo = false;
                        showButtonThree = false;
                        showButtonFour = false;
                        isColoredBoxSelected = true;
                      } else {
                        widget.updateFlashCardBackState(false);
                      }
                    });
                  },
                  behavior: HitTestBehavior.translucent,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: TikTokColors.illuminatingEmerald,
                    ),
                    height: 52,
                    child: const Center(
                      child: Text(
                        "5",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}