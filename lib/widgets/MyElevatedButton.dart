import 'package:flutter/material.dart';
import 'package:teachable_course_lectures/constants.dart';

class MyElevatedButton extends StatelessWidget {
  final String title;
  const MyElevatedButton({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: ElevatedButton(
        style: const ButtonStyle(
          side: WidgetStatePropertyAll(BorderSide(color: Colors.white)),
          padding: WidgetStatePropertyAll(EdgeInsets.symmetric(vertical: 22)),
          backgroundColor: WidgetStatePropertyAll(Color(0xFF04A59A)),
        ),
        onPressed: () {},
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: kElevatedButtonStyle,
        ),
      ),
    );
  }
}
