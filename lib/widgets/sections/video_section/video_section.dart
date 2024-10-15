import 'package:flutter/cupertino.dart';
import 'package:teachable_course_lectures/constants.dart';
import 'package:teachable_course_lectures/widgets/MyElevatedButton.dart';

class VideoSection extends StatelessWidget {
  const VideoSection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: screenWidth > 1115
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center,
            children: [
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.play_rectangle,
                  ),
                  Text(
                    "Becoming Multi Orgasmic",
                    style: kTitleStyleLarge,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              SizedBox(height: 32),
              Image.asset(
                "images/placeholder.png",
                width: 760,
                height: 427,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 32),
            ],
          ),
          MyElevatedButton(title: "Complete and Continue >"),
        ],
      ),
    );
  }
}
