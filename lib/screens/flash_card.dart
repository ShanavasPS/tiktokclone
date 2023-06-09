import 'package:flutter/material.dart';
import 'package:tiktokclone/model/flashcard_data.dart';

import '../utils/tiktok_colors.dart';
import '../views/flash_card_back.dart';
import '../widgets/user_info.dart';


class FlashCardFeed extends StatefulWidget {
  final FlashcardData content;
  const FlashCardFeed({super.key, required this.content});

  @override
  FlashCardFeedState createState() => FlashCardFeedState();
}

class FlashCardFeedState extends State<FlashCardFeed> {
  FlashCardFeedState() : super();

  bool showBackOfFlashCard = false;

  @override
  void initState() {
    super.initState();
  }

  void updateFlashCardFeedState(bool showBackOfFlashCard) {
    // Update the state value in the parent widget
    setState(() {
      // Update the state value with the new value received from the child
      this.showBackOfFlashCard = showBackOfFlashCard;
    });
  }

  @override
  Widget build(BuildContext context) {
    final FlashcardData content = widget.content;

    String flashcardFrontText = content.flashcardFront;
    String flashcardBackText = content.flashcardBack;

    final String username = content.user.name;
    final String description = content.description;

    return SizedBox(
      width: MediaQuery
          .of(context)
          .size
          .width,
      height: MediaQuery
          .of(context)
          .size
          .height,
      child: GestureDetector(
        onTap: () {
          setState(() {
            showBackOfFlashCard = !showBackOfFlashCard;
          });
        },
        child: Container(
          color: Colors.transparent,
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 73.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      flashcardFrontText,
                      style: const TextStyle(
                        color: TikTokColors.selectedText,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                FlashCardBack(flashcardBackText: flashcardBackText, showBackOfFlashCard: showBackOfFlashCard, updateFlashCardFeedState: updateFlashCardFeedState),
                buildUserInfo(username, description),
              ],
            ),
          ),
        ),
      ),
    );
  }
}