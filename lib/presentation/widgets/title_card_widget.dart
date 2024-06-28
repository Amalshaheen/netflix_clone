import 'package:flutter/material.dart';
import 'package:netflix/core/fonts/font_constants.dart';

class TitleCardWidget extends StatelessWidget {
  final String title;

  final Color color;
  const TitleCardWidget({
    super.key,
    required this.title,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Text(
        softWrap: false,
        title,
        style: TextStyle(
          color: color,
          fontFamily: fontOutFit,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
