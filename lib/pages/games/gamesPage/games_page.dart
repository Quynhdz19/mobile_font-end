import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_front_end/widgets/game_menu_item.dart';

class GamesPage extends StatelessWidget {
  const GamesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.chevron_left,
            size: 30,
          ),
        ),
        title: Text(
          'Game Center',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                  isDarkMode ? Icons.sunny : Icons.nightlight_round_outlined))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: [
                GameMenuItem(
                    imageUrl: "images/multiple-choice.jpeg",
                    title: "Multiple Choices",
                    description:
                        "This is the description of multiple choice game"),
                const SizedBox(
                  height: 30,
                ),
                GameMenuItem(
                    imageUrl: "images/matching.png",
                    title: "Matching",
                    description:
                        "This is the description of multiple choice game"),
                const SizedBox(
                  height: 30,
                ),
                GameMenuItem(
                    imageUrl: "images/scramble_word.jpeg",
                    title: "Scramble Word",
                    description:
                        "This is the description of multiple choice game"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
