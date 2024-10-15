import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:teachable_course_lectures/constants.dart';
import 'package:teachable_course_lectures/widgets/MyElevatedButton.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return AppBar(
      backgroundColor: Color(0xFF2B3636),
      iconTheme: IconThemeData(color: Colors.white),
      automaticallyImplyLeading: screenWidth <= 1115,
      title: Row(
        children: [
          SizedBox(
            width: screenWidth > 1115 ? 330 : null,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.house_outlined),
                  color: Colors.white,
                ),
                if (screenWidth > 1115) Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.gear),
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Flexible(
            child: Align(
              alignment: AlignmentDirectional.centerEnd,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: kToolbarHeight - 10,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    MyElevatedButton(
                      title: "",
                    ),
                    Text(
                      screenWidth > 1115
                          ? "Complete and Continue >"
                          : "Continue >",
                      style: kElevatedButtonStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
