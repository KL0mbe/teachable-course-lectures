import 'package:flutter/material.dart';
import 'package:teachable_course_lectures/widgets/sections/lessons_section/lessons_section.dart';
import 'package:teachable_course_lectures/widgets/my_app_bar.dart';
import 'package:teachable_course_lectures/widgets/sections/video_section/video_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(),
      drawer: screenWidth <= 1115
          ? Drawer(
              backgroundColor: Colors.white,
              child: LessonsSection(),
            )
          : null,
      body: screenWidth > 1115
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LessonsSection(),
                Spacer(),
                VideoSection(),
                Spacer(),
              ],
            )
          : VideoSection(),
    );
  }
}
