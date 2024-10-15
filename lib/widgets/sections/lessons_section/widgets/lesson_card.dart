import 'package:flutter/material.dart';
import 'package:teachable_course_lectures/constants.dart';
import 'package:flutter/cupertino.dart';

class LessonCard extends StatefulWidget {
  final String title;
  final List<String> rows;

  const LessonCard({required this.title, required this.rows, super.key});

  @override
  State<LessonCard> createState() => _LessonCardState();
}

class _LessonCardState extends State<LessonCard> {
  Map<int, bool> hoveringMap = {};
  Map<int, bool> clickedMap = {};

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              widget.title,
              style: kTitleStyleMedium,
            ),
          ),
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: widget.rows.length,
            itemBuilder: (context, index) {
              bool isHovering = hoveringMap[index] ?? false;
              bool isClicked = clickedMap[index] ?? false;
              return InkWell(
                onTap: () {
                  setState(() {
                    clickedMap.updateAll((key, value) => false);

                    clickedMap[index] = true;
                  });
                },
                onHover: (hovering) {
                  setState(() {
                    hoveringMap[index] = hovering;
                  });
                },
                child: Container(
                  width: 350,
                  color: isClicked
                      ? const Color(0xFFA2EEE7)
                      : isHovering
                          ? const Color(0xFFA2EEE7)
                          : const Color(0xFFFAFAFA),
                  child: ListTile(
                    leading: Icon(
                      isClicked
                          ? CupertinoIcons.circle_lefthalf_fill
                          : CupertinoIcons.circle,
                      color: isHovering ? Color(0xFF177B72) : Color(0xFF15998F),
                    ),
                    title: Row(
                      children: [
                        const Icon(
                          CupertinoIcons.play_rectangle,
                        ),
                        const SizedBox(width: 16),
                        Flexible(
                          child: Text(
                            widget.rows[index],
                            style: kTitleStyleSmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
