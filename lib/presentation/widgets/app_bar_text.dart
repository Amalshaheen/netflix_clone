import 'package:flutter/material.dart';
import 'package:netflix/core/fonts/font_constants.dart';

class AppBarText extends StatelessWidget {
  final String title;
  final Color color;
  const AppBarText({
    super.key,
    required this.title,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontFamily: fontOutFit,
          fontSize: 30,
          fontWeight: FontWeight.w900,
          color: color),
    );
  }
}
