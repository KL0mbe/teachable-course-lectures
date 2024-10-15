import 'package:flutter/material.dart';
import 'package:teachable_course_lectures/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Becoming Multi Orgasmic | Anzaro Mystic Arts',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
